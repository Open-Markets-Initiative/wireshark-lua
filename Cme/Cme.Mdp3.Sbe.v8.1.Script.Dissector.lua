-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Mdp3 Sbe 8.1 Protocol
local cme_mdp3_sbe_v8_1 = Proto("Cme.Mdp3.Sbe.v8.1.Lua", "Cme Mdp3 Sbe 8.1")

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

-- Cme Mdp3 Sbe 8.1 Fields
cme_mdp3_sbe_v8_1.fields.actual = ProtoField.new("Actual", "cme.mdp3.sbe.v8.1.actual", ftypes.UINT8, nil, base.DEC, "0x02")
cme_mdp3_sbe_v8_1.fields.admin_login = ProtoField.new("Admin Login", "cme.mdp3.sbe.v8.1.adminlogin", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.admin_logout = ProtoField.new("Admin Logout", "cme.mdp3.sbe.v8.1.adminlogout", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.aggressor_side = ProtoField.new("Aggressor Side", "cme.mdp3.sbe.v8.1.aggressorside", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.appl_id = ProtoField.new("Appl ID", "cme.mdp3.sbe.v8.1.applid", ftypes.INT16)
cme_mdp3_sbe_v8_1.fields.asset = ProtoField.new("Asset", "cme.mdp3.sbe.v8.1.asset", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.block_length = ProtoField.new("block Length", "cme.mdp3.sbe.v8.1.blocklength", ftypes.UINT16)
cme_mdp3_sbe_v8_1.fields.block_length = ProtoField.new("Block Length", "cme.mdp3.sbe.v8.1.blocklength", ftypes.UINT16)
cme_mdp3_sbe_v8_1.fields.block_trade_eligible = ProtoField.new("Block Trade Eligible", "cme.mdp3.sbe.v8.1.blocktradeeligible", ftypes.UINT32, nil, base.DEC, "0x00000004")
cme_mdp3_sbe_v8_1.fields.cfi_code = ProtoField.new("CFI Code", "cme.mdp3.sbe.v8.1.cficode", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.channel_reset = ProtoField.new("Channel Reset", "cme.mdp3.sbe.v8.1.channelreset", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.channel_reset_group = ProtoField.new("Channel Reset Group", "cme.mdp3.sbe.v8.1.channelresetgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.channel_reset_groups = ProtoField.new("Channel Reset Groups", "cme.mdp3.sbe.v8.1.channelresetgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.cleared_volume = ProtoField.new("Cleared Volume", "cme.mdp3.sbe.v8.1.clearedvolume", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "cme.mdp3.sbe.v8.1.contractmultiplier", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.contract_multiplier_unit = ProtoField.new("Contract Multiplier Unit", "cme.mdp3.sbe.v8.1.contractmultiplierunit", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_mdp3_sbe_v8_1.fields.currency = ProtoField.new("Currency", "cme.mdp3.sbe.v8.1.currency", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.current_chunk = ProtoField.new("Current Chunk", "cme.mdp3.sbe.v8.1.currentchunk", ftypes.UINT32)
cme_mdp3_sbe_v8_1.fields.daily_product_eligibility = ProtoField.new("Daily Product Eligibility", "cme.mdp3.sbe.v8.1.dailyproducteligibility", ftypes.UINT32, nil, base.DEC, "0x00020000")
cme_mdp3_sbe_v8_1.fields.day = ProtoField.new("day", "cme.mdp3.sbe.v8.1.day", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.decay_quantity = ProtoField.new("Decay Quantity", "cme.mdp3.sbe.v8.1.decayquantity", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.decay_start_date = ProtoField.new("Decay Start Date", "cme.mdp3.sbe.v8.1.decaystartdate", ftypes.UINT16)
cme_mdp3_sbe_v8_1.fields.decaying_product_eligibility = ProtoField.new("Decaying Product Eligibility", "cme.mdp3.sbe.v8.1.decayingproducteligibility", ftypes.UINT32, nil, base.DEC, "0x00008000")
cme_mdp3_sbe_v8_1.fields.display_factor = ProtoField.new("Display Factor", "cme.mdp3.sbe.v8.1.displayfactor", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.ebf_eligible = ProtoField.new("EBF Eligible", "cme.mdp3.sbe.v8.1.ebfeligible", ftypes.UINT32, nil, base.DEC, "0x00000010")
cme_mdp3_sbe_v8_1.fields.efp_eligible = ProtoField.new("EFP Eligible", "cme.mdp3.sbe.v8.1.efpeligible", ftypes.UINT32, nil, base.DEC, "0x00000008")
cme_mdp3_sbe_v8_1.fields.efr_eligible = ProtoField.new("EFR Eligible", "cme.mdp3.sbe.v8.1.efreligible", ftypes.UINT32, nil, base.DEC, "0x00000040")
cme_mdp3_sbe_v8_1.fields.efs_eligible = ProtoField.new("EFS Eligible", "cme.mdp3.sbe.v8.1.efseligible", ftypes.UINT32, nil, base.DEC, "0x00000020")
cme_mdp3_sbe_v8_1.fields.electronic_match_eligible = ProtoField.new("Electronic Match Eligible", "cme.mdp3.sbe.v8.1.electronicmatcheligible", ftypes.UINT32, nil, base.DEC, "0x00000001")
cme_mdp3_sbe_v8_1.fields.end_of_event = ProtoField.new("End Of Event", "cme.mdp3.sbe.v8.1.endofevent", ftypes.UINT8, nil, base.DEC, "0x80")
cme_mdp3_sbe_v8_1.fields.event_time = ProtoField.new("Event Time", "cme.mdp3.sbe.v8.1.eventtime", ftypes.UINT64)
cme_mdp3_sbe_v8_1.fields.event_type = ProtoField.new("Event Type", "cme.mdp3.sbe.v8.1.eventtype", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.events_group = ProtoField.new("Events Group", "cme.mdp3.sbe.v8.1.eventsgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.events_groups = ProtoField.new("Events Groups", "cme.mdp3.sbe.v8.1.eventsgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.final = ProtoField.new("Final", "cme.mdp3.sbe.v8.1.final", ftypes.UINT8, nil, base.DEC, "0x01")
cme_mdp3_sbe_v8_1.fields.flow_schedule_type = ProtoField.new("Flow Schedule Type", "cme.mdp3.sbe.v8.1.flowscheduletype", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_mdp3_sbe_v8_1.fields.group_size = ProtoField.new("group Size", "cme.mdp3.sbe.v8.1.groupsize", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.group_size8_byte = ProtoField.new("group Size8 Byte", "cme.mdp3.sbe.v8.1.groupsize8byte", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.gt_orders_eligibility = ProtoField.new("GT Orders Eligibility", "cme.mdp3.sbe.v8.1.gtorderseligibility", ftypes.UINT32, nil, base.DEC, "0x00040000")
cme_mdp3_sbe_v8_1.fields.halt_reason = ProtoField.new("Halt Reason", "cme.mdp3.sbe.v8.1.haltreason", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "cme.mdp3.sbe.v8.1.heartbtint", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_mdp3_sbe_v8_1.fields.high_limit_price = ProtoField.new("High Limit Price", "cme.mdp3.sbe.v8.1.highlimitprice", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.i_link_indicative_mass_quoting_eligible = ProtoField.new("i Link Indicative Mass Quoting Eligible", "cme.mdp3.sbe.v8.1.ilinkindicativemassquotingeligible", ftypes.UINT32, nil, base.DEC, "0x00000100")
cme_mdp3_sbe_v8_1.fields.implied_matching_eligibility = ProtoField.new("Implied Matching Eligibility", "cme.mdp3.sbe.v8.1.impliedmatchingeligibility", ftypes.UINT32, nil, base.DEC, "0x00080000")
cme_mdp3_sbe_v8_1.fields.inst_attrib_group = ProtoField.new("Inst Attrib Group", "cme.mdp3.sbe.v8.1.instattribgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.inst_attrib_groups = ProtoField.new("Inst Attrib Groups", "cme.mdp3.sbe.v8.1.instattribgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.inst_attrib_value = ProtoField.new("Inst Attrib Value", "cme.mdp3.sbe.v8.1.instattribvalue", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.intraday = ProtoField.new("Intraday", "cme.mdp3.sbe.v8.1.intraday", ftypes.UINT8, nil, base.DEC, "0x08")
cme_mdp3_sbe_v8_1.fields.is_fractional = ProtoField.new("Is Fractional", "cme.mdp3.sbe.v8.1.isfractional", ftypes.UINT32, nil, base.DEC, "0x00000800")
cme_mdp3_sbe_v8_1.fields.last_implied_msg = ProtoField.new("Last Implied Msg", "cme.mdp3.sbe.v8.1.lastimpliedmsg", ftypes.UINT8, nil, base.DEC, "0x10")
cme_mdp3_sbe_v8_1.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "cme.mdp3.sbe.v8.1.lastmsgseqnumprocessed", ftypes.UINT32)
cme_mdp3_sbe_v8_1.fields.last_qty = ProtoField.new("Last Qty", "cme.mdp3.sbe.v8.1.lastqty", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.last_quote_msg = ProtoField.new("Last Quote Msg", "cme.mdp3.sbe.v8.1.lastquotemsg", ftypes.UINT8, nil, base.DEC, "0x04")
cme_mdp3_sbe_v8_1.fields.last_stats_msg = ProtoField.new("Last Stats Msg", "cme.mdp3.sbe.v8.1.laststatsmsg", ftypes.UINT8, nil, base.DEC, "0x08")
cme_mdp3_sbe_v8_1.fields.last_trade_msg = ProtoField.new("Last Trade Msg", "cme.mdp3.sbe.v8.1.lasttrademsg", ftypes.UINT8, nil, base.DEC, "0x01")
cme_mdp3_sbe_v8_1.fields.last_update_time = ProtoField.new("Last Update Time", "cme.mdp3.sbe.v8.1.lastupdatetime", ftypes.UINT64)
cme_mdp3_sbe_v8_1.fields.last_volume_msg = ProtoField.new("Last Volume Msg", "cme.mdp3.sbe.v8.1.lastvolumemsg", ftypes.UINT8, nil, base.DEC, "0x02")
cme_mdp3_sbe_v8_1.fields.leg_option_delta = ProtoField.new("Leg Option Delta", "cme.mdp3.sbe.v8.1.legoptiondelta", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.leg_price = ProtoField.new("Leg Price", "cme.mdp3.sbe.v8.1.legprice", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.mdp3.sbe.v8.1.legratioqty", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_mdp3_sbe_v8_1.fields.leg_security_id = ProtoField.new("Leg Security ID", "cme.mdp3.sbe.v8.1.legsecurityid", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.leg_side = ProtoField.new("Leg Side", "cme.mdp3.sbe.v8.1.legside", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.legs_group = ProtoField.new("Legs Group", "cme.mdp3.sbe.v8.1.legsgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.legs_groups = ProtoField.new("Legs Groups", "cme.mdp3.sbe.v8.1.legsgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.lot_type = ProtoField.new("Lot Type", "cme.mdp3.sbe.v8.1.lottype", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_mdp3_sbe_v8_1.fields.lot_type_rules_group = ProtoField.new("Lot Type Rules Group", "cme.mdp3.sbe.v8.1.lottyperulesgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.lot_type_rules_groups = ProtoField.new("Lot Type Rules Groups", "cme.mdp3.sbe.v8.1.lottyperulesgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.low_limit_price = ProtoField.new("Low Limit Price", "cme.mdp3.sbe.v8.1.lowlimitprice", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.main_fraction = ProtoField.new("Main Fraction", "cme.mdp3.sbe.v8.1.mainfraction", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.market_depth = ProtoField.new("Market Depth", "cme.mdp3.sbe.v8.1.marketdepth", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_mdp3_sbe_v8_1.fields.market_segment_id = ProtoField.new("Market Segment ID", "cme.mdp3.sbe.v8.1.marketsegmentid", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.match_algorithm = ProtoField.new("Match Algorithm", "cme.mdp3.sbe.v8.1.matchalgorithm", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "cme.mdp3.sbe.v8.1.matcheventindicator", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.mdp3.sbe.v8.1.maturitymonthyear", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.max_price_variation = ProtoField.new("Max Price Variation", "cme.mdp3.sbe.v8.1.maxpricevariation", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "cme.mdp3.sbe.v8.1.maxtradevol", ftypes.UINT32)
cme_mdp3_sbe_v8_1.fields.md_display_qty = ProtoField.new("MD Display Qty", "cme.mdp3.sbe.v8.1.mddisplayqty", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.md_entry_px = ProtoField.new("MD Entry Px", "cme.mdp3.sbe.v8.1.mdentrypx", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.md_entry_size = ProtoField.new("MD Entry Size", "cme.mdp3.sbe.v8.1.mdentrysize", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.md_entry_type = ProtoField.new("MD Entry Type", "cme.mdp3.sbe.v8.1.mdentrytype", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_feed_type = ProtoField.new("MD Feed Type", "cme.mdp3.sbe.v8.1.mdfeedtype", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_feed_types_group = ProtoField.new("MD Feed Types Group", "cme.mdp3.sbe.v8.1.mdfeedtypesgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_feed_types_groups = ProtoField.new("MD Feed Types Groups", "cme.mdp3.sbe.v8.1.mdfeedtypesgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_book = ProtoField.new("MD Incremental Refresh Book", "cme.mdp3.sbe.v8.1.mdincrementalrefreshbook", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_book_group = ProtoField.new("MD Incremental Refresh Book Group", "cme.mdp3.sbe.v8.1.mdincrementalrefreshbookgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_book_groups = ProtoField.new("MD Incremental Refresh Book Groups", "cme.mdp3.sbe.v8.1.mdincrementalrefreshbookgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_book_order_group = ProtoField.new("MD Incremental Refresh Book Order Group", "cme.mdp3.sbe.v8.1.mdincrementalrefreshbookordergroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_book_order_groups = ProtoField.new("MD Incremental Refresh Book Order Groups", "cme.mdp3.sbe.v8.1.mdincrementalrefreshbookordergroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_daily_statistics = ProtoField.new("MD Incremental Refresh Daily Statistics", "cme.mdp3.sbe.v8.1.mdincrementalrefreshdailystatistics", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_daily_statistics_group = ProtoField.new("MD Incremental Refresh Daily Statistics Group", "cme.mdp3.sbe.v8.1.mdincrementalrefreshdailystatisticsgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_daily_statistics_groups = ProtoField.new("MD Incremental Refresh Daily Statistics Groups", "cme.mdp3.sbe.v8.1.mdincrementalrefreshdailystatisticsgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_limits_banding = ProtoField.new("MD Incremental Refresh Limits Banding", "cme.mdp3.sbe.v8.1.mdincrementalrefreshlimitsbanding", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_limits_banding_group = ProtoField.new("MD Incremental Refresh Limits Banding Group", "cme.mdp3.sbe.v8.1.mdincrementalrefreshlimitsbandinggroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_limits_banding_groups = ProtoField.new("MD Incremental Refresh Limits Banding Groups", "cme.mdp3.sbe.v8.1.mdincrementalrefreshlimitsbandinggroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_order_book = ProtoField.new("MD Incremental Refresh Order Book", "cme.mdp3.sbe.v8.1.mdincrementalrefreshorderbook", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_order_book_group = ProtoField.new("MD Incremental Refresh Order Book Group", "cme.mdp3.sbe.v8.1.mdincrementalrefreshorderbookgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_order_book_groups = ProtoField.new("MD Incremental Refresh Order Book Groups", "cme.mdp3.sbe.v8.1.mdincrementalrefreshorderbookgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_session_statistics = ProtoField.new("MD Incremental Refresh Session Statistics", "cme.mdp3.sbe.v8.1.mdincrementalrefreshsessionstatistics", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_session_statistics_group = ProtoField.new("MD Incremental Refresh Session Statistics Group", "cme.mdp3.sbe.v8.1.mdincrementalrefreshsessionstatisticsgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_session_statistics_groups = ProtoField.new("MD Incremental Refresh Session Statistics Groups", "cme.mdp3.sbe.v8.1.mdincrementalrefreshsessionstatisticsgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade = ProtoField.new("MD Incremental Refresh Trade", "cme.mdp3.sbe.v8.1.mdincrementalrefreshtrade", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_group = ProtoField.new("MD Incremental Refresh Trade Group", "cme.mdp3.sbe.v8.1.mdincrementalrefreshtradegroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_groups = ProtoField.new("MD Incremental Refresh Trade Groups", "cme.mdp3.sbe.v8.1.mdincrementalrefreshtradegroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_summary = ProtoField.new("MD Incremental Refresh Trade Summary", "cme.mdp3.sbe.v8.1.mdincrementalrefreshtradesummary", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_summary_group = ProtoField.new("MD Incremental Refresh Trade Summary Group", "cme.mdp3.sbe.v8.1.mdincrementalrefreshtradesummarygroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_summary_groups = ProtoField.new("MD Incremental Refresh Trade Summary Groups", "cme.mdp3.sbe.v8.1.mdincrementalrefreshtradesummarygroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_summary_order_group = ProtoField.new("MD Incremental Refresh Trade Summary Order Group", "cme.mdp3.sbe.v8.1.mdincrementalrefreshtradesummaryordergroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_summary_order_groups = ProtoField.new("MD Incremental Refresh Trade Summary Order Groups", "cme.mdp3.sbe.v8.1.mdincrementalrefreshtradesummaryordergroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_volume = ProtoField.new("MD Incremental Refresh Volume", "cme.mdp3.sbe.v8.1.mdincrementalrefreshvolume", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_volume_group = ProtoField.new("MD Incremental Refresh Volume Group", "cme.mdp3.sbe.v8.1.mdincrementalrefreshvolumegroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_volume_groups = ProtoField.new("MD Incremental Refresh Volume Groups", "cme.mdp3.sbe.v8.1.mdincrementalrefreshvolumegroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_instrument_definition_future = ProtoField.new("MD Instrument Definition Future", "cme.mdp3.sbe.v8.1.mdinstrumentdefinitionfuture", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_instrument_definition_option = ProtoField.new("MD Instrument Definition Option", "cme.mdp3.sbe.v8.1.mdinstrumentdefinitionoption", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_instrument_definition_spread = ProtoField.new("MD Instrument Definition Spread", "cme.mdp3.sbe.v8.1.mdinstrumentdefinitionspread", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.md_order_priority = ProtoField.new("MD Order Priority", "cme.mdp3.sbe.v8.1.mdorderpriority", ftypes.UINT64)
cme_mdp3_sbe_v8_1.fields.md_price_level = ProtoField.new("MD Price Level", "cme.mdp3.sbe.v8.1.mdpricelevel", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.md_security_trading_status = ProtoField.new("MD Security Trading Status", "cme.mdp3.sbe.v8.1.mdsecuritytradingstatus", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.md_trade_entry_id = ProtoField.new("MD Trade Entry ID", "cme.mdp3.sbe.v8.1.mdtradeentryid", ftypes.UINT32)
cme_mdp3_sbe_v8_1.fields.md_update_action = ProtoField.new("MD Update Action", "cme.mdp3.sbe.v8.1.mdupdateaction", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.message = ProtoField.new("Message", "cme.mdp3.sbe.v8.1.message", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.message_header = ProtoField.new("Message Header", "cme.mdp3.sbe.v8.1.messageheader", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.mdp3.sbe.v8.1.messagesequencenumber", ftypes.UINT32)
cme_mdp3_sbe_v8_1.fields.message_size = ProtoField.new("Message Size", "cme.mdp3.sbe.v8.1.messagesize", ftypes.UINT16)
cme_mdp3_sbe_v8_1.fields.min_cab_price = ProtoField.new("Min Cab Price", "cme.mdp3.sbe.v8.1.mincabprice", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.min_lot_size = ProtoField.new("Min Lot Size", "cme.mdp3.sbe.v8.1.minlotsize", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.min_price_increment = ProtoField.new("Min Price Increment", "cme.mdp3.sbe.v8.1.minpriceincrement", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "cme.mdp3.sbe.v8.1.minpriceincrementamount", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "cme.mdp3.sbe.v8.1.mintradevol", ftypes.UINT32)
cme_mdp3_sbe_v8_1.fields.month = ProtoField.new("month", "cme.mdp3.sbe.v8.1.month", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.negative_price_outright_eligible = ProtoField.new("Negative Price Outright Eligible", "cme.mdp3.sbe.v8.1.negativepriceoutrighteligible", ftypes.UINT32, nil, base.DEC, "0x00000400")
cme_mdp3_sbe_v8_1.fields.negative_strike_eligible = ProtoField.new("Negative Strike Eligible", "cme.mdp3.sbe.v8.1.negativestrikeeligible", ftypes.UINT32, nil, base.DEC, "0x00000200")
cme_mdp3_sbe_v8_1.fields.no_chunks = ProtoField.new("No Chunks", "cme.mdp3.sbe.v8.1.nochunks", ftypes.UINT32)
cme_mdp3_sbe_v8_1.fields.null_value = ProtoField.new("Null Value", "cme.mdp3.sbe.v8.1.nullvalue", ftypes.UINT8, nil, base.DEC, "0x80")
cme_mdp3_sbe_v8_1.fields.num_in_group = ProtoField.new("num In Group", "cme.mdp3.sbe.v8.1.numingroup", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.number_of_orders = ProtoField.new("Number Of Orders", "cme.mdp3.sbe.v8.1.numberoforders", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.mdp3.sbe.v8.1.openclosesettlflag", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.open_interest_qty = ProtoField.new("Open Interest Qty", "cme.mdp3.sbe.v8.1.openinterestqty", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.order_cross_eligible = ProtoField.new("Order Cross Eligible", "cme.mdp3.sbe.v8.1.ordercrosseligible", ftypes.UINT32, nil, base.DEC, "0x00000002")
cme_mdp3_sbe_v8_1.fields.order_id = ProtoField.new("Order ID", "cme.mdp3.sbe.v8.1.orderid", ftypes.UINT64)
cme_mdp3_sbe_v8_1.fields.order_qty = ProtoField.new("Order Qty", "cme.mdp3.sbe.v8.1.orderqty", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.order_update_action = ProtoField.new("Order Update Action", "cme.mdp3.sbe.v8.1.orderupdateaction", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.original_contract_size = ProtoField.new("Original Contract Size", "cme.mdp3.sbe.v8.1.originalcontractsize", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.otc_eligible = ProtoField.new("OTC Eligible", "cme.mdp3.sbe.v8.1.otceligible", ftypes.UINT32, nil, base.DEC, "0x00000080")
cme_mdp3_sbe_v8_1.fields.packet = ProtoField.new("Packet", "cme.mdp3.sbe.v8.1.packet", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.packet_header = ProtoField.new("Packet Header", "cme.mdp3.sbe.v8.1.packetheader", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.padding_1 = ProtoField.new("Padding 1", "cme.mdp3.sbe.v8.1.padding1", ftypes.BYTES)
cme_mdp3_sbe_v8_1.fields.padding_2 = ProtoField.new("Padding 2", "cme.mdp3.sbe.v8.1.padding2", ftypes.BYTES)
cme_mdp3_sbe_v8_1.fields.padding_3 = ProtoField.new("Padding 3", "cme.mdp3.sbe.v8.1.padding3", ftypes.BYTES)
cme_mdp3_sbe_v8_1.fields.padding_4 = ProtoField.new("Padding 4", "cme.mdp3.sbe.v8.1.padding4", ftypes.BYTES)
cme_mdp3_sbe_v8_1.fields.padding_5 = ProtoField.new("Padding 5", "cme.mdp3.sbe.v8.1.padding5", ftypes.BYTES)
cme_mdp3_sbe_v8_1.fields.padding_6 = ProtoField.new("Padding 6", "cme.mdp3.sbe.v8.1.padding6", ftypes.BYTES)
cme_mdp3_sbe_v8_1.fields.padding_7 = ProtoField.new("Padding 7", "cme.mdp3.sbe.v8.1.padding7", ftypes.BYTES)
cme_mdp3_sbe_v8_1.fields.payload = ProtoField.new("Payload", "cme.mdp3.sbe.v8.1.payload", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.price_display_format = ProtoField.new("Price Display Format", "cme.mdp3.sbe.v8.1.pricedisplayformat", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.price_ratio = ProtoField.new("Price Ratio", "cme.mdp3.sbe.v8.1.priceratio", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.put_or_call = ProtoField.new("Put Or Call", "cme.mdp3.sbe.v8.1.putorcall", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.quote_req_id = ProtoField.new("Quote Req ID", "cme.mdp3.sbe.v8.1.quotereqid", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.quote_request = ProtoField.new("Quote Request", "cme.mdp3.sbe.v8.1.quoterequest", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.quote_type = ProtoField.new("Quote Type", "cme.mdp3.sbe.v8.1.quotetype", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_mdp3_sbe_v8_1.fields.recovery_msg = ProtoField.new("Recovery Msg", "cme.mdp3.sbe.v8.1.recoverymsg", ftypes.UINT8, nil, base.DEC, "0x20")
cme_mdp3_sbe_v8_1.fields.reference_id = ProtoField.new("Reference ID", "cme.mdp3.sbe.v8.1.referenceid", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.related_instruments_group = ProtoField.new("Related Instruments Group", "cme.mdp3.sbe.v8.1.relatedinstrumentsgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.related_instruments_groups = ProtoField.new("Related Instruments Groups", "cme.mdp3.sbe.v8.1.relatedinstrumentsgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.related_security_id = ProtoField.new("Related Security ID", "cme.mdp3.sbe.v8.1.relatedsecurityid", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.mdp3.sbe.v8.1.relatedsymgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.mdp3.sbe.v8.1.relatedsymgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.related_symbol = ProtoField.new("Related Symbol", "cme.mdp3.sbe.v8.1.relatedsymbol", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.reserved = ProtoField.new("Reserved", "cme.mdp3.sbe.v8.1.reserved", ftypes.UINT8, nil, base.DEC, "0x40")
cme_mdp3_sbe_v8_1.fields.reserved_12 = ProtoField.new("Reserved 12", "cme.mdp3.sbe.v8.1.reserved12", ftypes.UINT32, nil, base.DEC, "0xFFF00000")
cme_mdp3_sbe_v8_1.fields.reserved_bits = ProtoField.new("Reserved Bits", "cme.mdp3.sbe.v8.1.reservedbits", ftypes.UINT8, nil, base.DEC, "0x70")
cme_mdp3_sbe_v8_1.fields.rfq_cross_eligible = ProtoField.new("RFQ Cross Eligible", "cme.mdp3.sbe.v8.1.rfqcrosseligible", ftypes.UINT32, nil, base.DEC, "0x00002000")
cme_mdp3_sbe_v8_1.fields.rounded = ProtoField.new("Rounded", "cme.mdp3.sbe.v8.1.rounded", ftypes.UINT8, nil, base.DEC, "0x04")
cme_mdp3_sbe_v8_1.fields.rpt_seq = ProtoField.new("Rpt Seq", "cme.mdp3.sbe.v8.1.rptseq", ftypes.UINT32)
cme_mdp3_sbe_v8_1.fields.schema_id = ProtoField.new("Schema Id", "cme.mdp3.sbe.v8.1.schemaid", ftypes.UINT16)
cme_mdp3_sbe_v8_1.fields.security_exchange = ProtoField.new("Security Exchange", "cme.mdp3.sbe.v8.1.securityexchange", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.security_group = ProtoField.new("Security Group", "cme.mdp3.sbe.v8.1.securitygroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.security_id = ProtoField.new("Security ID", "cme.mdp3.sbe.v8.1.securityid", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.security_status = ProtoField.new("Security Status", "cme.mdp3.sbe.v8.1.securitystatus", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.mdp3.sbe.v8.1.securitysubtype", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.security_trading_event = ProtoField.new("Security Trading Event", "cme.mdp3.sbe.v8.1.securitytradingevent", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.security_trading_status = ProtoField.new("Security Trading Status", "cme.mdp3.sbe.v8.1.securitytradingstatus", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.security_type = ProtoField.new("Security Type", "cme.mdp3.sbe.v8.1.securitytype", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.security_update_action = ProtoField.new("Security Update Action", "cme.mdp3.sbe.v8.1.securityupdateaction", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.sending_time = ProtoField.new("Sending Time", "cme.mdp3.sbe.v8.1.sendingtime", ftypes.UINT64)
cme_mdp3_sbe_v8_1.fields.settl_currency = ProtoField.new("Settl Currency", "cme.mdp3.sbe.v8.1.settlcurrency", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.settl_price_type = ProtoField.new("Settl Price Type", "cme.mdp3.sbe.v8.1.settlpricetype", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.side = ProtoField.new("Side", "cme.mdp3.sbe.v8.1.side", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh = ProtoField.new("Snapshot Full Refresh", "cme.mdp3.sbe.v8.1.snapshotfullrefresh", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh_group = ProtoField.new("Snapshot Full Refresh Group", "cme.mdp3.sbe.v8.1.snapshotfullrefreshgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh_groups = ProtoField.new("Snapshot Full Refresh Groups", "cme.mdp3.sbe.v8.1.snapshotfullrefreshgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh_order_book = ProtoField.new("Snapshot Full Refresh Order Book", "cme.mdp3.sbe.v8.1.snapshotfullrefreshorderbook", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh_order_book_group = ProtoField.new("Snapshot Full Refresh Order Book Group", "cme.mdp3.sbe.v8.1.snapshotfullrefreshorderbookgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh_order_book_groups = ProtoField.new("Snapshot Full Refresh Order Book Groups", "cme.mdp3.sbe.v8.1.snapshotfullrefreshorderbookgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.strike_currency = ProtoField.new("Strike Currency", "cme.mdp3.sbe.v8.1.strikecurrency", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.strike_price = ProtoField.new("Strike Price", "cme.mdp3.sbe.v8.1.strikeprice", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.sub_fraction = ProtoField.new("Sub Fraction", "cme.mdp3.sbe.v8.1.subfraction", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.symbol = ProtoField.new("Symbol", "cme.mdp3.sbe.v8.1.symbol", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.template_id = ProtoField.new("Template Id", "cme.mdp3.sbe.v8.1.templateid", ftypes.UINT16)
cme_mdp3_sbe_v8_1.fields.text = ProtoField.new("Text", "cme.mdp3.sbe.v8.1.text", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.tick_rule = ProtoField.new("Tick Rule", "cme.mdp3.sbe.v8.1.tickrule", ftypes.INT8, {[1]="Yes",[0]="No"})
cme_mdp3_sbe_v8_1.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "cme.mdp3.sbe.v8.1.totnumreports", ftypes.UINT32)
cme_mdp3_sbe_v8_1.fields.trade_date = ProtoField.new("Trade Date", "cme.mdp3.sbe.v8.1.tradedate", ftypes.UINT16)
cme_mdp3_sbe_v8_1.fields.trade_id = ProtoField.new("Trade ID", "cme.mdp3.sbe.v8.1.tradeid", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "cme.mdp3.sbe.v8.1.tradingreferencedate", ftypes.UINT16)
cme_mdp3_sbe_v8_1.fields.trading_reference_price = ProtoField.new("Trading Reference Price", "cme.mdp3.sbe.v8.1.tradingreferenceprice", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.transact_time = ProtoField.new("Transact Time", "cme.mdp3.sbe.v8.1.transacttime", ftypes.UINT64)
cme_mdp3_sbe_v8_1.fields.underlying_product = ProtoField.new("Underlying Product", "cme.mdp3.sbe.v8.1.underlyingproduct", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.underlying_security_id = ProtoField.new("Underlying Security ID", "cme.mdp3.sbe.v8.1.underlyingsecurityid", ftypes.INT32)
cme_mdp3_sbe_v8_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "cme.mdp3.sbe.v8.1.underlyingsymbol", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.underlyings_group = ProtoField.new("Underlyings Group", "cme.mdp3.sbe.v8.1.underlyingsgroup", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.underlyings_groups = ProtoField.new("Underlyings Groups", "cme.mdp3.sbe.v8.1.underlyingsgroups", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "cme.mdp3.sbe.v8.1.unitofmeasure", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.unit_of_measure_qty = ProtoField.new("Unit Of Measure Qty", "cme.mdp3.sbe.v8.1.unitofmeasureqty", ftypes.INT64)
cme_mdp3_sbe_v8_1.fields.user_defined_instrument = ProtoField.new("User Defined Instrument", "cme.mdp3.sbe.v8.1.userdefinedinstrument", ftypes.STRING)
cme_mdp3_sbe_v8_1.fields.variable_product_eligibility = ProtoField.new("Variable Product Eligibility", "cme.mdp3.sbe.v8.1.variableproducteligibility", ftypes.UINT32, nil, base.DEC, "0x00010000")
cme_mdp3_sbe_v8_1.fields.version = ProtoField.new("Version", "cme.mdp3.sbe.v8.1.version", ftypes.UINT16)
cme_mdp3_sbe_v8_1.fields.volatility_quoted_option = ProtoField.new("Volatility Quoted Option", "cme.mdp3.sbe.v8.1.volatilityquotedoption", ftypes.UINT32, nil, base.DEC, "0x00001000")
cme_mdp3_sbe_v8_1.fields.week = ProtoField.new("week", "cme.mdp3.sbe.v8.1.week", ftypes.UINT8)
cme_mdp3_sbe_v8_1.fields.year = ProtoField.new("year", "cme.mdp3.sbe.v8.1.year", ftypes.UINT16)
cme_mdp3_sbe_v8_1.fields.zero_price_outright_eligible = ProtoField.new("Zero Price Outright Eligible", "cme.mdp3.sbe.v8.1.zeropriceoutrighteligible", ftypes.UINT32, nil, base.DEC, "0x00004000")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cme Mdp3 Sbe 8.1 Element Dissection Options
show.admin_login = true
show.admin_logout = true
show.channel_reset = true
show.channel_reset_group = true
show.channel_reset_groups = true
show.events_group = true
show.events_groups = true
show.group_size = true
show.group_size8_byte = true
show.inst_attrib_group = true
show.inst_attrib_groups = true
show.inst_attrib_value = true
show.legs_group = true
show.legs_groups = true
show.lot_type_rules_group = true
show.lot_type_rules_groups = true
show.match_event_indicator = true
show.maturity_month_year = true
show.md_feed_types_group = true
show.md_feed_types_groups = true
show.md_incremental_refresh_book = true
show.md_incremental_refresh_book_group = true
show.md_incremental_refresh_book_groups = true
show.md_incremental_refresh_book_order_group = true
show.md_incremental_refresh_book_order_groups = true
show.md_incremental_refresh_daily_statistics = true
show.md_incremental_refresh_daily_statistics_group = true
show.md_incremental_refresh_daily_statistics_groups = true
show.md_incremental_refresh_limits_banding = true
show.md_incremental_refresh_limits_banding_group = true
show.md_incremental_refresh_limits_banding_groups = true
show.md_incremental_refresh_order_book = true
show.md_incremental_refresh_order_book_group = true
show.md_incremental_refresh_order_book_groups = true
show.md_incremental_refresh_session_statistics = true
show.md_incremental_refresh_session_statistics_group = true
show.md_incremental_refresh_session_statistics_groups = true
show.md_incremental_refresh_trade = true
show.md_incremental_refresh_trade_group = true
show.md_incremental_refresh_trade_groups = true
show.md_incremental_refresh_trade_summary = true
show.md_incremental_refresh_trade_summary_group = true
show.md_incremental_refresh_trade_summary_groups = true
show.md_incremental_refresh_trade_summary_order_group = true
show.md_incremental_refresh_trade_summary_order_groups = true
show.md_incremental_refresh_volume = true
show.md_incremental_refresh_volume_group = true
show.md_incremental_refresh_volume_groups = true
show.md_instrument_definition_future = true
show.md_instrument_definition_option = true
show.md_instrument_definition_spread = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.quote_request = true
show.related_instruments_group = true
show.related_instruments_groups = true
show.related_sym_group = true
show.related_sym_groups = true
show.security_status = true
show.settl_price_type = true
show.snapshot_full_refresh = true
show.snapshot_full_refresh_group = true
show.snapshot_full_refresh_groups = true
show.snapshot_full_refresh_order_book = true
show.snapshot_full_refresh_order_book_group = true
show.snapshot_full_refresh_order_book_groups = true
show.underlyings_group = true
show.underlyings_groups = true
show.payload = false

-- Register Cme Mdp3 Sbe 8.1 Show Options
cme_mdp3_sbe_v8_1.prefs.show_admin_login = Pref.bool("Show Admin Login", show.admin_login, "Parse and add Admin Login to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_admin_logout = Pref.bool("Show Admin Logout", show.admin_logout, "Parse and add Admin Logout to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_channel_reset = Pref.bool("Show Channel Reset", show.channel_reset, "Parse and add Channel Reset to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_channel_reset_group = Pref.bool("Show Channel Reset Group", show.channel_reset_group, "Parse and add Channel Reset Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_channel_reset_groups = Pref.bool("Show Channel Reset Groups", show.channel_reset_groups, "Parse and add Channel Reset Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_events_group = Pref.bool("Show Events Group", show.events_group, "Parse and add Events Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_events_groups = Pref.bool("Show Events Groups", show.events_groups, "Parse and add Events Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_group_size = Pref.bool("Show group Size", show.group_size, "Parse and add group Size to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_group_size8_byte = Pref.bool("Show group Size8 Byte", show.group_size8_byte, "Parse and add group Size8 Byte to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_inst_attrib_group = Pref.bool("Show Inst Attrib Group", show.inst_attrib_group, "Parse and add Inst Attrib Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_inst_attrib_groups = Pref.bool("Show Inst Attrib Groups", show.inst_attrib_groups, "Parse and add Inst Attrib Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_inst_attrib_value = Pref.bool("Show Inst Attrib Value", show.inst_attrib_value, "Parse and add Inst Attrib Value to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_legs_group = Pref.bool("Show Legs Group", show.legs_group, "Parse and add Legs Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_legs_groups = Pref.bool("Show Legs Groups", show.legs_groups, "Parse and add Legs Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_lot_type_rules_group = Pref.bool("Show Lot Type Rules Group", show.lot_type_rules_group, "Parse and add Lot Type Rules Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_lot_type_rules_groups = Pref.bool("Show Lot Type Rules Groups", show.lot_type_rules_groups, "Parse and add Lot Type Rules Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_match_event_indicator = Pref.bool("Show Match Event Indicator", show.match_event_indicator, "Parse and add Match Event Indicator to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_feed_types_group = Pref.bool("Show MD Feed Types Group", show.md_feed_types_group, "Parse and add MD Feed Types Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_feed_types_groups = Pref.bool("Show MD Feed Types Groups", show.md_feed_types_groups, "Parse and add MD Feed Types Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book = Pref.bool("Show MD Incremental Refresh Book", show.md_incremental_refresh_book, "Parse and add MD Incremental Refresh Book to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_group = Pref.bool("Show MD Incremental Refresh Book Group", show.md_incremental_refresh_book_group, "Parse and add MD Incremental Refresh Book Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_groups = Pref.bool("Show MD Incremental Refresh Book Groups", show.md_incremental_refresh_book_groups, "Parse and add MD Incremental Refresh Book Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_order_group = Pref.bool("Show MD Incremental Refresh Book Order Group", show.md_incremental_refresh_book_order_group, "Parse and add MD Incremental Refresh Book Order Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_order_groups = Pref.bool("Show MD Incremental Refresh Book Order Groups", show.md_incremental_refresh_book_order_groups, "Parse and add MD Incremental Refresh Book Order Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_daily_statistics = Pref.bool("Show MD Incremental Refresh Daily Statistics", show.md_incremental_refresh_daily_statistics, "Parse and add MD Incremental Refresh Daily Statistics to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_daily_statistics_group = Pref.bool("Show MD Incremental Refresh Daily Statistics Group", show.md_incremental_refresh_daily_statistics_group, "Parse and add MD Incremental Refresh Daily Statistics Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_daily_statistics_groups = Pref.bool("Show MD Incremental Refresh Daily Statistics Groups", show.md_incremental_refresh_daily_statistics_groups, "Parse and add MD Incremental Refresh Daily Statistics Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_limits_banding = Pref.bool("Show MD Incremental Refresh Limits Banding", show.md_incremental_refresh_limits_banding, "Parse and add MD Incremental Refresh Limits Banding to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_limits_banding_group = Pref.bool("Show MD Incremental Refresh Limits Banding Group", show.md_incremental_refresh_limits_banding_group, "Parse and add MD Incremental Refresh Limits Banding Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_limits_banding_groups = Pref.bool("Show MD Incremental Refresh Limits Banding Groups", show.md_incremental_refresh_limits_banding_groups, "Parse and add MD Incremental Refresh Limits Banding Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_order_book = Pref.bool("Show MD Incremental Refresh Order Book", show.md_incremental_refresh_order_book, "Parse and add MD Incremental Refresh Order Book to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_order_book_group = Pref.bool("Show MD Incremental Refresh Order Book Group", show.md_incremental_refresh_order_book_group, "Parse and add MD Incremental Refresh Order Book Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_order_book_groups = Pref.bool("Show MD Incremental Refresh Order Book Groups", show.md_incremental_refresh_order_book_groups, "Parse and add MD Incremental Refresh Order Book Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_session_statistics = Pref.bool("Show MD Incremental Refresh Session Statistics", show.md_incremental_refresh_session_statistics, "Parse and add MD Incremental Refresh Session Statistics to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_session_statistics_group = Pref.bool("Show MD Incremental Refresh Session Statistics Group", show.md_incremental_refresh_session_statistics_group, "Parse and add MD Incremental Refresh Session Statistics Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_session_statistics_groups = Pref.bool("Show MD Incremental Refresh Session Statistics Groups", show.md_incremental_refresh_session_statistics_groups, "Parse and add MD Incremental Refresh Session Statistics Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade = Pref.bool("Show MD Incremental Refresh Trade", show.md_incremental_refresh_trade, "Parse and add MD Incremental Refresh Trade to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_group = Pref.bool("Show MD Incremental Refresh Trade Group", show.md_incremental_refresh_trade_group, "Parse and add MD Incremental Refresh Trade Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_groups = Pref.bool("Show MD Incremental Refresh Trade Groups", show.md_incremental_refresh_trade_groups, "Parse and add MD Incremental Refresh Trade Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary = Pref.bool("Show MD Incremental Refresh Trade Summary", show.md_incremental_refresh_trade_summary, "Parse and add MD Incremental Refresh Trade Summary to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_group = Pref.bool("Show MD Incremental Refresh Trade Summary Group", show.md_incremental_refresh_trade_summary_group, "Parse and add MD Incremental Refresh Trade Summary Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_groups = Pref.bool("Show MD Incremental Refresh Trade Summary Groups", show.md_incremental_refresh_trade_summary_groups, "Parse and add MD Incremental Refresh Trade Summary Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_order_group = Pref.bool("Show MD Incremental Refresh Trade Summary Order Group", show.md_incremental_refresh_trade_summary_order_group, "Parse and add MD Incremental Refresh Trade Summary Order Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_order_groups = Pref.bool("Show MD Incremental Refresh Trade Summary Order Groups", show.md_incremental_refresh_trade_summary_order_groups, "Parse and add MD Incremental Refresh Trade Summary Order Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_volume = Pref.bool("Show MD Incremental Refresh Volume", show.md_incremental_refresh_volume, "Parse and add MD Incremental Refresh Volume to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_volume_group = Pref.bool("Show MD Incremental Refresh Volume Group", show.md_incremental_refresh_volume_group, "Parse and add MD Incremental Refresh Volume Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_volume_groups = Pref.bool("Show MD Incremental Refresh Volume Groups", show.md_incremental_refresh_volume_groups, "Parse and add MD Incremental Refresh Volume Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_instrument_definition_future = Pref.bool("Show MD Instrument Definition Future", show.md_instrument_definition_future, "Parse and add MD Instrument Definition Future to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_instrument_definition_option = Pref.bool("Show MD Instrument Definition Option", show.md_instrument_definition_option, "Parse and add MD Instrument Definition Option to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_md_instrument_definition_spread = Pref.bool("Show MD Instrument Definition Spread", show.md_instrument_definition_spread, "Parse and add MD Instrument Definition Spread to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_related_instruments_group = Pref.bool("Show Related Instruments Group", show.related_instruments_group, "Parse and add Related Instruments Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_related_instruments_groups = Pref.bool("Show Related Instruments Groups", show.related_instruments_groups, "Parse and add Related Instruments Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_related_sym_group = Pref.bool("Show Related Sym Group", show.related_sym_group, "Parse and add Related Sym Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_related_sym_groups = Pref.bool("Show Related Sym Groups", show.related_sym_groups, "Parse and add Related Sym Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_security_status = Pref.bool("Show Security Status", show.security_status, "Parse and add Security Status to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_settl_price_type = Pref.bool("Show Settl Price Type", show.settl_price_type, "Parse and add Settl Price Type to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh = Pref.bool("Show Snapshot Full Refresh", show.snapshot_full_refresh, "Parse and add Snapshot Full Refresh to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_group = Pref.bool("Show Snapshot Full Refresh Group", show.snapshot_full_refresh_group, "Parse and add Snapshot Full Refresh Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_groups = Pref.bool("Show Snapshot Full Refresh Groups", show.snapshot_full_refresh_groups, "Parse and add Snapshot Full Refresh Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_order_book = Pref.bool("Show Snapshot Full Refresh Order Book", show.snapshot_full_refresh_order_book, "Parse and add Snapshot Full Refresh Order Book to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_order_book_group = Pref.bool("Show Snapshot Full Refresh Order Book Group", show.snapshot_full_refresh_order_book_group, "Parse and add Snapshot Full Refresh Order Book Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_order_book_groups = Pref.bool("Show Snapshot Full Refresh Order Book Groups", show.snapshot_full_refresh_order_book_groups, "Parse and add Snapshot Full Refresh Order Book Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_underlyings_group = Pref.bool("Show Underlyings Group", show.underlyings_group, "Parse and add Underlyings Group to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_underlyings_groups = Pref.bool("Show Underlyings Groups", show.underlyings_groups, "Parse and add Underlyings Groups to protocol tree")
cme_mdp3_sbe_v8_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cme_mdp3_sbe_v8_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.admin_login ~= cme_mdp3_sbe_v8_1.prefs.show_admin_login then
    show.admin_login = cme_mdp3_sbe_v8_1.prefs.show_admin_login
    changed = true
  end
  if show.admin_logout ~= cme_mdp3_sbe_v8_1.prefs.show_admin_logout then
    show.admin_logout = cme_mdp3_sbe_v8_1.prefs.show_admin_logout
    changed = true
  end
  if show.channel_reset ~= cme_mdp3_sbe_v8_1.prefs.show_channel_reset then
    show.channel_reset = cme_mdp3_sbe_v8_1.prefs.show_channel_reset
    changed = true
  end
  if show.channel_reset_group ~= cme_mdp3_sbe_v8_1.prefs.show_channel_reset_group then
    show.channel_reset_group = cme_mdp3_sbe_v8_1.prefs.show_channel_reset_group
    changed = true
  end
  if show.channel_reset_groups ~= cme_mdp3_sbe_v8_1.prefs.show_channel_reset_groups then
    show.channel_reset_groups = cme_mdp3_sbe_v8_1.prefs.show_channel_reset_groups
    changed = true
  end
  if show.events_group ~= cme_mdp3_sbe_v8_1.prefs.show_events_group then
    show.events_group = cme_mdp3_sbe_v8_1.prefs.show_events_group
    changed = true
  end
  if show.events_groups ~= cme_mdp3_sbe_v8_1.prefs.show_events_groups then
    show.events_groups = cme_mdp3_sbe_v8_1.prefs.show_events_groups
    changed = true
  end
  if show.group_size ~= cme_mdp3_sbe_v8_1.prefs.show_group_size then
    show.group_size = cme_mdp3_sbe_v8_1.prefs.show_group_size
    changed = true
  end
  if show.group_size8_byte ~= cme_mdp3_sbe_v8_1.prefs.show_group_size8_byte then
    show.group_size8_byte = cme_mdp3_sbe_v8_1.prefs.show_group_size8_byte
    changed = true
  end
  if show.inst_attrib_group ~= cme_mdp3_sbe_v8_1.prefs.show_inst_attrib_group then
    show.inst_attrib_group = cme_mdp3_sbe_v8_1.prefs.show_inst_attrib_group
    changed = true
  end
  if show.inst_attrib_groups ~= cme_mdp3_sbe_v8_1.prefs.show_inst_attrib_groups then
    show.inst_attrib_groups = cme_mdp3_sbe_v8_1.prefs.show_inst_attrib_groups
    changed = true
  end
  if show.inst_attrib_value ~= cme_mdp3_sbe_v8_1.prefs.show_inst_attrib_value then
    show.inst_attrib_value = cme_mdp3_sbe_v8_1.prefs.show_inst_attrib_value
    changed = true
  end
  if show.legs_group ~= cme_mdp3_sbe_v8_1.prefs.show_legs_group then
    show.legs_group = cme_mdp3_sbe_v8_1.prefs.show_legs_group
    changed = true
  end
  if show.legs_groups ~= cme_mdp3_sbe_v8_1.prefs.show_legs_groups then
    show.legs_groups = cme_mdp3_sbe_v8_1.prefs.show_legs_groups
    changed = true
  end
  if show.lot_type_rules_group ~= cme_mdp3_sbe_v8_1.prefs.show_lot_type_rules_group then
    show.lot_type_rules_group = cme_mdp3_sbe_v8_1.prefs.show_lot_type_rules_group
    changed = true
  end
  if show.lot_type_rules_groups ~= cme_mdp3_sbe_v8_1.prefs.show_lot_type_rules_groups then
    show.lot_type_rules_groups = cme_mdp3_sbe_v8_1.prefs.show_lot_type_rules_groups
    changed = true
  end
  if show.match_event_indicator ~= cme_mdp3_sbe_v8_1.prefs.show_match_event_indicator then
    show.match_event_indicator = cme_mdp3_sbe_v8_1.prefs.show_match_event_indicator
    changed = true
  end
  if show.maturity_month_year ~= cme_mdp3_sbe_v8_1.prefs.show_maturity_month_year then
    show.maturity_month_year = cme_mdp3_sbe_v8_1.prefs.show_maturity_month_year
    changed = true
  end
  if show.md_feed_types_group ~= cme_mdp3_sbe_v8_1.prefs.show_md_feed_types_group then
    show.md_feed_types_group = cme_mdp3_sbe_v8_1.prefs.show_md_feed_types_group
    changed = true
  end
  if show.md_feed_types_groups ~= cme_mdp3_sbe_v8_1.prefs.show_md_feed_types_groups then
    show.md_feed_types_groups = cme_mdp3_sbe_v8_1.prefs.show_md_feed_types_groups
    changed = true
  end
  if show.md_incremental_refresh_book ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book then
    show.md_incremental_refresh_book = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book
    changed = true
  end
  if show.md_incremental_refresh_book_group ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_group then
    show.md_incremental_refresh_book_group = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_group
    changed = true
  end
  if show.md_incremental_refresh_book_groups ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_groups then
    show.md_incremental_refresh_book_groups = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_groups
    changed = true
  end
  if show.md_incremental_refresh_book_order_group ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_order_group then
    show.md_incremental_refresh_book_order_group = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_order_group
    changed = true
  end
  if show.md_incremental_refresh_book_order_groups ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_order_groups then
    show.md_incremental_refresh_book_order_groups = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_book_order_groups
    changed = true
  end
  if show.md_incremental_refresh_daily_statistics ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_daily_statistics then
    show.md_incremental_refresh_daily_statistics = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_daily_statistics
    changed = true
  end
  if show.md_incremental_refresh_daily_statistics_group ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_daily_statistics_group then
    show.md_incremental_refresh_daily_statistics_group = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_daily_statistics_group
    changed = true
  end
  if show.md_incremental_refresh_daily_statistics_groups ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_daily_statistics_groups then
    show.md_incremental_refresh_daily_statistics_groups = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_daily_statistics_groups
    changed = true
  end
  if show.md_incremental_refresh_limits_banding ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_limits_banding then
    show.md_incremental_refresh_limits_banding = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_limits_banding
    changed = true
  end
  if show.md_incremental_refresh_limits_banding_group ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_limits_banding_group then
    show.md_incremental_refresh_limits_banding_group = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_limits_banding_group
    changed = true
  end
  if show.md_incremental_refresh_limits_banding_groups ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_limits_banding_groups then
    show.md_incremental_refresh_limits_banding_groups = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_limits_banding_groups
    changed = true
  end
  if show.md_incremental_refresh_order_book ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_order_book then
    show.md_incremental_refresh_order_book = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_order_book
    changed = true
  end
  if show.md_incremental_refresh_order_book_group ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_order_book_group then
    show.md_incremental_refresh_order_book_group = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_order_book_group
    changed = true
  end
  if show.md_incremental_refresh_order_book_groups ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_order_book_groups then
    show.md_incremental_refresh_order_book_groups = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_order_book_groups
    changed = true
  end
  if show.md_incremental_refresh_session_statistics ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_session_statistics then
    show.md_incremental_refresh_session_statistics = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_session_statistics
    changed = true
  end
  if show.md_incremental_refresh_session_statistics_group ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_session_statistics_group then
    show.md_incremental_refresh_session_statistics_group = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_session_statistics_group
    changed = true
  end
  if show.md_incremental_refresh_session_statistics_groups ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_session_statistics_groups then
    show.md_incremental_refresh_session_statistics_groups = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_session_statistics_groups
    changed = true
  end
  if show.md_incremental_refresh_trade ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade then
    show.md_incremental_refresh_trade = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade
    changed = true
  end
  if show.md_incremental_refresh_trade_group ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_group then
    show.md_incremental_refresh_trade_group = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_group
    changed = true
  end
  if show.md_incremental_refresh_trade_groups ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_groups then
    show.md_incremental_refresh_trade_groups = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_groups
    changed = true
  end
  if show.md_incremental_refresh_trade_summary ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary then
    show.md_incremental_refresh_trade_summary = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary
    changed = true
  end
  if show.md_incremental_refresh_trade_summary_group ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_group then
    show.md_incremental_refresh_trade_summary_group = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_group
    changed = true
  end
  if show.md_incremental_refresh_trade_summary_groups ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_groups then
    show.md_incremental_refresh_trade_summary_groups = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_groups
    changed = true
  end
  if show.md_incremental_refresh_trade_summary_order_group ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_order_group then
    show.md_incremental_refresh_trade_summary_order_group = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_order_group
    changed = true
  end
  if show.md_incremental_refresh_trade_summary_order_groups ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_order_groups then
    show.md_incremental_refresh_trade_summary_order_groups = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_trade_summary_order_groups
    changed = true
  end
  if show.md_incremental_refresh_volume ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_volume then
    show.md_incremental_refresh_volume = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_volume
    changed = true
  end
  if show.md_incremental_refresh_volume_group ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_volume_group then
    show.md_incremental_refresh_volume_group = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_volume_group
    changed = true
  end
  if show.md_incremental_refresh_volume_groups ~= cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_volume_groups then
    show.md_incremental_refresh_volume_groups = cme_mdp3_sbe_v8_1.prefs.show_md_incremental_refresh_volume_groups
    changed = true
  end
  if show.md_instrument_definition_future ~= cme_mdp3_sbe_v8_1.prefs.show_md_instrument_definition_future then
    show.md_instrument_definition_future = cme_mdp3_sbe_v8_1.prefs.show_md_instrument_definition_future
    changed = true
  end
  if show.md_instrument_definition_option ~= cme_mdp3_sbe_v8_1.prefs.show_md_instrument_definition_option then
    show.md_instrument_definition_option = cme_mdp3_sbe_v8_1.prefs.show_md_instrument_definition_option
    changed = true
  end
  if show.md_instrument_definition_spread ~= cme_mdp3_sbe_v8_1.prefs.show_md_instrument_definition_spread then
    show.md_instrument_definition_spread = cme_mdp3_sbe_v8_1.prefs.show_md_instrument_definition_spread
    changed = true
  end
  if show.message ~= cme_mdp3_sbe_v8_1.prefs.show_message then
    show.message = cme_mdp3_sbe_v8_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= cme_mdp3_sbe_v8_1.prefs.show_message_header then
    show.message_header = cme_mdp3_sbe_v8_1.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cme_mdp3_sbe_v8_1.prefs.show_packet then
    show.packet = cme_mdp3_sbe_v8_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cme_mdp3_sbe_v8_1.prefs.show_packet_header then
    show.packet_header = cme_mdp3_sbe_v8_1.prefs.show_packet_header
    changed = true
  end
  if show.quote_request ~= cme_mdp3_sbe_v8_1.prefs.show_quote_request then
    show.quote_request = cme_mdp3_sbe_v8_1.prefs.show_quote_request
    changed = true
  end
  if show.related_instruments_group ~= cme_mdp3_sbe_v8_1.prefs.show_related_instruments_group then
    show.related_instruments_group = cme_mdp3_sbe_v8_1.prefs.show_related_instruments_group
    changed = true
  end
  if show.related_instruments_groups ~= cme_mdp3_sbe_v8_1.prefs.show_related_instruments_groups then
    show.related_instruments_groups = cme_mdp3_sbe_v8_1.prefs.show_related_instruments_groups
    changed = true
  end
  if show.related_sym_group ~= cme_mdp3_sbe_v8_1.prefs.show_related_sym_group then
    show.related_sym_group = cme_mdp3_sbe_v8_1.prefs.show_related_sym_group
    changed = true
  end
  if show.related_sym_groups ~= cme_mdp3_sbe_v8_1.prefs.show_related_sym_groups then
    show.related_sym_groups = cme_mdp3_sbe_v8_1.prefs.show_related_sym_groups
    changed = true
  end
  if show.security_status ~= cme_mdp3_sbe_v8_1.prefs.show_security_status then
    show.security_status = cme_mdp3_sbe_v8_1.prefs.show_security_status
    changed = true
  end
  if show.settl_price_type ~= cme_mdp3_sbe_v8_1.prefs.show_settl_price_type then
    show.settl_price_type = cme_mdp3_sbe_v8_1.prefs.show_settl_price_type
    changed = true
  end
  if show.snapshot_full_refresh ~= cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh then
    show.snapshot_full_refresh = cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh
    changed = true
  end
  if show.snapshot_full_refresh_group ~= cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_group then
    show.snapshot_full_refresh_group = cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_group
    changed = true
  end
  if show.snapshot_full_refresh_groups ~= cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_groups then
    show.snapshot_full_refresh_groups = cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_groups
    changed = true
  end
  if show.snapshot_full_refresh_order_book ~= cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_order_book then
    show.snapshot_full_refresh_order_book = cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_order_book
    changed = true
  end
  if show.snapshot_full_refresh_order_book_group ~= cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_order_book_group then
    show.snapshot_full_refresh_order_book_group = cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_order_book_group
    changed = true
  end
  if show.snapshot_full_refresh_order_book_groups ~= cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_order_book_groups then
    show.snapshot_full_refresh_order_book_groups = cme_mdp3_sbe_v8_1.prefs.show_snapshot_full_refresh_order_book_groups
    changed = true
  end
  if show.underlyings_group ~= cme_mdp3_sbe_v8_1.prefs.show_underlyings_group then
    show.underlyings_group = cme_mdp3_sbe_v8_1.prefs.show_underlyings_group
    changed = true
  end
  if show.underlyings_groups ~= cme_mdp3_sbe_v8_1.prefs.show_underlyings_groups then
    show.underlyings_groups = cme_mdp3_sbe_v8_1.prefs.show_underlyings_groups
    changed = true
  end
  if show.payload ~= cme_mdp3_sbe_v8_1.prefs.show_payload then
    show.payload = cme_mdp3_sbe_v8_1.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Mdp3 Sbe 8.1
-----------------------------------------------------------------------

-- Size: MD Entry Type
size_of.md_entry_type = 1

-- Display: MD Entry Type
display.md_entry_type = function(value)
  if value == "0" then
    return "MD Entry Type: MD Entry Type (0)"
  end
  if value == "1" then
    return "MD Entry Type: MD Entry Type (1)"
  end
  if value == "2" then
    return "MD Entry Type: MD Entry Type (2)"
  end
  if value == "4" then
    return "MD Entry Type: MD Entry Type (4)"
  end
  if value == "6" then
    return "MD Entry Type: MD Entry Type (6)"
  end
  if value == "7" then
    return "MD Entry Type: MD Entry Type (7)"
  end
  if value == "8" then
    return "MD Entry Type: MD Entry Type (8)"
  end
  if value == "B" then
    return "MD Entry Type: MD Entry Type (B)"
  end
  if value == "C" then
    return "MD Entry Type: MD Entry Type (C)"
  end
  if value == "E" then
    return "MD Entry Type: MD Entry Type (E)"
  end
  if value == "F" then
    return "MD Entry Type: MD Entry Type (F)"
  end
  if value == "J" then
    return "MD Entry Type: MD Entry Type (J)"
  end
  if value == "N" then
    return "MD Entry Type: MD Entry Type (N)"
  end
  if value == "O" then
    return "MD Entry Type: MD Entry Type (O)"
  end
  if value == "W" then
    return "MD Entry Type: MD Entry Type (W)"
  end
  if value == "e" then
    return "MD Entry Type: MD Entry Type (e)"
  end
  if value == "g" then
    return "MD Entry Type: MD Entry Type (g)"
  end

  return "MD Entry Type: Unknown("..value..")"
end

-- Dissect: MD Entry Type
dissect.md_entry_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_entry_type)
  local value = range:string()
  local display = display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.md_entry_type, range, value, display)

  return offset + size_of.md_entry_type
end

-- Size: MD Display Qty
size_of.md_display_qty = 4

-- Display: MD Display Qty
display.md_display_qty = function(value)
  return "MD Display Qty: "..value
end

-- Dissect: MD Display Qty
dissect.md_display_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_display_qty)
  local value = range:le_int()
  local display = display.md_display_qty(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.md_display_qty, range, value, display)

  return offset + size_of.md_display_qty
end

-- Size: MD Entry Px
size_of.md_entry_px = 8

-- Display: MD Entry Px
display.md_entry_px = function(value)
  local factor = 10000000
  return "MD Entry Px: "..value/factor
end

-- Dissect: MD Entry Px
dissect.md_entry_px = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_entry_px)
  local value = range:le_int64()
  local display = display.md_entry_px(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.md_entry_px, range, value, display)

  return offset + size_of.md_entry_px
end

-- Size: MD Order Priority
size_of.md_order_priority = 8

-- Display: MD Order Priority
display.md_order_priority = function(value)
  return "MD Order Priority: "..value
end

-- Dissect: MD Order Priority
dissect.md_order_priority = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_order_priority)
  local value = range:le_uint64()
  local display = display.md_order_priority(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.md_order_priority, range, value, display)

  return offset + size_of.md_order_priority
end

-- Size: Order ID
size_of.order_id = 8

-- Display: Order ID
display.order_id = function(value)
  return "Order ID: "..value
end

-- Dissect: Order ID
dissect.order_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_id)
  local value = range:le_uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.order_id, range, value, display)

  return offset + size_of.order_id
end

-- Display: Snapshot Full Refresh Order Book Group
display.snapshot_full_refresh_order_book_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book Group
dissect.snapshot_full_refresh_order_book_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order ID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- MD Order Priority: 8 Byte Unsigned Fixed Width Integer
  index = dissect.md_order_priority(buffer, index, packet, parent)

  -- MD Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- MD Display Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.md_display_qty(buffer, index, packet, parent)

  -- MD Entry Type: 1 Byte Ascii String Enum with 17 values
  index = dissect.md_entry_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book Group
dissect.snapshot_full_refresh_order_book_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.snapshot_full_refresh_order_book_group then
    local range = buffer(offset, 29)
    local display = display.snapshot_full_refresh_order_book_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh_order_book_group, range, display)
  end

  return dissect.snapshot_full_refresh_order_book_group_fields(buffer, offset, packet, parent)
end

-- Size: num In Group
size_of.num_in_group = 1

-- Display: num In Group
display.num_in_group = function(value)
  return "num In Group: "..value
end

-- Dissect: num In Group
dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: block Length
size_of.block_length = 2

-- Display: block Length
display.block_length = function(value)
  return "block Length: "..value
end

-- Dissect: block Length
dissect.block_length = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.block_length)
  local value = range:le_uint()
  local display = display.block_length(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.block_length, range, value, display)

  return offset + size_of.block_length
end

-- Display: group Size
display.group_size = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: group Size
dissect.group_size_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- block Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.block_length(buffer, index, packet, parent)

  -- num In Group: 1 Byte Unsigned Fixed Width Integer
  index = dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: group Size
dissect.group_size = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size then
    local range = buffer(offset, 3)
    local display = display.group_size(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.group_size, range, display)
  end

  return dissect.group_size_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Snapshot Full Refresh Order Book Groups
size_of.snapshot_full_refresh_order_book_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local snapshot_full_refresh_order_book_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_order_book_group_count * 29

  return index
end

-- Display: Snapshot Full Refresh Order Book Groups
display.snapshot_full_refresh_order_book_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book Groups
dissect.snapshot_full_refresh_order_book_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Snapshot Full Refresh Order Book Group: Struct of 5 fields
  local snapshot_full_refresh_order_book_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, snapshot_full_refresh_order_book_group_count do
    index = dissect.snapshot_full_refresh_order_book_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Order Book Groups
dissect.snapshot_full_refresh_order_book_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book_groups then
    local length = size_of.snapshot_full_refresh_order_book_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_order_book_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh_order_book_groups, range, display)
  end

  return dissect.snapshot_full_refresh_order_book_groups_fields(buffer, offset, packet, parent)
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

  parent:add(cme_mdp3_sbe_v8_1.fields.transact_time, range, value, display)

  return offset + size_of.transact_time
end

-- Size: Current Chunk
size_of.current_chunk = 4

-- Display: Current Chunk
display.current_chunk = function(value)
  return "Current Chunk: "..value
end

-- Dissect: Current Chunk
dissect.current_chunk = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.current_chunk)
  local value = range:le_uint()
  local display = display.current_chunk(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.current_chunk, range, value, display)

  return offset + size_of.current_chunk
end

-- Size: No Chunks
size_of.no_chunks = 4

-- Display: No Chunks
display.no_chunks = function(value)
  return "No Chunks: "..value
end

-- Dissect: No Chunks
dissect.no_chunks = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.no_chunks)
  local value = range:le_uint()
  local display = display.no_chunks(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.no_chunks, range, value, display)

  return offset + size_of.no_chunks
end

-- Size: Security ID
size_of.security_id = 4

-- Display: Security ID
display.security_id = function(value)
  return "Security ID: "..value
end

-- Dissect: Security ID
dissect.security_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_id)
  local value = range:le_int()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.security_id, range, value, display)

  return offset + size_of.security_id
end

-- Size: Tot Num Reports
size_of.tot_num_reports = 4

-- Display: Tot Num Reports
display.tot_num_reports = function(value)
  return "Tot Num Reports: "..value
end

-- Dissect: Tot Num Reports
dissect.tot_num_reports = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.tot_num_reports)
  local value = range:le_uint()
  local display = display.tot_num_reports(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.tot_num_reports, range, value, display)

  return offset + size_of.tot_num_reports
end

-- Size: Last Msg Seq Num Processed
size_of.last_msg_seq_num_processed = 4

-- Display: Last Msg Seq Num Processed
display.last_msg_seq_num_processed = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
dissect.last_msg_seq_num_processed = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_msg_seq_num_processed)
  local value = range:le_uint()
  local display = display.last_msg_seq_num_processed(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.last_msg_seq_num_processed, range, value, display)

  return offset + size_of.last_msg_seq_num_processed
end

-- Calculate runtime size: Snapshot Full Refresh Order Book
size_of.snapshot_full_refresh_order_book = function(buffer, offset)
  local index = 0

  index = index + 28

  index = index + size_of.snapshot_full_refresh_order_book_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Order Book
display.snapshot_full_refresh_order_book = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book
dissect.snapshot_full_refresh_order_book_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index = dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- No Chunks: 4 Byte Unsigned Fixed Width Integer
  index = dissect.no_chunks(buffer, index, packet, parent)

  -- Current Chunk: 4 Byte Unsigned Fixed Width Integer
  index = dissect.current_chunk(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Snapshot Full Refresh Order Book Groups: Struct of 2 fields
  index = dissect.snapshot_full_refresh_order_book_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book
dissect.snapshot_full_refresh_order_book = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book then
    local length = size_of.snapshot_full_refresh_order_book(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_order_book(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh_order_book, range, display)
  end

  return dissect.snapshot_full_refresh_order_book_fields(buffer, offset, packet, parent)
end

-- Size: Padding 6
size_of.padding_6 = 6

-- Display: Padding 6
display.padding_6 = function(value)
  return "Padding 6: "..value
end

-- Dissect: Padding 6
dissect.padding_6 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.padding_6)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_6(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.padding_6, range, value, display)

  return offset + size_of.padding_6
end

-- Size: MD Update Action
size_of.md_update_action = 1

-- Display: MD Update Action
display.md_update_action = function(value)
  if value == 0 then
    return "MD Update Action: MD Update Action (0)"
  end
  if value == 1 then
    return "MD Update Action: MD Update Action (1)"
  end
  if value == 2 then
    return "MD Update Action: MD Update Action (2)"
  end
  if value == 3 then
    return "MD Update Action: MD Update Action (3)"
  end
  if value == 4 then
    return "MD Update Action: MD Update Action (4)"
  end
  if value == 5 then
    return "MD Update Action: MD Update Action (5)"
  end

  return "MD Update Action: Unknown("..value..")"
end

-- Dissect: MD Update Action
dissect.md_update_action = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_update_action)
  local value = range:le_uint()
  local display = display.md_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.md_update_action, range, value, display)

  return offset + size_of.md_update_action
end

-- Display: MD Incremental Refresh Order Book Group
display.md_incremental_refresh_order_book_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Order Book Group
dissect.md_incremental_refresh_order_book_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order ID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- MD Order Priority: 8 Byte Unsigned Fixed Width Integer
  index = dissect.md_order_priority(buffer, index, packet, parent)

  -- MD Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- MD Display Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.md_display_qty(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- MD Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index = dissect.md_update_action(buffer, index, packet, parent)

  -- MD Entry Type: 1 Byte Ascii String Enum with 17 values
  index = dissect.md_entry_type(buffer, index, packet, parent)

  -- Padding 6: 6 Byte
  index = dissect.padding_6(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Order Book Group
dissect.md_incremental_refresh_order_book_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_order_book_group then
    local range = buffer(offset, 40)
    local display = display.md_incremental_refresh_order_book_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_order_book_group, range, display)
  end

  return dissect.md_incremental_refresh_order_book_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Order Book Groups
size_of.md_incremental_refresh_order_book_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_order_book_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_order_book_group_count * 40

  return index
end

-- Display: MD Incremental Refresh Order Book Groups
display.md_incremental_refresh_order_book_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Order Book Groups
dissect.md_incremental_refresh_order_book_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Order Book Group: Struct of 8 fields
  local md_incremental_refresh_order_book_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_order_book_group_count do
    index = dissect.md_incremental_refresh_order_book_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Order Book Groups
dissect.md_incremental_refresh_order_book_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_order_book_groups then
    local length = size_of.md_incremental_refresh_order_book_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_order_book_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_order_book_groups, range, display)
  end

  return dissect.md_incremental_refresh_order_book_groups_fields(buffer, offset, packet, parent)
end

-- Size: Padding 2
size_of.padding_2 = 2

-- Display: Padding 2
display.padding_2 = function(value)
  return "Padding 2: "..value
end

-- Dissect: Padding 2
dissect.padding_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.padding_2)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_2(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.padding_2, range, value, display)

  return offset + size_of.padding_2
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
  parent:add(cme_mdp3_sbe_v8_1.fields.end_of_event, buffer(offset, 1))

  -- Reserved: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.reserved, buffer(offset, 1))

  -- Recovery Msg: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.recovery_msg, buffer(offset, 1))

  -- Last Implied Msg: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.last_implied_msg, buffer(offset, 1))

  -- Last Stats Msg: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.last_stats_msg, buffer(offset, 1))

  -- Last Quote Msg: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.last_quote_msg, buffer(offset, 1))

  -- Last Volume Msg: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.last_volume_msg, buffer(offset, 1))

  -- Last Trade Msg: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.last_trade_msg, buffer(offset, 1))
end

-- Dissect: Match Event Indicator
dissect.match_event_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.match_event_indicator(range, packet, parent)
  local element = parent:add(cme_mdp3_sbe_v8_1.fields.match_event_indicator, range, display)

  if show.match_event_indicator then
    dissect.match_event_indicator_bits(buffer, offset, packet, element)
  end

  return offset + 1
end

-- Calculate runtime size: MD Incremental Refresh Order Book
size_of.md_incremental_refresh_order_book = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_order_book_groups(buffer, offset + index)

  return index
end

-- Display: MD Incremental Refresh Order Book
display.md_incremental_refresh_order_book = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Order Book
dissect.md_incremental_refresh_order_book_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  -- MD Incremental Refresh Order Book Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_order_book_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Order Book
dissect.md_incremental_refresh_order_book = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_order_book then
    local length = size_of.md_incremental_refresh_order_book(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_order_book(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_order_book, range, display)
  end

  return dissect.md_incremental_refresh_order_book_fields(buffer, offset, packet, parent)
end

-- Size: Padding 4
size_of.padding_4 = 4

-- Display: Padding 4
display.padding_4 = function(value)
  return "Padding 4: "..value
end

-- Dissect: Padding 4
dissect.padding_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.padding_4)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_4(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.padding_4, range, value, display)

  return offset + size_of.padding_4
end

-- Size: Last Qty
size_of.last_qty = 4

-- Display: Last Qty
display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
dissect.last_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_qty)
  local value = range:le_int()
  local display = display.last_qty(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.last_qty, range, value, display)

  return offset + size_of.last_qty
end

-- Display: MD Incremental Refresh Trade Summary Order Group
display.md_incremental_refresh_trade_summary_order_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Trade Summary Order Group
dissect.md_incremental_refresh_trade_summary_order_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order ID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index = dissect.padding_4(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Trade Summary Order Group
dissect.md_incremental_refresh_trade_summary_order_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_trade_summary_order_group then
    local range = buffer(offset, 16)
    local display = display.md_incremental_refresh_trade_summary_order_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_summary_order_group, range, display)
  end

  return dissect.md_incremental_refresh_trade_summary_order_group_fields(buffer, offset, packet, parent)
end

-- Size: Padding 5
size_of.padding_5 = 5

-- Display: Padding 5
display.padding_5 = function(value)
  return "Padding 5: "..value
end

-- Dissect: Padding 5
dissect.padding_5 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.padding_5)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_5(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.padding_5, range, value, display)

  return offset + size_of.padding_5
end

-- Display: group Size8 Byte
display.group_size8_byte = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: group Size8 Byte
dissect.group_size8_byte_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- block Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.block_length(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index = dissect.padding_5(buffer, index, packet, parent)

  -- num In Group: 1 Byte Unsigned Fixed Width Integer
  index = dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: group Size8 Byte
dissect.group_size8_byte = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size8_byte then
    local range = buffer(offset, 8)
    local display = display.group_size8_byte(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.group_size8_byte, range, display)
  end

  return dissect.group_size8_byte_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Trade Summary Order Groups
size_of.md_incremental_refresh_trade_summary_order_groups = function(buffer, offset)
  local index = 0

  index = index + 8

  -- Calculate field size from count
  local md_incremental_refresh_trade_summary_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_trade_summary_order_group_count * 16

  return index
end

-- Display: MD Incremental Refresh Trade Summary Order Groups
display.md_incremental_refresh_trade_summary_order_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Trade Summary Order Groups
dissect.md_incremental_refresh_trade_summary_order_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size8 Byte: Struct of 3 fields
  index = dissect.group_size8_byte(buffer, index, packet, parent)

  -- MD Incremental Refresh Trade Summary Order Group: Struct of 3 fields
  local md_incremental_refresh_trade_summary_order_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_trade_summary_order_group_count do
    index = dissect.md_incremental_refresh_trade_summary_order_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Trade Summary Order Groups
dissect.md_incremental_refresh_trade_summary_order_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_summary_order_groups then
    local length = size_of.md_incremental_refresh_trade_summary_order_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_trade_summary_order_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_summary_order_groups, range, display)
  end

  return dissect.md_incremental_refresh_trade_summary_order_groups_fields(buffer, offset, packet, parent)
end

-- Size: MD Trade Entry ID
size_of.md_trade_entry_id = 4

-- Display: MD Trade Entry ID
display.md_trade_entry_id = function(value)
  return "MD Trade Entry ID: "..value
end

-- Dissect: MD Trade Entry ID
dissect.md_trade_entry_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_trade_entry_id)
  local value = range:le_uint()
  local display = display.md_trade_entry_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.md_trade_entry_id, range, value, display)

  return offset + size_of.md_trade_entry_id
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

  parent:add(cme_mdp3_sbe_v8_1.fields.aggressor_side, range, value, display)

  return offset + size_of.aggressor_side
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

  parent:add(cme_mdp3_sbe_v8_1.fields.number_of_orders, range, value, display)

  return offset + size_of.number_of_orders
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

  parent:add(cme_mdp3_sbe_v8_1.fields.rpt_seq, range, value, display)

  return offset + size_of.rpt_seq
end

-- Size: MD Entry Size
size_of.md_entry_size = 4

-- Display: MD Entry Size
display.md_entry_size = function(value)
  return "MD Entry Size: "..value
end

-- Dissect: MD Entry Size
dissect.md_entry_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_entry_size)
  local value = range:le_int()
  local display = display.md_entry_size(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.md_entry_size, range, value, display)

  return offset + size_of.md_entry_size
end

-- Display: MD Incremental Refresh Trade Summary Group
display.md_incremental_refresh_trade_summary_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Trade Summary Group
dissect.md_incremental_refresh_trade_summary_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- MD Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- MD Entry Size: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index = dissect.number_of_orders(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.aggressor_side(buffer, index, packet, parent)

  -- MD Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index = dissect.md_update_action(buffer, index, packet, parent)

  -- MD Trade Entry ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.md_trade_entry_id(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Trade Summary Group
dissect.md_incremental_refresh_trade_summary_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_trade_summary_group then
    local range = buffer(offset, 32)
    local display = display.md_incremental_refresh_trade_summary_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_summary_group, range, display)
  end

  return dissect.md_incremental_refresh_trade_summary_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Trade Summary Groups
size_of.md_incremental_refresh_trade_summary_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_trade_summary_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_trade_summary_group_count * 32

  return index
end

-- Display: MD Incremental Refresh Trade Summary Groups
display.md_incremental_refresh_trade_summary_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Trade Summary Groups
dissect.md_incremental_refresh_trade_summary_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Trade Summary Group: Struct of 9 fields
  local md_incremental_refresh_trade_summary_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_trade_summary_group_count do
    index = dissect.md_incremental_refresh_trade_summary_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Trade Summary Groups
dissect.md_incremental_refresh_trade_summary_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_summary_groups then
    local length = size_of.md_incremental_refresh_trade_summary_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_trade_summary_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_summary_groups, range, display)
  end

  return dissect.md_incremental_refresh_trade_summary_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Trade Summary
size_of.md_incremental_refresh_trade_summary = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_trade_summary_groups(buffer, offset + index)

  index = index + size_of.md_incremental_refresh_trade_summary_order_groups(buffer, offset + index)

  return index
end

-- Display: MD Incremental Refresh Trade Summary
display.md_incremental_refresh_trade_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Trade Summary
dissect.md_incremental_refresh_trade_summary_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  -- MD Incremental Refresh Trade Summary Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_trade_summary_groups(buffer, index, packet, parent)

  -- MD Incremental Refresh Trade Summary Order Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_trade_summary_order_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Trade Summary
dissect.md_incremental_refresh_trade_summary = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_summary then
    local length = size_of.md_incremental_refresh_trade_summary(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_trade_summary(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_summary, range, display)
  end

  return dissect.md_incremental_refresh_trade_summary_fields(buffer, offset, packet, parent)
end

-- Size: Related Symbol
size_of.related_symbol = 20

-- Display: Related Symbol
display.related_symbol = function(value)
  return "Related Symbol: "..value
end

-- Dissect: Related Symbol
dissect.related_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.related_symbol)
  local value = range:string()
  local display = display.related_symbol(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.related_symbol, range, value, display)

  return offset + size_of.related_symbol
end

-- Size: Related Security ID
size_of.related_security_id = 4

-- Display: Related Security ID
display.related_security_id = function(value)
  return "Related Security ID: "..value
end

-- Dissect: Related Security ID
dissect.related_security_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.related_security_id)
  local value = range:le_int()
  local display = display.related_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.related_security_id, range, value, display)

  return offset + size_of.related_security_id
end

-- Display: Related Instruments Group
display.related_instruments_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Instruments Group
dissect.related_instruments_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Related Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.related_security_id(buffer, index, packet, parent)

  -- Related Symbol: 20 Byte Ascii String
  index = dissect.related_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Instruments Group
dissect.related_instruments_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.related_instruments_group then
    local range = buffer(offset, 24)
    local display = display.related_instruments_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.related_instruments_group, range, display)
  end

  return dissect.related_instruments_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Related Instruments Groups
size_of.related_instruments_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Related Instruments Group: Struct of 2 fields
  local related_instruments_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, related_instruments_group_count do
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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.related_instruments_groups, range, display)
  end

  return dissect.related_instruments_groups_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Symbol
size_of.underlying_symbol = 20

-- Display: Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_symbol)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.underlying_symbol, range, value, display)

  return offset + size_of.underlying_symbol
end

-- Size: Underlying Security ID
size_of.underlying_security_id = 4

-- Display: Underlying Security ID
display.underlying_security_id = function(value)
  return "Underlying Security ID: "..value
end

-- Dissect: Underlying Security ID
dissect.underlying_security_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_security_id)
  local value = range:le_int()
  local display = display.underlying_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.underlying_security_id, range, value, display)

  return offset + size_of.underlying_security_id
end

-- Display: Underlyings Group
display.underlyings_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlyings Group
dissect.underlyings_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.underlying_security_id(buffer, index, packet, parent)

  -- Underlying Symbol: 20 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlyings Group
dissect.underlyings_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlyings_group then
    local range = buffer(offset, 24)
    local display = display.underlyings_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.underlyings_group, range, display)
  end

  return dissect.underlyings_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Underlyings Groups
size_of.underlyings_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Underlyings Group: Struct of 2 fields
  local underlyings_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, underlyings_group_count do
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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.underlyings_groups, range, display)
  end

  return dissect.underlyings_groups_fields(buffer, offset, packet, parent)
end

-- Size: Min Lot Size
size_of.min_lot_size = 4

-- Display: Min Lot Size
display.min_lot_size = function(value)
  local factor = 10000
  return "Min Lot Size: "..value/factor
end

-- Dissect: Min Lot Size
dissect.min_lot_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.min_lot_size)
  local value = range:le_int()
  local display = display.min_lot_size(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.min_lot_size, range, value, display)

  return offset + size_of.min_lot_size
end

-- Size: Lot Type
size_of.lot_type = 1

-- Display: Lot Type
display.lot_type = function(value)
  return "Lot Type: "..value
end

-- Dissect: Lot Type
dissect.lot_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.lot_type)
  local value = range:le_int()
  local display = display.lot_type(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.lot_type, range, value, display)

  return offset + size_of.lot_type
end

-- Display: Lot Type Rules Group
display.lot_type_rules_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Lot Type Rules Group
dissect.lot_type_rules_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Lot Type: 1 Byte Signed Fixed Width Integer
  index = dissect.lot_type(buffer, index, packet, parent)

  -- Min Lot Size: 4 Byte Signed Fixed Width Integer
  index = dissect.min_lot_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Lot Type Rules Group
dissect.lot_type_rules_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.lot_type_rules_group then
    local range = buffer(offset, 5)
    local display = display.lot_type_rules_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.lot_type_rules_group, range, display)
  end

  return dissect.lot_type_rules_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Lot Type Rules Groups
size_of.lot_type_rules_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Lot Type Rules Group: Struct of 2 fields
  local lot_type_rules_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, lot_type_rules_group_count do
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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.lot_type_rules_groups, range, display)
  end

  return dissect.lot_type_rules_groups_fields(buffer, offset, packet, parent)
end

-- Display: Inst Attrib Value
display.inst_attrib_value = function(buffer, packet, parent)
  local display = ""

  -- Is Implied Matching Eligibility flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Implied Matching Eligibility|"
  end
  -- Is GT Orders Eligibility flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."GT Orders Eligibility|"
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
  -- Is RFQ Cross Eligible flag set?
  if buffer:bitfield(18) > 0 then
    display = display.."RFQ Cross Eligible|"
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
  -- Is i Link Indicative Mass Quoting Eligible flag set?
  if buffer:bitfield(23) > 0 then
    display = display.."i Link Indicative Mass Quoting Eligible|"
  end
  -- Is OTC Eligible flag set?
  if buffer:bitfield(24) > 0 then
    display = display.."OTC Eligible|"
  end
  -- Is EFR Eligible flag set?
  if buffer:bitfield(25) > 0 then
    display = display.."EFR Eligible|"
  end
  -- Is EFS Eligible flag set?
  if buffer:bitfield(26) > 0 then
    display = display.."EFS Eligible|"
  end
  -- Is EBF Eligible flag set?
  if buffer:bitfield(27) > 0 then
    display = display.."EBF Eligible|"
  end
  -- Is EFP Eligible flag set?
  if buffer:bitfield(28) > 0 then
    display = display.."EFP Eligible|"
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

  -- Reserved 12: 12 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.reserved_12, buffer(offset, 4))

  -- Implied Matching Eligibility: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.implied_matching_eligibility, buffer(offset, 4))

  -- GT Orders Eligibility: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.gt_orders_eligibility, buffer(offset, 4))

  -- Daily Product Eligibility: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.daily_product_eligibility, buffer(offset, 4))

  -- Variable Product Eligibility: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.variable_product_eligibility, buffer(offset, 4))

  -- Decaying Product Eligibility: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.decaying_product_eligibility, buffer(offset, 4))

  -- Zero Price Outright Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.zero_price_outright_eligible, buffer(offset, 4))

  -- RFQ Cross Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.rfq_cross_eligible, buffer(offset, 4))

  -- Volatility Quoted Option: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.volatility_quoted_option, buffer(offset, 4))

  -- Is Fractional: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.is_fractional, buffer(offset, 4))

  -- Negative Price Outright Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.negative_price_outright_eligible, buffer(offset, 4))

  -- Negative Strike Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.negative_strike_eligible, buffer(offset, 4))

  -- i Link Indicative Mass Quoting Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.i_link_indicative_mass_quoting_eligible, buffer(offset, 4))

  -- OTC Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.otc_eligible, buffer(offset, 4))

  -- EFR Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.efr_eligible, buffer(offset, 4))

  -- EFS Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.efs_eligible, buffer(offset, 4))

  -- EBF Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.ebf_eligible, buffer(offset, 4))

  -- EFP Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.efp_eligible, buffer(offset, 4))

  -- Block Trade Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.block_trade_eligible, buffer(offset, 4))

  -- Order Cross Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.order_cross_eligible, buffer(offset, 4))

  -- Electronic Match Eligible: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.electronic_match_eligible, buffer(offset, 4))
end

-- Dissect: Inst Attrib Value
dissect.inst_attrib_value = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local display = display.inst_attrib_value(range, packet, parent)
  local element = parent:add(cme_mdp3_sbe_v8_1.fields.inst_attrib_value, range, display)

  if show.inst_attrib_value then
    dissect.inst_attrib_value_bits(buffer, offset, packet, element)
  end

  return offset + 4
end

-- Display: Inst Attrib Group
display.inst_attrib_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inst Attrib Group
dissect.inst_attrib_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inst Attrib Value: Struct of 21 fields
  index = dissect.inst_attrib_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Inst Attrib Group
dissect.inst_attrib_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.inst_attrib_group then
    local range = buffer(offset, 4)
    local display = display.inst_attrib_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.inst_attrib_group, range, display)
  end

  return dissect.inst_attrib_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Inst Attrib Groups
size_of.inst_attrib_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Inst Attrib Group: Struct of 1 fields
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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.inst_attrib_groups, range, display)
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
  local range = buffer(offset, size_of.market_depth)
  local value = range:le_int()
  local display = display.market_depth(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.market_depth, range, value, display)

  return offset + size_of.market_depth
end

-- Size: MD Feed Type
size_of.md_feed_type = 3

-- Display: MD Feed Type
display.md_feed_type = function(value)
  return "MD Feed Type: "..value
end

-- Dissect: MD Feed Type
dissect.md_feed_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_feed_type)
  local value = range:string()
  local display = display.md_feed_type(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.md_feed_type, range, value, display)

  return offset + size_of.md_feed_type
end

-- Display: MD Feed Types Group
display.md_feed_types_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Feed Types Group
dissect.md_feed_types_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- MD Feed Type: 3 Byte Ascii String
  index = dissect.md_feed_type(buffer, index, packet, parent)

  -- Market Depth: 1 Byte Signed Fixed Width Integer
  index = dissect.market_depth(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Feed Types Group
dissect.md_feed_types_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_feed_types_group then
    local range = buffer(offset, 4)
    local display = display.md_feed_types_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_feed_types_group, range, display)
  end

  return dissect.md_feed_types_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Feed Types Groups
size_of.md_feed_types_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_feed_types_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_feed_types_group_count * 4

  return index
end

-- Display: MD Feed Types Groups
display.md_feed_types_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Feed Types Groups
dissect.md_feed_types_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_feed_types_groups, range, display)
  end

  return dissect.md_feed_types_groups_fields(buffer, offset, packet, parent)
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

  parent:add(cme_mdp3_sbe_v8_1.fields.event_time, range, value, display)

  return offset + size_of.event_time
end

-- Size: Event Type
size_of.event_type = 1

-- Display: Event Type
display.event_type = function(value)
  if value == 5 then
    return "Event Type: Event Type (5)"
  end
  if value == 7 then
    return "Event Type: Event Type (7)"
  end

  return "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
dissect.event_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.event_type)
  local value = range:le_uint()
  local display = display.event_type(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.event_type, range, value, display)

  return offset + size_of.event_type
end

-- Display: Events Group
display.events_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Events Group
dissect.events_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.events_group, range, display)
  end

  return dissect.events_group_fields(buffer, offset, packet, parent)
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

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.events_groups, range, display)
  end

  return dissect.events_groups_fields(buffer, offset, packet, parent)
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

  parent:add(cme_mdp3_sbe_v8_1.fields.trading_reference_date, range, value, display)

  return offset + size_of.trading_reference_date
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

  parent:add(cme_mdp3_sbe_v8_1.fields.user_defined_instrument, range, value, display)

  return offset + size_of.user_defined_instrument
end

-- Size: High Limit Price
size_of.high_limit_price = 8

-- Display: High Limit Price
display.high_limit_price = function(value)
  local factor = 10000000
  return "High Limit Price: "..value/factor
end

-- Dissect: High Limit Price
dissect.high_limit_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.high_limit_price)
  local value = range:le_int64()
  local display = display.high_limit_price(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.high_limit_price, range, value, display)

  return offset + size_of.high_limit_price
end

-- Size: Low Limit Price
size_of.low_limit_price = 8

-- Display: Low Limit Price
display.low_limit_price = function(value)
  local factor = 10000000
  return "Low Limit Price: "..value/factor
end

-- Dissect: Low Limit Price
dissect.low_limit_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.low_limit_price)
  local value = range:le_int64()
  local display = display.low_limit_price(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.low_limit_price, range, value, display)

  return offset + size_of.low_limit_price
end

-- Size: Open Interest Qty
size_of.open_interest_qty = 4

-- Display: Open Interest Qty
display.open_interest_qty = function(value)
  return "Open Interest Qty: "..value
end

-- Dissect: Open Interest Qty
dissect.open_interest_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open_interest_qty)
  local value = range:le_int()
  local display = display.open_interest_qty(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.open_interest_qty, range, value, display)

  return offset + size_of.open_interest_qty
end

-- Size: Cleared Volume
size_of.cleared_volume = 4

-- Display: Cleared Volume
display.cleared_volume = function(value)
  return "Cleared Volume: "..value
end

-- Dissect: Cleared Volume
dissect.cleared_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cleared_volume)
  local value = range:le_int()
  local display = display.cleared_volume(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.cleared_volume, range, value, display)

  return offset + size_of.cleared_volume
end

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
  -- Is Final flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Final|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Settl Price Type
dissect.settl_price_type_bits = function(buffer, offset, packet, parent)

  -- Null Value: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.null_value, buffer(offset, 1))

  -- Reserved Bits: 3 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.reserved_bits, buffer(offset, 1))

  -- Intraday: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.intraday, buffer(offset, 1))

  -- Rounded: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.rounded, buffer(offset, 1))

  -- Actual: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.actual, buffer(offset, 1))

  -- Final: 1 Bit
  parent:add(cme_mdp3_sbe_v8_1.fields.final, buffer(offset, 1))
end

-- Dissect: Settl Price Type
dissect.settl_price_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.settl_price_type(range, packet, parent)
  local element = parent:add(cme_mdp3_sbe_v8_1.fields.settl_price_type, range, display)

  if show.settl_price_type then
    dissect.settl_price_type_bits(buffer, offset, packet, element)
  end

  return offset + 1
end

-- Size: Trading Reference Price
size_of.trading_reference_price = 8

-- Display: Trading Reference Price
display.trading_reference_price = function(value)
  local factor = 10000000
  return "Trading Reference Price: "..value/factor
end

-- Dissect: Trading Reference Price
dissect.trading_reference_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_reference_price)
  local value = range:le_int64()
  local display = display.trading_reference_price(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.trading_reference_price, range, value, display)

  return offset + size_of.trading_reference_price
end

-- Size: Unit Of Measure Qty
size_of.unit_of_measure_qty = 8

-- Display: Unit Of Measure Qty
display.unit_of_measure_qty = function(value)
  local factor = 10000000
  return "Unit Of Measure Qty: "..value/factor
end

-- Dissect: Unit Of Measure Qty
dissect.unit_of_measure_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.unit_of_measure_qty)
  local value = range:le_int64()
  local display = display.unit_of_measure_qty(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.unit_of_measure_qty, range, value, display)

  return offset + size_of.unit_of_measure_qty
end

-- Size: Unit Of Measure
size_of.unit_of_measure = 30

-- Display: Unit Of Measure
display.unit_of_measure = function(value)
  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
dissect.unit_of_measure = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.unit_of_measure)
  local value = range:string()
  local display = display.unit_of_measure(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.unit_of_measure, range, value, display)

  return offset + size_of.unit_of_measure
end

-- Size: Price Display Format
size_of.price_display_format = 1

-- Display: Price Display Format
display.price_display_format = function(value)
  return "Price Display Format: "..value
end

-- Dissect: Price Display Format
dissect.price_display_format = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_display_format)
  local value = range:le_uint()
  local display = display.price_display_format(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.price_display_format, range, value, display)

  return offset + size_of.price_display_format
end

-- Size: Sub Fraction
size_of.sub_fraction = 1

-- Display: Sub Fraction
display.sub_fraction = function(value)
  return "Sub Fraction: "..value
end

-- Dissect: Sub Fraction
dissect.sub_fraction = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sub_fraction)
  local value = range:le_uint()
  local display = display.sub_fraction(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.sub_fraction, range, value, display)

  return offset + size_of.sub_fraction
end

-- Size: Main Fraction
size_of.main_fraction = 1

-- Display: Main Fraction
display.main_fraction = function(value)
  return "Main Fraction: "..value
end

-- Dissect: Main Fraction
dissect.main_fraction = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.main_fraction)
  local value = range:le_uint()
  local display = display.main_fraction(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.main_fraction, range, value, display)

  return offset + size_of.main_fraction
end

-- Size: Tick Rule
size_of.tick_rule = 1

-- Display: Tick Rule
display.tick_rule = function(value)
  return "Tick Rule: "..value
end

-- Dissect: Tick Rule
dissect.tick_rule = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.tick_rule)
  local value = range:le_int()
  local display = display.tick_rule(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.tick_rule, range, value, display)

  return offset + size_of.tick_rule
end

-- Size: Display Factor
size_of.display_factor = 8

-- Display: Display Factor
display.display_factor = function(value)
  local factor = 10000000
  return "Display Factor: "..value/factor
end

-- Dissect: Display Factor
dissect.display_factor = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.display_factor)
  local value = range:le_int64()
  local display = display.display_factor(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.display_factor, range, value, display)

  return offset + size_of.display_factor
end

-- Size: Min Price Increment Amount
size_of.min_price_increment_amount = 8

-- Display: Min Price Increment Amount
display.min_price_increment_amount = function(value)
  local factor = 10000000
  return "Min Price Increment Amount: "..value/factor
end

-- Dissect: Min Price Increment Amount
dissect.min_price_increment_amount = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.min_price_increment_amount)
  local value = range:le_int64()
  local display = display.min_price_increment_amount(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.min_price_increment_amount, range, value, display)

  return offset + size_of.min_price_increment_amount
end

-- Size: Min Price Increment
size_of.min_price_increment = 8

-- Display: Min Price Increment
display.min_price_increment = function(value)
  local factor = 10000000
  return "Min Price Increment: "..value/factor
end

-- Dissect: Min Price Increment
dissect.min_price_increment = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.min_price_increment)
  local value = range:le_int64()
  local display = display.min_price_increment(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.min_price_increment, range, value, display)

  return offset + size_of.min_price_increment
end

-- Size: Max Trade Vol
size_of.max_trade_vol = 4

-- Display: Max Trade Vol
display.max_trade_vol = function(value)
  return "Max Trade Vol: "..value
end

-- Dissect: Max Trade Vol
dissect.max_trade_vol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.max_trade_vol)
  local value = range:le_uint()
  local display = display.max_trade_vol(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.max_trade_vol, range, value, display)

  return offset + size_of.max_trade_vol
end

-- Size: Min Trade Vol
size_of.min_trade_vol = 4

-- Display: Min Trade Vol
display.min_trade_vol = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
dissect.min_trade_vol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.min_trade_vol)
  local value = range:le_uint()
  local display = display.min_trade_vol(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.min_trade_vol, range, value, display)

  return offset + size_of.min_trade_vol
end

-- Size: Match Algorithm
size_of.match_algorithm = 1

-- Display: Match Algorithm
display.match_algorithm = function(value)
  return "Match Algorithm: "..value
end

-- Dissect: Match Algorithm
dissect.match_algorithm = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.match_algorithm)
  local value = range:string()
  local display = display.match_algorithm(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.match_algorithm, range, value, display)

  return offset + size_of.match_algorithm
end

-- Size: Min Cab Price
size_of.min_cab_price = 8

-- Display: Min Cab Price
display.min_cab_price = function(value)
  local factor = 10000000
  return "Min Cab Price: "..value/factor
end

-- Dissect: Min Cab Price
dissect.min_cab_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.min_cab_price)
  local value = range:le_int64()
  local display = display.min_cab_price(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.min_cab_price, range, value, display)

  return offset + size_of.min_cab_price
end

-- Size: Settl Currency
size_of.settl_currency = 3

-- Display: Settl Currency
display.settl_currency = function(value)
  return "Settl Currency: "..value
end

-- Dissect: Settl Currency
dissect.settl_currency = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.settl_currency)
  local value = range:string()
  local display = display.settl_currency(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.settl_currency, range, value, display)

  return offset + size_of.settl_currency
end

-- Size: Strike Currency
size_of.strike_currency = 3

-- Display: Strike Currency
display.strike_currency = function(value)
  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
dissect.strike_currency = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_currency)
  local value = range:string()
  local display = display.strike_currency(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.strike_currency, range, value, display)

  return offset + size_of.strike_currency
end

-- Size: Strike Price
size_of.strike_price = 8

-- Display: Strike Price
display.strike_price = function(value)
  local factor = 10000000
  return "Strike Price: "..value/factor
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_price)
  local value = range:le_int64()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.strike_price, range, value, display)

  return offset + size_of.strike_price
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

  parent:add(cme_mdp3_sbe_v8_1.fields.currency, range, value, display)

  return offset + size_of.currency
end

-- Size: week
size_of.week = 1

-- Display: week
display.week = function(value)
  -- Check if field has value
  if value == 255 then
    return "week: No Value ("..value..")"
  end

  return "week: "..value
end

-- Dissect: week
dissect.week = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.week)
  local value = range:le_uint()
  local display = display.week(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.week, range, value, display)

  return offset + size_of.week
end

-- Size: day
size_of.day = 1

-- Display: day
display.day = function(value)
  -- Check if field has value
  if value == 255 then
    return "day: No Value ("..value..")"
  end

  return "day: "..value
end

-- Dissect: day
dissect.day = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.day)
  local value = range:le_uint()
  local display = display.day(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.day, range, value, display)

  return offset + size_of.day
end

-- Size: month
size_of.month = 1

-- Display: month
display.month = function(value)
  -- Check if field has value
  if value == 255 then
    return "month: No Value ("..value..")"
  end

  return "month: "..value
end

-- Dissect: month
dissect.month = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.month)
  local value = range:le_uint()
  local display = display.month(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.month, range, value, display)

  return offset + size_of.month
end

-- Size: year
size_of.year = 2

-- Display: year
display.year = function(value)
  -- Check if field has value
  if value == 65535 then
    return "year: No Value ("..value..")"
  end

  return "year: "..value
end

-- Dissect: year
dissect.year = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.year)
  local value = range:le_uint()
  local display = display.year(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.year, range, value, display)

  return offset + size_of.year
end

-- Display: Maturity Month Year
display.maturity_month_year = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Maturity Month Year
dissect.maturity_month_year_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- year: 2 Byte Unsigned Fixed Width Integer Nullable
  index = dissect.year(buffer, index, packet, parent)

  -- month: 1 Byte Unsigned Fixed Width Integer Nullable
  index = dissect.month(buffer, index, packet, parent)

  -- day: 1 Byte Unsigned Fixed Width Integer Nullable
  index = dissect.day(buffer, index, packet, parent)

  -- week: 1 Byte Unsigned Fixed Width Integer Nullable
  index = dissect.week(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
dissect.maturity_month_year = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.maturity_month_year then
    local range = buffer(offset, 5)
    local display = display.maturity_month_year(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.maturity_month_year, range, display)
  end

  return dissect.maturity_month_year_fields(buffer, offset, packet, parent)
end

-- Size: Put Or Call
size_of.put_or_call = 1

-- Display: Put Or Call
display.put_or_call = function(value)
  if value == 0 then
    return "Put Or Call: Put Or Call (0)"
  end
  if value == 1 then
    return "Put Or Call: Put Or Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
dissect.put_or_call = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.put_or_call)
  local value = range:le_uint()
  local display = display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.put_or_call, range, value, display)

  return offset + size_of.put_or_call
end

-- Size: CFI Code
size_of.cfi_code = 6

-- Display: CFI Code
display.cfi_code = function(value)
  return "CFI Code: "..value
end

-- Dissect: CFI Code
dissect.cfi_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cfi_code)
  local value = range:string()
  local display = display.cfi_code(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.cfi_code, range, value, display)

  return offset + size_of.cfi_code
end

-- Size: Security Type
size_of.security_type = 6

-- Display: Security Type
display.security_type = function(value)
  return "Security Type: "..value
end

-- Dissect: Security Type
dissect.security_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_type)
  local value = range:string()
  local display = display.security_type(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.security_type, range, value, display)

  return offset + size_of.security_type
end

-- Size: Symbol
size_of.symbol = 20

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.symbol, range, value, display)

  return offset + size_of.symbol
end

-- Size: Asset
size_of.asset = 6

-- Display: Asset
display.asset = function(value)
  return "Asset: "..value
end

-- Dissect: Asset
dissect.asset = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.asset)
  local value = range:string()
  local display = display.asset(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.asset, range, value, display)

  return offset + size_of.asset
end

-- Size: Security Group
size_of.security_group = 6

-- Display: Security Group
display.security_group = function(value)
  return "Security Group: "..value
end

-- Dissect: Security Group
dissect.security_group = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_group)
  local value = range:string()
  local display = display.security_group(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.security_group, range, value, display)

  return offset + size_of.security_group
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

  parent:add(cme_mdp3_sbe_v8_1.fields.security_exchange, range, value, display)

  return offset + size_of.security_exchange
end

-- Size: Underlying Product
size_of.underlying_product = 1

-- Display: Underlying Product
display.underlying_product = function(value)
  return "Underlying Product: "..value
end

-- Dissect: Underlying Product
dissect.underlying_product = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_product)
  local value = range:le_uint()
  local display = display.underlying_product(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.underlying_product, range, value, display)

  return offset + size_of.underlying_product
end

-- Size: Market Segment ID
size_of.market_segment_id = 1

-- Display: Market Segment ID
display.market_segment_id = function(value)
  return "Market Segment ID: "..value
end

-- Dissect: Market Segment ID
dissect.market_segment_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_segment_id)
  local value = range:le_uint()
  local display = display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.market_segment_id, range, value, display)

  return offset + size_of.market_segment_id
end

-- Size: Appl ID
size_of.appl_id = 2

-- Display: Appl ID
display.appl_id = function(value)
  return "Appl ID: "..value
end

-- Dissect: Appl ID
dissect.appl_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.appl_id)
  local value = range:le_int()
  local display = display.appl_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.appl_id, range, value, display)

  return offset + size_of.appl_id
end

-- Size: MD Security Trading Status
size_of.md_security_trading_status = 1

-- Display: MD Security Trading Status
display.md_security_trading_status = function(value)
  return "MD Security Trading Status: "..value
end

-- Dissect: MD Security Trading Status
dissect.md_security_trading_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_security_trading_status)
  local value = range:le_uint()
  local display = display.md_security_trading_status(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.md_security_trading_status, range, value, display)

  return offset + size_of.md_security_trading_status
end

-- Size: Last Update Time
size_of.last_update_time = 8

-- Display: Last Update Time
display.last_update_time = function(value)
  return "Last Update Time: "..value
end

-- Dissect: Last Update Time
dissect.last_update_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_update_time)
  local value = range:le_uint64()
  local display = display.last_update_time(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.last_update_time, range, value, display)

  return offset + size_of.last_update_time
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

  parent:add(cme_mdp3_sbe_v8_1.fields.security_update_action, range, value, display)

  return offset + size_of.security_update_action
end

-- Calculate runtime size: MD Instrument Definition Option
size_of.md_instrument_definition_option = function(buffer, offset)
  local index = 0

  index = index + 213

  index = index + size_of.events_groups(buffer, offset + index)

  index = index + size_of.md_feed_types_groups(buffer, offset + index)

  index = index + size_of.inst_attrib_groups(buffer, offset + index)

  index = index + size_of.lot_type_rules_groups(buffer, offset + index)

  index = index + size_of.underlyings_groups(buffer, offset + index)

  index = index + size_of.related_instruments_groups(buffer, offset + index)

  return index
end

-- Display: MD Instrument Definition Option
display.md_instrument_definition_option = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Instrument Definition Option
dissect.md_instrument_definition_option_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index = dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index = dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_update_time(buffer, index, packet, parent)

  -- MD Security Trading Status: 1 Byte Unsigned Fixed Width Integer
  index = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl ID: 2 Byte Signed Fixed Width Integer
  index = dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment ID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index = dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index = dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index = dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index = dissect.security_type(buffer, index, packet, parent)

  -- CFI Code: 6 Byte Ascii String
  index = dissect.cfi_code(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.put_or_call(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index = dissect.currency(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index = dissect.strike_price(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String
  index = dissect.strike_currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index = dissect.settl_currency(buffer, index, packet, parent)

  -- Min Cab Price: 8 Byte Signed Fixed Width Integer
  index = dissect.min_cab_price(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index = dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index = dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index = dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index = dissect.min_price_increment(buffer, index, packet, parent)

  -- Min Price Increment Amount: 8 Byte Signed Fixed Width Integer
  index = dissect.min_price_increment_amount(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index = dissect.display_factor(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer
  index = dissect.tick_rule(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer
  index = dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer
  index = dissect.sub_fraction(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer
  index = dissect.price_display_format(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index = dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer
  index = dissect.unit_of_measure_qty(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer
  index = dissect.trading_reference_price(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index = dissect.settl_price_type(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.cleared_volume(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.open_interest_qty(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer
  index = dissect.low_limit_price(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer
  index = dissect.high_limit_price(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index = dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index = dissect.events_groups(buffer, index, packet, parent)

  -- MD Feed Types Groups: Struct of 2 fields
  index = dissect.md_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index = dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index = dissect.lot_type_rules_groups(buffer, index, packet, parent)

  -- Underlyings Groups: Struct of 2 fields
  index = dissect.underlyings_groups(buffer, index, packet, parent)

  -- Related Instruments Groups: Struct of 2 fields
  index = dissect.related_instruments_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Instrument Definition Option
dissect.md_instrument_definition_option = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_option then
    local length = size_of.md_instrument_definition_option(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_definition_option(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_instrument_definition_option, range, display)
  end

  return dissect.md_instrument_definition_option_fields(buffer, offset, packet, parent)
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  return "Side: "..value
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side)
  local value = range:le_int()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.side, range, value, display)

  return offset + size_of.side
end

-- Size: Quote Type
size_of.quote_type = 1

-- Display: Quote Type
display.quote_type = function(value)
  return "Quote Type: "..value
end

-- Dissect: Quote Type
dissect.quote_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_type)
  local value = range:le_int()
  local display = display.quote_type(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.quote_type, range, value, display)

  return offset + size_of.quote_type
end

-- Size: Order Qty
size_of.order_qty = 4

-- Display: Order Qty
display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
dissect.order_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_qty)
  local value = range:le_int()
  local display = display.order_qty(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.order_qty, range, value, display)

  return offset + size_of.order_qty
end

-- Display: Related Sym Group
display.related_sym_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Sym Group
dissect.related_sym_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 20 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Signed Fixed Width Integer
  index = dissect.quote_type(buffer, index, packet, parent)

  -- Side: 1 Byte Signed Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
dissect.related_sym_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.related_sym_group then
    local range = buffer(offset, 32)
    local display = display.related_sym_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.related_sym_group, range, display)
  end

  return dissect.related_sym_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Related Sym Groups
size_of.related_sym_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Related Sym Group: Struct of 6 fields
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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.related_sym_groups, range, display)
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
  local range = buffer(offset, size_of.padding_3)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_3(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.padding_3, range, value, display)

  return offset + size_of.padding_3
end

-- Size: Quote Req ID
size_of.quote_req_id = 23

-- Display: Quote Req ID
display.quote_req_id = function(value)
  return "Quote Req ID: "..value
end

-- Dissect: Quote Req ID
dissect.quote_req_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_req_id)
  local value = range:string()
  local display = display.quote_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.quote_req_id, range, value, display)

  return offset + size_of.quote_req_id
end

-- Calculate runtime size: Quote Request
size_of.quote_request = function(buffer, offset)
  local index = 0

  index = index + 35

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
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Quote Req ID: 23 Byte Ascii String
  index = dissect.quote_req_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index = dissect.padding_3(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index = dissect.related_sym_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
dissect.quote_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request then
    local length = size_of.quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_request(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.quote_request, range, display)
  end

  return dissect.quote_request_fields(buffer, offset, packet, parent)
end

-- Size: Open Close Settl Flag
size_of.open_close_settl_flag = 1

-- Display: Open Close Settl Flag
display.open_close_settl_flag = function(value)
  if value == 0 then
    return "Open Close Settl Flag: Open Close Settl Flag (0)"
  end
  if value == 5 then
    return "Open Close Settl Flag: Open Close Settl Flag (5)"
  end

  return "Open Close Settl Flag: Unknown("..value..")"
end

-- Dissect: Open Close Settl Flag
dissect.open_close_settl_flag = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open_close_settl_flag)
  local value = range:le_uint()
  local display = display.open_close_settl_flag(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.open_close_settl_flag, range, value, display)

  return offset + size_of.open_close_settl_flag
end

-- Size: MD Price Level
size_of.md_price_level = 1

-- Display: MD Price Level
display.md_price_level = function(value)
  return "MD Price Level: "..value
end

-- Dissect: MD Price Level
dissect.md_price_level = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_price_level)
  local value = range:le_uint()
  local display = display.md_price_level(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.md_price_level, range, value, display)

  return offset + size_of.md_price_level
end

-- Display: Snapshot Full Refresh Group
display.snapshot_full_refresh_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Group
dissect.snapshot_full_refresh_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- MD Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- MD Entry Size: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index = dissect.number_of_orders(buffer, index, packet, parent)

  -- MD Price Level: 1 Byte Unsigned Fixed Width Integer
  index = dissect.md_price_level(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index = dissect.settl_price_type(buffer, index, packet, parent)

  -- MD Entry Type: 1 Byte Ascii String Enum with 17 values
  index = dissect.md_entry_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Group
dissect.snapshot_full_refresh_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.snapshot_full_refresh_group then
    local range = buffer(offset, 22)
    local display = display.snapshot_full_refresh_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh_group, range, display)
  end

  return dissect.snapshot_full_refresh_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Snapshot Full Refresh Groups
size_of.snapshot_full_refresh_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local snapshot_full_refresh_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_group_count * 22

  return index
end

-- Display: Snapshot Full Refresh Groups
display.snapshot_full_refresh_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Groups
dissect.snapshot_full_refresh_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Snapshot Full Refresh Group: Struct of 8 fields
  local snapshot_full_refresh_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, snapshot_full_refresh_group_count do
    index = dissect.snapshot_full_refresh_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Groups
dissect.snapshot_full_refresh_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_groups then
    local length = size_of.snapshot_full_refresh_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh_groups, range, display)
  end

  return dissect.snapshot_full_refresh_groups_fields(buffer, offset, packet, parent)
end

-- Size: Max Price Variation
size_of.max_price_variation = 8

-- Display: Max Price Variation
display.max_price_variation = function(value)
  local factor = 10000000
  return "Max Price Variation: "..value/factor
end

-- Dissect: Max Price Variation
dissect.max_price_variation = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.max_price_variation)
  local value = range:le_int64()
  local display = display.max_price_variation(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.max_price_variation, range, value, display)

  return offset + size_of.max_price_variation
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

  parent:add(cme_mdp3_sbe_v8_1.fields.trade_date, range, value, display)

  return offset + size_of.trade_date
end

-- Calculate runtime size: Snapshot Full Refresh
size_of.snapshot_full_refresh = function(buffer, offset)
  local index = 0

  index = index + 59

  index = index + size_of.snapshot_full_refresh_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh
display.snapshot_full_refresh = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh
dissect.snapshot_full_refresh_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index = dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_update_time(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- MD Security Trading Status: 1 Byte Unsigned Fixed Width Integer
  index = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer
  index = dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer
  index = dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer
  index = dissect.max_price_variation(buffer, index, packet, parent)

  -- Snapshot Full Refresh Groups: Struct of 2 fields
  index = dissect.snapshot_full_refresh_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh
dissect.snapshot_full_refresh = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh then
    local length = size_of.snapshot_full_refresh(buffer, offset)
    local range = buffer(offset, length)
    local display = display.snapshot_full_refresh(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.snapshot_full_refresh, range, display)
  end

  return dissect.snapshot_full_refresh_fields(buffer, offset, packet, parent)
end

-- Display: MD Incremental Refresh Volume Group
display.md_incremental_refresh_volume_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Volume Group
dissect.md_incremental_refresh_volume_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- MD Entry Size: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- MD Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index = dissect.md_update_action(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index = dissect.padding_3(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Volume Group
dissect.md_incremental_refresh_volume_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_volume_group then
    local range = buffer(offset, 16)
    local display = display.md_incremental_refresh_volume_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_volume_group, range, display)
  end

  return dissect.md_incremental_refresh_volume_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Volume Groups
size_of.md_incremental_refresh_volume_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_volume_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_volume_group_count * 16

  return index
end

-- Display: MD Incremental Refresh Volume Groups
display.md_incremental_refresh_volume_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Volume Groups
dissect.md_incremental_refresh_volume_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Volume Group: Struct of 5 fields
  local md_incremental_refresh_volume_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_volume_group_count do
    index = dissect.md_incremental_refresh_volume_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Volume Groups
dissect.md_incremental_refresh_volume_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_volume_groups then
    local length = size_of.md_incremental_refresh_volume_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_volume_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_volume_groups, range, display)
  end

  return dissect.md_incremental_refresh_volume_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Volume
size_of.md_incremental_refresh_volume = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_volume_groups(buffer, offset + index)

  return index
end

-- Display: MD Incremental Refresh Volume
display.md_incremental_refresh_volume = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Volume
dissect.md_incremental_refresh_volume_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  -- MD Incremental Refresh Volume Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_volume_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Volume
dissect.md_incremental_refresh_volume = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_volume then
    local length = size_of.md_incremental_refresh_volume(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_volume(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_volume, range, display)
  end

  return dissect.md_incremental_refresh_volume_fields(buffer, offset, packet, parent)
end

-- Size: Trade ID
size_of.trade_id = 4

-- Display: Trade ID
display.trade_id = function(value)
  return "Trade ID: "..value
end

-- Dissect: Trade ID
dissect.trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_id)
  local value = range:le_int()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.trade_id, range, value, display)

  return offset + size_of.trade_id
end

-- Display: MD Incremental Refresh Trade Group
display.md_incremental_refresh_trade_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Trade Group
dissect.md_incremental_refresh_trade_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- MD Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- MD Entry Size: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index = dissect.number_of_orders(buffer, index, packet, parent)

  -- Trade ID: 4 Byte Signed Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.aggressor_side(buffer, index, packet, parent)

  -- MD Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index = dissect.md_update_action(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Trade Group
dissect.md_incremental_refresh_trade_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_trade_group then
    local range = buffer(offset, 32)
    local display = display.md_incremental_refresh_trade_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_group, range, display)
  end

  return dissect.md_incremental_refresh_trade_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Trade Groups
size_of.md_incremental_refresh_trade_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_trade_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_trade_group_count * 32

  return index
end

-- Display: MD Incremental Refresh Trade Groups
display.md_incremental_refresh_trade_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Trade Groups
dissect.md_incremental_refresh_trade_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Trade Group: Struct of 9 fields
  local md_incremental_refresh_trade_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_trade_group_count do
    index = dissect.md_incremental_refresh_trade_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Trade Groups
dissect.md_incremental_refresh_trade_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_groups then
    local length = size_of.md_incremental_refresh_trade_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_trade_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade_groups, range, display)
  end

  return dissect.md_incremental_refresh_trade_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Trade
size_of.md_incremental_refresh_trade = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_trade_groups(buffer, offset + index)

  return index
end

-- Display: MD Incremental Refresh Trade
display.md_incremental_refresh_trade = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Trade
dissect.md_incremental_refresh_trade_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  -- MD Incremental Refresh Trade Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_trade_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Trade
dissect.md_incremental_refresh_trade = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade then
    local length = size_of.md_incremental_refresh_trade(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_trade(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_trade, range, display)
  end

  return dissect.md_incremental_refresh_trade_fields(buffer, offset, packet, parent)
end

-- Size: Padding 1
size_of.padding_1 = 1

-- Display: Padding 1
display.padding_1 = function(value)
  return "Padding 1: "..value
end

-- Dissect: Padding 1
dissect.padding_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.padding_1)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_1(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.padding_1, range, value, display)

  return offset + size_of.padding_1
end

-- Display: MD Incremental Refresh Session Statistics Group
display.md_incremental_refresh_session_statistics_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Session Statistics Group
dissect.md_incremental_refresh_session_statistics_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- MD Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- MD Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index = dissect.md_update_action(buffer, index, packet, parent)

  -- MD Entry Type: 1 Byte Ascii String Enum with 17 values
  index = dissect.md_entry_type(buffer, index, packet, parent)

  -- MD Entry Size: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index = dissect.padding_1(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Session Statistics Group
dissect.md_incremental_refresh_session_statistics_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_session_statistics_group then
    local range = buffer(offset, 24)
    local display = display.md_incremental_refresh_session_statistics_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_session_statistics_group, range, display)
  end

  return dissect.md_incremental_refresh_session_statistics_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Session Statistics Groups
size_of.md_incremental_refresh_session_statistics_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_session_statistics_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_session_statistics_group_count * 24

  return index
end

-- Display: MD Incremental Refresh Session Statistics Groups
display.md_incremental_refresh_session_statistics_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Session Statistics Groups
dissect.md_incremental_refresh_session_statistics_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Session Statistics Group: Struct of 8 fields
  local md_incremental_refresh_session_statistics_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_session_statistics_group_count do
    index = dissect.md_incremental_refresh_session_statistics_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Session Statistics Groups
dissect.md_incremental_refresh_session_statistics_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_session_statistics_groups then
    local length = size_of.md_incremental_refresh_session_statistics_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_session_statistics_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_session_statistics_groups, range, display)
  end

  return dissect.md_incremental_refresh_session_statistics_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Session Statistics
size_of.md_incremental_refresh_session_statistics = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_session_statistics_groups(buffer, offset + index)

  return index
end

-- Display: MD Incremental Refresh Session Statistics
display.md_incremental_refresh_session_statistics = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Session Statistics
dissect.md_incremental_refresh_session_statistics_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  -- MD Incremental Refresh Session Statistics Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_session_statistics_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Session Statistics
dissect.md_incremental_refresh_session_statistics = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_session_statistics then
    local length = size_of.md_incremental_refresh_session_statistics(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_session_statistics(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_session_statistics, range, display)
  end

  return dissect.md_incremental_refresh_session_statistics_fields(buffer, offset, packet, parent)
end

-- Display: MD Incremental Refresh Limits Banding Group
display.md_incremental_refresh_limits_banding_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Limits Banding Group
dissect.md_incremental_refresh_limits_banding_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- High Limit Price: 8 Byte Signed Fixed Width Integer
  index = dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer
  index = dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer
  index = dissect.max_price_variation(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Limits Banding Group
dissect.md_incremental_refresh_limits_banding_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_limits_banding_group then
    local range = buffer(offset, 32)
    local display = display.md_incremental_refresh_limits_banding_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_limits_banding_group, range, display)
  end

  return dissect.md_incremental_refresh_limits_banding_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Limits Banding Groups
size_of.md_incremental_refresh_limits_banding_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_limits_banding_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_limits_banding_group_count * 32

  return index
end

-- Display: MD Incremental Refresh Limits Banding Groups
display.md_incremental_refresh_limits_banding_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Limits Banding Groups
dissect.md_incremental_refresh_limits_banding_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Limits Banding Group: Struct of 5 fields
  local md_incremental_refresh_limits_banding_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_limits_banding_group_count do
    index = dissect.md_incremental_refresh_limits_banding_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Limits Banding Groups
dissect.md_incremental_refresh_limits_banding_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_limits_banding_groups then
    local length = size_of.md_incremental_refresh_limits_banding_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_limits_banding_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_limits_banding_groups, range, display)
  end

  return dissect.md_incremental_refresh_limits_banding_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Limits Banding
size_of.md_incremental_refresh_limits_banding = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_limits_banding_groups(buffer, offset + index)

  return index
end

-- Display: MD Incremental Refresh Limits Banding
display.md_incremental_refresh_limits_banding = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Limits Banding
dissect.md_incremental_refresh_limits_banding_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  -- MD Incremental Refresh Limits Banding Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_limits_banding_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Limits Banding
dissect.md_incremental_refresh_limits_banding = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_limits_banding then
    local length = size_of.md_incremental_refresh_limits_banding(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_limits_banding(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_limits_banding, range, display)
  end

  return dissect.md_incremental_refresh_limits_banding_fields(buffer, offset, packet, parent)
end

-- Size: Padding 7
size_of.padding_7 = 7

-- Display: Padding 7
display.padding_7 = function(value)
  return "Padding 7: "..value
end

-- Dissect: Padding 7
dissect.padding_7 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.padding_7)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding_7(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.padding_7, range, value, display)

  return offset + size_of.padding_7
end

-- Display: MD Incremental Refresh Daily Statistics Group
display.md_incremental_refresh_daily_statistics_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Daily Statistics Group
dissect.md_incremental_refresh_daily_statistics_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- MD Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- MD Entry Size: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index = dissect.settl_price_type(buffer, index, packet, parent)

  -- MD Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index = dissect.md_update_action(buffer, index, packet, parent)

  -- MD Entry Type: 1 Byte Ascii String Enum with 17 values
  index = dissect.md_entry_type(buffer, index, packet, parent)

  -- Padding 7: 7 Byte
  index = dissect.padding_7(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Daily Statistics Group
dissect.md_incremental_refresh_daily_statistics_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_daily_statistics_group then
    local range = buffer(offset, 32)
    local display = display.md_incremental_refresh_daily_statistics_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_daily_statistics_group, range, display)
  end

  return dissect.md_incremental_refresh_daily_statistics_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Daily Statistics Groups
size_of.md_incremental_refresh_daily_statistics_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_daily_statistics_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_daily_statistics_group_count * 32

  return index
end

-- Display: MD Incremental Refresh Daily Statistics Groups
display.md_incremental_refresh_daily_statistics_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Daily Statistics Groups
dissect.md_incremental_refresh_daily_statistics_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Daily Statistics Group: Struct of 9 fields
  local md_incremental_refresh_daily_statistics_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_daily_statistics_group_count do
    index = dissect.md_incremental_refresh_daily_statistics_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Daily Statistics Groups
dissect.md_incremental_refresh_daily_statistics_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_daily_statistics_groups then
    local length = size_of.md_incremental_refresh_daily_statistics_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_daily_statistics_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_daily_statistics_groups, range, display)
  end

  return dissect.md_incremental_refresh_daily_statistics_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Daily Statistics
size_of.md_incremental_refresh_daily_statistics = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_daily_statistics_groups(buffer, offset + index)

  return index
end

-- Display: MD Incremental Refresh Daily Statistics
display.md_incremental_refresh_daily_statistics = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Daily Statistics
dissect.md_incremental_refresh_daily_statistics_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  -- MD Incremental Refresh Daily Statistics Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_daily_statistics_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Daily Statistics
dissect.md_incremental_refresh_daily_statistics = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_daily_statistics then
    local length = size_of.md_incremental_refresh_daily_statistics(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_daily_statistics(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_daily_statistics, range, display)
  end

  return dissect.md_incremental_refresh_daily_statistics_fields(buffer, offset, packet, parent)
end

-- Size: Order Update Action
size_of.order_update_action = 1

-- Display: Order Update Action
display.order_update_action = function(value)
  if value == 0 then
    return "Order Update Action: Order Update Action (0)"
  end
  if value == 1 then
    return "Order Update Action: Order Update Action (1)"
  end
  if value == 2 then
    return "Order Update Action: Order Update Action (2)"
  end

  return "Order Update Action: Unknown("..value..")"
end

-- Dissect: Order Update Action
dissect.order_update_action = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_update_action)
  local value = range:le_uint()
  local display = display.order_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.order_update_action, range, value, display)

  return offset + size_of.order_update_action
end

-- Size: Reference ID
size_of.reference_id = 1

-- Display: Reference ID
display.reference_id = function(value)
  return "Reference ID: "..value
end

-- Dissect: Reference ID
dissect.reference_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reference_id)
  local value = range:le_uint()
  local display = display.reference_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.reference_id, range, value, display)

  return offset + size_of.reference_id
end

-- Display: MD Incremental Refresh Book Order Group
display.md_incremental_refresh_book_order_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Book Order Group
dissect.md_incremental_refresh_book_order_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order ID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- MD Order Priority: 8 Byte Unsigned Fixed Width Integer
  index = dissect.md_order_priority(buffer, index, packet, parent)

  -- MD Display Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.md_display_qty(buffer, index, packet, parent)

  -- Reference ID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.reference_id(buffer, index, packet, parent)

  -- Order Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.order_update_action(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Book Order Group
dissect.md_incremental_refresh_book_order_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_book_order_group then
    local range = buffer(offset, 24)
    local display = display.md_incremental_refresh_book_order_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_book_order_group, range, display)
  end

  return dissect.md_incremental_refresh_book_order_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Book Order Groups
size_of.md_incremental_refresh_book_order_groups = function(buffer, offset)
  local index = 0

  index = index + 8

  -- Calculate field size from count
  local md_incremental_refresh_book_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_book_order_group_count * 24

  return index
end

-- Display: MD Incremental Refresh Book Order Groups
display.md_incremental_refresh_book_order_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Book Order Groups
dissect.md_incremental_refresh_book_order_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size8 Byte: Struct of 3 fields
  index = dissect.group_size8_byte(buffer, index, packet, parent)

  -- MD Incremental Refresh Book Order Group: Struct of 6 fields
  local md_incremental_refresh_book_order_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_book_order_group_count do
    index = dissect.md_incremental_refresh_book_order_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Book Order Groups
dissect.md_incremental_refresh_book_order_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_book_order_groups then
    local length = size_of.md_incremental_refresh_book_order_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_book_order_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_book_order_groups, range, display)
  end

  return dissect.md_incremental_refresh_book_order_groups_fields(buffer, offset, packet, parent)
end

-- Display: MD Incremental Refresh Book Group
display.md_incremental_refresh_book_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Book Group
dissect.md_incremental_refresh_book_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- MD Entry Px: 8 Byte Signed Fixed Width Integer
  index = dissect.md_entry_px(buffer, index, packet, parent)

  -- MD Entry Size: 4 Byte Signed Fixed Width Integer
  index = dissect.md_entry_size(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index = dissect.rpt_seq(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index = dissect.number_of_orders(buffer, index, packet, parent)

  -- MD Price Level: 1 Byte Unsigned Fixed Width Integer
  index = dissect.md_price_level(buffer, index, packet, parent)

  -- MD Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index = dissect.md_update_action(buffer, index, packet, parent)

  -- MD Entry Type: 1 Byte Ascii String Enum with 17 values
  index = dissect.md_entry_type(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index = dissect.padding_5(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Book Group
dissect.md_incremental_refresh_book_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_incremental_refresh_book_group then
    local range = buffer(offset, 32)
    local display = display.md_incremental_refresh_book_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_book_group, range, display)
  end

  return dissect.md_incremental_refresh_book_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Book Groups
size_of.md_incremental_refresh_book_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local md_incremental_refresh_book_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_incremental_refresh_book_group_count * 32

  return index
end

-- Display: MD Incremental Refresh Book Groups
display.md_incremental_refresh_book_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Book Groups
dissect.md_incremental_refresh_book_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- MD Incremental Refresh Book Group: Struct of 9 fields
  local md_incremental_refresh_book_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, md_incremental_refresh_book_group_count do
    index = dissect.md_incremental_refresh_book_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: MD Incremental Refresh Book Groups
dissect.md_incremental_refresh_book_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_book_groups then
    local length = size_of.md_incremental_refresh_book_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_book_groups(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_book_groups, range, display)
  end

  return dissect.md_incremental_refresh_book_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: MD Incremental Refresh Book
size_of.md_incremental_refresh_book = function(buffer, offset)
  local index = 0

  index = index + 11

  index = index + size_of.md_incremental_refresh_book_groups(buffer, offset + index)

  index = index + size_of.md_incremental_refresh_book_order_groups(buffer, offset + index)

  return index
end

-- Display: MD Incremental Refresh Book
display.md_incremental_refresh_book = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Incremental Refresh Book
dissect.md_incremental_refresh_book_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index = dissect.padding_2(buffer, index, packet, parent)

  -- MD Incremental Refresh Book Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_book_groups(buffer, index, packet, parent)

  -- MD Incremental Refresh Book Order Groups: Struct of 2 fields
  index = dissect.md_incremental_refresh_book_order_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Incremental Refresh Book
dissect.md_incremental_refresh_book = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_book then
    local length = size_of.md_incremental_refresh_book(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_incremental_refresh_book(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_incremental_refresh_book, range, display)
  end

  return dissect.md_incremental_refresh_book_fields(buffer, offset, packet, parent)
end

-- Size: Security Trading Event
size_of.security_trading_event = 1

-- Display: Security Trading Event
display.security_trading_event = function(value)
  if value == 0 then
    return "Security Trading Event: Security Trading Event (0)"
  end
  if value == 1 then
    return "Security Trading Event: Security Trading Event (1)"
  end
  if value == 4 then
    return "Security Trading Event: Security Trading Event (4)"
  end
  if value == 5 then
    return "Security Trading Event: Security Trading Event (5)"
  end
  if value == 6 then
    return "Security Trading Event: Security Trading Event (6)"
  end

  return "Security Trading Event: Unknown("..value..")"
end

-- Dissect: Security Trading Event
dissect.security_trading_event = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_trading_event)
  local value = range:le_uint()
  local display = display.security_trading_event(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.security_trading_event, range, value, display)

  return offset + size_of.security_trading_event
end

-- Size: Halt Reason
size_of.halt_reason = 1

-- Display: Halt Reason
display.halt_reason = function(value)
  if value == 0 then
    return "Halt Reason: Halt Reason (0)"
  end
  if value == 1 then
    return "Halt Reason: Halt Reason (1)"
  end
  if value == 2 then
    return "Halt Reason: Halt Reason (2)"
  end
  if value == 3 then
    return "Halt Reason: Halt Reason (3)"
  end
  if value == 4 then
    return "Halt Reason: Halt Reason (4)"
  end
  if value == 5 then
    return "Halt Reason: Halt Reason (5)"
  end
  if value == 6 then
    return "Halt Reason: Halt Reason (6)"
  end

  return "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
dissect.halt_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.halt_reason)
  local value = range:le_uint()
  local display = display.halt_reason(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.halt_reason, range, value, display)

  return offset + size_of.halt_reason
end

-- Size: Security Trading Status
size_of.security_trading_status = 1

-- Display: Security Trading Status
display.security_trading_status = function(value)
  if value == 2 then
    return "Security Trading Status: Security Trading Status (2)"
  end
  if value == 4 then
    return "Security Trading Status: Security Trading Status (4)"
  end
  if value == 15 then
    return "Security Trading Status: Security Trading Status (15)"
  end
  if value == 17 then
    return "Security Trading Status: Security Trading Status (17)"
  end
  if value == 18 then
    return "Security Trading Status: Security Trading Status (18)"
  end
  if value == 20 then
    return "Security Trading Status: Security Trading Status (20)"
  end
  if value == 21 then
    return "Security Trading Status: Security Trading Status (21)"
  end
  if value == 24 then
    return "Security Trading Status: Security Trading Status (24)"
  end
  if value == 25 then
    return "Security Trading Status: Security Trading Status (25)"
  end
  if value == 26 then
    return "Security Trading Status: Security Trading Status (26)"
  end
  if value == 103 then
    return "Security Trading Status: Security Trading Status (103)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
dissect.security_trading_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_trading_status)
  local value = range:le_uint()
  local display = display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.security_trading_status, range, value, display)

  return offset + size_of.security_trading_status
end

-- Display: Security Status
display.security_status = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Status
dissect.security_status_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index = dissect.asset(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index = dissect.security_trading_status(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index = dissect.halt_reason(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.security_trading_event(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status
dissect.security_status = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_status then
    local range = buffer(offset, 30)
    local display = display.security_status(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.security_status, range, display)
  end

  return dissect.security_status_fields(buffer, offset, packet, parent)
end

-- Size: Leg Option Delta
size_of.leg_option_delta = 4

-- Display: Leg Option Delta
display.leg_option_delta = function(value)
  local factor = 10000
  return "Leg Option Delta: "..value/factor
end

-- Dissect: Leg Option Delta
dissect.leg_option_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_option_delta)
  local value = range:le_int()
  local display = display.leg_option_delta(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.leg_option_delta, range, value, display)

  return offset + size_of.leg_option_delta
end

-- Size: Leg Price
size_of.leg_price = 8

-- Display: Leg Price
display.leg_price = function(value)
  local factor = 10000000
  return "Leg Price: "..value/factor
end

-- Dissect: Leg Price
dissect.leg_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_price)
  local value = range:le_int64()
  local display = display.leg_price(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.leg_price, range, value, display)

  return offset + size_of.leg_price
end

-- Size: Leg Ratio Qty
size_of.leg_ratio_qty = 1

-- Display: Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_ratio_qty)
  local value = range:le_int()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.leg_ratio_qty, range, value, display)

  return offset + size_of.leg_ratio_qty
end

-- Size: Leg Side
size_of.leg_side = 1

-- Display: Leg Side
display.leg_side = function(value)
  if value == 1 then
    return "Leg Side: Leg Side (1)"
  end
  if value == 2 then
    return "Leg Side: Leg Side (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
dissect.leg_side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_side)
  local value = range:le_uint()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.leg_side, range, value, display)

  return offset + size_of.leg_side
end

-- Size: Leg Security ID
size_of.leg_security_id = 4

-- Display: Leg Security ID
display.leg_security_id = function(value)
  return "Leg Security ID: "..value
end

-- Dissect: Leg Security ID
dissect.leg_security_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_security_id)
  local value = range:le_int()
  local display = display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.leg_security_id, range, value, display)

  return offset + size_of.leg_security_id
end

-- Display: Legs Group
display.legs_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Legs Group
dissect.legs_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.leg_side(buffer, index, packet, parent)

  -- Leg Ratio Qty: 1 Byte Signed Fixed Width Integer
  index = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Signed Fixed Width Integer
  index = dissect.leg_price(buffer, index, packet, parent)

  -- Leg Option Delta: 4 Byte Signed Fixed Width Integer
  index = dissect.leg_option_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: Legs Group
dissect.legs_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.legs_group then
    local range = buffer(offset, 18)
    local display = display.legs_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.legs_group, range, display)
  end

  return dissect.legs_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Legs Groups
size_of.legs_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local legs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + legs_group_count * 18

  return index
end

-- Display: Legs Groups
display.legs_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Legs Groups
dissect.legs_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Legs Group: Struct of 5 fields
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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.legs_groups, range, display)
  end

  return dissect.legs_groups_fields(buffer, offset, packet, parent)
end

-- Size: Price Ratio
size_of.price_ratio = 8

-- Display: Price Ratio
display.price_ratio = function(value)
  local factor = 10000000
  return "Price Ratio: "..value/factor
end

-- Dissect: Price Ratio
dissect.price_ratio = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_ratio)
  local value = range:le_int64()
  local display = display.price_ratio(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.price_ratio, range, value, display)

  return offset + size_of.price_ratio
end

-- Size: Security Sub Type
size_of.security_sub_type = 5

-- Display: Security Sub Type
display.security_sub_type = function(value)
  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
dissect.security_sub_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_sub_type)
  local value = range:string()
  local display = display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.security_sub_type, range, value, display)

  return offset + size_of.security_sub_type
end

-- Calculate runtime size: MD Instrument Definition Spread
size_of.md_instrument_definition_spread = function(buffer, offset)
  local index = 0

  index = index + 195

  index = index + size_of.events_groups(buffer, offset + index)

  index = index + size_of.md_feed_types_groups(buffer, offset + index)

  index = index + size_of.inst_attrib_groups(buffer, offset + index)

  index = index + size_of.lot_type_rules_groups(buffer, offset + index)

  index = index + size_of.legs_groups(buffer, offset + index)

  return index
end

-- Display: MD Instrument Definition Spread
display.md_instrument_definition_spread = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Instrument Definition Spread
dissect.md_instrument_definition_spread_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index = dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index = dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_update_time(buffer, index, packet, parent)

  -- MD Security Trading Status: 1 Byte Unsigned Fixed Width Integer
  index = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl ID: 2 Byte Signed Fixed Width Integer
  index = dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment ID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index = dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index = dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index = dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index = dissect.security_type(buffer, index, packet, parent)

  -- CFI Code: 6 Byte Ascii String
  index = dissect.cfi_code(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index = dissect.currency(buffer, index, packet, parent)

  -- Security Sub Type: 5 Byte Ascii String
  index = dissect.security_sub_type(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index = dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index = dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index = dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index = dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index = dissect.min_price_increment(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index = dissect.display_factor(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer
  index = dissect.price_display_format(buffer, index, packet, parent)

  -- Price Ratio: 8 Byte Signed Fixed Width Integer
  index = dissect.price_ratio(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer
  index = dissect.tick_rule(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index = dissect.unit_of_measure(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer
  index = dissect.trading_reference_price(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index = dissect.settl_price_type(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.open_interest_qty(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.cleared_volume(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer
  index = dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer
  index = dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer
  index = dissect.max_price_variation(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer
  index = dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer
  index = dissect.sub_fraction(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index = dissect.events_groups(buffer, index, packet, parent)

  -- MD Feed Types Groups: Struct of 2 fields
  index = dissect.md_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index = dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index = dissect.lot_type_rules_groups(buffer, index, packet, parent)

  -- Legs Groups: Struct of 2 fields
  index = dissect.legs_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Instrument Definition Spread
dissect.md_instrument_definition_spread = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_spread then
    local length = size_of.md_instrument_definition_spread(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_definition_spread(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_instrument_definition_spread, range, display)
  end

  return dissect.md_instrument_definition_spread_fields(buffer, offset, packet, parent)
end

-- Size: Flow Schedule Type
size_of.flow_schedule_type = 1

-- Display: Flow Schedule Type
display.flow_schedule_type = function(value)
  return "Flow Schedule Type: "..value
end

-- Dissect: Flow Schedule Type
dissect.flow_schedule_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.flow_schedule_type)
  local value = range:le_int()
  local display = display.flow_schedule_type(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.flow_schedule_type, range, value, display)

  return offset + size_of.flow_schedule_type
end

-- Size: Contract Multiplier Unit
size_of.contract_multiplier_unit = 1

-- Display: Contract Multiplier Unit
display.contract_multiplier_unit = function(value)
  return "Contract Multiplier Unit: "..value
end

-- Dissect: Contract Multiplier Unit
dissect.contract_multiplier_unit = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contract_multiplier_unit)
  local value = range:le_int()
  local display = display.contract_multiplier_unit(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.contract_multiplier_unit, range, value, display)

  return offset + size_of.contract_multiplier_unit
end

-- Size: Contract Multiplier
size_of.contract_multiplier = 4

-- Display: Contract Multiplier
display.contract_multiplier = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
dissect.contract_multiplier = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contract_multiplier)
  local value = range:le_int()
  local display = display.contract_multiplier(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.contract_multiplier, range, value, display)

  return offset + size_of.contract_multiplier
end

-- Size: Original Contract Size
size_of.original_contract_size = 4

-- Display: Original Contract Size
display.original_contract_size = function(value)
  return "Original Contract Size: "..value
end

-- Dissect: Original Contract Size
dissect.original_contract_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_contract_size)
  local value = range:le_int()
  local display = display.original_contract_size(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.original_contract_size, range, value, display)

  return offset + size_of.original_contract_size
end

-- Size: Decay Start Date
size_of.decay_start_date = 2

-- Display: Decay Start Date
display.decay_start_date = function(value)
  return "Decay Start Date: "..value
end

-- Dissect: Decay Start Date
dissect.decay_start_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.decay_start_date)
  local value = range:le_uint()
  local display = display.decay_start_date(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.decay_start_date, range, value, display)

  return offset + size_of.decay_start_date
end

-- Size: Decay Quantity
size_of.decay_quantity = 4

-- Display: Decay Quantity
display.decay_quantity = function(value)
  return "Decay Quantity: "..value
end

-- Dissect: Decay Quantity
dissect.decay_quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.decay_quantity)
  local value = range:le_int()
  local display = display.decay_quantity(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.decay_quantity, range, value, display)

  return offset + size_of.decay_quantity
end

-- Calculate runtime size: MD Instrument Definition Future
size_of.md_instrument_definition_future = function(buffer, offset)
  local index = 0

  index = index + 216

  index = index + size_of.events_groups(buffer, offset + index)

  index = index + size_of.md_feed_types_groups(buffer, offset + index)

  index = index + size_of.inst_attrib_groups(buffer, offset + index)

  index = index + size_of.lot_type_rules_groups(buffer, offset + index)

  return index
end

-- Display: MD Instrument Definition Future
display.md_instrument_definition_future = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: MD Instrument Definition Future
dissect.md_instrument_definition_future_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index = dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index = dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_update_time(buffer, index, packet, parent)

  -- MD Security Trading Status: 1 Byte Unsigned Fixed Width Integer
  index = dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl ID: 2 Byte Signed Fixed Width Integer
  index = dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment ID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index = dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index = dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index = dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Security ID: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index = dissect.security_type(buffer, index, packet, parent)

  -- CFI Code: 6 Byte Ascii String
  index = dissect.cfi_code(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index = dissect.currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index = dissect.settl_currency(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index = dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index = dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index = dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index = dissect.min_price_increment(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index = dissect.display_factor(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer
  index = dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer
  index = dissect.sub_fraction(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer
  index = dissect.price_display_format(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index = dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer
  index = dissect.unit_of_measure_qty(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer
  index = dissect.trading_reference_price(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index = dissect.settl_price_type(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.open_interest_qty(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.cleared_volume(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer
  index = dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer
  index = dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer
  index = dissect.max_price_variation(buffer, index, packet, parent)

  -- Decay Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.decay_quantity(buffer, index, packet, parent)

  -- Decay Start Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.decay_start_date(buffer, index, packet, parent)

  -- Original Contract Size: 4 Byte Signed Fixed Width Integer
  index = dissect.original_contract_size(buffer, index, packet, parent)

  -- Contract Multiplier: 4 Byte Signed Fixed Width Integer
  index = dissect.contract_multiplier(buffer, index, packet, parent)

  -- Contract Multiplier Unit: 1 Byte Signed Fixed Width Integer
  index = dissect.contract_multiplier_unit(buffer, index, packet, parent)

  -- Flow Schedule Type: 1 Byte Signed Fixed Width Integer
  index = dissect.flow_schedule_type(buffer, index, packet, parent)

  -- Min Price Increment Amount: 8 Byte Signed Fixed Width Integer
  index = dissect.min_price_increment_amount(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index = dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trading_reference_date(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index = dissect.events_groups(buffer, index, packet, parent)

  -- MD Feed Types Groups: Struct of 2 fields
  index = dissect.md_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index = dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index = dissect.lot_type_rules_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: MD Instrument Definition Future
dissect.md_instrument_definition_future = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_future then
    local length = size_of.md_instrument_definition_future(buffer, offset)
    local range = buffer(offset, length)
    local display = display.md_instrument_definition_future(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.md_instrument_definition_future, range, display)
  end

  return dissect.md_instrument_definition_future_fields(buffer, offset, packet, parent)
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

  parent:add(cme_mdp3_sbe_v8_1.fields.text, range, value, display)

  return offset + size_of.text
end

-- Display: Admin Logout
display.admin_logout = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Admin Logout
dissect.admin_logout_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 180 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Logout
dissect.admin_logout = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.admin_logout then
    local range = buffer(offset, 180)
    local display = display.admin_logout(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.admin_logout, range, display)
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
  local range = buffer(offset, size_of.heart_bt_int)
  local value = range:le_int()
  local display = display.heart_bt_int(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.heart_bt_int, range, value, display)

  return offset + size_of.heart_bt_int
end

-- Display: Admin Login
display.admin_login = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Admin Login
dissect.admin_login_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heart Bt Int: 1 Byte Signed Fixed Width Integer
  index = dissect.heart_bt_int(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Login
dissect.admin_login = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.admin_login then
    local range = buffer(offset, 1)
    local display = display.admin_login(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.admin_login, range, display)
  end

  return dissect.admin_login_fields(buffer, offset, packet, parent)
end

-- Display: Channel Reset Group
display.channel_reset_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Channel Reset Group
dissect.channel_reset_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Appl ID: 2 Byte Signed Fixed Width Integer
  index = dissect.appl_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset Group
dissect.channel_reset_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.channel_reset_group then
    local range = buffer(offset, 2)
    local display = display.channel_reset_group(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.channel_reset_group, range, display)
  end

  return dissect.channel_reset_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Channel Reset Groups
size_of.channel_reset_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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

  -- group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Channel Reset Group: Struct of 1 fields
  local channel_reset_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, channel_reset_group_count do
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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.channel_reset_groups, range, display)
  end

  return dissect.channel_reset_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Channel Reset
size_of.channel_reset = function(buffer, offset)
  local index = 0

  index = index + 9

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
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index = dissect.match_event_indicator(buffer, index, packet, parent)

  -- Channel Reset Groups: Struct of 2 fields
  index = dissect.channel_reset_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset
dissect.channel_reset = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.channel_reset then
    local length = size_of.channel_reset(buffer, offset)
    local range = buffer(offset, length)
    local display = display.channel_reset(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.channel_reset, range, display)
  end

  return dissect.channel_reset_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Channel Reset
  if code == 4 then
    return size_of.channel_reset(buffer, offset)
  end
  -- Size of Admin Heartbeat
  if code == 12 then
    return 0
  end
  -- Size of Admin Login
  if code == 15 then
    return 1
  end
  -- Size of Admin Logout
  if code == 16 then
    return 180
  end
  -- Size of MD Instrument Definition Future
  if code == 27 then
    return size_of.md_instrument_definition_future(buffer, offset)
  end
  -- Size of MD Instrument Definition Spread
  if code == 29 then
    return size_of.md_instrument_definition_spread(buffer, offset)
  end
  -- Size of Security Status
  if code == 30 then
    return 30
  end
  -- Size of MD Incremental Refresh Book
  if code == 32 then
    return size_of.md_incremental_refresh_book(buffer, offset)
  end
  -- Size of MD Incremental Refresh Daily Statistics
  if code == 33 then
    return size_of.md_incremental_refresh_daily_statistics(buffer, offset)
  end
  -- Size of MD Incremental Refresh Limits Banding
  if code == 34 then
    return size_of.md_incremental_refresh_limits_banding(buffer, offset)
  end
  -- Size of MD Incremental Refresh Session Statistics
  if code == 35 then
    return size_of.md_incremental_refresh_session_statistics(buffer, offset)
  end
  -- Size of MD Incremental Refresh Trade
  if code == 36 then
    return size_of.md_incremental_refresh_trade(buffer, offset)
  end
  -- Size of MD Incremental Refresh Volume
  if code == 37 then
    return size_of.md_incremental_refresh_volume(buffer, offset)
  end
  -- Size of Snapshot Full Refresh
  if code == 38 then
    return size_of.snapshot_full_refresh(buffer, offset)
  end
  -- Size of Quote Request
  if code == 39 then
    return size_of.quote_request(buffer, offset)
  end
  -- Size of MD Instrument Definition Option
  if code == 41 then
    return size_of.md_instrument_definition_option(buffer, offset)
  end
  -- Size of MD Incremental Refresh Trade Summary
  if code == 42 then
    return size_of.md_incremental_refresh_trade_summary(buffer, offset)
  end
  -- Size of MD Incremental Refresh Order Book
  if code == 43 then
    return size_of.md_incremental_refresh_order_book(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Order Book
  if code == 44 then
    return size_of.snapshot_full_refresh_order_book(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(code, buffer, offset, packet, parent)
  -- Dissect Channel Reset
  if code == 4 then
    return dissect.channel_reset(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat
  if code == 12 then
  end
  -- Dissect Admin Login
  if code == 15 then
    return dissect.admin_login(buffer, offset, packet, parent)
  end
  -- Dissect Admin Logout
  if code == 16 then
    return dissect.admin_logout(buffer, offset, packet, parent)
  end
  -- Dissect MD Instrument Definition Future
  if code == 27 then
    return dissect.md_instrument_definition_future(buffer, offset, packet, parent)
  end
  -- Dissect MD Instrument Definition Spread
  if code == 29 then
    return dissect.md_instrument_definition_spread(buffer, offset, packet, parent)
  end
  -- Dissect Security Status
  if code == 30 then
    return dissect.security_status(buffer, offset, packet, parent)
  end
  -- Dissect MD Incremental Refresh Book
  if code == 32 then
    return dissect.md_incremental_refresh_book(buffer, offset, packet, parent)
  end
  -- Dissect MD Incremental Refresh Daily Statistics
  if code == 33 then
    return dissect.md_incremental_refresh_daily_statistics(buffer, offset, packet, parent)
  end
  -- Dissect MD Incremental Refresh Limits Banding
  if code == 34 then
    return dissect.md_incremental_refresh_limits_banding(buffer, offset, packet, parent)
  end
  -- Dissect MD Incremental Refresh Session Statistics
  if code == 35 then
    return dissect.md_incremental_refresh_session_statistics(buffer, offset, packet, parent)
  end
  -- Dissect MD Incremental Refresh Trade
  if code == 36 then
    return dissect.md_incremental_refresh_trade(buffer, offset, packet, parent)
  end
  -- Dissect MD Incremental Refresh Volume
  if code == 37 then
    return dissect.md_incremental_refresh_volume(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh
  if code == 38 then
    return dissect.snapshot_full_refresh(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if code == 39 then
    return dissect.quote_request(buffer, offset, packet, parent)
  end
  -- Dissect MD Instrument Definition Option
  if code == 41 then
    return dissect.md_instrument_definition_option(buffer, offset, packet, parent)
  end
  -- Dissect MD Incremental Refresh Trade Summary
  if code == 42 then
    return dissect.md_incremental_refresh_trade_summary(buffer, offset, packet, parent)
  end
  -- Dissect MD Incremental Refresh Order Book
  if code == 43 then
    return dissect.md_incremental_refresh_order_book(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Order Book
  if code == 44 then
    return dissect.snapshot_full_refresh_order_book(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent)
  -- Parse Payload type dependency
  local code = buffer(offset - 6, 2):le_uint()

  if not show.payload then
    return dissect.payload_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(cme_mdp3_sbe_v8_1.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
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

  parent:add(cme_mdp3_sbe_v8_1.fields.version, range, value, display)

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

  parent:add(cme_mdp3_sbe_v8_1.fields.schema_id, range, value, display)

  return offset + size_of.schema_id
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
    return "Template Id: MD Instrument Definition Future (27)"
  end
  if value == 29 then
    return "Template Id: MD Instrument Definition Spread (29)"
  end
  if value == 30 then
    return "Template Id: Security Status (30)"
  end
  if value == 32 then
    return "Template Id: MD Incremental Refresh Book (32)"
  end
  if value == 33 then
    return "Template Id: MD Incremental Refresh Daily Statistics (33)"
  end
  if value == 34 then
    return "Template Id: MD Incremental Refresh Limits Banding (34)"
  end
  if value == 35 then
    return "Template Id: MD Incremental Refresh Session Statistics (35)"
  end
  if value == 36 then
    return "Template Id: MD Incremental Refresh Trade (36)"
  end
  if value == 37 then
    return "Template Id: MD Incremental Refresh Volume (37)"
  end
  if value == 38 then
    return "Template Id: Snapshot Full Refresh (38)"
  end
  if value == 39 then
    return "Template Id: Quote Request (39)"
  end
  if value == 41 then
    return "Template Id: MD Instrument Definition Option (41)"
  end
  if value == 42 then
    return "Template Id: MD Incremental Refresh Trade Summary (42)"
  end
  if value == 43 then
    return "Template Id: MD Incremental Refresh Order Book (43)"
  end
  if value == 44 then
    return "Template Id: Snapshot Full Refresh Order Book (44)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(cme_mdp3_sbe_v8_1.fields.template_id, range, value, display)

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

  parent:add(cme_mdp3_sbe_v8_1.fields.block_length, range, value, display)

  return offset + size_of.block_length
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

  parent:add(cme_mdp3_sbe_v8_1.fields.message_size, range, value, display)

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

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 19 values
  index = dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer
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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.message_header, range, display)
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

  -- Payload: Runtime Type with 19 branches
  index = dissect.payload(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.message, range, display)
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

  parent:add(cme_mdp3_sbe_v8_1.fields.sending_time, range, value, display)

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

  parent:add(cme_mdp3_sbe_v8_1.fields.message_sequence_number, range, value, display)

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
    parent = parent:add(cme_mdp3_sbe_v8_1.fields.packet_header, range, display)
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
function cme_mdp3_sbe_v8_1.init()
end

-- Dissector for Cme Mdp3 Sbe 8.1
function cme_mdp3_sbe_v8_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cme_mdp3_sbe_v8_1.name

  -- Dissect protocol
  local protocol = parent:add(cme_mdp3_sbe_v8_1, buffer(), cme_mdp3_sbe_v8_1.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cme_mdp3_sbe_v8_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cme_mdp3_sbe_v8_1_packet_size = function(buffer)

  return true
end

-- Verify Version Field
verify.version = function(buffer)
  if 8 == buffer(20, 2):le_uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Mdp3 Sbe 8.1
local function cme_mdp3_sbe_v8_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cme_mdp3_sbe_v8_1_packet_size(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cme_mdp3_sbe_v8_1
  cme_mdp3_sbe_v8_1.dissector(buffer, packet, parent)

  return true
end

-- Register Cme Mdp3 Sbe 8.1 Heuristic
cme_mdp3_sbe_v8_1:register_heuristic("udp", cme_mdp3_sbe_v8_1_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 8.1
-- Date: Friday, July 1, 2016
-- Script:
-- Source Version: 1.3.0.0
-- Compiler Version: 1.1
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
