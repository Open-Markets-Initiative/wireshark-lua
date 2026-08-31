-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Globex Mdp3 Sbe 1.5 Protocol
local omi_cme_globex_mdp3_sbe_v1_5 = Proto("Omi.Cme.Globex.Mdp3.Sbe.v1.5", "Cme Globex Mdp3 Sbe 1.5")

-- Protocol table
local cme_globex_mdp3_sbe_v1_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Globex Mdp3 Sbe 1.5 Fields
omi_cme_globex_mdp3_sbe_v1_5.fields.access_key_id = ProtoField.new("Access Key Id", "cme.globex.mdp3.sbe.v1.5.accesskeyid", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.actual = ProtoField.new("Actual", "cme.globex.mdp3.sbe.v1.5.actual", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cme_globex_mdp3_sbe_v1_5.fields.aggressor_side = ProtoField.new("Aggressor Side", "cme.globex.mdp3.sbe.v1.5.aggressorside", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.appl_id = ProtoField.new("Appl Id", "cme.globex.mdp3.sbe.v1.5.applid", ftypes.INT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.asset = ProtoField.new("Asset", "cme.globex.mdp3.sbe.v1.5.asset", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.block_length = ProtoField.new("Block Length", "cme.globex.mdp3.sbe.v1.5.blocklength", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.block_trade_eligible = ProtoField.new("Block Trade Eligible", "cme.globex.mdp3.sbe.v1.5.blocktradeeligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000004)
omi_cme_globex_mdp3_sbe_v1_5.fields.cfi_code = ProtoField.new("Cfi Code", "cme.globex.mdp3.sbe.v1.5.cficode", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.channel_reset_group = ProtoField.new("Channel Reset Group", "cme.globex.mdp3.sbe.v1.5.channelresetgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.channel_reset_groups = ProtoField.new("Channel Reset Groups", "cme.globex.mdp3.sbe.v1.5.channelresetgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.cleared_volume = ProtoField.new("Cleared Volume", "cme.globex.mdp3.sbe.v1.5.clearedvolume", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "cme.globex.mdp3.sbe.v1.5.contractmultiplier", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.contract_multiplier_unit = ProtoField.new("Contract Multiplier Unit", "cme.globex.mdp3.sbe.v1.5.contractmultiplierunit", ftypes.INT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.currency = ProtoField.new("Currency", "cme.globex.mdp3.sbe.v1.5.currency", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.daily_product_eligibility = ProtoField.new("Daily Product Eligibility", "cme.globex.mdp3.sbe.v1.5.dailyproducteligibility", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00020000)
omi_cme_globex_mdp3_sbe_v1_5.fields.day = ProtoField.new("Day", "cme.globex.mdp3.sbe.v1.5.day", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.decay_quantity = ProtoField.new("Decay Quantity", "cme.globex.mdp3.sbe.v1.5.decayquantity", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.decay_start_date = ProtoField.new("Decay Start Date", "cme.globex.mdp3.sbe.v1.5.decaystartdate", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.decaying_product_eligibility = ProtoField.new("Decaying Product Eligibility", "cme.globex.mdp3.sbe.v1.5.decayingproducteligibility", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00008000)
omi_cme_globex_mdp3_sbe_v1_5.fields.display_factor = ProtoField.new("Display Factor", "cme.globex.mdp3.sbe.v1.5.displayfactor", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.ebf_eligible = ProtoField.new("Ebf Eligible", "cme.globex.mdp3.sbe.v1.5.ebfeligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000010)
omi_cme_globex_mdp3_sbe_v1_5.fields.efp_eligible = ProtoField.new("Efp Eligible", "cme.globex.mdp3.sbe.v1.5.efpeligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000008)
omi_cme_globex_mdp3_sbe_v1_5.fields.efr_eligible = ProtoField.new("Efr Eligible", "cme.globex.mdp3.sbe.v1.5.efreligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000040)
omi_cme_globex_mdp3_sbe_v1_5.fields.efs_eligible = ProtoField.new("Efs Eligible", "cme.globex.mdp3.sbe.v1.5.efseligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000020)
omi_cme_globex_mdp3_sbe_v1_5.fields.electronic_match_eligible = ProtoField.new("Electronic Match Eligible", "cme.globex.mdp3.sbe.v1.5.electronicmatcheligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000001)
omi_cme_globex_mdp3_sbe_v1_5.fields.encoding_type = ProtoField.new("Encoding Type", "cme.globex.mdp3.sbe.v1.5.encodingtype", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.end_of_event = ProtoField.new("End Of Event", "cme.globex.mdp3.sbe.v1.5.endofevent", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cme_globex_mdp3_sbe_v1_5.fields.error_codes = ProtoField.new("Error Codes", "cme.globex.mdp3.sbe.v1.5.errorcodes", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.event_time = ProtoField.new("Event Time", "cme.globex.mdp3.sbe.v1.5.eventtime", ftypes.UINT64)
omi_cme_globex_mdp3_sbe_v1_5.fields.event_type = ProtoField.new("Event Type", "cme.globex.mdp3.sbe.v1.5.eventtype", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.events_group = ProtoField.new("Events Group", "cme.globex.mdp3.sbe.v1.5.eventsgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.events_groups = ProtoField.new("Events Groups", "cme.globex.mdp3.sbe.v1.5.eventsgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.feed_types_group = ProtoField.new("Feed Types Group", "cme.globex.mdp3.sbe.v1.5.feedtypesgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.feed_types_groups = ProtoField.new("Feed Types Groups", "cme.globex.mdp3.sbe.v1.5.feedtypesgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.final = ProtoField.new("Final", "cme.globex.mdp3.sbe.v1.5.final", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cme_globex_mdp3_sbe_v1_5.fields.firm = ProtoField.new("Firm", "cme.globex.mdp3.sbe.v1.5.firm", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.flow_schedule_type = ProtoField.new("Flow Schedule Type", "cme.globex.mdp3.sbe.v1.5.flowscheduletype", ftypes.INT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.group_size = ProtoField.new("Group Size", "cme.globex.mdp3.sbe.v1.5.groupsize", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.group_size_8_byte = ProtoField.new("Group Size 8 Byte", "cme.globex.mdp3.sbe.v1.5.groupsize8byte", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.gt_orders_eligibility = ProtoField.new("Gt Orders Eligibility", "cme.globex.mdp3.sbe.v1.5.gtorderseligibility", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00040000)
omi_cme_globex_mdp3_sbe_v1_5.fields.halt_reason = ProtoField.new("Halt Reason", "cme.globex.mdp3.sbe.v1.5.haltreason", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "cme.globex.mdp3.sbe.v1.5.heartbtint", ftypes.INT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.high_limit_price = ProtoField.new("High Limit Price", "cme.globex.mdp3.sbe.v1.5.highlimitprice", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.hmac_signature = ProtoField.new("Hmac Signature", "cme.globex.mdp3.sbe.v1.5.hmacsignature", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.ilink_indicative_mass_quoting_eligible = ProtoField.new("ILink Indicative Mass Quoting Eligible", "cme.globex.mdp3.sbe.v1.5.ilinkindicativemassquotingeligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000100)
omi_cme_globex_mdp3_sbe_v1_5.fields.implied_matching_eligibility = ProtoField.new("Implied Matching Eligibility", "cme.globex.mdp3.sbe.v1.5.impliedmatchingeligibility", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00080000)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_book_group = ProtoField.new("Incremental Refresh Book Group", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshbookgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_book_groups = ProtoField.new("Incremental Refresh Book Groups", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshbookgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_daily_statistics_group = ProtoField.new("Incremental Refresh Daily Statistics Group", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshdailystatisticsgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_daily_statistics_groups = ProtoField.new("Incremental Refresh Daily Statistics Groups", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshdailystatisticsgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_limits_banding_group = ProtoField.new("Incremental Refresh Limits Banding Group", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshlimitsbandinggroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_limits_banding_groups = ProtoField.new("Incremental Refresh Limits Banding Groups", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshlimitsbandinggroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_session_statistics_group = ProtoField.new("Incremental Refresh Session Statistics Group", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshsessionstatisticsgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_session_statistics_groups = ProtoField.new("Incremental Refresh Session Statistics Groups", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshsessionstatisticsgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_group = ProtoField.new("Incremental Refresh Trade Group", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshtradegroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_groups = ProtoField.new("Incremental Refresh Trade Groups", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshtradegroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_group = ProtoField.new("Incremental Refresh Trade Summary Group", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshtradesummarygroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_groups = ProtoField.new("Incremental Refresh Trade Summary Groups", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshtradesummarygroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_order_id_group = ProtoField.new("Incremental Refresh Trade Summary Order Id Group", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshtradesummaryorderidgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_order_id_groups = ProtoField.new("Incremental Refresh Trade Summary Order Id Groups", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshtradesummaryorderidgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_volume_group = ProtoField.new("Incremental Refresh Volume Group", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshvolumegroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_volume_groups = ProtoField.new("Incremental Refresh Volume Groups", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshvolumegroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.inst_attrib_group = ProtoField.new("Inst Attrib Group", "cme.globex.mdp3.sbe.v1.5.instattribgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.inst_attrib_groups = ProtoField.new("Inst Attrib Groups", "cme.globex.mdp3.sbe.v1.5.instattribgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.inst_attrib_value = ProtoField.new("Inst Attrib Value", "cme.globex.mdp3.sbe.v1.5.instattribvalue", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.intraday = ProtoField.new("Intraday", "cme.globex.mdp3.sbe.v1.5.intraday", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cme_globex_mdp3_sbe_v1_5.fields.is_fractional = ProtoField.new("Is Fractional", "cme.globex.mdp3.sbe.v1.5.isfractional", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000800)
omi_cme_globex_mdp3_sbe_v1_5.fields.last_implied_msg = ProtoField.new("Last Implied Msg", "cme.globex.mdp3.sbe.v1.5.lastimpliedmsg", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cme_globex_mdp3_sbe_v1_5.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "cme.globex.mdp3.sbe.v1.5.lastmsgseqnumprocessed", ftypes.UINT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.last_qty = ProtoField.new("Last Qty", "cme.globex.mdp3.sbe.v1.5.lastqty", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.last_quote_msg = ProtoField.new("Last Quote Msg", "cme.globex.mdp3.sbe.v1.5.lastquotemsg", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cme_globex_mdp3_sbe_v1_5.fields.last_stats_msg = ProtoField.new("Last Stats Msg", "cme.globex.mdp3.sbe.v1.5.laststatsmsg", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cme_globex_mdp3_sbe_v1_5.fields.last_trade_msg = ProtoField.new("Last Trade Msg", "cme.globex.mdp3.sbe.v1.5.lasttrademsg", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cme_globex_mdp3_sbe_v1_5.fields.last_update_time = ProtoField.new("Last Update Time", "cme.globex.mdp3.sbe.v1.5.lastupdatetime", ftypes.UINT64)
omi_cme_globex_mdp3_sbe_v1_5.fields.last_volume_msg = ProtoField.new("Last Volume Msg", "cme.globex.mdp3.sbe.v1.5.lastvolumemsg", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cme_globex_mdp3_sbe_v1_5.fields.leg_option_delta = ProtoField.new("Leg Option Delta", "cme.globex.mdp3.sbe.v1.5.legoptiondelta", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.leg_price = ProtoField.new("Leg Price", "cme.globex.mdp3.sbe.v1.5.legprice", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.globex.mdp3.sbe.v1.5.legratioqty", ftypes.INT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.leg_security_id = ProtoField.new("Leg Security Id", "cme.globex.mdp3.sbe.v1.5.legsecurityid", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.leg_side = ProtoField.new("Leg Side", "cme.globex.mdp3.sbe.v1.5.legside", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.legs_group = ProtoField.new("Legs Group", "cme.globex.mdp3.sbe.v1.5.legsgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.legs_groups = ProtoField.new("Legs Groups", "cme.globex.mdp3.sbe.v1.5.legsgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.lot_type = ProtoField.new("Lot Type", "cme.globex.mdp3.sbe.v1.5.lottype", ftypes.INT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.lot_type_rules_group = ProtoField.new("Lot Type Rules Group", "cme.globex.mdp3.sbe.v1.5.lottyperulesgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.lot_type_rules_groups = ProtoField.new("Lot Type Rules Groups", "cme.globex.mdp3.sbe.v1.5.lottyperulesgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.low_limit_price = ProtoField.new("Low Limit Price", "cme.globex.mdp3.sbe.v1.5.lowlimitprice", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.main_fraction = ProtoField.new("Main Fraction", "cme.globex.mdp3.sbe.v1.5.mainfraction", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_related_symbol_group = ProtoField.new("Market Data Request Related Symbol Group", "cme.globex.mdp3.sbe.v1.5.marketdatarequestrelatedsymbolgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_related_symbol_groups = ProtoField.new("Market Data Request Related Symbol Groups", "cme.globex.mdp3.sbe.v1.5.marketdatarequestrelatedsymbolgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_security_group = ProtoField.new("Market Data Request Security Group", "cme.globex.mdp3.sbe.v1.5.marketdatarequestsecuritygroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_security_groups = ProtoField.new("Market Data Request Security Groups", "cme.globex.mdp3.sbe.v1.5.marketdatarequestsecuritygroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.market_depth = ProtoField.new("Market Depth", "cme.globex.mdp3.sbe.v1.5.marketdepth", ftypes.INT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.market_segment_id = ProtoField.new("Market Segment Id", "cme.globex.mdp3.sbe.v1.5.marketsegmentid", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.match_algorithm = ProtoField.new("Match Algorithm", "cme.globex.mdp3.sbe.v1.5.matchalgorithm", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "cme.globex.mdp3.sbe.v1.5.matcheventindicator", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.globex.mdp3.sbe.v1.5.maturitymonthyear", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.max_price_variation = ProtoField.new("Max Price Variation", "cme.globex.mdp3.sbe.v1.5.maxpricevariation", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "cme.globex.mdp3.sbe.v1.5.maxtradevol", ftypes.UINT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.globex.mdp3.sbe.v1.5.mdentrypx", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_px_optional = ProtoField.new("Md Entry Px Optional", "cme.globex.mdp3.sbe.v1.5.mdentrypxoptional", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.globex.mdp3.sbe.v1.5.mdentrysize", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_size_optional = ProtoField.new("Md Entry Size Optional", "cme.globex.mdp3.sbe.v1.5.mdentrysizeoptional", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_type = ProtoField.new("Md Entry Type", "cme.globex.mdp3.sbe.v1.5.mdentrytype", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_type_book = ProtoField.new("Md Entry Type Book", "cme.globex.mdp3.sbe.v1.5.mdentrytypebook", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_type_daily_statistics = ProtoField.new("Md Entry Type Daily Statistics", "cme.globex.mdp3.sbe.v1.5.mdentrytypedailystatistics", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_type_statistics = ProtoField.new("Md Entry Type Statistics", "cme.globex.mdp3.sbe.v1.5.mdentrytypestatistics", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_feed_type = ProtoField.new("Md Feed Type", "cme.globex.mdp3.sbe.v1.5.mdfeedtype", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_price_level = ProtoField.new("Md Price Level", "cme.globex.mdp3.sbe.v1.5.mdpricelevel", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_price_level_optional = ProtoField.new("Md Price Level Optional", "cme.globex.mdp3.sbe.v1.5.mdpriceleveloptional", ftypes.INT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_req_id = ProtoField.new("Md Req Id", "cme.globex.mdp3.sbe.v1.5.mdreqid", ftypes.UINT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_req_id_optional = ProtoField.new("Md Req Id Optional", "cme.globex.mdp3.sbe.v1.5.mdreqidoptional", ftypes.UINT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_req_id_status = ProtoField.new("Md Req Id Status", "cme.globex.mdp3.sbe.v1.5.mdreqidstatus", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_req_rej_reason = ProtoField.new("Md Req Rej Reason", "cme.globex.mdp3.sbe.v1.5.mdreqrejreason", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_security_trading_status = ProtoField.new("Md Security Trading Status", "cme.globex.mdp3.sbe.v1.5.mdsecuritytradingstatus", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_update_action = ProtoField.new("Md Update Action", "cme.globex.mdp3.sbe.v1.5.mdupdateaction", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.globex.mdp3.sbe.v1.5.messagesequencenumber", ftypes.UINT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.message_size = ProtoField.new("Message Size", "cme.globex.mdp3.sbe.v1.5.messagesize", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.min_cab_price = ProtoField.new("Min Cab Price", "cme.globex.mdp3.sbe.v1.5.mincabprice", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.min_lot_size = ProtoField.new("Min Lot Size", "cme.globex.mdp3.sbe.v1.5.minlotsize", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.min_price_increment = ProtoField.new("Min Price Increment", "cme.globex.mdp3.sbe.v1.5.minpriceincrement", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "cme.globex.mdp3.sbe.v1.5.minpriceincrementamount", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.min_price_increment_optional = ProtoField.new("Min Price Increment Optional", "cme.globex.mdp3.sbe.v1.5.minpriceincrementoptional", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "cme.globex.mdp3.sbe.v1.5.mintradevol", ftypes.UINT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.month = ProtoField.new("Month", "cme.globex.mdp3.sbe.v1.5.month", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.negative_price_outright_eligible = ProtoField.new("Negative Price Outright Eligible", "cme.globex.mdp3.sbe.v1.5.negativepriceoutrighteligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000400)
omi_cme_globex_mdp3_sbe_v1_5.fields.negative_strike_eligible = ProtoField.new("Negative Strike Eligible", "cme.globex.mdp3.sbe.v1.5.negativestrikeeligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000200)
omi_cme_globex_mdp3_sbe_v1_5.fields.null_value = ProtoField.new("Null Value", "cme.globex.mdp3.sbe.v1.5.nullvalue", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cme_globex_mdp3_sbe_v1_5.fields.num_in_group = ProtoField.new("Num In Group", "cme.globex.mdp3.sbe.v1.5.numingroup", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.number_of_orders = ProtoField.new("Number Of Orders", "cme.globex.mdp3.sbe.v1.5.numberoforders", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.globex.mdp3.sbe.v1.5.openclosesettlflag", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.open_interest_qty = ProtoField.new("Open Interest Qty", "cme.globex.mdp3.sbe.v1.5.openinterestqty", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.option_underlyings_group = ProtoField.new("Option Underlyings Group", "cme.globex.mdp3.sbe.v1.5.optionunderlyingsgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.option_underlyings_groups = ProtoField.new("Option Underlyings Groups", "cme.globex.mdp3.sbe.v1.5.optionunderlyingsgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.order_cross_eligible = ProtoField.new("Order Cross Eligible", "cme.globex.mdp3.sbe.v1.5.ordercrosseligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000002)
omi_cme_globex_mdp3_sbe_v1_5.fields.order_id = ProtoField.new("Order Id", "cme.globex.mdp3.sbe.v1.5.orderid", ftypes.UINT64)
omi_cme_globex_mdp3_sbe_v1_5.fields.order_qty = ProtoField.new("Order Qty", "cme.globex.mdp3.sbe.v1.5.orderqty", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.original_contract_size = ProtoField.new("Original Contract Size", "cme.globex.mdp3.sbe.v1.5.originalcontractsize", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.otc_eligible = ProtoField.new("Otc Eligible", "cme.globex.mdp3.sbe.v1.5.otceligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000080)
omi_cme_globex_mdp3_sbe_v1_5.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "cme.globex.mdp3.sbe.v1.5.packetsequencenumber", ftypes.UINT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.padding_2 = ProtoField.new("Padding 2", "cme.globex.mdp3.sbe.v1.5.padding2", ftypes.BYTES)
omi_cme_globex_mdp3_sbe_v1_5.fields.padding_3 = ProtoField.new("Padding 3", "cme.globex.mdp3.sbe.v1.5.padding3", ftypes.BYTES)
omi_cme_globex_mdp3_sbe_v1_5.fields.padding_4 = ProtoField.new("Padding 4", "cme.globex.mdp3.sbe.v1.5.padding4", ftypes.BYTES)
omi_cme_globex_mdp3_sbe_v1_5.fields.padding_5 = ProtoField.new("Padding 5", "cme.globex.mdp3.sbe.v1.5.padding5", ftypes.BYTES)
omi_cme_globex_mdp3_sbe_v1_5.fields.padding_6 = ProtoField.new("Padding 6", "cme.globex.mdp3.sbe.v1.5.padding6", ftypes.BYTES)
omi_cme_globex_mdp3_sbe_v1_5.fields.padding_7 = ProtoField.new("Padding 7", "cme.globex.mdp3.sbe.v1.5.padding7", ftypes.BYTES)
omi_cme_globex_mdp3_sbe_v1_5.fields.price_display_format = ProtoField.new("Price Display Format", "cme.globex.mdp3.sbe.v1.5.pricedisplayformat", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.price_ratio = ProtoField.new("Price Ratio", "cme.globex.mdp3.sbe.v1.5.priceratio", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.put_or_call = ProtoField.new("Put Or Call", "cme.globex.mdp3.sbe.v1.5.putorcall", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.globex.mdp3.sbe.v1.5.quotereqid", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.quote_type = ProtoField.new("Quote Type", "cme.globex.mdp3.sbe.v1.5.quotetype", ftypes.INT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.reason = ProtoField.new("Reason", "cme.globex.mdp3.sbe.v1.5.reason", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.recovery_msg = ProtoField.new("Recovery Msg", "cme.globex.mdp3.sbe.v1.5.recoverymsg", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cme_globex_mdp3_sbe_v1_5.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.globex.mdp3.sbe.v1.5.relatedsymgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.globex.mdp3.sbe.v1.5.relatedsymgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_related_symbol_group = ProtoField.new("Request Ack Related Symbol Group", "cme.globex.mdp3.sbe.v1.5.requestackrelatedsymbolgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_related_symbol_groups = ProtoField.new("Request Ack Related Symbol Groups", "cme.globex.mdp3.sbe.v1.5.requestackrelatedsymbolgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_security_group = ProtoField.new("Request Ack Security Group", "cme.globex.mdp3.sbe.v1.5.requestacksecuritygroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_security_groups = ProtoField.new("Request Ack Security Groups", "cme.globex.mdp3.sbe.v1.5.requestacksecuritygroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.request_timestamp = ProtoField.new("Request Timestamp", "cme.globex.mdp3.sbe.v1.5.requesttimestamp", ftypes.UINT64)
omi_cme_globex_mdp3_sbe_v1_5.fields.reserved = ProtoField.new("Reserved", "cme.globex.mdp3.sbe.v1.5.reserved", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cme_globex_mdp3_sbe_v1_5.fields.reserved_12 = ProtoField.new("Reserved 12", "cme.globex.mdp3.sbe.v1.5.reserved12", ftypes.UINT32, nil, base.DEC, 0xFFF00000)
omi_cme_globex_mdp3_sbe_v1_5.fields.reserved_bits = ProtoField.new("Reserved Bits", "cme.globex.mdp3.sbe.v1.5.reservedbits", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cme_globex_mdp3_sbe_v1_5.fields.rfq_cross_eligible = ProtoField.new("Rfq Cross Eligible", "cme.globex.mdp3.sbe.v1.5.rfqcrosseligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00002000)
omi_cme_globex_mdp3_sbe_v1_5.fields.rounded = ProtoField.new("Rounded", "cme.globex.mdp3.sbe.v1.5.rounded", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cme_globex_mdp3_sbe_v1_5.fields.rpt_seq = ProtoField.new("Rpt Seq", "cme.globex.mdp3.sbe.v1.5.rptseq", ftypes.UINT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.schema_id = ProtoField.new("Schema Id", "cme.globex.mdp3.sbe.v1.5.schemaid", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.secret_key_secure_id_expiration = ProtoField.new("Secret Key Secure Id Expiration", "cme.globex.mdp3.sbe.v1.5.secretkeysecureidexpiration", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_exchange = ProtoField.new("Security Exchange", "cme.globex.mdp3.sbe.v1.5.securityexchange", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_group = ProtoField.new("Security Group", "cme.globex.mdp3.sbe.v1.5.securitygroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_id = ProtoField.new("Security Id", "cme.globex.mdp3.sbe.v1.5.securityid", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_id_optional = ProtoField.new("Security Id Optional", "cme.globex.mdp3.sbe.v1.5.securityidoptional", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_related_symbol_group = ProtoField.new("Security List Request Related Symbol Group", "cme.globex.mdp3.sbe.v1.5.securitylistrequestrelatedsymbolgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_related_symbol_groups = ProtoField.new("Security List Request Related Symbol Groups", "cme.globex.mdp3.sbe.v1.5.securitylistrequestrelatedsymbolgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_security_group = ProtoField.new("Security List Request Security Group", "cme.globex.mdp3.sbe.v1.5.securitylistrequestsecuritygroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_security_groups = ProtoField.new("Security List Request Security Groups", "cme.globex.mdp3.sbe.v1.5.securitylistrequestsecuritygroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_related_symbol_group = ProtoField.new("Security Status Request Related Symbol Group", "cme.globex.mdp3.sbe.v1.5.securitystatusrequestrelatedsymbolgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_related_symbol_groups = ProtoField.new("Security Status Request Related Symbol Groups", "cme.globex.mdp3.sbe.v1.5.securitystatusrequestrelatedsymbolgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_security_group = ProtoField.new("Security Status Request Security Group", "cme.globex.mdp3.sbe.v1.5.securitystatusrequestsecuritygroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_security_groups = ProtoField.new("Security Status Request Security Groups", "cme.globex.mdp3.sbe.v1.5.securitystatusrequestsecuritygroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.globex.mdp3.sbe.v1.5.securitysubtype", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_trading_event = ProtoField.new("Security Trading Event", "cme.globex.mdp3.sbe.v1.5.securitytradingevent", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_trading_status = ProtoField.new("Security Trading Status", "cme.globex.mdp3.sbe.v1.5.securitytradingstatus", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_type = ProtoField.new("Security Type", "cme.globex.mdp3.sbe.v1.5.securitytype", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_update_action = ProtoField.new("Security Update Action", "cme.globex.mdp3.sbe.v1.5.securityupdateaction", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.sending_time = ProtoField.new("Sending Time", "cme.globex.mdp3.sbe.v1.5.sendingtime", ftypes.UINT64)
omi_cme_globex_mdp3_sbe_v1_5.fields.session = ProtoField.new("Session", "cme.globex.mdp3.sbe.v1.5.session", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.settl_currency = ProtoField.new("Settl Currency", "cme.globex.mdp3.sbe.v1.5.settlcurrency", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.settl_price_type = ProtoField.new("Settl Price Type", "cme.globex.mdp3.sbe.v1.5.settlpricetype", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.side = ProtoField.new("Side", "cme.globex.mdp3.sbe.v1.5.side", ftypes.INT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.snapshot_full_refresh_group = ProtoField.new("Snapshot Full Refresh Group", "cme.globex.mdp3.sbe.v1.5.snapshotfullrefreshgroup", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.snapshot_full_refresh_groups = ProtoField.new("Snapshot Full Refresh Groups", "cme.globex.mdp3.sbe.v1.5.snapshotfullrefreshgroups", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.strike_currency = ProtoField.new("Strike Currency", "cme.globex.mdp3.sbe.v1.5.strikecurrency", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.strike_price = ProtoField.new("Strike Price", "cme.globex.mdp3.sbe.v1.5.strikeprice", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.sub_fraction = ProtoField.new("Sub Fraction", "cme.globex.mdp3.sbe.v1.5.subfraction", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.subscription_req_type = ProtoField.new("Subscription Req Type", "cme.globex.mdp3.sbe.v1.5.subscriptionreqtype", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.symbol = ProtoField.new("Symbol", "cme.globex.mdp3.sbe.v1.5.symbol", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.tcp_message_size = ProtoField.new("Tcp Message Size", "cme.globex.mdp3.sbe.v1.5.tcpmessagesize", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.tcp_sending_time = ProtoField.new("Tcp Sending Time", "cme.globex.mdp3.sbe.v1.5.tcpsendingtime", ftypes.UINT64)
omi_cme_globex_mdp3_sbe_v1_5.fields.template_id = ProtoField.new("Template Id", "cme.globex.mdp3.sbe.v1.5.templateid", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.text = ProtoField.new("Text", "cme.globex.mdp3.sbe.v1.5.text", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.tick_rule = ProtoField.new("Tick Rule", "cme.globex.mdp3.sbe.v1.5.tickrule", ftypes.INT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "cme.globex.mdp3.sbe.v1.5.totnumreports", ftypes.UINT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.tot_num_reports_optional = ProtoField.new("Tot Num Reports Optional", "cme.globex.mdp3.sbe.v1.5.totnumreportsoptional", ftypes.UINT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.trade_date = ProtoField.new("Trade Date", "cme.globex.mdp3.sbe.v1.5.tradedate", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.trade_id = ProtoField.new("Trade Id", "cme.globex.mdp3.sbe.v1.5.tradeid", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "cme.globex.mdp3.sbe.v1.5.tradingreferencedate", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.trading_reference_price = ProtoField.new("Trading Reference Price", "cme.globex.mdp3.sbe.v1.5.tradingreferenceprice", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.transact_time = ProtoField.new("Transact Time", "cme.globex.mdp3.sbe.v1.5.transacttime", ftypes.UINT64)
omi_cme_globex_mdp3_sbe_v1_5.fields.underlying_product = ProtoField.new("Underlying Product", "cme.globex.mdp3.sbe.v1.5.underlyingproduct", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.underlying_product_optional = ProtoField.new("Underlying Product Optional", "cme.globex.mdp3.sbe.v1.5.underlyingproductoptional", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "cme.globex.mdp3.sbe.v1.5.underlyingsecurityid", ftypes.INT32)
omi_cme_globex_mdp3_sbe_v1_5.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "cme.globex.mdp3.sbe.v1.5.underlyingsymbol", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "cme.globex.mdp3.sbe.v1.5.unitofmeasure", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.unit_of_measure_qty = ProtoField.new("Unit Of Measure Qty", "cme.globex.mdp3.sbe.v1.5.unitofmeasureqty", ftypes.DOUBLE)
omi_cme_globex_mdp3_sbe_v1_5.fields.unused_settl_price_type_5 = ProtoField.new("Unused Settl Price Type 5", "cme.globex.mdp3.sbe.v1.5.unusedsettlpricetype5", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cme_globex_mdp3_sbe_v1_5.fields.unused_settl_price_type_6 = ProtoField.new("Unused Settl Price Type 6", "cme.globex.mdp3.sbe.v1.5.unusedsettlpricetype6", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cme_globex_mdp3_sbe_v1_5.fields.user_defined_instrument = ProtoField.new("User Defined Instrument", "cme.globex.mdp3.sbe.v1.5.userdefinedinstrument", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.uuid = ProtoField.new("Uuid", "cme.globex.mdp3.sbe.v1.5.uuid", ftypes.UINT64)
omi_cme_globex_mdp3_sbe_v1_5.fields.variable_product_eligibility = ProtoField.new("Variable Product Eligibility", "cme.globex.mdp3.sbe.v1.5.variableproducteligibility", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00010000)
omi_cme_globex_mdp3_sbe_v1_5.fields.version = ProtoField.new("Version", "cme.globex.mdp3.sbe.v1.5.version", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.volatility_quoted_option = ProtoField.new("Volatility Quoted Option", "cme.globex.mdp3.sbe.v1.5.volatilityquotedoption", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00001000)
omi_cme_globex_mdp3_sbe_v1_5.fields.week = ProtoField.new("Week", "cme.globex.mdp3.sbe.v1.5.week", ftypes.UINT8)
omi_cme_globex_mdp3_sbe_v1_5.fields.year = ProtoField.new("Year", "cme.globex.mdp3.sbe.v1.5.year", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.zero_price_outright_eligible = ProtoField.new("Zero Price Outright Eligible", "cme.globex.mdp3.sbe.v1.5.zeropriceoutrighteligible", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00004000)

-- Cme Globex Mdp3 Sbe 1.5 Headers
omi_cme_globex_mdp3_sbe_v1_5.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.globex.mdp3.sbe.v1.5.binarypacketheader", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.client_tcp_message = ProtoField.new("Client Tcp Message", "cme.globex.mdp3.sbe.v1.5.clienttcpmessage", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.client_tcp_packet = ProtoField.new("Client Tcp Packet", "cme.globex.mdp3.sbe.v1.5.clienttcppacket", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.client_technical_header = ProtoField.new("Client Technical Header", "cme.globex.mdp3.sbe.v1.5.clienttechnicalheader", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.message = ProtoField.new("Message", "cme.globex.mdp3.sbe.v1.5.message", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.message_header = ProtoField.new("Message Header", "cme.globex.mdp3.sbe.v1.5.messageheader", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.server_tcp_message = ProtoField.new("Server Tcp Message", "cme.globex.mdp3.sbe.v1.5.servertcpmessage", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.server_tcp_packet = ProtoField.new("Server Tcp Packet", "cme.globex.mdp3.sbe.v1.5.servertcppacket", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.server_technical_header = ProtoField.new("Server Technical Header", "cme.globex.mdp3.sbe.v1.5.servertechnicalheader", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.udp_packet = ProtoField.new("Udp Packet", "cme.globex.mdp3.sbe.v1.5.udppacket", ftypes.STRING)

-- Cme Globex Mdp3 1.5 Application Messages
omi_cme_globex_mdp3_sbe_v1_5.fields.admin_login = ProtoField.new("Admin Login", "cme.globex.mdp3.sbe.v1.5.adminlogin", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.admin_logout = ProtoField.new("Admin Logout", "cme.globex.mdp3.sbe.v1.5.adminlogout", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.channel_reset = ProtoField.new("Channel Reset", "cme.globex.mdp3.sbe.v1.5.channelreset", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request = ProtoField.new("Market Data Request", "cme.globex.mdp3.sbe.v1.5.marketdatarequest", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_book = ProtoField.new("Md Incremental Refresh Book", "cme.globex.mdp3.sbe.v1.5.mdincrementalrefreshbook", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_daily_statistics = ProtoField.new("Md Incremental Refresh Daily Statistics", "cme.globex.mdp3.sbe.v1.5.mdincrementalrefreshdailystatistics", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_limits_banding = ProtoField.new("Md Incremental Refresh Limits Banding", "cme.globex.mdp3.sbe.v1.5.mdincrementalrefreshlimitsbanding", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_session_statistics = ProtoField.new("Md Incremental Refresh Session Statistics", "cme.globex.mdp3.sbe.v1.5.mdincrementalrefreshsessionstatistics", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_trade = ProtoField.new("Md Incremental Refresh Trade", "cme.globex.mdp3.sbe.v1.5.mdincrementalrefreshtrade", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_trade_summary = ProtoField.new("Md Incremental Refresh Trade Summary", "cme.globex.mdp3.sbe.v1.5.mdincrementalrefreshtradesummary", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_volume = ProtoField.new("Md Incremental Refresh Volume", "cme.globex.mdp3.sbe.v1.5.mdincrementalrefreshvolume", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_instrument_definition_future = ProtoField.new("Md Instrument Definition Future", "cme.globex.mdp3.sbe.v1.5.mdinstrumentdefinitionfuture", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_instrument_definition_option = ProtoField.new("Md Instrument Definition Option", "cme.globex.mdp3.sbe.v1.5.mdinstrumentdefinitionoption", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.md_instrument_definition_spread = ProtoField.new("Md Instrument Definition Spread", "cme.globex.mdp3.sbe.v1.5.mdinstrumentdefinitionspread", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.negotiate = ProtoField.new("Negotiate", "cme.globex.mdp3.sbe.v1.5.negotiate", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.negotiation_reject = ProtoField.new("Negotiation Reject", "cme.globex.mdp3.sbe.v1.5.negotiationreject", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.negotiation_response = ProtoField.new("Negotiation Response", "cme.globex.mdp3.sbe.v1.5.negotiationresponse", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.quote_request = ProtoField.new("Quote Request", "cme.globex.mdp3.sbe.v1.5.quoterequest", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack = ProtoField.new("Request Ack", "cme.globex.mdp3.sbe.v1.5.requestack", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.request_reject = ProtoField.new("Request Reject", "cme.globex.mdp3.sbe.v1.5.requestreject", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request = ProtoField.new("Security List Request", "cme.globex.mdp3.sbe.v1.5.securitylistrequest", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_status = ProtoField.new("Security Status", "cme.globex.mdp3.sbe.v1.5.securitystatus", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request = ProtoField.new("Security Status Request", "cme.globex.mdp3.sbe.v1.5.securitystatusrequest", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.snapshot_full_refresh = ProtoField.new("Snapshot Full Refresh", "cme.globex.mdp3.sbe.v1.5.snapshotfullrefresh", ftypes.STRING)
omi_cme_globex_mdp3_sbe_v1_5.fields.terminate = ProtoField.new("Terminate", "cme.globex.mdp3.sbe.v1.5.terminate", ftypes.STRING)

-- Cme Globex Mdp3 Sbe 1.5 generated fields
omi_cme_globex_mdp3_sbe_v1_5.fields.channel_reset_group_index = ProtoField.new("Channel Reset Group Index", "cme.globex.mdp3.sbe.v1.5.channelresetgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.events_group_index = ProtoField.new("Events Group Index", "cme.globex.mdp3.sbe.v1.5.eventsgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.feed_types_group_index = ProtoField.new("Feed Types Group Index", "cme.globex.mdp3.sbe.v1.5.feedtypesgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_book_group_index = ProtoField.new("Incremental Refresh Book Group Index", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshbookgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_daily_statistics_group_index = ProtoField.new("Incremental Refresh Daily Statistics Group Index", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshdailystatisticsgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_limits_banding_group_index = ProtoField.new("Incremental Refresh Limits Banding Group Index", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshlimitsbandinggroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_session_statistics_group_index = ProtoField.new("Incremental Refresh Session Statistics Group Index", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshsessionstatisticsgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_group_index = ProtoField.new("Incremental Refresh Trade Group Index", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshtradegroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_group_index = ProtoField.new("Incremental Refresh Trade Summary Group Index", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshtradesummarygroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_order_id_group_index = ProtoField.new("Incremental Refresh Trade Summary Order Id Group Index", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshtradesummaryorderidgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_volume_group_index = ProtoField.new("Incremental Refresh Volume Group Index", "cme.globex.mdp3.sbe.v1.5.incrementalrefreshvolumegroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.inst_attrib_group_index = ProtoField.new("Inst Attrib Group Index", "cme.globex.mdp3.sbe.v1.5.instattribgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.legs_group_index = ProtoField.new("Legs Group Index", "cme.globex.mdp3.sbe.v1.5.legsgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.lot_type_rules_group_index = ProtoField.new("Lot Type Rules Group Index", "cme.globex.mdp3.sbe.v1.5.lottyperulesgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_related_symbol_group_index = ProtoField.new("Market Data Request Related Symbol Group Index", "cme.globex.mdp3.sbe.v1.5.marketdatarequestrelatedsymbolgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_security_group_index = ProtoField.new("Market Data Request Security Group Index", "cme.globex.mdp3.sbe.v1.5.marketdatarequestsecuritygroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.option_underlyings_group_index = ProtoField.new("Option Underlyings Group Index", "cme.globex.mdp3.sbe.v1.5.optionunderlyingsgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.related_sym_group_index = ProtoField.new("Related Sym Group Index", "cme.globex.mdp3.sbe.v1.5.relatedsymgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_related_symbol_group_index = ProtoField.new("Request Ack Related Symbol Group Index", "cme.globex.mdp3.sbe.v1.5.requestackrelatedsymbolgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_security_group_index = ProtoField.new("Request Ack Security Group Index", "cme.globex.mdp3.sbe.v1.5.requestacksecuritygroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_related_symbol_group_index = ProtoField.new("Security List Request Related Symbol Group Index", "cme.globex.mdp3.sbe.v1.5.securitylistrequestrelatedsymbolgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_security_group_index = ProtoField.new("Security List Request Security Group Index", "cme.globex.mdp3.sbe.v1.5.securitylistrequestsecuritygroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_related_symbol_group_index = ProtoField.new("Security Status Request Related Symbol Group Index", "cme.globex.mdp3.sbe.v1.5.securitystatusrequestrelatedsymbolgroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_security_group_index = ProtoField.new("Security Status Request Security Group Index", "cme.globex.mdp3.sbe.v1.5.securitystatusrequestsecuritygroupindex", ftypes.UINT16)
omi_cme_globex_mdp3_sbe_v1_5.fields.snapshot_full_refresh_group_index = ProtoField.new("Snapshot Full Refresh Group Index", "cme.globex.mdp3.sbe.v1.5.snapshotfullrefreshgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cme Globex Mdp3 Sbe 1.5 Element Dissection Options
show.application_messages = true
show.headers = true
show.repeating_groups = true
show.structs = true
show.indexes = true

-- Register Cme Globex Mdp3 Sbe 1.5 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_cme_globex_mdp3_sbe_v1_5.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_cme_globex_mdp3_sbe_v1_5.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_cme_globex_mdp3_sbe_v1_5.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_cme_globex_mdp3_sbe_v1_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cme_globex_mdp3_sbe_v1_5.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cme_globex_mdp3_sbe_v1_5.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cme_globex_mdp3_sbe_v1_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cme_globex_mdp3_sbe_v1_5.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cme_globex_mdp3_sbe_v1_5.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cme_globex_mdp3_sbe_v1_5.prefs.show_application_messages then
    show.application_messages = omi_cme_globex_mdp3_sbe_v1_5.prefs.show_application_messages
  end
  if show.headers ~= omi_cme_globex_mdp3_sbe_v1_5.prefs.show_headers then
    show.headers = omi_cme_globex_mdp3_sbe_v1_5.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cme_globex_mdp3_sbe_v1_5.prefs.show_repeating_groups then
    show.repeating_groups = omi_cme_globex_mdp3_sbe_v1_5.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cme_globex_mdp3_sbe_v1_5.prefs.show_structs then
    show.structs = omi_cme_globex_mdp3_sbe_v1_5.prefs.show_structs
  end
  if show.indexes ~= omi_cme_globex_mdp3_sbe_v1_5.prefs.show_indexes then
    show.indexes = omi_cme_globex_mdp3_sbe_v1_5.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Cme Globex Mdp3 Sbe 1.5 Fields
-----------------------------------------------------------------------

-- Access Key Id
cme_globex_mdp3_sbe_v1_5.access_key_id = {}

-- Size: Access Key Id
cme_globex_mdp3_sbe_v1_5.access_key_id.size = 20

-- Display: Access Key Id
cme_globex_mdp3_sbe_v1_5.access_key_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Access Key Id: No Value"
  end

  return "Access Key Id: "..value
end

-- Dissect: Access Key Id
cme_globex_mdp3_sbe_v1_5.access_key_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.access_key_id.size
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

  local display = cme_globex_mdp3_sbe_v1_5.access_key_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.access_key_id, range, value, display)

  return offset + length, value
end

-- Aggressor Side
cme_globex_mdp3_sbe_v1_5.aggressor_side = {}

-- Size: Aggressor Side
cme_globex_mdp3_sbe_v1_5.aggressor_side.size = 1

-- Display: Aggressor Side
cme_globex_mdp3_sbe_v1_5.aggressor_side.display = function(value)
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
cme_globex_mdp3_sbe_v1_5.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Appl Id
cme_globex_mdp3_sbe_v1_5.appl_id = {}

-- Size: Appl Id
cme_globex_mdp3_sbe_v1_5.appl_id.size = 2

-- Display: Appl Id
cme_globex_mdp3_sbe_v1_5.appl_id.display = function(value)
  return "Appl Id: "..value
end

-- Dissect: Appl Id
cme_globex_mdp3_sbe_v1_5.appl_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.appl_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.appl_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Asset
cme_globex_mdp3_sbe_v1_5.asset = {}

-- Size: Asset
cme_globex_mdp3_sbe_v1_5.asset.size = 6

-- Display: Asset
cme_globex_mdp3_sbe_v1_5.asset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Asset: No Value"
  end

  return "Asset: "..value
end

-- Dissect: Asset
cme_globex_mdp3_sbe_v1_5.asset.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.asset.size
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

  local display = cme_globex_mdp3_sbe_v1_5.asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.asset, range, value, display)

  return offset + length, value
end

-- Block Length
cme_globex_mdp3_sbe_v1_5.block_length = {}

-- Size: Block Length
cme_globex_mdp3_sbe_v1_5.block_length.size = 2

-- Display: Block Length
cme_globex_mdp3_sbe_v1_5.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_globex_mdp3_sbe_v1_5.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.block_length, range, value, display)

  return offset + length, value
end

-- Cfi Code
cme_globex_mdp3_sbe_v1_5.cfi_code = {}

-- Size: Cfi Code
cme_globex_mdp3_sbe_v1_5.cfi_code.size = 6

-- Display: Cfi Code
cme_globex_mdp3_sbe_v1_5.cfi_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
cme_globex_mdp3_sbe_v1_5.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.cfi_code.size
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

  local display = cme_globex_mdp3_sbe_v1_5.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Cleared Volume
cme_globex_mdp3_sbe_v1_5.cleared_volume = {}

-- Size: Cleared Volume
cme_globex_mdp3_sbe_v1_5.cleared_volume.size = 4

-- Display: Cleared Volume
cme_globex_mdp3_sbe_v1_5.cleared_volume.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Cleared Volume: No Value"
  end

  return "Cleared Volume: "..value
end

-- Dissect: Cleared Volume
cme_globex_mdp3_sbe_v1_5.cleared_volume.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.cleared_volume.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.cleared_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.cleared_volume, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
cme_globex_mdp3_sbe_v1_5.contract_multiplier = {}

-- Size: Contract Multiplier
cme_globex_mdp3_sbe_v1_5.contract_multiplier.size = 4

-- Display: Contract Multiplier
cme_globex_mdp3_sbe_v1_5.contract_multiplier.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
cme_globex_mdp3_sbe_v1_5.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Contract Multiplier Unit
cme_globex_mdp3_sbe_v1_5.contract_multiplier_unit = {}

-- Size: Contract Multiplier Unit
cme_globex_mdp3_sbe_v1_5.contract_multiplier_unit.size = 1

-- Display: Contract Multiplier Unit
cme_globex_mdp3_sbe_v1_5.contract_multiplier_unit.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Contract Multiplier Unit: No Value"
  end

  return "Contract Multiplier Unit: "..value
end

-- Dissect: Contract Multiplier Unit
cme_globex_mdp3_sbe_v1_5.contract_multiplier_unit.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.contract_multiplier_unit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.contract_multiplier_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.contract_multiplier_unit, range, value, display)

  return offset + length, value
end

-- Currency
cme_globex_mdp3_sbe_v1_5.currency = {}

-- Size: Currency
cme_globex_mdp3_sbe_v1_5.currency.size = 3

-- Display: Currency
cme_globex_mdp3_sbe_v1_5.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
cme_globex_mdp3_sbe_v1_5.currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.currency.size
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

  local display = cme_globex_mdp3_sbe_v1_5.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.currency, range, value, display)

  return offset + length, value
end

-- Day
cme_globex_mdp3_sbe_v1_5.day = {}

-- Size: Day
cme_globex_mdp3_sbe_v1_5.day.size = 1

-- Display: Day
cme_globex_mdp3_sbe_v1_5.day.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value"
  end

  return "Day: "..value
end

-- Dissect: Day
cme_globex_mdp3_sbe_v1_5.day.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.day.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.day, range, value, display)

  return offset + length, value
end

-- Decay Quantity
cme_globex_mdp3_sbe_v1_5.decay_quantity = {}

-- Size: Decay Quantity
cme_globex_mdp3_sbe_v1_5.decay_quantity.size = 4

-- Display: Decay Quantity
cme_globex_mdp3_sbe_v1_5.decay_quantity.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Decay Quantity: No Value"
  end

  return "Decay Quantity: "..value
end

-- Dissect: Decay Quantity
cme_globex_mdp3_sbe_v1_5.decay_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.decay_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.decay_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.decay_quantity, range, value, display)

  return offset + length, value
end

-- Decay Start Date
cme_globex_mdp3_sbe_v1_5.decay_start_date = {}

-- Size: Decay Start Date
cme_globex_mdp3_sbe_v1_5.decay_start_date.size = 2

-- Display: Decay Start Date
cme_globex_mdp3_sbe_v1_5.decay_start_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Decay Start Date: No Value"
  end

  return "Decay Start Date: "..value
end

-- Dissect: Decay Start Date
cme_globex_mdp3_sbe_v1_5.decay_start_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.decay_start_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.decay_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.decay_start_date, range, value, display)

  return offset + length, value
end

-- Display Factor
cme_globex_mdp3_sbe_v1_5.display_factor = {}

-- Size: Display Factor
cme_globex_mdp3_sbe_v1_5.display_factor.size = 8

-- Display: Display Factor
cme_globex_mdp3_sbe_v1_5.display_factor.display = function(value)
  return "Display Factor: "..value
end

-- Translate: Display Factor
cme_globex_mdp3_sbe_v1_5.display_factor.translate = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Display Factor
cme_globex_mdp3_sbe_v1_5.display_factor.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.display_factor.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.display_factor.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.display_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.display_factor, range, value, display)

  return offset + length, value
end

-- Encoding Type
cme_globex_mdp3_sbe_v1_5.encoding_type = {}

-- Size: Encoding Type
cme_globex_mdp3_sbe_v1_5.encoding_type.size = 2

-- Display: Encoding Type
cme_globex_mdp3_sbe_v1_5.encoding_type.display = function(value)
  if value == 51966 then
    return "Encoding Type: Cme Sbe Message"
  end

  return "Encoding Type: Unknown("..value..")"
end

-- Dissect: Encoding Type
cme_globex_mdp3_sbe_v1_5.encoding_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.encoding_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.encoding_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- Error Codes
cme_globex_mdp3_sbe_v1_5.error_codes = {}

-- Size: Error Codes
cme_globex_mdp3_sbe_v1_5.error_codes.size = 1

-- Display: Error Codes
cme_globex_mdp3_sbe_v1_5.error_codes.display = function(value)
  if value == 0 then
    return "Error Codes: Hmac Reject (0)"
  end
  if value == 1 then
    return "Error Codes: Invalid Value (1)"
  end
  if value == 2 then
    return "Error Codes: Slow Connection (2)"
  end
  if value == 3 then
    return "Error Codes: Other (3)"
  end

  return "Error Codes: Unknown("..value..")"
end

-- Dissect: Error Codes
cme_globex_mdp3_sbe_v1_5.error_codes.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.error_codes.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.error_codes.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.error_codes, range, value, display)

  return offset + length, value
end

-- Event Time
cme_globex_mdp3_sbe_v1_5.event_time = {}

-- Size: Event Time
cme_globex_mdp3_sbe_v1_5.event_time.size = 8

-- Display: Event Time
cme_globex_mdp3_sbe_v1_5.event_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Event Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Event Time
cme_globex_mdp3_sbe_v1_5.event_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.event_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_globex_mdp3_sbe_v1_5.event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.event_time, range, value, display)

  return offset + length, value
end

-- Event Type
cme_globex_mdp3_sbe_v1_5.event_type = {}

-- Size: Event Type
cme_globex_mdp3_sbe_v1_5.event_type.size = 1

-- Display: Event Type
cme_globex_mdp3_sbe_v1_5.event_type.display = function(value)
  if value == 5 then
    return "Event Type: Activation (5)"
  end
  if value == 7 then
    return "Event Type: Last Eligible Trade Date (7)"
  end

  return "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
cme_globex_mdp3_sbe_v1_5.event_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.event_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.event_type, range, value, display)

  return offset + length, value
end

-- Firm
cme_globex_mdp3_sbe_v1_5.firm = {}

-- Size: Firm
cme_globex_mdp3_sbe_v1_5.firm.size = 5

-- Display: Firm
cme_globex_mdp3_sbe_v1_5.firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm: No Value"
  end

  return "Firm: "..value
end

-- Dissect: Firm
cme_globex_mdp3_sbe_v1_5.firm.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.firm.size
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

  local display = cme_globex_mdp3_sbe_v1_5.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.firm, range, value, display)

  return offset + length, value
end

-- Flow Schedule Type
cme_globex_mdp3_sbe_v1_5.flow_schedule_type = {}

-- Size: Flow Schedule Type
cme_globex_mdp3_sbe_v1_5.flow_schedule_type.size = 1

-- Display: Flow Schedule Type
cme_globex_mdp3_sbe_v1_5.flow_schedule_type.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Flow Schedule Type: No Value"
  end

  return "Flow Schedule Type: "..value
end

-- Dissect: Flow Schedule Type
cme_globex_mdp3_sbe_v1_5.flow_schedule_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.flow_schedule_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.flow_schedule_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.flow_schedule_type, range, value, display)

  return offset + length, value
end

-- Halt Reason
cme_globex_mdp3_sbe_v1_5.halt_reason = {}

-- Size: Halt Reason
cme_globex_mdp3_sbe_v1_5.halt_reason.size = 1

-- Display: Halt Reason
cme_globex_mdp3_sbe_v1_5.halt_reason.display = function(value)
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
cme_globex_mdp3_sbe_v1_5.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.halt_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
cme_globex_mdp3_sbe_v1_5.heart_bt_int = {}

-- Size: Heart Bt Int
cme_globex_mdp3_sbe_v1_5.heart_bt_int.size = 1

-- Display: Heart Bt Int
cme_globex_mdp3_sbe_v1_5.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
cme_globex_mdp3_sbe_v1_5.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- High Limit Price
cme_globex_mdp3_sbe_v1_5.high_limit_price = {}

-- Size: High Limit Price
cme_globex_mdp3_sbe_v1_5.high_limit_price.size = 8

-- Display: High Limit Price
cme_globex_mdp3_sbe_v1_5.high_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Translate: High Limit Price
cme_globex_mdp3_sbe_v1_5.high_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: High Limit Price
cme_globex_mdp3_sbe_v1_5.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.high_limit_price.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.high_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Hmac Signature
cme_globex_mdp3_sbe_v1_5.hmac_signature = {}

-- Size: Hmac Signature
cme_globex_mdp3_sbe_v1_5.hmac_signature.size = 32

-- Display: Hmac Signature
cme_globex_mdp3_sbe_v1_5.hmac_signature.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Hmac Signature: No Value"
  end

  return "Hmac Signature: "..value
end

-- Dissect: Hmac Signature
cme_globex_mdp3_sbe_v1_5.hmac_signature.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.hmac_signature.size
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

  local display = cme_globex_mdp3_sbe_v1_5.hmac_signature.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.hmac_signature, range, value, display)

  return offset + length, value
end

-- Last Msg Seq Num Processed
cme_globex_mdp3_sbe_v1_5.last_msg_seq_num_processed = {}

-- Size: Last Msg Seq Num Processed
cme_globex_mdp3_sbe_v1_5.last_msg_seq_num_processed.size = 4

-- Display: Last Msg Seq Num Processed
cme_globex_mdp3_sbe_v1_5.last_msg_seq_num_processed.display = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
cme_globex_mdp3_sbe_v1_5.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.last_msg_seq_num_processed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.last_msg_seq_num_processed.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Last Qty
cme_globex_mdp3_sbe_v1_5.last_qty = {}

-- Size: Last Qty
cme_globex_mdp3_sbe_v1_5.last_qty.size = 4

-- Display: Last Qty
cme_globex_mdp3_sbe_v1_5.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
cme_globex_mdp3_sbe_v1_5.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Last Update Time
cme_globex_mdp3_sbe_v1_5.last_update_time = {}

-- Size: Last Update Time
cme_globex_mdp3_sbe_v1_5.last_update_time.size = 8

-- Display: Last Update Time
cme_globex_mdp3_sbe_v1_5.last_update_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Last Update Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Update Time
cme_globex_mdp3_sbe_v1_5.last_update_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.last_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_globex_mdp3_sbe_v1_5.last_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Leg Option Delta
cme_globex_mdp3_sbe_v1_5.leg_option_delta = {}

-- Size: Leg Option Delta
cme_globex_mdp3_sbe_v1_5.leg_option_delta.size = 4

-- Display: Leg Option Delta
cme_globex_mdp3_sbe_v1_5.leg_option_delta.display = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Leg Option Delta: No Value"
  end

  return "Leg Option Delta: "..value
end

-- Translate: Leg Option Delta
cme_globex_mdp3_sbe_v1_5.leg_option_delta.translate = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Leg Option Delta
cme_globex_mdp3_sbe_v1_5.leg_option_delta.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.leg_option_delta.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cme_globex_mdp3_sbe_v1_5.leg_option_delta.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.leg_option_delta.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.leg_option_delta, range, value, display)

  return offset + length, value
end

-- Leg Price
cme_globex_mdp3_sbe_v1_5.leg_price = {}

-- Size: Leg Price
cme_globex_mdp3_sbe_v1_5.leg_price.size = 8

-- Display: Leg Price
cme_globex_mdp3_sbe_v1_5.leg_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Translate: Leg Price
cme_globex_mdp3_sbe_v1_5.leg_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Leg Price
cme_globex_mdp3_sbe_v1_5.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.leg_price.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.leg_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
cme_globex_mdp3_sbe_v1_5.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
cme_globex_mdp3_sbe_v1_5.leg_ratio_qty.size = 1

-- Display: Leg Ratio Qty
cme_globex_mdp3_sbe_v1_5.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cme_globex_mdp3_sbe_v1_5.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Security Id
cme_globex_mdp3_sbe_v1_5.leg_security_id = {}

-- Size: Leg Security Id
cme_globex_mdp3_sbe_v1_5.leg_security_id.size = 4

-- Display: Leg Security Id
cme_globex_mdp3_sbe_v1_5.leg_security_id.display = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
cme_globex_mdp3_sbe_v1_5.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Leg Side
cme_globex_mdp3_sbe_v1_5.leg_side = {}

-- Size: Leg Side
cme_globex_mdp3_sbe_v1_5.leg_side.size = 1

-- Display: Leg Side
cme_globex_mdp3_sbe_v1_5.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy Side (1)"
  end
  if value == 2 then
    return "Leg Side: Sell Side (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
cme_globex_mdp3_sbe_v1_5.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Lot Type
cme_globex_mdp3_sbe_v1_5.lot_type = {}

-- Size: Lot Type
cme_globex_mdp3_sbe_v1_5.lot_type.size = 1

-- Display: Lot Type
cme_globex_mdp3_sbe_v1_5.lot_type.display = function(value)
  return "Lot Type: "..value
end

-- Dissect: Lot Type
cme_globex_mdp3_sbe_v1_5.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.lot_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Low Limit Price
cme_globex_mdp3_sbe_v1_5.low_limit_price = {}

-- Size: Low Limit Price
cme_globex_mdp3_sbe_v1_5.low_limit_price.size = 8

-- Display: Low Limit Price
cme_globex_mdp3_sbe_v1_5.low_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
cme_globex_mdp3_sbe_v1_5.low_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Low Limit Price
cme_globex_mdp3_sbe_v1_5.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.low_limit_price.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.low_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Main Fraction
cme_globex_mdp3_sbe_v1_5.main_fraction = {}

-- Size: Main Fraction
cme_globex_mdp3_sbe_v1_5.main_fraction.size = 1

-- Display: Main Fraction
cme_globex_mdp3_sbe_v1_5.main_fraction.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Main Fraction: No Value"
  end

  return "Main Fraction: "..value
end

-- Dissect: Main Fraction
cme_globex_mdp3_sbe_v1_5.main_fraction.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.main_fraction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.main_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.main_fraction, range, value, display)

  return offset + length, value
end

-- Market Depth
cme_globex_mdp3_sbe_v1_5.market_depth = {}

-- Size: Market Depth
cme_globex_mdp3_sbe_v1_5.market_depth.size = 1

-- Display: Market Depth
cme_globex_mdp3_sbe_v1_5.market_depth.display = function(value)
  return "Market Depth: "..value
end

-- Dissect: Market Depth
cme_globex_mdp3_sbe_v1_5.market_depth.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.market_depth.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.market_depth, range, value, display)

  return offset + length, value
end

-- Market Segment Id
cme_globex_mdp3_sbe_v1_5.market_segment_id = {}

-- Size: Market Segment Id
cme_globex_mdp3_sbe_v1_5.market_segment_id.size = 1

-- Display: Market Segment Id
cme_globex_mdp3_sbe_v1_5.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
cme_globex_mdp3_sbe_v1_5.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Match Algorithm
cme_globex_mdp3_sbe_v1_5.match_algorithm = {}

-- Size: Match Algorithm
cme_globex_mdp3_sbe_v1_5.match_algorithm.size = 1

-- Display: Match Algorithm
cme_globex_mdp3_sbe_v1_5.match_algorithm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Match Algorithm: No Value"
  end

  return "Match Algorithm: "..value
end

-- Dissect: Match Algorithm
cme_globex_mdp3_sbe_v1_5.match_algorithm.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.match_algorithm.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_globex_mdp3_sbe_v1_5.match_algorithm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.match_algorithm, range, value, display)

  return offset + length, value
end

-- Max Price Variation
cme_globex_mdp3_sbe_v1_5.max_price_variation = {}

-- Size: Max Price Variation
cme_globex_mdp3_sbe_v1_5.max_price_variation.size = 8

-- Display: Max Price Variation
cme_globex_mdp3_sbe_v1_5.max_price_variation.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Max Price Variation: No Value"
  end

  return "Max Price Variation: "..value
end

-- Translate: Max Price Variation
cme_globex_mdp3_sbe_v1_5.max_price_variation.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Max Price Variation
cme_globex_mdp3_sbe_v1_5.max_price_variation.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.max_price_variation.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.max_price_variation.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.max_price_variation.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.max_price_variation, range, value, display)

  return offset + length, value
end

-- Max Trade Vol
cme_globex_mdp3_sbe_v1_5.max_trade_vol = {}

-- Size: Max Trade Vol
cme_globex_mdp3_sbe_v1_5.max_trade_vol.size = 4

-- Display: Max Trade Vol
cme_globex_mdp3_sbe_v1_5.max_trade_vol.display = function(value)
  return "Max Trade Vol: "..value
end

-- Dissect: Max Trade Vol
cme_globex_mdp3_sbe_v1_5.max_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.max_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.max_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.max_trade_vol, range, value, display)

  return offset + length, value
end

-- Md Entry Px
cme_globex_mdp3_sbe_v1_5.md_entry_px = {}

-- Size: Md Entry Px
cme_globex_mdp3_sbe_v1_5.md_entry_px.size = 8

-- Display: Md Entry Px
cme_globex_mdp3_sbe_v1_5.md_entry_px.display = function(value)
  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
cme_globex_mdp3_sbe_v1_5.md_entry_px.translate = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Md Entry Px
cme_globex_mdp3_sbe_v1_5.md_entry_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_entry_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.md_entry_px.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.md_entry_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Md Entry Px Optional
cme_globex_mdp3_sbe_v1_5.md_entry_px_optional = {}

-- Size: Md Entry Px Optional
cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.size = 8

-- Display: Md Entry Px Optional
cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Md Entry Px Optional: No Value"
  end

  return "Md Entry Px Optional: "..value
end

-- Translate: Md Entry Px Optional
cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Md Entry Px Optional
cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_px_optional, range, value, display)

  return offset + length, value
end

-- Md Entry Size
cme_globex_mdp3_sbe_v1_5.md_entry_size = {}

-- Size: Md Entry Size
cme_globex_mdp3_sbe_v1_5.md_entry_size.size = 4

-- Display: Md Entry Size
cme_globex_mdp3_sbe_v1_5.md_entry_size.display = function(value)
  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cme_globex_mdp3_sbe_v1_5.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_entry_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Md Entry Size Optional
cme_globex_mdp3_sbe_v1_5.md_entry_size_optional = {}

-- Size: Md Entry Size Optional
cme_globex_mdp3_sbe_v1_5.md_entry_size_optional.size = 4

-- Display: Md Entry Size Optional
cme_globex_mdp3_sbe_v1_5.md_entry_size_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Entry Size Optional: No Value"
  end

  return "Md Entry Size Optional: "..value
end

-- Dissect: Md Entry Size Optional
cme_globex_mdp3_sbe_v1_5.md_entry_size_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_entry_size_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.md_entry_size_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_size_optional, range, value, display)

  return offset + length, value
end

-- Md Entry Type
cme_globex_mdp3_sbe_v1_5.md_entry_type = {}

-- Size: Md Entry Type
cme_globex_mdp3_sbe_v1_5.md_entry_type.size = 1

-- Display: Md Entry Type
cme_globex_mdp3_sbe_v1_5.md_entry_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Md Entry Type: No Value"
  end

  if value == "0" then
    return "Md Entry Type: Bid (0)"
  end
  if value == "1" then
    return "Md Entry Type: Offer (1)"
  end
  if value == "2" then
    return "Md Entry Type: Trade (2)"
  end
  if value == "4" then
    return "Md Entry Type: Opening Price (4)"
  end
  if value == "6" then
    return "Md Entry Type: Settlement Price (6)"
  end
  if value == "7" then
    return "Md Entry Type: Trading Session High Price (7)"
  end
  if value == "8" then
    return "Md Entry Type: Trading Session Low Price (8)"
  end
  if value == "B" then
    return "Md Entry Type: Trade Volume (B)"
  end
  if value == "C" then
    return "Md Entry Type: Open Interest (C)"
  end
  if value == "E" then
    return "Md Entry Type: Implied Bid (E)"
  end
  if value == "F" then
    return "Md Entry Type: Implied Offer (F)"
  end
  if value == "J" then
    return "Md Entry Type: Empty Book (J)"
  end
  if value == "N" then
    return "Md Entry Type: Session High Bid (N)"
  end
  if value == "O" then
    return "Md Entry Type: Session Low Offer (O)"
  end
  if value == "W" then
    return "Md Entry Type: Fixing Price (W)"
  end
  if value == "e" then
    return "Md Entry Type: Electronic Volume (e)"
  end
  if value == "g" then
    return "Md Entry Type: Threshold Limitsand Price Band Variation (g)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
cme_globex_mdp3_sbe_v1_5.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_entry_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_globex_mdp3_sbe_v1_5.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Md Entry Type Book
cme_globex_mdp3_sbe_v1_5.md_entry_type_book = {}

-- Size: Md Entry Type Book
cme_globex_mdp3_sbe_v1_5.md_entry_type_book.size = 1

-- Display: Md Entry Type Book
cme_globex_mdp3_sbe_v1_5.md_entry_type_book.display = function(value)
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
cme_globex_mdp3_sbe_v1_5.md_entry_type_book.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_entry_type_book.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_globex_mdp3_sbe_v1_5.md_entry_type_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_type_book, range, value, display)

  return offset + length, value
end

-- Md Entry Type Daily Statistics
cme_globex_mdp3_sbe_v1_5.md_entry_type_daily_statistics = {}

-- Size: Md Entry Type Daily Statistics
cme_globex_mdp3_sbe_v1_5.md_entry_type_daily_statistics.size = 1

-- Display: Md Entry Type Daily Statistics
cme_globex_mdp3_sbe_v1_5.md_entry_type_daily_statistics.display = function(value)
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
cme_globex_mdp3_sbe_v1_5.md_entry_type_daily_statistics.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_entry_type_daily_statistics.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_globex_mdp3_sbe_v1_5.md_entry_type_daily_statistics.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_type_daily_statistics, range, value, display)

  return offset + length, value
end

-- Md Entry Type Statistics
cme_globex_mdp3_sbe_v1_5.md_entry_type_statistics = {}

-- Size: Md Entry Type Statistics
cme_globex_mdp3_sbe_v1_5.md_entry_type_statistics.size = 1

-- Display: Md Entry Type Statistics
cme_globex_mdp3_sbe_v1_5.md_entry_type_statistics.display = function(value)
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
cme_globex_mdp3_sbe_v1_5.md_entry_type_statistics.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_entry_type_statistics.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_globex_mdp3_sbe_v1_5.md_entry_type_statistics.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_entry_type_statistics, range, value, display)

  return offset + length, value
end

-- Md Feed Type
cme_globex_mdp3_sbe_v1_5.md_feed_type = {}

-- Size: Md Feed Type
cme_globex_mdp3_sbe_v1_5.md_feed_type.size = 3

-- Display: Md Feed Type
cme_globex_mdp3_sbe_v1_5.md_feed_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Feed Type: No Value"
  end

  return "Md Feed Type: "..value
end

-- Dissect: Md Feed Type
cme_globex_mdp3_sbe_v1_5.md_feed_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_feed_type.size
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

  local display = cme_globex_mdp3_sbe_v1_5.md_feed_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_feed_type, range, value, display)

  return offset + length, value
end

-- Md Price Level
cme_globex_mdp3_sbe_v1_5.md_price_level = {}

-- Size: Md Price Level
cme_globex_mdp3_sbe_v1_5.md_price_level.size = 1

-- Display: Md Price Level
cme_globex_mdp3_sbe_v1_5.md_price_level.display = function(value)
  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
cme_globex_mdp3_sbe_v1_5.md_price_level.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_price_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.md_price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Md Price Level Optional
cme_globex_mdp3_sbe_v1_5.md_price_level_optional = {}

-- Size: Md Price Level Optional
cme_globex_mdp3_sbe_v1_5.md_price_level_optional.size = 1

-- Display: Md Price Level Optional
cme_globex_mdp3_sbe_v1_5.md_price_level_optional.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Md Price Level Optional: No Value"
  end

  return "Md Price Level Optional: "..value
end

-- Dissect: Md Price Level Optional
cme_globex_mdp3_sbe_v1_5.md_price_level_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_price_level_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.md_price_level_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_price_level_optional, range, value, display)

  return offset + length, value
end

-- Md Req Id
cme_globex_mdp3_sbe_v1_5.md_req_id = {}

-- Size: Md Req Id
cme_globex_mdp3_sbe_v1_5.md_req_id.size = 4

-- Display: Md Req Id
cme_globex_mdp3_sbe_v1_5.md_req_id.display = function(value)
  return "Md Req Id: "..value
end

-- Dissect: Md Req Id
cme_globex_mdp3_sbe_v1_5.md_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.md_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_req_id, range, value, display)

  return offset + length, value
end

-- Md Req Id Optional
cme_globex_mdp3_sbe_v1_5.md_req_id_optional = {}

-- Size: Md Req Id Optional
cme_globex_mdp3_sbe_v1_5.md_req_id_optional.size = 4

-- Display: Md Req Id Optional
cme_globex_mdp3_sbe_v1_5.md_req_id_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Md Req Id Optional: No Value"
  end

  return "Md Req Id Optional: "..value
end

-- Dissect: Md Req Id Optional
cme_globex_mdp3_sbe_v1_5.md_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.md_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_req_id_optional, range, value, display)

  return offset + length, value
end

-- Md Req Id Status
cme_globex_mdp3_sbe_v1_5.md_req_id_status = {}

-- Size: Md Req Id Status
cme_globex_mdp3_sbe_v1_5.md_req_id_status.size = 1

-- Display: Md Req Id Status
cme_globex_mdp3_sbe_v1_5.md_req_id_status.display = function(value)
  if value == 0 then
    return "Md Req Id Status: Full Ack (0)"
  end
  if value == 1 then
    return "Md Req Id Status: Partial Ack (1)"
  end

  return "Md Req Id Status: Unknown("..value..")"
end

-- Dissect: Md Req Id Status
cme_globex_mdp3_sbe_v1_5.md_req_id_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_req_id_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.md_req_id_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_req_id_status, range, value, display)

  return offset + length, value
end

-- Md Req Rej Reason
cme_globex_mdp3_sbe_v1_5.md_req_rej_reason = {}

-- Size: Md Req Rej Reason
cme_globex_mdp3_sbe_v1_5.md_req_rej_reason.size = 1

-- Display: Md Req Rej Reason
cme_globex_mdp3_sbe_v1_5.md_req_rej_reason.display = function(value)
  if value == 0 then
    return "Md Req Rej Reason: Unknown Security (0)"
  end
  if value == 1 then
    return "Md Req Rej Reason: Unknown Message (1)"
  end
  if value == 2 then
    return "Md Req Rej Reason: Unsupported Scope (2)"
  end
  if value == 3 then
    return "Md Req Rej Reason: Other (3)"
  end

  return "Md Req Rej Reason: Unknown("..value..")"
end

-- Dissect: Md Req Rej Reason
cme_globex_mdp3_sbe_v1_5.md_req_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_req_rej_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.md_req_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_req_rej_reason, range, value, display)

  return offset + length, value
end

-- Md Security Trading Status
cme_globex_mdp3_sbe_v1_5.md_security_trading_status = {}

-- Size: Md Security Trading Status
cme_globex_mdp3_sbe_v1_5.md_security_trading_status.size = 1

-- Display: Md Security Trading Status
cme_globex_mdp3_sbe_v1_5.md_security_trading_status.display = function(value)
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
    return "Md Security Trading Status: Unknown Or Invalid (20)"
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
cme_globex_mdp3_sbe_v1_5.md_security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.md_security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_security_trading_status, range, value, display)

  return offset + length, value
end

-- Md Update Action
cme_globex_mdp3_sbe_v1_5.md_update_action = {}

-- Size: Md Update Action
cme_globex_mdp3_sbe_v1_5.md_update_action.size = 1

-- Display: Md Update Action
cme_globex_mdp3_sbe_v1_5.md_update_action.display = function(value)
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
cme_globex_mdp3_sbe_v1_5.md_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.md_update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.md_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
cme_globex_mdp3_sbe_v1_5.message_sequence_number = {}

-- Size: Message Sequence Number
cme_globex_mdp3_sbe_v1_5.message_sequence_number.size = 4

-- Display: Message Sequence Number
cme_globex_mdp3_sbe_v1_5.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
cme_globex_mdp3_sbe_v1_5.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Size
cme_globex_mdp3_sbe_v1_5.message_size = {}

-- Size: Message Size
cme_globex_mdp3_sbe_v1_5.message_size.size = 2

-- Display: Message Size
cme_globex_mdp3_sbe_v1_5.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_globex_mdp3_sbe_v1_5.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.message_size, range, value, display)

  return offset + length, value
end

-- Min Cab Price
cme_globex_mdp3_sbe_v1_5.min_cab_price = {}

-- Size: Min Cab Price
cme_globex_mdp3_sbe_v1_5.min_cab_price.size = 8

-- Display: Min Cab Price
cme_globex_mdp3_sbe_v1_5.min_cab_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Cab Price: No Value"
  end

  return "Min Cab Price: "..value
end

-- Translate: Min Cab Price
cme_globex_mdp3_sbe_v1_5.min_cab_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Min Cab Price
cme_globex_mdp3_sbe_v1_5.min_cab_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.min_cab_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.min_cab_price.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.min_cab_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.min_cab_price, range, value, display)

  return offset + length, value
end

-- Min Lot Size
cme_globex_mdp3_sbe_v1_5.min_lot_size = {}

-- Size: Min Lot Size
cme_globex_mdp3_sbe_v1_5.min_lot_size.size = 4

-- Display: Min Lot Size
cme_globex_mdp3_sbe_v1_5.min_lot_size.display = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Min Lot Size: No Value"
  end

  return "Min Lot Size: "..value
end

-- Translate: Min Lot Size
cme_globex_mdp3_sbe_v1_5.min_lot_size.translate = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Min Lot Size
cme_globex_mdp3_sbe_v1_5.min_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.min_lot_size.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cme_globex_mdp3_sbe_v1_5.min_lot_size.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.min_lot_size.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.min_lot_size, range, value, display)

  return offset + length, value
end

-- Min Price Increment
cme_globex_mdp3_sbe_v1_5.min_price_increment = {}

-- Size: Min Price Increment
cme_globex_mdp3_sbe_v1_5.min_price_increment.size = 8

-- Display: Min Price Increment
cme_globex_mdp3_sbe_v1_5.min_price_increment.display = function(value)
  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
cme_globex_mdp3_sbe_v1_5.min_price_increment.translate = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Min Price Increment
cme_globex_mdp3_sbe_v1_5.min_price_increment.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.min_price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.min_price_increment.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.min_price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Min Price Increment Amount
cme_globex_mdp3_sbe_v1_5.min_price_increment_amount = {}

-- Size: Min Price Increment Amount
cme_globex_mdp3_sbe_v1_5.min_price_increment_amount.size = 8

-- Display: Min Price Increment Amount
cme_globex_mdp3_sbe_v1_5.min_price_increment_amount.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Amount: No Value"
  end

  return "Min Price Increment Amount: "..value
end

-- Translate: Min Price Increment Amount
cme_globex_mdp3_sbe_v1_5.min_price_increment_amount.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Min Price Increment Amount
cme_globex_mdp3_sbe_v1_5.min_price_increment_amount.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.min_price_increment_amount.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.min_price_increment_amount.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.min_price_increment_amount.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.min_price_increment_amount, range, value, display)

  return offset + length, value
end

-- Min Price Increment Optional
cme_globex_mdp3_sbe_v1_5.min_price_increment_optional = {}

-- Size: Min Price Increment Optional
cme_globex_mdp3_sbe_v1_5.min_price_increment_optional.size = 8

-- Display: Min Price Increment Optional
cme_globex_mdp3_sbe_v1_5.min_price_increment_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Optional: No Value"
  end

  return "Min Price Increment Optional: "..value
end

-- Translate: Min Price Increment Optional
cme_globex_mdp3_sbe_v1_5.min_price_increment_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Min Price Increment Optional
cme_globex_mdp3_sbe_v1_5.min_price_increment_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.min_price_increment_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.min_price_increment_optional.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.min_price_increment_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.min_price_increment_optional, range, value, display)

  return offset + length, value
end

-- Min Trade Vol
cme_globex_mdp3_sbe_v1_5.min_trade_vol = {}

-- Size: Min Trade Vol
cme_globex_mdp3_sbe_v1_5.min_trade_vol.size = 4

-- Display: Min Trade Vol
cme_globex_mdp3_sbe_v1_5.min_trade_vol.display = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
cme_globex_mdp3_sbe_v1_5.min_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.min_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.min_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Month
cme_globex_mdp3_sbe_v1_5.month = {}

-- Size: Month
cme_globex_mdp3_sbe_v1_5.month.size = 1

-- Display: Month
cme_globex_mdp3_sbe_v1_5.month.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value"
  end

  return "Month: "..value
end

-- Dissect: Month
cme_globex_mdp3_sbe_v1_5.month.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.month.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.month, range, value, display)

  return offset + length, value
end

-- Num In Group
cme_globex_mdp3_sbe_v1_5.num_in_group = {}

-- Size: Num In Group
cme_globex_mdp3_sbe_v1_5.num_in_group.size = 1

-- Display: Num In Group
cme_globex_mdp3_sbe_v1_5.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
cme_globex_mdp3_sbe_v1_5.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Number Of Orders
cme_globex_mdp3_sbe_v1_5.number_of_orders = {}

-- Size: Number Of Orders
cme_globex_mdp3_sbe_v1_5.number_of_orders.size = 4

-- Display: Number Of Orders
cme_globex_mdp3_sbe_v1_5.number_of_orders.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Number Of Orders: No Value"
  end

  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
cme_globex_mdp3_sbe_v1_5.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Open Close Settl Flag
cme_globex_mdp3_sbe_v1_5.open_close_settl_flag = {}

-- Size: Open Close Settl Flag
cme_globex_mdp3_sbe_v1_5.open_close_settl_flag.size = 1

-- Display: Open Close Settl Flag
cme_globex_mdp3_sbe_v1_5.open_close_settl_flag.display = function(value)
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
cme_globex_mdp3_sbe_v1_5.open_close_settl_flag.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.open_close_settl_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.open_close_settl_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Open Interest Qty
cme_globex_mdp3_sbe_v1_5.open_interest_qty = {}

-- Size: Open Interest Qty
cme_globex_mdp3_sbe_v1_5.open_interest_qty.size = 4

-- Display: Open Interest Qty
cme_globex_mdp3_sbe_v1_5.open_interest_qty.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Open Interest Qty: No Value"
  end

  return "Open Interest Qty: "..value
end

-- Dissect: Open Interest Qty
cme_globex_mdp3_sbe_v1_5.open_interest_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.open_interest_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.open_interest_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.open_interest_qty, range, value, display)

  return offset + length, value
end

-- Order Id
cme_globex_mdp3_sbe_v1_5.order_id = {}

-- Size: Order Id
cme_globex_mdp3_sbe_v1_5.order_id.size = 8

-- Display: Order Id
cme_globex_mdp3_sbe_v1_5.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cme_globex_mdp3_sbe_v1_5.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_globex_mdp3_sbe_v1_5.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
cme_globex_mdp3_sbe_v1_5.order_qty = {}

-- Size: Order Qty
cme_globex_mdp3_sbe_v1_5.order_qty.size = 4

-- Display: Order Qty
cme_globex_mdp3_sbe_v1_5.order_qty.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty
cme_globex_mdp3_sbe_v1_5.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Original Contract Size
cme_globex_mdp3_sbe_v1_5.original_contract_size = {}

-- Size: Original Contract Size
cme_globex_mdp3_sbe_v1_5.original_contract_size.size = 4

-- Display: Original Contract Size
cme_globex_mdp3_sbe_v1_5.original_contract_size.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Original Contract Size: No Value"
  end

  return "Original Contract Size: "..value
end

-- Dissect: Original Contract Size
cme_globex_mdp3_sbe_v1_5.original_contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.original_contract_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.original_contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.original_contract_size, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
cme_globex_mdp3_sbe_v1_5.packet_sequence_number = {}

-- Size: Packet Sequence Number
cme_globex_mdp3_sbe_v1_5.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
cme_globex_mdp3_sbe_v1_5.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
cme_globex_mdp3_sbe_v1_5.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Padding 2
cme_globex_mdp3_sbe_v1_5.padding_2 = {}

-- Size: Padding 2
cme_globex_mdp3_sbe_v1_5.padding_2.size = 2

-- Display: Padding 2
cme_globex_mdp3_sbe_v1_5.padding_2.display = function(value)
  return "Padding 2: "..value
end

-- Dissect: Padding 2
cme_globex_mdp3_sbe_v1_5.padding_2.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_globex_mdp3_sbe_v1_5.padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.padding_2, range, value, display)

  return offset + length, value
end

-- Padding 3
cme_globex_mdp3_sbe_v1_5.padding_3 = {}

-- Size: Padding 3
cme_globex_mdp3_sbe_v1_5.padding_3.size = 3

-- Display: Padding 3
cme_globex_mdp3_sbe_v1_5.padding_3.display = function(value)
  return "Padding 3: "..value
end

-- Dissect: Padding 3
cme_globex_mdp3_sbe_v1_5.padding_3.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_globex_mdp3_sbe_v1_5.padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.padding_3, range, value, display)

  return offset + length, value
end

-- Padding 4
cme_globex_mdp3_sbe_v1_5.padding_4 = {}

-- Size: Padding 4
cme_globex_mdp3_sbe_v1_5.padding_4.size = 4

-- Display: Padding 4
cme_globex_mdp3_sbe_v1_5.padding_4.display = function(value)
  return "Padding 4: "..value
end

-- Dissect: Padding 4
cme_globex_mdp3_sbe_v1_5.padding_4.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.padding_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_globex_mdp3_sbe_v1_5.padding_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.padding_4, range, value, display)

  return offset + length, value
end

-- Padding 5
cme_globex_mdp3_sbe_v1_5.padding_5 = {}

-- Size: Padding 5
cme_globex_mdp3_sbe_v1_5.padding_5.size = 5

-- Display: Padding 5
cme_globex_mdp3_sbe_v1_5.padding_5.display = function(value)
  return "Padding 5: "..value
end

-- Dissect: Padding 5
cme_globex_mdp3_sbe_v1_5.padding_5.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.padding_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_globex_mdp3_sbe_v1_5.padding_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.padding_5, range, value, display)

  return offset + length, value
end

-- Padding 6
cme_globex_mdp3_sbe_v1_5.padding_6 = {}

-- Size: Padding 6
cme_globex_mdp3_sbe_v1_5.padding_6.size = 6

-- Display: Padding 6
cme_globex_mdp3_sbe_v1_5.padding_6.display = function(value)
  return "Padding 6: "..value
end

-- Dissect: Padding 6
cme_globex_mdp3_sbe_v1_5.padding_6.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.padding_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_globex_mdp3_sbe_v1_5.padding_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.padding_6, range, value, display)

  return offset + length, value
end

-- Padding 7
cme_globex_mdp3_sbe_v1_5.padding_7 = {}

-- Size: Padding 7
cme_globex_mdp3_sbe_v1_5.padding_7.size = 7

-- Display: Padding 7
cme_globex_mdp3_sbe_v1_5.padding_7.display = function(value)
  return "Padding 7: "..value
end

-- Dissect: Padding 7
cme_globex_mdp3_sbe_v1_5.padding_7.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.padding_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_globex_mdp3_sbe_v1_5.padding_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.padding_7, range, value, display)

  return offset + length, value
end

-- Price Display Format
cme_globex_mdp3_sbe_v1_5.price_display_format = {}

-- Size: Price Display Format
cme_globex_mdp3_sbe_v1_5.price_display_format.size = 1

-- Display: Price Display Format
cme_globex_mdp3_sbe_v1_5.price_display_format.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Display Format: No Value"
  end

  return "Price Display Format: "..value
end

-- Dissect: Price Display Format
cme_globex_mdp3_sbe_v1_5.price_display_format.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.price_display_format.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.price_display_format.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.price_display_format, range, value, display)

  return offset + length, value
end

-- Price Ratio
cme_globex_mdp3_sbe_v1_5.price_ratio = {}

-- Size: Price Ratio
cme_globex_mdp3_sbe_v1_5.price_ratio.size = 8

-- Display: Price Ratio
cme_globex_mdp3_sbe_v1_5.price_ratio.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Price Ratio: No Value"
  end

  return "Price Ratio: "..value
end

-- Translate: Price Ratio
cme_globex_mdp3_sbe_v1_5.price_ratio.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Price Ratio
cme_globex_mdp3_sbe_v1_5.price_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.price_ratio.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.price_ratio.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.price_ratio.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.price_ratio, range, value, display)

  return offset + length, value
end

-- Put Or Call
cme_globex_mdp3_sbe_v1_5.put_or_call = {}

-- Size: Put Or Call
cme_globex_mdp3_sbe_v1_5.put_or_call.size = 1

-- Display: Put Or Call
cme_globex_mdp3_sbe_v1_5.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
cme_globex_mdp3_sbe_v1_5.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quote Req Id
cme_globex_mdp3_sbe_v1_5.quote_req_id = {}

-- Size: Quote Req Id
cme_globex_mdp3_sbe_v1_5.quote_req_id.size = 23

-- Display: Quote Req Id
cme_globex_mdp3_sbe_v1_5.quote_req_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Req Id: No Value"
  end

  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
cme_globex_mdp3_sbe_v1_5.quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.quote_req_id.size
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

  local display = cme_globex_mdp3_sbe_v1_5.quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Quote Type
cme_globex_mdp3_sbe_v1_5.quote_type = {}

-- Size: Quote Type
cme_globex_mdp3_sbe_v1_5.quote_type.size = 1

-- Display: Quote Type
cme_globex_mdp3_sbe_v1_5.quote_type.display = function(value)
  return "Quote Type: "..value
end

-- Dissect: Quote Type
cme_globex_mdp3_sbe_v1_5.quote_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.quote_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.quote_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.quote_type, range, value, display)

  return offset + length, value
end

-- Reason
cme_globex_mdp3_sbe_v1_5.reason = {}

-- Size: Reason
cme_globex_mdp3_sbe_v1_5.reason.size = 48

-- Display: Reason
cme_globex_mdp3_sbe_v1_5.reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason: No Value"
  end

  return "Reason: "..value
end

-- Dissect: Reason
cme_globex_mdp3_sbe_v1_5.reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.reason.size
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

  local display = cme_globex_mdp3_sbe_v1_5.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.reason, range, value, display)

  return offset + length, value
end

-- Request Timestamp
cme_globex_mdp3_sbe_v1_5.request_timestamp = {}

-- Size: Request Timestamp
cme_globex_mdp3_sbe_v1_5.request_timestamp.size = 8

-- Display: Request Timestamp
cme_globex_mdp3_sbe_v1_5.request_timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Request Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Timestamp
cme_globex_mdp3_sbe_v1_5.request_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.request_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_globex_mdp3_sbe_v1_5.request_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.request_timestamp, range, value, display)

  return offset + length, value
end

-- Rpt Seq
cme_globex_mdp3_sbe_v1_5.rpt_seq = {}

-- Size: Rpt Seq
cme_globex_mdp3_sbe_v1_5.rpt_seq.size = 4

-- Display: Rpt Seq
cme_globex_mdp3_sbe_v1_5.rpt_seq.display = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
cme_globex_mdp3_sbe_v1_5.rpt_seq.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.rpt_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.rpt_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_globex_mdp3_sbe_v1_5.schema_id = {}

-- Size: Schema Id
cme_globex_mdp3_sbe_v1_5.schema_id.size = 2

-- Display: Schema Id
cme_globex_mdp3_sbe_v1_5.schema_id.display = function(value)
  if value == 1 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
cme_globex_mdp3_sbe_v1_5.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Secret Key Secure Id Expiration
cme_globex_mdp3_sbe_v1_5.secret_key_secure_id_expiration = {}

-- Size: Secret Key Secure Id Expiration
cme_globex_mdp3_sbe_v1_5.secret_key_secure_id_expiration.size = 2

-- Display: Secret Key Secure Id Expiration
cme_globex_mdp3_sbe_v1_5.secret_key_secure_id_expiration.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Secret Key Secure Id Expiration: No Value"
  end

  return "Secret Key Secure Id Expiration: "..value
end

-- Dissect: Secret Key Secure Id Expiration
cme_globex_mdp3_sbe_v1_5.secret_key_secure_id_expiration.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.secret_key_secure_id_expiration.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.secret_key_secure_id_expiration.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.secret_key_secure_id_expiration, range, value, display)

  return offset + length, value
end

-- Security Exchange
cme_globex_mdp3_sbe_v1_5.security_exchange = {}

-- Size: Security Exchange
cme_globex_mdp3_sbe_v1_5.security_exchange.size = 4

-- Display: Security Exchange
cme_globex_mdp3_sbe_v1_5.security_exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
cme_globex_mdp3_sbe_v1_5.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.security_exchange.size
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

  local display = cme_globex_mdp3_sbe_v1_5.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Security Group
cme_globex_mdp3_sbe_v1_5.security_group = {}

-- Size: Security Group
cme_globex_mdp3_sbe_v1_5.security_group.size = 6

-- Display: Security Group
cme_globex_mdp3_sbe_v1_5.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
cme_globex_mdp3_sbe_v1_5.security_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.security_group.size
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

  local display = cme_globex_mdp3_sbe_v1_5.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Id
cme_globex_mdp3_sbe_v1_5.security_id = {}

-- Size: Security Id
cme_globex_mdp3_sbe_v1_5.security_id.size = 4

-- Display: Security Id
cme_globex_mdp3_sbe_v1_5.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cme_globex_mdp3_sbe_v1_5.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Id Optional
cme_globex_mdp3_sbe_v1_5.security_id_optional = {}

-- Size: Security Id Optional
cme_globex_mdp3_sbe_v1_5.security_id_optional.size = 4

-- Display: Security Id Optional
cme_globex_mdp3_sbe_v1_5.security_id_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Security Id Optional: No Value"
  end

  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
cme_globex_mdp3_sbe_v1_5.security_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.security_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.security_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Security Sub Type
cme_globex_mdp3_sbe_v1_5.security_sub_type = {}

-- Size: Security Sub Type
cme_globex_mdp3_sbe_v1_5.security_sub_type.size = 5

-- Display: Security Sub Type
cme_globex_mdp3_sbe_v1_5.security_sub_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
cme_globex_mdp3_sbe_v1_5.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.security_sub_type.size
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

  local display = cme_globex_mdp3_sbe_v1_5.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Security Trading Event
cme_globex_mdp3_sbe_v1_5.security_trading_event = {}

-- Size: Security Trading Event
cme_globex_mdp3_sbe_v1_5.security_trading_event.size = 1

-- Display: Security Trading Event
cme_globex_mdp3_sbe_v1_5.security_trading_event.display = function(value)
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
cme_globex_mdp3_sbe_v1_5.security_trading_event.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.security_trading_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.security_trading_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Security Trading Status
cme_globex_mdp3_sbe_v1_5.security_trading_status = {}

-- Size: Security Trading Status
cme_globex_mdp3_sbe_v1_5.security_trading_status.size = 1

-- Display: Security Trading Status
cme_globex_mdp3_sbe_v1_5.security_trading_status.display = function(value)
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
cme_globex_mdp3_sbe_v1_5.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Type
cme_globex_mdp3_sbe_v1_5.security_type = {}

-- Size: Security Type
cme_globex_mdp3_sbe_v1_5.security_type.size = 6

-- Display: Security Type
cme_globex_mdp3_sbe_v1_5.security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
cme_globex_mdp3_sbe_v1_5.security_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.security_type.size
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

  local display = cme_globex_mdp3_sbe_v1_5.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_type, range, value, display)

  return offset + length, value
end

-- Security Update Action
cme_globex_mdp3_sbe_v1_5.security_update_action = {}

-- Size: Security Update Action
cme_globex_mdp3_sbe_v1_5.security_update_action.size = 1

-- Display: Security Update Action
cme_globex_mdp3_sbe_v1_5.security_update_action.display = function(value)
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
cme_globex_mdp3_sbe_v1_5.security_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.security_update_action.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_globex_mdp3_sbe_v1_5.security_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_update_action, range, value, display)

  return offset + length, value
end

-- Sending Time
cme_globex_mdp3_sbe_v1_5.sending_time = {}

-- Size: Sending Time
cme_globex_mdp3_sbe_v1_5.sending_time.size = 8

-- Display: Sending Time
cme_globex_mdp3_sbe_v1_5.sending_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sending Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
cme_globex_mdp3_sbe_v1_5.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_globex_mdp3_sbe_v1_5.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Session
cme_globex_mdp3_sbe_v1_5.session = {}

-- Size: Session
cme_globex_mdp3_sbe_v1_5.session.size = 5

-- Display: Session
cme_globex_mdp3_sbe_v1_5.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
cme_globex_mdp3_sbe_v1_5.session.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.session.size
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

  local display = cme_globex_mdp3_sbe_v1_5.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.session, range, value, display)

  return offset + length, value
end

-- Settl Currency
cme_globex_mdp3_sbe_v1_5.settl_currency = {}

-- Size: Settl Currency
cme_globex_mdp3_sbe_v1_5.settl_currency.size = 3

-- Display: Settl Currency
cme_globex_mdp3_sbe_v1_5.settl_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settl Currency: No Value"
  end

  return "Settl Currency: "..value
end

-- Dissect: Settl Currency
cme_globex_mdp3_sbe_v1_5.settl_currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.settl_currency.size
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

  local display = cme_globex_mdp3_sbe_v1_5.settl_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.settl_currency, range, value, display)

  return offset + length, value
end

-- Side
cme_globex_mdp3_sbe_v1_5.side = {}

-- Size: Side
cme_globex_mdp3_sbe_v1_5.side.size = 1

-- Display: Side
cme_globex_mdp3_sbe_v1_5.side.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Side: No Value"
  end

  return "Side: "..value
end

-- Dissect: Side
cme_globex_mdp3_sbe_v1_5.side.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.side.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.side, range, value, display)

  return offset + length, value
end

-- Strike Currency
cme_globex_mdp3_sbe_v1_5.strike_currency = {}

-- Size: Strike Currency
cme_globex_mdp3_sbe_v1_5.strike_currency.size = 3

-- Display: Strike Currency
cme_globex_mdp3_sbe_v1_5.strike_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Currency: No Value"
  end

  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
cme_globex_mdp3_sbe_v1_5.strike_currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.strike_currency.size
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

  local display = cme_globex_mdp3_sbe_v1_5.strike_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Strike Price
cme_globex_mdp3_sbe_v1_5.strike_price = {}

-- Size: Strike Price
cme_globex_mdp3_sbe_v1_5.strike_price.size = 8

-- Display: Strike Price
cme_globex_mdp3_sbe_v1_5.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
cme_globex_mdp3_sbe_v1_5.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Strike Price
cme_globex_mdp3_sbe_v1_5.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.strike_price.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Sub Fraction
cme_globex_mdp3_sbe_v1_5.sub_fraction = {}

-- Size: Sub Fraction
cme_globex_mdp3_sbe_v1_5.sub_fraction.size = 1

-- Display: Sub Fraction
cme_globex_mdp3_sbe_v1_5.sub_fraction.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Sub Fraction: No Value"
  end

  return "Sub Fraction: "..value
end

-- Dissect: Sub Fraction
cme_globex_mdp3_sbe_v1_5.sub_fraction.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.sub_fraction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.sub_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.sub_fraction, range, value, display)

  return offset + length, value
end

-- Subscription Req Type
cme_globex_mdp3_sbe_v1_5.subscription_req_type = {}

-- Size: Subscription Req Type
cme_globex_mdp3_sbe_v1_5.subscription_req_type.size = 1

-- Display: Subscription Req Type
cme_globex_mdp3_sbe_v1_5.subscription_req_type.display = function(value)
  if value == 0 then
    return "Subscription Req Type: Snapshot (0)"
  end
  if value == 1 then
    return "Subscription Req Type: Snapshot And Updates (1)"
  end
  if value == 2 then
    return "Subscription Req Type: Unsubscribe (2)"
  end

  return "Subscription Req Type: Unknown("..value..")"
end

-- Dissect: Subscription Req Type
cme_globex_mdp3_sbe_v1_5.subscription_req_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.subscription_req_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.subscription_req_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.subscription_req_type, range, value, display)

  return offset + length, value
end

-- Symbol
cme_globex_mdp3_sbe_v1_5.symbol = {}

-- Size: Symbol
cme_globex_mdp3_sbe_v1_5.symbol.size = 20

-- Display: Symbol
cme_globex_mdp3_sbe_v1_5.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_globex_mdp3_sbe_v1_5.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.symbol.size
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

  local display = cme_globex_mdp3_sbe_v1_5.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tcp Message Size
cme_globex_mdp3_sbe_v1_5.tcp_message_size = {}

-- Size: Tcp Message Size
cme_globex_mdp3_sbe_v1_5.tcp_message_size.size = 2

-- Display: Tcp Message Size
cme_globex_mdp3_sbe_v1_5.tcp_message_size.display = function(value)
  return "Tcp Message Size: "..value
end

-- Dissect: Tcp Message Size
cme_globex_mdp3_sbe_v1_5.tcp_message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.tcp_message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.tcp_message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.tcp_message_size, range, value, display)

  return offset + length, value
end

-- Tcp Sending Time
cme_globex_mdp3_sbe_v1_5.tcp_sending_time = {}

-- Size: Tcp Sending Time
cme_globex_mdp3_sbe_v1_5.tcp_sending_time.size = 8

-- Display: Tcp Sending Time
cme_globex_mdp3_sbe_v1_5.tcp_sending_time.display = function(value)
  return "Tcp Sending Time: "..value
end

-- Dissect: Tcp Sending Time
cme_globex_mdp3_sbe_v1_5.tcp_sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.tcp_sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_globex_mdp3_sbe_v1_5.tcp_sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.tcp_sending_time, range, value, display)

  return offset + length, value
end

-- Template Id
cme_globex_mdp3_sbe_v1_5.template_id = {}

-- Size: Template Id
cme_globex_mdp3_sbe_v1_5.template_id.size = 2

-- Display: Template Id
cme_globex_mdp3_sbe_v1_5.template_id.display = function(value)
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
  if value == 36 then
    return "Template Id: Md Incremental Refresh Trade (36)"
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
  if value == 200 then
    return "Template Id: Negotiate (200)"
  end
  if value == 201 then
    return "Template Id: Negotiation Reject (201)"
  end
  if value == 202 then
    return "Template Id: Negotiation Response (202)"
  end
  if value == 203 then
    return "Template Id: Terminate (203)"
  end
  if value == 205 then
    return "Template Id: Market Data Request (205)"
  end
  if value == 206 then
    return "Template Id: Request Ack (206)"
  end
  if value == 207 then
    return "Template Id: Request Reject (207)"
  end
  if value == 208 then
    return "Template Id: Security List Request (208)"
  end
  if value == 209 then
    return "Template Id: Security Status Request (209)"
  end
  if value == 210 then
    return "Template Id: Subscriber Heartbeat (210)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_globex_mdp3_sbe_v1_5.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.template_id, range, value, display)

  return offset + length, value
end

-- Text
cme_globex_mdp3_sbe_v1_5.text = {}

-- Size: Text
cme_globex_mdp3_sbe_v1_5.text.size = 100

-- Display: Text
cme_globex_mdp3_sbe_v1_5.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cme_globex_mdp3_sbe_v1_5.text.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.text.size
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

  local display = cme_globex_mdp3_sbe_v1_5.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.text, range, value, display)

  return offset + length, value
end

-- Tick Rule
cme_globex_mdp3_sbe_v1_5.tick_rule = {}

-- Size: Tick Rule
cme_globex_mdp3_sbe_v1_5.tick_rule.size = 1

-- Display: Tick Rule
cme_globex_mdp3_sbe_v1_5.tick_rule.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Tick Rule: No Value"
  end

  return "Tick Rule: "..value
end

-- Dissect: Tick Rule
cme_globex_mdp3_sbe_v1_5.tick_rule.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.tick_rule.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.tick_rule.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.tick_rule, range, value, display)

  return offset + length, value
end

-- Tot Num Reports
cme_globex_mdp3_sbe_v1_5.tot_num_reports = {}

-- Size: Tot Num Reports
cme_globex_mdp3_sbe_v1_5.tot_num_reports.size = 4

-- Display: Tot Num Reports
cme_globex_mdp3_sbe_v1_5.tot_num_reports.display = function(value)
  return "Tot Num Reports: "..value
end

-- Dissect: Tot Num Reports
cme_globex_mdp3_sbe_v1_5.tot_num_reports.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.tot_num_reports.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.tot_num_reports.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.tot_num_reports, range, value, display)

  return offset + length, value
end

-- Tot Num Reports Optional
cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional = {}

-- Size: Tot Num Reports Optional
cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional.size = 4

-- Display: Tot Num Reports Optional
cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Tot Num Reports Optional: No Value"
  end

  return "Tot Num Reports Optional: "..value
end

-- Dissect: Tot Num Reports Optional
cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.tot_num_reports_optional, range, value, display)

  return offset + length, value
end

-- Trade Date
cme_globex_mdp3_sbe_v1_5.trade_date = {}

-- Size: Trade Date
cme_globex_mdp3_sbe_v1_5.trade_date.size = 2

-- Display: Trade Date
cme_globex_mdp3_sbe_v1_5.trade_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_globex_mdp3_sbe_v1_5.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Id
cme_globex_mdp3_sbe_v1_5.trade_id = {}

-- Size: Trade Id
cme_globex_mdp3_sbe_v1_5.trade_id.size = 4

-- Display: Trade Id
cme_globex_mdp3_sbe_v1_5.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cme_globex_mdp3_sbe_v1_5.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trading Reference Date
cme_globex_mdp3_sbe_v1_5.trading_reference_date = {}

-- Size: Trading Reference Date
cme_globex_mdp3_sbe_v1_5.trading_reference_date.size = 2

-- Display: Trading Reference Date
cme_globex_mdp3_sbe_v1_5.trading_reference_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trading Reference Date: No Value"
  end

  return "Trading Reference Date: "..value
end

-- Dissect: Trading Reference Date
cme_globex_mdp3_sbe_v1_5.trading_reference_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.trading_reference_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.trading_reference_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.trading_reference_date, range, value, display)

  return offset + length, value
end

-- Trading Reference Price
cme_globex_mdp3_sbe_v1_5.trading_reference_price = {}

-- Size: Trading Reference Price
cme_globex_mdp3_sbe_v1_5.trading_reference_price.size = 8

-- Display: Trading Reference Price
cme_globex_mdp3_sbe_v1_5.trading_reference_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Trading Reference Price: No Value"
  end

  return "Trading Reference Price: "..value
end

-- Translate: Trading Reference Price
cme_globex_mdp3_sbe_v1_5.trading_reference_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Trading Reference Price
cme_globex_mdp3_sbe_v1_5.trading_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.trading_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.trading_reference_price.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.trading_reference_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.trading_reference_price, range, value, display)

  return offset + length, value
end

-- Transact Time
cme_globex_mdp3_sbe_v1_5.transact_time = {}

-- Size: Transact Time
cme_globex_mdp3_sbe_v1_5.transact_time.size = 8

-- Display: Transact Time
cme_globex_mdp3_sbe_v1_5.transact_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transact Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
cme_globex_mdp3_sbe_v1_5.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_globex_mdp3_sbe_v1_5.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Underlying Product
cme_globex_mdp3_sbe_v1_5.underlying_product = {}

-- Size: Underlying Product
cme_globex_mdp3_sbe_v1_5.underlying_product.size = 1

-- Display: Underlying Product
cme_globex_mdp3_sbe_v1_5.underlying_product.display = function(value)
  return "Underlying Product: "..value
end

-- Dissect: Underlying Product
cme_globex_mdp3_sbe_v1_5.underlying_product.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.underlying_product.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.underlying_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.underlying_product, range, value, display)

  return offset + length, value
end

-- Underlying Product Optional
cme_globex_mdp3_sbe_v1_5.underlying_product_optional = {}

-- Size: Underlying Product Optional
cme_globex_mdp3_sbe_v1_5.underlying_product_optional.size = 1

-- Display: Underlying Product Optional
cme_globex_mdp3_sbe_v1_5.underlying_product_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Underlying Product Optional: No Value"
  end

  return "Underlying Product Optional: "..value
end

-- Dissect: Underlying Product Optional
cme_globex_mdp3_sbe_v1_5.underlying_product_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.underlying_product_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.underlying_product_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.underlying_product_optional, range, value, display)

  return offset + length, value
end

-- Underlying Security Id
cme_globex_mdp3_sbe_v1_5.underlying_security_id = {}

-- Size: Underlying Security Id
cme_globex_mdp3_sbe_v1_5.underlying_security_id.size = 4

-- Display: Underlying Security Id
cme_globex_mdp3_sbe_v1_5.underlying_security_id.display = function(value)
  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
cme_globex_mdp3_sbe_v1_5.underlying_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.underlying_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_globex_mdp3_sbe_v1_5.underlying_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.underlying_security_id, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
cme_globex_mdp3_sbe_v1_5.underlying_symbol = {}

-- Size: Underlying Symbol
cme_globex_mdp3_sbe_v1_5.underlying_symbol.size = 20

-- Display: Underlying Symbol
cme_globex_mdp3_sbe_v1_5.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
cme_globex_mdp3_sbe_v1_5.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.underlying_symbol.size
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

  local display = cme_globex_mdp3_sbe_v1_5.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
cme_globex_mdp3_sbe_v1_5.unit_of_measure = {}

-- Size: Unit Of Measure
cme_globex_mdp3_sbe_v1_5.unit_of_measure.size = 30

-- Display: Unit Of Measure
cme_globex_mdp3_sbe_v1_5.unit_of_measure.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure: No Value"
  end

  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
cme_globex_mdp3_sbe_v1_5.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.unit_of_measure.size
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

  local display = cme_globex_mdp3_sbe_v1_5.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Qty
cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty = {}

-- Size: Unit Of Measure Qty
cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty.size = 8

-- Display: Unit Of Measure Qty
cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Unit Of Measure Qty: No Value"
  end

  return "Unit Of Measure Qty: "..value
end

-- Translate: Unit Of Measure Qty
cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/10000000
end

-- Dissect: Unit Of Measure Qty
cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty.translate(raw)
  local display = cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.unit_of_measure_qty, range, value, display)

  return offset + length, value
end

-- User Defined Instrument
cme_globex_mdp3_sbe_v1_5.user_defined_instrument = {}

-- Size: User Defined Instrument
cme_globex_mdp3_sbe_v1_5.user_defined_instrument.size = 1

-- Display: User Defined Instrument
cme_globex_mdp3_sbe_v1_5.user_defined_instrument.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Defined Instrument: No Value"
  end

  return "User Defined Instrument: "..value
end

-- Dissect: User Defined Instrument
cme_globex_mdp3_sbe_v1_5.user_defined_instrument.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.user_defined_instrument.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_globex_mdp3_sbe_v1_5.user_defined_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.user_defined_instrument, range, value, display)

  return offset + length, value
end

-- Uuid
cme_globex_mdp3_sbe_v1_5.uuid = {}

-- Size: Uuid
cme_globex_mdp3_sbe_v1_5.uuid.size = 8

-- Display: Uuid
cme_globex_mdp3_sbe_v1_5.uuid.display = function(value)
  return "Uuid: "..value
end

-- Dissect: Uuid
cme_globex_mdp3_sbe_v1_5.uuid.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.uuid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_globex_mdp3_sbe_v1_5.uuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.uuid, range, value, display)

  return offset + length, value
end

-- Version
cme_globex_mdp3_sbe_v1_5.version = {}

-- Size: Version
cme_globex_mdp3_sbe_v1_5.version.size = 2

-- Display: Version
cme_globex_mdp3_sbe_v1_5.version.display = function(value)
  if value == 5 then
    return "Version: Version"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
cme_globex_mdp3_sbe_v1_5.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.version, range, value, display)

  return offset + length, value
end

-- Week
cme_globex_mdp3_sbe_v1_5.week = {}

-- Size: Week
cme_globex_mdp3_sbe_v1_5.week.size = 1

-- Display: Week
cme_globex_mdp3_sbe_v1_5.week.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value"
  end

  return "Week: "..value
end

-- Dissect: Week
cme_globex_mdp3_sbe_v1_5.week.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.week.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.week.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.week, range, value, display)

  return offset + length, value
end

-- Year
cme_globex_mdp3_sbe_v1_5.year = {}

-- Size: Year
cme_globex_mdp3_sbe_v1_5.year.size = 2

-- Display: Year
cme_globex_mdp3_sbe_v1_5.year.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value"
  end

  return "Year: "..value
end

-- Dissect: Year
cme_globex_mdp3_sbe_v1_5.year.dissect = function(buffer, offset, packet, parent)
  local length = cme_globex_mdp3_sbe_v1_5.year.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.year, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cme Globex Mdp3 Sbe 1.5
-----------------------------------------------------------------------

-- Request Reject
cme_globex_mdp3_sbe_v1_5.request_reject = {}

-- Size: Request Reject
cme_globex_mdp3_sbe_v1_5.request_reject.size =
  cme_globex_mdp3_sbe_v1_5.md_req_id_optional.size + 
  cme_globex_mdp3_sbe_v1_5.md_req_rej_reason.size + 
  cme_globex_mdp3_sbe_v1_5.text.size

-- Display: Request Reject
cme_globex_mdp3_sbe_v1_5.request_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Reject
cme_globex_mdp3_sbe_v1_5.request_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Req Id Optional: uInt32NULL
  index, md_req_id_optional = cme_globex_mdp3_sbe_v1_5.md_req_id_optional.dissect(buffer, index, packet, parent)

  -- Md Req Rej Reason: MDReqRejReason
  index, md_req_rej_reason = cme_globex_mdp3_sbe_v1_5.md_req_rej_reason.dissect(buffer, index, packet, parent)

  -- Text: String100
  index, text = cme_globex_mdp3_sbe_v1_5.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Reject
cme_globex_mdp3_sbe_v1_5.request_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.request_reject, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.request_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.request_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.request_reject.fields(buffer, offset, packet, parent)
  end
end

-- Request Ack Related Symbol Group
cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_group = {}

-- Size: Request Ack Related Symbol Group
cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_group.size =
  cme_globex_mdp3_sbe_v1_5.security_id.size

-- Display: Request Ack Related Symbol Group
cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Ack Related Symbol Group
cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_group.fields = function(buffer, offset, packet, parent, request_ack_related_symbol_group_index)
  local index = offset

  -- Implicit Request Ack Related Symbol Group Index
  if request_ack_related_symbol_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_related_symbol_group_index, request_ack_related_symbol_group_index)
    iteration:set_generated()
  end

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Ack Related Symbol Group
cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_group.dissect = function(buffer, offset, packet, parent, request_ack_related_symbol_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_related_symbol_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_group.fields(buffer, offset, packet, parent, request_ack_related_symbol_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_group.fields(buffer, offset, packet, parent, request_ack_related_symbol_group_index)
  end
end

-- Group Size
cme_globex_mdp3_sbe_v1_5.group_size = {}

-- Size: Group Size
cme_globex_mdp3_sbe_v1_5.group_size.size =
  cme_globex_mdp3_sbe_v1_5.block_length.size + 
  cme_globex_mdp3_sbe_v1_5.num_in_group.size

-- Display: Group Size
cme_globex_mdp3_sbe_v1_5.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_globex_mdp3_sbe_v1_5.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = cme_globex_mdp3_sbe_v1_5.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = cme_globex_mdp3_sbe_v1_5.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_globex_mdp3_sbe_v1_5.group_size.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.group_size, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.group_size.fields(buffer, offset, packet, parent)
  end
end

-- Request Ack Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_groups = {}

-- Calculate size of: Request Ack Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local request_ack_related_symbol_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + request_ack_related_symbol_group_count * 4

  return index
end

-- Display: Request Ack Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Ack Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Request Ack Related Symbol Group
  for request_ack_related_symbol_group_index = 1, num_in_group do
    index, request_ack_related_symbol_group = cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_group.dissect(buffer, index, packet, parent, request_ack_related_symbol_group_index)
  end

  return index
end

-- Dissect: Request Ack Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_related_symbol_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_groups.fields(buffer, offset, packet, parent)
  end
end

-- Request Ack Security Group
cme_globex_mdp3_sbe_v1_5.request_ack_security_group = {}

-- Size: Request Ack Security Group
cme_globex_mdp3_sbe_v1_5.request_ack_security_group.size =
  cme_globex_mdp3_sbe_v1_5.security_group.size

-- Display: Request Ack Security Group
cme_globex_mdp3_sbe_v1_5.request_ack_security_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Ack Security Group
cme_globex_mdp3_sbe_v1_5.request_ack_security_group.fields = function(buffer, offset, packet, parent, request_ack_security_group_index)
  local index = offset

  -- Implicit Request Ack Security Group Index
  if request_ack_security_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_security_group_index, request_ack_security_group_index)
    iteration:set_generated()
  end

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_mdp3_sbe_v1_5.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Ack Security Group
cme_globex_mdp3_sbe_v1_5.request_ack_security_group.dissect = function(buffer, offset, packet, parent, request_ack_security_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_security_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.request_ack_security_group.fields(buffer, offset, packet, parent, request_ack_security_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.request_ack_security_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.request_ack_security_group.fields(buffer, offset, packet, parent, request_ack_security_group_index)
  end
end

-- Request Ack Security Groups
cme_globex_mdp3_sbe_v1_5.request_ack_security_groups = {}

-- Calculate size of: Request Ack Security Groups
cme_globex_mdp3_sbe_v1_5.request_ack_security_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local request_ack_security_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + request_ack_security_group_count * 6

  return index
end

-- Display: Request Ack Security Groups
cme_globex_mdp3_sbe_v1_5.request_ack_security_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Ack Security Groups
cme_globex_mdp3_sbe_v1_5.request_ack_security_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Request Ack Security Group
  for request_ack_security_group_index = 1, num_in_group do
    index, request_ack_security_group = cme_globex_mdp3_sbe_v1_5.request_ack_security_group.dissect(buffer, index, packet, parent, request_ack_security_group_index)
  end

  return index
end

-- Dissect: Request Ack Security Groups
cme_globex_mdp3_sbe_v1_5.request_ack_security_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack_security_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.request_ack_security_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.request_ack_security_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.request_ack_security_groups.fields(buffer, offset, packet, parent)
  end
end

-- Request Ack
cme_globex_mdp3_sbe_v1_5.request_ack = {}

-- Calculate size of: Request Ack
cme_globex_mdp3_sbe_v1_5.request_ack.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.md_req_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.subscription_req_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.md_req_id_status.size

  index = index + cme_globex_mdp3_sbe_v1_5.request_ack_security_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_groups.size(buffer, offset + index)

  return index
end

-- Display: Request Ack
cme_globex_mdp3_sbe_v1_5.request_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Ack
cme_globex_mdp3_sbe_v1_5.request_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Req Id: uInt32
  index, md_req_id = cme_globex_mdp3_sbe_v1_5.md_req_id.dissect(buffer, index, packet, parent)

  -- Subscription Req Type: SubscriptionReqType
  index, subscription_req_type = cme_globex_mdp3_sbe_v1_5.subscription_req_type.dissect(buffer, index, packet, parent)

  -- Md Req Id Status: RequestIDStatus
  index, md_req_id_status = cme_globex_mdp3_sbe_v1_5.md_req_id_status.dissect(buffer, index, packet, parent)

  -- Request Ack Security Groups: Struct of 2 fields
  index, request_ack_security_groups = cme_globex_mdp3_sbe_v1_5.request_ack_security_groups.dissect(buffer, index, packet, parent)

  -- Request Ack Related Symbol Groups: Struct of 2 fields
  index, request_ack_related_symbol_groups = cme_globex_mdp3_sbe_v1_5.request_ack_related_symbol_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Ack
cme_globex_mdp3_sbe_v1_5.request_ack.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.request_ack, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.request_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.request_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.request_ack.fields(buffer, offset, packet, parent)
  end
end

-- Terminate
cme_globex_mdp3_sbe_v1_5.terminate = {}

-- Size: Terminate
cme_globex_mdp3_sbe_v1_5.terminate.size =
  cme_globex_mdp3_sbe_v1_5.reason.size + 
  cme_globex_mdp3_sbe_v1_5.uuid.size + 
  cme_globex_mdp3_sbe_v1_5.request_timestamp.size + 
  cme_globex_mdp3_sbe_v1_5.error_codes.size + 
  cme_globex_mdp3_sbe_v1_5.padding_5.size

-- Display: Terminate
cme_globex_mdp3_sbe_v1_5.terminate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Terminate
cme_globex_mdp3_sbe_v1_5.terminate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: String48
  index, reason = cme_globex_mdp3_sbe_v1_5.reason.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_globex_mdp3_sbe_v1_5.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_globex_mdp3_sbe_v1_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Error Codes: ErrorCodes
  index, error_codes = cme_globex_mdp3_sbe_v1_5.error_codes.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_globex_mdp3_sbe_v1_5.padding_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate
cme_globex_mdp3_sbe_v1_5.terminate.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.terminate, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.terminate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.terminate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.terminate.fields(buffer, offset, packet, parent)
  end
end

-- Negotiation Response
cme_globex_mdp3_sbe_v1_5.negotiation_response = {}

-- Size: Negotiation Response
cme_globex_mdp3_sbe_v1_5.negotiation_response.size =
  cme_globex_mdp3_sbe_v1_5.uuid.size + 
  cme_globex_mdp3_sbe_v1_5.request_timestamp.size + 
  cme_globex_mdp3_sbe_v1_5.secret_key_secure_id_expiration.size + 
  cme_globex_mdp3_sbe_v1_5.padding_4.size

-- Display: Negotiation Response
cme_globex_mdp3_sbe_v1_5.negotiation_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiation Response
cme_globex_mdp3_sbe_v1_5.negotiation_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: uInt64
  index, uuid = cme_globex_mdp3_sbe_v1_5.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_globex_mdp3_sbe_v1_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Secret Key Secure Id Expiration: uInt16NULL
  index, secret_key_secure_id_expiration = cme_globex_mdp3_sbe_v1_5.secret_key_secure_id_expiration.dissect(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index, padding_4 = cme_globex_mdp3_sbe_v1_5.padding_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Response
cme_globex_mdp3_sbe_v1_5.negotiation_response.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.negotiation_response, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.negotiation_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.negotiation_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.negotiation_response.fields(buffer, offset, packet, parent)
  end
end

-- Negotiation Reject
cme_globex_mdp3_sbe_v1_5.negotiation_reject = {}

-- Size: Negotiation Reject
cme_globex_mdp3_sbe_v1_5.negotiation_reject.size =
  cme_globex_mdp3_sbe_v1_5.reason.size + 
  cme_globex_mdp3_sbe_v1_5.uuid.size + 
  cme_globex_mdp3_sbe_v1_5.request_timestamp.size + 
  cme_globex_mdp3_sbe_v1_5.error_codes.size + 
  cme_globex_mdp3_sbe_v1_5.padding_5.size

-- Display: Negotiation Reject
cme_globex_mdp3_sbe_v1_5.negotiation_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiation Reject
cme_globex_mdp3_sbe_v1_5.negotiation_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: String48
  index, reason = cme_globex_mdp3_sbe_v1_5.reason.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_globex_mdp3_sbe_v1_5.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_globex_mdp3_sbe_v1_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Error Codes: ErrorCodes
  index, error_codes = cme_globex_mdp3_sbe_v1_5.error_codes.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_globex_mdp3_sbe_v1_5.padding_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Reject
cme_globex_mdp3_sbe_v1_5.negotiation_reject.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.negotiation_reject, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.negotiation_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.negotiation_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.negotiation_reject.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Trade Summary Order Id Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_group = {}

-- Size: Incremental Refresh Trade Summary Order Id Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_group.size =
  cme_globex_mdp3_sbe_v1_5.order_id.size + 
  cme_globex_mdp3_sbe_v1_5.last_qty.size + 
  cme_globex_mdp3_sbe_v1_5.padding_4.size

-- Display: Incremental Refresh Trade Summary Order Id Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Trade Summary Order Id Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_group.fields = function(buffer, offset, packet, parent, incremental_refresh_trade_summary_order_id_group_index)
  local index = offset

  -- Implicit Incremental Refresh Trade Summary Order Id Group Index
  if incremental_refresh_trade_summary_order_id_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_order_id_group_index, incremental_refresh_trade_summary_order_id_group_index)
    iteration:set_generated()
  end

  -- Order Id: uInt64
  index, order_id = cme_globex_mdp3_sbe_v1_5.order_id.dissect(buffer, index, packet, parent)

  -- Last Qty: Int32
  index, last_qty = cme_globex_mdp3_sbe_v1_5.last_qty.dissect(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index, padding_4 = cme_globex_mdp3_sbe_v1_5.padding_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Trade Summary Order Id Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_trade_summary_order_id_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_order_id_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_group.fields(buffer, offset, packet, parent, incremental_refresh_trade_summary_order_id_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_group.fields(buffer, offset, packet, parent, incremental_refresh_trade_summary_order_id_group_index)
  end
end

-- Group Size 8 Byte
cme_globex_mdp3_sbe_v1_5.group_size_8_byte = {}

-- Size: Group Size 8 Byte
cme_globex_mdp3_sbe_v1_5.group_size_8_byte.size =
  cme_globex_mdp3_sbe_v1_5.block_length.size + 
  cme_globex_mdp3_sbe_v1_5.padding_5.size + 
  cme_globex_mdp3_sbe_v1_5.num_in_group.size

-- Display: Group Size 8 Byte
cme_globex_mdp3_sbe_v1_5.group_size_8_byte.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size 8 Byte
cme_globex_mdp3_sbe_v1_5.group_size_8_byte.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = cme_globex_mdp3_sbe_v1_5.block_length.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_globex_mdp3_sbe_v1_5.padding_5.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = cme_globex_mdp3_sbe_v1_5.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size 8 Byte
cme_globex_mdp3_sbe_v1_5.group_size_8_byte.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.group_size_8_byte, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.group_size_8_byte.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.group_size_8_byte.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.group_size_8_byte.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Trade Summary Order Id Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_groups = {}

-- Calculate size of: Incremental Refresh Trade Summary Order Id Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size_8_byte.size

  -- Calculate field size from count
  local incremental_refresh_trade_summary_order_id_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + incremental_refresh_trade_summary_order_id_group_count * 16

  return index
end

-- Display: Incremental Refresh Trade Summary Order Id Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Trade Summary Order Id Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_globex_mdp3_sbe_v1_5.group_size_8_byte.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Incremental Refresh Trade Summary Order Id Group
  for incremental_refresh_trade_summary_order_id_group_index = 1, num_in_group do
    index, incremental_refresh_trade_summary_order_id_group = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_group.dissect(buffer, index, packet, parent, incremental_refresh_trade_summary_order_id_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Trade Summary Order Id Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_order_id_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_groups.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Trade Summary Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_group = {}

-- Size: Incremental Refresh Trade Summary Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_group.size =
  cme_globex_mdp3_sbe_v1_5.md_entry_px.size + 
  cme_globex_mdp3_sbe_v1_5.md_entry_size.size + 
  cme_globex_mdp3_sbe_v1_5.security_id.size + 
  cme_globex_mdp3_sbe_v1_5.rpt_seq.size + 
  cme_globex_mdp3_sbe_v1_5.number_of_orders.size + 
  cme_globex_mdp3_sbe_v1_5.aggressor_side.size + 
  cme_globex_mdp3_sbe_v1_5.md_update_action.size + 
  cme_globex_mdp3_sbe_v1_5.padding_6.size

-- Display: Incremental Refresh Trade Summary Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Trade Summary Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_group.fields = function(buffer, offset, packet, parent, incremental_refresh_trade_summary_group_index)
  local index = offset

  -- Implicit Incremental Refresh Trade Summary Group Index
  if incremental_refresh_trade_summary_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_group_index, incremental_refresh_trade_summary_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: PRICE
  index, md_entry_px = cme_globex_mdp3_sbe_v1_5.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: Int32
  index, md_entry_size = cme_globex_mdp3_sbe_v1_5.md_entry_size.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uInt32
  index, rpt_seq = cme_globex_mdp3_sbe_v1_5.rpt_seq.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Int32NULL
  index, number_of_orders = cme_globex_mdp3_sbe_v1_5.number_of_orders.dissect(buffer, index, packet, parent)

  -- Aggressor Side: AggressorSide
  index, aggressor_side = cme_globex_mdp3_sbe_v1_5.aggressor_side.dissect(buffer, index, packet, parent)

  -- Md Update Action: MDUpdateAction
  index, md_update_action = cme_globex_mdp3_sbe_v1_5.md_update_action.dissect(buffer, index, packet, parent)

  -- Padding 6: 6 Byte
  index, padding_6 = cme_globex_mdp3_sbe_v1_5.padding_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Trade Summary Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_trade_summary_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_group.fields(buffer, offset, packet, parent, incremental_refresh_trade_summary_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_group.fields(buffer, offset, packet, parent, incremental_refresh_trade_summary_group_index)
  end
end

-- Incremental Refresh Trade Summary Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_groups = {}

-- Calculate size of: Incremental Refresh Trade Summary Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local incremental_refresh_trade_summary_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + incremental_refresh_trade_summary_group_count * 32

  return index
end

-- Display: Incremental Refresh Trade Summary Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Trade Summary Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Incremental Refresh Trade Summary Group
  for incremental_refresh_trade_summary_group_index = 1, num_in_group do
    index, incremental_refresh_trade_summary_group = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_group.dissect(buffer, index, packet, parent, incremental_refresh_trade_summary_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Trade Summary Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_summary_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_groups.fields(buffer, offset, packet, parent)
  end
end

-- Match Event Indicator
cme_globex_mdp3_sbe_v1_5.match_event_indicator = {}

-- Size: Match Event Indicator
cme_globex_mdp3_sbe_v1_5.match_event_indicator.size = 1

-- Display: Match Event Indicator
cme_globex_mdp3_sbe_v1_5.match_event_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Last Trade Msg flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Last Trade Msg"
  end
  -- Is Last Volume Msg flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Last Volume Msg"
  end
  -- Is Last Quote Msg flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Last Quote Msg"
  end
  -- Is Last Stats Msg flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Last Stats Msg"
  end
  -- Is Last Implied Msg flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Last Implied Msg"
  end
  -- Is Recovery Msg flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Recovery Msg"
  end
  -- Is Reserved flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Reserved"
  end
  -- Is End Of Event flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "End Of Event"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Match Event Indicator
cme_globex_mdp3_sbe_v1_5.match_event_indicator.bits = function(range, value, packet, parent)

  -- Last Trade Msg: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.last_trade_msg, range, value)

  -- Last Volume Msg: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.last_volume_msg, range, value)

  -- Last Quote Msg: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.last_quote_msg, range, value)

  -- Last Stats Msg: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.last_stats_msg, range, value)

  -- Last Implied Msg: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.last_implied_msg, range, value)

  -- Recovery Msg: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.recovery_msg, range, value)

  -- Reserved: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.reserved, range, value)

  -- End Of Event: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.end_of_event, range, value)
end

-- Dissect: Match Event Indicator
cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect = function(buffer, offset, packet, parent)
  local size = cme_globex_mdp3_sbe_v1_5.match_event_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.match_event_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.match_event_indicator, range, display)

  if show.structs then
    cme_globex_mdp3_sbe_v1_5.match_event_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Md Incremental Refresh Trade Summary
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade_summary = {}

-- Calculate size of: Md Incremental Refresh Trade Summary
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade_summary.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.transact_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.padding_2.size

  index = index + cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Summary
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Summary
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade_summary.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uInt64
  index, transact_time = cme_globex_mdp3_sbe_v1_5.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_globex_mdp3_sbe_v1_5.padding_2.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Trade Summary Groups: Struct of 2 fields
  index, incremental_refresh_trade_summary_groups = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_groups.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Trade Summary Order Id Groups: Struct of 2 fields
  index, incremental_refresh_trade_summary_order_id_groups = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_summary_order_id_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Summary
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade_summary.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_trade_summary, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade_summary.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade_summary.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade_summary.fields(buffer, offset, packet, parent)
  end
end

-- Option Underlyings Group
cme_globex_mdp3_sbe_v1_5.option_underlyings_group = {}

-- Size: Option Underlyings Group
cme_globex_mdp3_sbe_v1_5.option_underlyings_group.size =
  cme_globex_mdp3_sbe_v1_5.underlying_security_id.size + 
  cme_globex_mdp3_sbe_v1_5.underlying_symbol.size

-- Display: Option Underlyings Group
cme_globex_mdp3_sbe_v1_5.option_underlyings_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Underlyings Group
cme_globex_mdp3_sbe_v1_5.option_underlyings_group.fields = function(buffer, offset, packet, parent, option_underlyings_group_index)
  local index = offset

  -- Implicit Option Underlyings Group Index
  if option_underlyings_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.option_underlyings_group_index, option_underlyings_group_index)
    iteration:set_generated()
  end

  -- Underlying Security Id: Int32
  index, underlying_security_id = cme_globex_mdp3_sbe_v1_5.underlying_security_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: UnderlyingSymbol
  index, underlying_symbol = cme_globex_mdp3_sbe_v1_5.underlying_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Underlyings Group
cme_globex_mdp3_sbe_v1_5.option_underlyings_group.dissect = function(buffer, offset, packet, parent, option_underlyings_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.option_underlyings_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.option_underlyings_group.fields(buffer, offset, packet, parent, option_underlyings_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.option_underlyings_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.option_underlyings_group.fields(buffer, offset, packet, parent, option_underlyings_group_index)
  end
end

-- Option Underlyings Groups
cme_globex_mdp3_sbe_v1_5.option_underlyings_groups = {}

-- Calculate size of: Option Underlyings Groups
cme_globex_mdp3_sbe_v1_5.option_underlyings_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local option_underlyings_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + option_underlyings_group_count * 24

  return index
end

-- Display: Option Underlyings Groups
cme_globex_mdp3_sbe_v1_5.option_underlyings_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Underlyings Groups
cme_globex_mdp3_sbe_v1_5.option_underlyings_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Option Underlyings Group
  for option_underlyings_group_index = 1, num_in_group do
    index, option_underlyings_group = cme_globex_mdp3_sbe_v1_5.option_underlyings_group.dissect(buffer, index, packet, parent, option_underlyings_group_index)
  end

  return index
end

-- Dissect: Option Underlyings Groups
cme_globex_mdp3_sbe_v1_5.option_underlyings_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.option_underlyings_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.option_underlyings_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.option_underlyings_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.option_underlyings_groups.fields(buffer, offset, packet, parent)
  end
end

-- Lot Type Rules Group
cme_globex_mdp3_sbe_v1_5.lot_type_rules_group = {}

-- Size: Lot Type Rules Group
cme_globex_mdp3_sbe_v1_5.lot_type_rules_group.size =
  cme_globex_mdp3_sbe_v1_5.lot_type.size + 
  cme_globex_mdp3_sbe_v1_5.min_lot_size.size

-- Display: Lot Type Rules Group
cme_globex_mdp3_sbe_v1_5.lot_type_rules_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lot Type Rules Group
cme_globex_mdp3_sbe_v1_5.lot_type_rules_group.fields = function(buffer, offset, packet, parent, lot_type_rules_group_index)
  local index = offset

  -- Implicit Lot Type Rules Group Index
  if lot_type_rules_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.lot_type_rules_group_index, lot_type_rules_group_index)
    iteration:set_generated()
  end

  -- Lot Type: Int8
  index, lot_type = cme_globex_mdp3_sbe_v1_5.lot_type.dissect(buffer, index, packet, parent)

  -- Min Lot Size: DecimalQty
  index, min_lot_size = cme_globex_mdp3_sbe_v1_5.min_lot_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Lot Type Rules Group
cme_globex_mdp3_sbe_v1_5.lot_type_rules_group.dissect = function(buffer, offset, packet, parent, lot_type_rules_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.lot_type_rules_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.lot_type_rules_group.fields(buffer, offset, packet, parent, lot_type_rules_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.lot_type_rules_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.lot_type_rules_group.fields(buffer, offset, packet, parent, lot_type_rules_group_index)
  end
end

-- Lot Type Rules Groups
cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups = {}

-- Calculate size of: Lot Type Rules Groups
cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local lot_type_rules_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + lot_type_rules_group_count * 5

  return index
end

-- Display: Lot Type Rules Groups
cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lot Type Rules Groups
cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Lot Type Rules Group
  for lot_type_rules_group_index = 1, num_in_group do
    index, lot_type_rules_group = cme_globex_mdp3_sbe_v1_5.lot_type_rules_group.dissect(buffer, index, packet, parent, lot_type_rules_group_index)
  end

  return index
end

-- Dissect: Lot Type Rules Groups
cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.lot_type_rules_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.fields(buffer, offset, packet, parent)
  end
end

-- Inst Attrib Value
cme_globex_mdp3_sbe_v1_5.inst_attrib_value = {}

-- Size: Inst Attrib Value
cme_globex_mdp3_sbe_v1_5.inst_attrib_value.size = 4

-- Display: Inst Attrib Value
cme_globex_mdp3_sbe_v1_5.inst_attrib_value.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Electronic Match Eligible flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    flags[#flags + 1] = "Electronic Match Eligible"
  end
  -- Is Order Cross Eligible flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    flags[#flags + 1] = "Order Cross Eligible"
  end
  -- Is Block Trade Eligible flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    flags[#flags + 1] = "Block Trade Eligible"
  end
  -- Is Efp Eligible flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    flags[#flags + 1] = "Efp Eligible"
  end
  -- Is Ebf Eligible flag set?
  if bit.band(value, 0x00000010) ~= 0 then
    flags[#flags + 1] = "Ebf Eligible"
  end
  -- Is Efs Eligible flag set?
  if bit.band(value, 0x00000020) ~= 0 then
    flags[#flags + 1] = "Efs Eligible"
  end
  -- Is Efr Eligible flag set?
  if bit.band(value, 0x00000040) ~= 0 then
    flags[#flags + 1] = "Efr Eligible"
  end
  -- Is Otc Eligible flag set?
  if bit.band(value, 0x00000080) ~= 0 then
    flags[#flags + 1] = "Otc Eligible"
  end
  -- Is ILink Indicative Mass Quoting Eligible flag set?
  if bit.band(value, 0x00000100) ~= 0 then
    flags[#flags + 1] = "ILink Indicative Mass Quoting Eligible"
  end
  -- Is Negative Strike Eligible flag set?
  if bit.band(value, 0x00000200) ~= 0 then
    flags[#flags + 1] = "Negative Strike Eligible"
  end
  -- Is Negative Price Outright Eligible flag set?
  if bit.band(value, 0x00000400) ~= 0 then
    flags[#flags + 1] = "Negative Price Outright Eligible"
  end
  -- Is Is Fractional flag set?
  if bit.band(value, 0x00000800) ~= 0 then
    flags[#flags + 1] = "Is Fractional"
  end
  -- Is Volatility Quoted Option flag set?
  if bit.band(value, 0x00001000) ~= 0 then
    flags[#flags + 1] = "Volatility Quoted Option"
  end
  -- Is Rfq Cross Eligible flag set?
  if bit.band(value, 0x00002000) ~= 0 then
    flags[#flags + 1] = "Rfq Cross Eligible"
  end
  -- Is Zero Price Outright Eligible flag set?
  if bit.band(value, 0x00004000) ~= 0 then
    flags[#flags + 1] = "Zero Price Outright Eligible"
  end
  -- Is Decaying Product Eligibility flag set?
  if bit.band(value, 0x00008000) ~= 0 then
    flags[#flags + 1] = "Decaying Product Eligibility"
  end
  -- Is Variable Product Eligibility flag set?
  if bit.band(value, 0x00010000) ~= 0 then
    flags[#flags + 1] = "Variable Product Eligibility"
  end
  -- Is Daily Product Eligibility flag set?
  if bit.band(value, 0x00020000) ~= 0 then
    flags[#flags + 1] = "Daily Product Eligibility"
  end
  -- Is Gt Orders Eligibility flag set?
  if bit.band(value, 0x00040000) ~= 0 then
    flags[#flags + 1] = "Gt Orders Eligibility"
  end
  -- Is Implied Matching Eligibility flag set?
  if bit.band(value, 0x00080000) ~= 0 then
    flags[#flags + 1] = "Implied Matching Eligibility"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Inst Attrib Value
cme_globex_mdp3_sbe_v1_5.inst_attrib_value.bits = function(range, value, packet, parent)

  -- Electronic Match Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.electronic_match_eligible, range, value)

  -- Order Cross Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.order_cross_eligible, range, value)

  -- Block Trade Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.block_trade_eligible, range, value)

  -- Efp Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.efp_eligible, range, value)

  -- Ebf Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.ebf_eligible, range, value)

  -- Efs Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.efs_eligible, range, value)

  -- Efr Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.efr_eligible, range, value)

  -- Otc Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.otc_eligible, range, value)

  -- ILink Indicative Mass Quoting Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.ilink_indicative_mass_quoting_eligible, range, value)

  -- Negative Strike Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.negative_strike_eligible, range, value)

  -- Negative Price Outright Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.negative_price_outright_eligible, range, value)

  -- Is Fractional: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.is_fractional, range, value)

  -- Volatility Quoted Option: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.volatility_quoted_option, range, value)

  -- Rfq Cross Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.rfq_cross_eligible, range, value)

  -- Zero Price Outright Eligible: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.zero_price_outright_eligible, range, value)

  -- Decaying Product Eligibility: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.decaying_product_eligibility, range, value)

  -- Variable Product Eligibility: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.variable_product_eligibility, range, value)

  -- Daily Product Eligibility: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.daily_product_eligibility, range, value)

  -- Gt Orders Eligibility: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.gt_orders_eligibility, range, value)

  -- Implied Matching Eligibility: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.implied_matching_eligibility, range, value)

  -- Reserved 12: 12 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.reserved_12, range, value)
end

-- Dissect: Inst Attrib Value
cme_globex_mdp3_sbe_v1_5.inst_attrib_value.dissect = function(buffer, offset, packet, parent)
  local size = cme_globex_mdp3_sbe_v1_5.inst_attrib_value.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.inst_attrib_value.display(range, value, packet, parent)
  local element = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.inst_attrib_value, range, display)

  if show.structs then
    cme_globex_mdp3_sbe_v1_5.inst_attrib_value.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Inst Attrib Group
cme_globex_mdp3_sbe_v1_5.inst_attrib_group = {}

-- Size: Inst Attrib Group
cme_globex_mdp3_sbe_v1_5.inst_attrib_group.size =
  cme_globex_mdp3_sbe_v1_5.inst_attrib_value.size

-- Display: Inst Attrib Group
cme_globex_mdp3_sbe_v1_5.inst_attrib_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inst Attrib Group
cme_globex_mdp3_sbe_v1_5.inst_attrib_group.fields = function(buffer, offset, packet, parent, inst_attrib_group_index)
  local index = offset

  -- Implicit Inst Attrib Group Index
  if inst_attrib_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.inst_attrib_group_index, inst_attrib_group_index)
    iteration:set_generated()
  end

  -- Inst Attrib Value: Struct of 21 fields
  index, inst_attrib_value = cme_globex_mdp3_sbe_v1_5.inst_attrib_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inst Attrib Group
cme_globex_mdp3_sbe_v1_5.inst_attrib_group.dissect = function(buffer, offset, packet, parent, inst_attrib_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.inst_attrib_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.inst_attrib_group.fields(buffer, offset, packet, parent, inst_attrib_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.inst_attrib_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.inst_attrib_group.fields(buffer, offset, packet, parent, inst_attrib_group_index)
  end
end

-- Inst Attrib Groups
cme_globex_mdp3_sbe_v1_5.inst_attrib_groups = {}

-- Calculate size of: Inst Attrib Groups
cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local inst_attrib_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + inst_attrib_group_count * 4

  return index
end

-- Display: Inst Attrib Groups
cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inst Attrib Groups
cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Inst Attrib Group
  for inst_attrib_group_index = 1, num_in_group do
    index, inst_attrib_group = cme_globex_mdp3_sbe_v1_5.inst_attrib_group.dissect(buffer, index, packet, parent, inst_attrib_group_index)
  end

  return index
end

-- Dissect: Inst Attrib Groups
cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.inst_attrib_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.fields(buffer, offset, packet, parent)
  end
end

-- Feed Types Group
cme_globex_mdp3_sbe_v1_5.feed_types_group = {}

-- Size: Feed Types Group
cme_globex_mdp3_sbe_v1_5.feed_types_group.size =
  cme_globex_mdp3_sbe_v1_5.md_feed_type.size + 
  cme_globex_mdp3_sbe_v1_5.market_depth.size

-- Display: Feed Types Group
cme_globex_mdp3_sbe_v1_5.feed_types_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Feed Types Group
cme_globex_mdp3_sbe_v1_5.feed_types_group.fields = function(buffer, offset, packet, parent, feed_types_group_index)
  local index = offset

  -- Implicit Feed Types Group Index
  if feed_types_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.feed_types_group_index, feed_types_group_index)
    iteration:set_generated()
  end

  -- Md Feed Type: MDFeedType
  index, md_feed_type = cme_globex_mdp3_sbe_v1_5.md_feed_type.dissect(buffer, index, packet, parent)

  -- Market Depth: Int8
  index, market_depth = cme_globex_mdp3_sbe_v1_5.market_depth.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Feed Types Group
cme_globex_mdp3_sbe_v1_5.feed_types_group.dissect = function(buffer, offset, packet, parent, feed_types_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.feed_types_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.feed_types_group.fields(buffer, offset, packet, parent, feed_types_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.feed_types_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.feed_types_group.fields(buffer, offset, packet, parent, feed_types_group_index)
  end
end

-- Feed Types Groups
cme_globex_mdp3_sbe_v1_5.feed_types_groups = {}

-- Calculate size of: Feed Types Groups
cme_globex_mdp3_sbe_v1_5.feed_types_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local feed_types_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + feed_types_group_count * 4

  return index
end

-- Display: Feed Types Groups
cme_globex_mdp3_sbe_v1_5.feed_types_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Feed Types Groups
cme_globex_mdp3_sbe_v1_5.feed_types_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Feed Types Group
  for feed_types_group_index = 1, num_in_group do
    index, feed_types_group = cme_globex_mdp3_sbe_v1_5.feed_types_group.dissect(buffer, index, packet, parent, feed_types_group_index)
  end

  return index
end

-- Dissect: Feed Types Groups
cme_globex_mdp3_sbe_v1_5.feed_types_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.feed_types_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.feed_types_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.feed_types_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.feed_types_groups.fields(buffer, offset, packet, parent)
  end
end

-- Events Group
cme_globex_mdp3_sbe_v1_5.events_group = {}

-- Size: Events Group
cme_globex_mdp3_sbe_v1_5.events_group.size =
  cme_globex_mdp3_sbe_v1_5.event_type.size + 
  cme_globex_mdp3_sbe_v1_5.event_time.size

-- Display: Events Group
cme_globex_mdp3_sbe_v1_5.events_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events Group
cme_globex_mdp3_sbe_v1_5.events_group.fields = function(buffer, offset, packet, parent, events_group_index)
  local index = offset

  -- Implicit Events Group Index
  if events_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.events_group_index, events_group_index)
    iteration:set_generated()
  end

  -- Event Type: EventType
  index, event_type = cme_globex_mdp3_sbe_v1_5.event_type.dissect(buffer, index, packet, parent)

  -- Event Time: uInt64
  index, event_time = cme_globex_mdp3_sbe_v1_5.event_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Events Group
cme_globex_mdp3_sbe_v1_5.events_group.dissect = function(buffer, offset, packet, parent, events_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.events_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.events_group.fields(buffer, offset, packet, parent, events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.events_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.events_group.fields(buffer, offset, packet, parent, events_group_index)
  end
end

-- Events Groups
cme_globex_mdp3_sbe_v1_5.events_groups = {}

-- Calculate size of: Events Groups
cme_globex_mdp3_sbe_v1_5.events_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local events_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + events_group_count * 9

  return index
end

-- Display: Events Groups
cme_globex_mdp3_sbe_v1_5.events_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events Groups
cme_globex_mdp3_sbe_v1_5.events_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Events Group
  for events_group_index = 1, num_in_group do
    index, events_group = cme_globex_mdp3_sbe_v1_5.events_group.dissect(buffer, index, packet, parent, events_group_index)
  end

  return index
end

-- Dissect: Events Groups
cme_globex_mdp3_sbe_v1_5.events_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.events_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.events_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.events_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.events_groups.fields(buffer, offset, packet, parent)
  end
end

-- Settl Price Type
cme_globex_mdp3_sbe_v1_5.settl_price_type = {}

-- Size: Settl Price Type
cme_globex_mdp3_sbe_v1_5.settl_price_type.size = 1

-- Display: Settl Price Type
cme_globex_mdp3_sbe_v1_5.settl_price_type.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Final flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Final"
  end
  -- Is Actual flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Actual"
  end
  -- Is Rounded flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Rounded"
  end
  -- Is Intraday flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Intraday"
  end
  -- Is Reserved Bits flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Reserved Bits"
  end
  -- Is Unused Settl Price Type 5 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Unused Settl Price Type 5"
  end
  -- Is Unused Settl Price Type 6 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Unused Settl Price Type 6"
  end
  -- Is Null Value flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Null Value"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Settl Price Type
cme_globex_mdp3_sbe_v1_5.settl_price_type.bits = function(range, value, packet, parent)

  -- Final: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.final, range, value)

  -- Actual: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.actual, range, value)

  -- Rounded: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.rounded, range, value)

  -- Intraday: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.intraday, range, value)

  -- Reserved Bits: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.reserved_bits, range, value)

  -- Unused Settl Price Type 5: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.unused_settl_price_type_5, range, value)

  -- Unused Settl Price Type 6: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.unused_settl_price_type_6, range, value)

  -- Null Value: 1 Bit
  parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.null_value, range, value)
end

-- Dissect: Settl Price Type
cme_globex_mdp3_sbe_v1_5.settl_price_type.dissect = function(buffer, offset, packet, parent)
  local size = cme_globex_mdp3_sbe_v1_5.settl_price_type.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cme_globex_mdp3_sbe_v1_5.settl_price_type.display(range, value, packet, parent)
  local element = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.settl_price_type, range, display)

  if show.structs then
    cme_globex_mdp3_sbe_v1_5.settl_price_type.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Maturity Month Year
cme_globex_mdp3_sbe_v1_5.maturity_month_year = {}

-- Size: Maturity Month Year
cme_globex_mdp3_sbe_v1_5.maturity_month_year.size =
  cme_globex_mdp3_sbe_v1_5.year.size + 
  cme_globex_mdp3_sbe_v1_5.month.size + 
  cme_globex_mdp3_sbe_v1_5.day.size + 
  cme_globex_mdp3_sbe_v1_5.week.size

-- Display: Maturity Month Year
cme_globex_mdp3_sbe_v1_5.maturity_month_year.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maturity Month Year
cme_globex_mdp3_sbe_v1_5.maturity_month_year.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: uint16
  index, year = cme_globex_mdp3_sbe_v1_5.year.dissect(buffer, index, packet, parent)

  -- Month: uint8
  index, month = cme_globex_mdp3_sbe_v1_5.month.dissect(buffer, index, packet, parent)

  -- Day: uint8
  index, day = cme_globex_mdp3_sbe_v1_5.day.dissect(buffer, index, packet, parent)

  -- Week: uint8
  index, week = cme_globex_mdp3_sbe_v1_5.week.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
cme_globex_mdp3_sbe_v1_5.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.maturity_month_year, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.maturity_month_year.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.maturity_month_year.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.maturity_month_year.fields(buffer, offset, packet, parent)
  end
end

-- Md Instrument Definition Option
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_option = {}

-- Calculate size of: Md Instrument Definition Option
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_option.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_update_action.size

  index = index + cme_globex_mdp3_sbe_v1_5.last_update_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.md_security_trading_status.size

  index = index + cme_globex_mdp3_sbe_v1_5.appl_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.market_segment_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.underlying_product.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_exchange.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_group.size

  index = index + cme_globex_mdp3_sbe_v1_5.asset.size

  index = index + cme_globex_mdp3_sbe_v1_5.symbol.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.cfi_code.size

  index = index + cme_globex_mdp3_sbe_v1_5.put_or_call.size

  index = index + cme_globex_mdp3_sbe_v1_5.maturity_month_year.size

  index = index + cme_globex_mdp3_sbe_v1_5.currency.size

  index = index + cme_globex_mdp3_sbe_v1_5.strike_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.strike_currency.size

  index = index + cme_globex_mdp3_sbe_v1_5.settl_currency.size

  index = index + cme_globex_mdp3_sbe_v1_5.min_cab_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_algorithm.size

  index = index + cme_globex_mdp3_sbe_v1_5.min_trade_vol.size

  index = index + cme_globex_mdp3_sbe_v1_5.max_trade_vol.size

  index = index + cme_globex_mdp3_sbe_v1_5.min_price_increment_optional.size

  index = index + cme_globex_mdp3_sbe_v1_5.min_price_increment_amount.size

  index = index + cme_globex_mdp3_sbe_v1_5.display_factor.size

  index = index + cme_globex_mdp3_sbe_v1_5.tick_rule.size

  index = index + cme_globex_mdp3_sbe_v1_5.main_fraction.size

  index = index + cme_globex_mdp3_sbe_v1_5.sub_fraction.size

  index = index + cme_globex_mdp3_sbe_v1_5.price_display_format.size

  index = index + cme_globex_mdp3_sbe_v1_5.unit_of_measure.size

  index = index + cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty.size

  index = index + cme_globex_mdp3_sbe_v1_5.trading_reference_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.settl_price_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.cleared_volume.size

  index = index + cme_globex_mdp3_sbe_v1_5.open_interest_qty.size

  index = index + cme_globex_mdp3_sbe_v1_5.low_limit_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.high_limit_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.user_defined_instrument.size

  index = index + cme_globex_mdp3_sbe_v1_5.events_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.feed_types_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.option_underlyings_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Option
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_option.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Option
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_option.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: uInt32NULL
  index, tot_num_reports_optional = cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: SecurityUpdateAction
  index, security_update_action = cme_globex_mdp3_sbe_v1_5.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: uInt64
  index, last_update_time = cme_globex_mdp3_sbe_v1_5.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: SecurityTradingStatus
  index, md_security_trading_status = cme_globex_mdp3_sbe_v1_5.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: Int16
  index, appl_id = cme_globex_mdp3_sbe_v1_5.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: uInt8
  index, market_segment_id = cme_globex_mdp3_sbe_v1_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: uInt8
  index, underlying_product = cme_globex_mdp3_sbe_v1_5.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Exchange: SecurityExchange
  index, security_exchange = cme_globex_mdp3_sbe_v1_5.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_mdp3_sbe_v1_5.security_group.dissect(buffer, index, packet, parent)

  -- Asset: Asset
  index, asset = cme_globex_mdp3_sbe_v1_5.asset.dissect(buffer, index, packet, parent)

  -- Symbol: Symbol
  index, symbol = cme_globex_mdp3_sbe_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: SecurityType
  index, security_type = cme_globex_mdp3_sbe_v1_5.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: CFICode
  index, cfi_code = cme_globex_mdp3_sbe_v1_5.cfi_code.dissect(buffer, index, packet, parent)

  -- Put Or Call: PutOrCall
  index, put_or_call = cme_globex_mdp3_sbe_v1_5.put_or_call.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_globex_mdp3_sbe_v1_5.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: Currency
  index, currency = cme_globex_mdp3_sbe_v1_5.currency.dissect(buffer, index, packet, parent)

  -- Strike Price: PRICENULL
  index, strike_price = cme_globex_mdp3_sbe_v1_5.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Currency: Currency
  index, strike_currency = cme_globex_mdp3_sbe_v1_5.strike_currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: Currency
  index, settl_currency = cme_globex_mdp3_sbe_v1_5.settl_currency.dissect(buffer, index, packet, parent)

  -- Min Cab Price: PRICENULL
  index, min_cab_price = cme_globex_mdp3_sbe_v1_5.min_cab_price.dissect(buffer, index, packet, parent)

  -- Match Algorithm: CHAR
  index, match_algorithm = cme_globex_mdp3_sbe_v1_5.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: uInt32
  index, min_trade_vol = cme_globex_mdp3_sbe_v1_5.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: uInt32
  index, max_trade_vol = cme_globex_mdp3_sbe_v1_5.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment Optional: PRICENULL
  index, min_price_increment_optional = cme_globex_mdp3_sbe_v1_5.min_price_increment_optional.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount: PRICENULL
  index, min_price_increment_amount = cme_globex_mdp3_sbe_v1_5.min_price_increment_amount.dissect(buffer, index, packet, parent)

  -- Display Factor: FLOAT
  index, display_factor = cme_globex_mdp3_sbe_v1_5.display_factor.dissect(buffer, index, packet, parent)

  -- Tick Rule: Int8NULL
  index, tick_rule = cme_globex_mdp3_sbe_v1_5.tick_rule.dissect(buffer, index, packet, parent)

  -- Main Fraction: uInt8NULL
  index, main_fraction = cme_globex_mdp3_sbe_v1_5.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: uInt8NULL
  index, sub_fraction = cme_globex_mdp3_sbe_v1_5.sub_fraction.dissect(buffer, index, packet, parent)

  -- Price Display Format: uInt8NULL
  index, price_display_format = cme_globex_mdp3_sbe_v1_5.price_display_format.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: UnitOfMeasure
  index, unit_of_measure = cme_globex_mdp3_sbe_v1_5.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty: PRICENULL
  index, unit_of_measure_qty = cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty.dissect(buffer, index, packet, parent)

  -- Trading Reference Price: PRICENULL
  index, trading_reference_price = cme_globex_mdp3_sbe_v1_5.trading_reference_price.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 8 fields
  index, settl_price_type = cme_globex_mdp3_sbe_v1_5.settl_price_type.dissect(buffer, index, packet, parent)

  -- Cleared Volume: Int32NULL
  index, cleared_volume = cme_globex_mdp3_sbe_v1_5.cleared_volume.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: Int32NULL
  index, open_interest_qty = cme_globex_mdp3_sbe_v1_5.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Low Limit Price: PRICENULL
  index, low_limit_price = cme_globex_mdp3_sbe_v1_5.low_limit_price.dissect(buffer, index, packet, parent)

  -- High Limit Price: PRICENULL
  index, high_limit_price = cme_globex_mdp3_sbe_v1_5.high_limit_price.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: UserDefinedInstrument
  index, user_defined_instrument = cme_globex_mdp3_sbe_v1_5.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_globex_mdp3_sbe_v1_5.events_groups.dissect(buffer, index, packet, parent)

  -- Feed Types Groups: Struct of 2 fields
  index, feed_types_groups = cme_globex_mdp3_sbe_v1_5.feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  -- Option Underlyings Groups: Struct of 2 fields
  index, option_underlyings_groups = cme_globex_mdp3_sbe_v1_5.option_underlyings_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Option
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_option.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_instrument_definition_option, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.md_instrument_definition_option.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.md_instrument_definition_option.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.md_instrument_definition_option.fields(buffer, offset, packet, parent)
  end
end

-- Related Sym Group
cme_globex_mdp3_sbe_v1_5.related_sym_group = {}

-- Size: Related Sym Group
cme_globex_mdp3_sbe_v1_5.related_sym_group.size =
  cme_globex_mdp3_sbe_v1_5.symbol.size + 
  cme_globex_mdp3_sbe_v1_5.security_id.size + 
  cme_globex_mdp3_sbe_v1_5.order_qty.size + 
  cme_globex_mdp3_sbe_v1_5.quote_type.size + 
  cme_globex_mdp3_sbe_v1_5.side.size + 
  cme_globex_mdp3_sbe_v1_5.padding_2.size

-- Display: Related Sym Group
cme_globex_mdp3_sbe_v1_5.related_sym_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Group
cme_globex_mdp3_sbe_v1_5.related_sym_group.fields = function(buffer, offset, packet, parent, related_sym_group_index)
  local index = offset

  -- Implicit Related Sym Group Index
  if related_sym_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.related_sym_group_index, related_sym_group_index)
    iteration:set_generated()
  end

  -- Symbol: Symbol
  index, symbol = cme_globex_mdp3_sbe_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int32NULL
  index, order_qty = cme_globex_mdp3_sbe_v1_5.order_qty.dissect(buffer, index, packet, parent)

  -- Quote Type: Int8
  index, quote_type = cme_globex_mdp3_sbe_v1_5.quote_type.dissect(buffer, index, packet, parent)

  -- Side: Int8NULL
  index, side = cme_globex_mdp3_sbe_v1_5.side.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_globex_mdp3_sbe_v1_5.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
cme_globex_mdp3_sbe_v1_5.related_sym_group.dissect = function(buffer, offset, packet, parent, related_sym_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.related_sym_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.related_sym_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
  end
end

-- Related Sym Groups
cme_globex_mdp3_sbe_v1_5.related_sym_groups = {}

-- Calculate size of: Related Sym Groups
cme_globex_mdp3_sbe_v1_5.related_sym_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local related_sym_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_sym_group_count * 32

  return index
end

-- Display: Related Sym Groups
cme_globex_mdp3_sbe_v1_5.related_sym_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Groups
cme_globex_mdp3_sbe_v1_5.related_sym_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Related Sym Group
  for related_sym_group_index = 1, num_in_group do
    index, related_sym_group = cme_globex_mdp3_sbe_v1_5.related_sym_group.dissect(buffer, index, packet, parent, related_sym_group_index)
  end

  return index
end

-- Dissect: Related Sym Groups
cme_globex_mdp3_sbe_v1_5.related_sym_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.related_sym_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.related_sym_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.related_sym_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.related_sym_groups.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request
cme_globex_mdp3_sbe_v1_5.quote_request = {}

-- Calculate size of: Quote Request
cme_globex_mdp3_sbe_v1_5.quote_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.transact_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.quote_req_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.padding_3.size

  index = index + cme_globex_mdp3_sbe_v1_5.related_sym_groups.size(buffer, offset + index)

  return index
end

-- Display: Quote Request
cme_globex_mdp3_sbe_v1_5.quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request
cme_globex_mdp3_sbe_v1_5.quote_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uInt64
  index, transact_time = cme_globex_mdp3_sbe_v1_5.transact_time.dissect(buffer, index, packet, parent)

  -- Quote Req Id: QuoteReqId
  index, quote_req_id = cme_globex_mdp3_sbe_v1_5.quote_req_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = cme_globex_mdp3_sbe_v1_5.padding_3.dissect(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = cme_globex_mdp3_sbe_v1_5.related_sym_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
cme_globex_mdp3_sbe_v1_5.quote_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.quote_request, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.quote_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.quote_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.quote_request.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Full Refresh Group
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_group = {}

-- Size: Snapshot Full Refresh Group
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_group.size =
  cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.size + 
  cme_globex_mdp3_sbe_v1_5.md_entry_size_optional.size + 
  cme_globex_mdp3_sbe_v1_5.number_of_orders.size + 
  cme_globex_mdp3_sbe_v1_5.md_price_level_optional.size + 
  cme_globex_mdp3_sbe_v1_5.trading_reference_date.size + 
  cme_globex_mdp3_sbe_v1_5.open_close_settl_flag.size + 
  cme_globex_mdp3_sbe_v1_5.settl_price_type.size + 
  cme_globex_mdp3_sbe_v1_5.md_entry_type.size

-- Display: Snapshot Full Refresh Group
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Group
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_group.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Group Index
  if snapshot_full_refresh_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.snapshot_full_refresh_group_index, snapshot_full_refresh_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: PRICENULL
  index, md_entry_px_optional = cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: Int32NULL
  index, md_entry_size_optional = cme_globex_mdp3_sbe_v1_5.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Int32NULL
  index, number_of_orders = cme_globex_mdp3_sbe_v1_5.number_of_orders.dissect(buffer, index, packet, parent)

  -- Md Price Level Optional: Int8NULL
  index, md_price_level_optional = cme_globex_mdp3_sbe_v1_5.md_price_level_optional.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: LocalMktDate
  index, trading_reference_date = cme_globex_mdp3_sbe_v1_5.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: OpenCloseSettlFlag
  index, open_close_settl_flag = cme_globex_mdp3_sbe_v1_5.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 8 fields
  index, settl_price_type = cme_globex_mdp3_sbe_v1_5.settl_price_type.dissect(buffer, index, packet, parent)

  -- Md Entry Type: MDEntryType
  index, md_entry_type = cme_globex_mdp3_sbe_v1_5.md_entry_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Group
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_group.dissect = function(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.snapshot_full_refresh_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
  end
end

-- Snapshot Full Refresh Groups
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_groups = {}

-- Calculate size of: Snapshot Full Refresh Groups
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local snapshot_full_refresh_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_group_count * 22

  return index
end

-- Display: Snapshot Full Refresh Groups
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Groups
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Group
  for snapshot_full_refresh_group_index = 1, num_in_group do
    index, snapshot_full_refresh_group = cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_group.dissect(buffer, index, packet, parent, snapshot_full_refresh_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Groups
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.snapshot_full_refresh_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_groups.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Full Refresh
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh = {}

-- Calculate size of: Snapshot Full Refresh
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.last_msg_seq_num_processed.size

  index = index + cme_globex_mdp3_sbe_v1_5.tot_num_reports.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.rpt_seq.size

  index = index + cme_globex_mdp3_sbe_v1_5.transact_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.last_update_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.trade_date.size

  index = index + cme_globex_mdp3_sbe_v1_5.md_security_trading_status.size

  index = index + cme_globex_mdp3_sbe_v1_5.high_limit_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.low_limit_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.max_price_variation.size

  index = index + cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: uInt32
  index, last_msg_seq_num_processed = cme_globex_mdp3_sbe_v1_5.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Tot Num Reports: uInt32
  index, tot_num_reports = cme_globex_mdp3_sbe_v1_5.tot_num_reports.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uInt32
  index, rpt_seq = cme_globex_mdp3_sbe_v1_5.rpt_seq.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_globex_mdp3_sbe_v1_5.transact_time.dissect(buffer, index, packet, parent)

  -- Last Update Time: uInt64
  index, last_update_time = cme_globex_mdp3_sbe_v1_5.last_update_time.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = cme_globex_mdp3_sbe_v1_5.trade_date.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: SecurityTradingStatus
  index, md_security_trading_status = cme_globex_mdp3_sbe_v1_5.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- High Limit Price: PRICENULL
  index, high_limit_price = cme_globex_mdp3_sbe_v1_5.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: PRICENULL
  index, low_limit_price = cme_globex_mdp3_sbe_v1_5.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: PRICENULL
  index, max_price_variation = cme_globex_mdp3_sbe_v1_5.max_price_variation.dissect(buffer, index, packet, parent)

  -- Snapshot Full Refresh Groups: Struct of 2 fields
  index, snapshot_full_refresh_groups = cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh
cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.snapshot_full_refresh, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Volume Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_group = {}

-- Size: Incremental Refresh Volume Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_group.size =
  cme_globex_mdp3_sbe_v1_5.md_entry_size.size + 
  cme_globex_mdp3_sbe_v1_5.security_id.size + 
  cme_globex_mdp3_sbe_v1_5.rpt_seq.size + 
  cme_globex_mdp3_sbe_v1_5.md_update_action.size + 
  cme_globex_mdp3_sbe_v1_5.padding_3.size

-- Display: Incremental Refresh Volume Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Volume Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_group.fields = function(buffer, offset, packet, parent, incremental_refresh_volume_group_index)
  local index = offset

  -- Implicit Incremental Refresh Volume Group Index
  if incremental_refresh_volume_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_volume_group_index, incremental_refresh_volume_group_index)
    iteration:set_generated()
  end

  -- Md Entry Size: Int32
  index, md_entry_size = cme_globex_mdp3_sbe_v1_5.md_entry_size.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uInt32
  index, rpt_seq = cme_globex_mdp3_sbe_v1_5.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Update Action: MDUpdateAction
  index, md_update_action = cme_globex_mdp3_sbe_v1_5.md_update_action.dissect(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = cme_globex_mdp3_sbe_v1_5.padding_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Volume Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_volume_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_volume_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_group.fields(buffer, offset, packet, parent, incremental_refresh_volume_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_group.fields(buffer, offset, packet, parent, incremental_refresh_volume_group_index)
  end
end

-- Incremental Refresh Volume Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_groups = {}

-- Calculate size of: Incremental Refresh Volume Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local incremental_refresh_volume_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + incremental_refresh_volume_group_count * 16

  return index
end

-- Display: Incremental Refresh Volume Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Volume Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Incremental Refresh Volume Group
  for incremental_refresh_volume_group_index = 1, num_in_group do
    index, incremental_refresh_volume_group = cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_group.dissect(buffer, index, packet, parent, incremental_refresh_volume_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Volume Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_volume_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_groups.fields(buffer, offset, packet, parent)
  end
end

-- Md Incremental Refresh Volume
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_volume = {}

-- Calculate size of: Md Incremental Refresh Volume
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_volume.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.transact_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.padding_2.size

  index = index + cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Volume
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_volume.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Volume
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_volume.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uInt64
  index, transact_time = cme_globex_mdp3_sbe_v1_5.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_globex_mdp3_sbe_v1_5.padding_2.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Volume Groups: Struct of 2 fields
  index, incremental_refresh_volume_groups = cme_globex_mdp3_sbe_v1_5.incremental_refresh_volume_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Volume
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_volume.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_volume, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_volume.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_volume.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_volume.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Trade Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_group = {}

-- Size: Incremental Refresh Trade Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_group.size =
  cme_globex_mdp3_sbe_v1_5.md_entry_px.size + 
  cme_globex_mdp3_sbe_v1_5.md_entry_size.size + 
  cme_globex_mdp3_sbe_v1_5.security_id.size + 
  cme_globex_mdp3_sbe_v1_5.rpt_seq.size + 
  cme_globex_mdp3_sbe_v1_5.number_of_orders.size + 
  cme_globex_mdp3_sbe_v1_5.trade_id.size + 
  cme_globex_mdp3_sbe_v1_5.aggressor_side.size + 
  cme_globex_mdp3_sbe_v1_5.md_update_action.size + 
  cme_globex_mdp3_sbe_v1_5.padding_2.size

-- Display: Incremental Refresh Trade Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Trade Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_group.fields = function(buffer, offset, packet, parent, incremental_refresh_trade_group_index)
  local index = offset

  -- Implicit Incremental Refresh Trade Group Index
  if incremental_refresh_trade_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_group_index, incremental_refresh_trade_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: PRICE
  index, md_entry_px = cme_globex_mdp3_sbe_v1_5.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: Int32
  index, md_entry_size = cme_globex_mdp3_sbe_v1_5.md_entry_size.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uInt32
  index, rpt_seq = cme_globex_mdp3_sbe_v1_5.rpt_seq.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Int32NULL
  index, number_of_orders = cme_globex_mdp3_sbe_v1_5.number_of_orders.dissect(buffer, index, packet, parent)

  -- Trade Id: Int32
  index, trade_id = cme_globex_mdp3_sbe_v1_5.trade_id.dissect(buffer, index, packet, parent)

  -- Aggressor Side: AggressorSide
  index, aggressor_side = cme_globex_mdp3_sbe_v1_5.aggressor_side.dissect(buffer, index, packet, parent)

  -- Md Update Action: MDUpdateAction
  index, md_update_action = cme_globex_mdp3_sbe_v1_5.md_update_action.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_globex_mdp3_sbe_v1_5.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Trade Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_trade_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_group.fields(buffer, offset, packet, parent, incremental_refresh_trade_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_group.fields(buffer, offset, packet, parent, incremental_refresh_trade_group_index)
  end
end

-- Incremental Refresh Trade Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_groups = {}

-- Calculate size of: Incremental Refresh Trade Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local incremental_refresh_trade_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + incremental_refresh_trade_group_count * 32

  return index
end

-- Display: Incremental Refresh Trade Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Trade Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Incremental Refresh Trade Group
  for incremental_refresh_trade_group_index = 1, num_in_group do
    index, incremental_refresh_trade_group = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_group.dissect(buffer, index, packet, parent, incremental_refresh_trade_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Trade Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_trade_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_groups.fields(buffer, offset, packet, parent)
  end
end

-- Md Incremental Refresh Trade
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade = {}

-- Calculate size of: Md Incremental Refresh Trade
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.transact_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.padding_2.size

  index = index + cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uInt64
  index, transact_time = cme_globex_mdp3_sbe_v1_5.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_globex_mdp3_sbe_v1_5.padding_2.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Trade Groups: Struct of 2 fields
  index, incremental_refresh_trade_groups = cme_globex_mdp3_sbe_v1_5.incremental_refresh_trade_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_trade, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Session Statistics Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_group = {}

-- Size: Incremental Refresh Session Statistics Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_group.size =
  cme_globex_mdp3_sbe_v1_5.md_entry_px.size + 
  cme_globex_mdp3_sbe_v1_5.security_id.size + 
  cme_globex_mdp3_sbe_v1_5.rpt_seq.size + 
  cme_globex_mdp3_sbe_v1_5.open_close_settl_flag.size + 
  cme_globex_mdp3_sbe_v1_5.md_update_action.size + 
  cme_globex_mdp3_sbe_v1_5.md_entry_type_statistics.size + 
  cme_globex_mdp3_sbe_v1_5.padding_5.size

-- Display: Incremental Refresh Session Statistics Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Session Statistics Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_group.fields = function(buffer, offset, packet, parent, incremental_refresh_session_statistics_group_index)
  local index = offset

  -- Implicit Incremental Refresh Session Statistics Group Index
  if incremental_refresh_session_statistics_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_session_statistics_group_index, incremental_refresh_session_statistics_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: PRICE
  index, md_entry_px = cme_globex_mdp3_sbe_v1_5.md_entry_px.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uInt32
  index, rpt_seq = cme_globex_mdp3_sbe_v1_5.rpt_seq.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: OpenCloseSettlFlag
  index, open_close_settl_flag = cme_globex_mdp3_sbe_v1_5.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Md Update Action: MDUpdateAction
  index, md_update_action = cme_globex_mdp3_sbe_v1_5.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Statistics: MDEntryTypeStatistics
  index, md_entry_type_statistics = cme_globex_mdp3_sbe_v1_5.md_entry_type_statistics.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_globex_mdp3_sbe_v1_5.padding_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Session Statistics Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_session_statistics_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_session_statistics_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_group.fields(buffer, offset, packet, parent, incremental_refresh_session_statistics_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_group.fields(buffer, offset, packet, parent, incremental_refresh_session_statistics_group_index)
  end
end

-- Incremental Refresh Session Statistics Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_groups = {}

-- Calculate size of: Incremental Refresh Session Statistics Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local incremental_refresh_session_statistics_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + incremental_refresh_session_statistics_group_count * 24

  return index
end

-- Display: Incremental Refresh Session Statistics Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Session Statistics Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Incremental Refresh Session Statistics Group
  for incremental_refresh_session_statistics_group_index = 1, num_in_group do
    index, incremental_refresh_session_statistics_group = cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_group.dissect(buffer, index, packet, parent, incremental_refresh_session_statistics_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Session Statistics Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_session_statistics_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_groups.fields(buffer, offset, packet, parent)
  end
end

-- Md Incremental Refresh Session Statistics
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_session_statistics = {}

-- Calculate size of: Md Incremental Refresh Session Statistics
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_session_statistics.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.transact_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.padding_2.size

  index = index + cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Session Statistics
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_session_statistics.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Session Statistics
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_session_statistics.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uInt64
  index, transact_time = cme_globex_mdp3_sbe_v1_5.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_globex_mdp3_sbe_v1_5.padding_2.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Session Statistics Groups: Struct of 2 fields
  index, incremental_refresh_session_statistics_groups = cme_globex_mdp3_sbe_v1_5.incremental_refresh_session_statistics_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Session Statistics
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_session_statistics.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_session_statistics, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_session_statistics.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_session_statistics.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_session_statistics.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Limits Banding Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_group = {}

-- Size: Incremental Refresh Limits Banding Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_group.size =
  cme_globex_mdp3_sbe_v1_5.high_limit_price.size + 
  cme_globex_mdp3_sbe_v1_5.low_limit_price.size + 
  cme_globex_mdp3_sbe_v1_5.max_price_variation.size + 
  cme_globex_mdp3_sbe_v1_5.security_id.size + 
  cme_globex_mdp3_sbe_v1_5.rpt_seq.size

-- Display: Incremental Refresh Limits Banding Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Limits Banding Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_group.fields = function(buffer, offset, packet, parent, incremental_refresh_limits_banding_group_index)
  local index = offset

  -- Implicit Incremental Refresh Limits Banding Group Index
  if incremental_refresh_limits_banding_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_limits_banding_group_index, incremental_refresh_limits_banding_group_index)
    iteration:set_generated()
  end

  -- High Limit Price: PRICENULL
  index, high_limit_price = cme_globex_mdp3_sbe_v1_5.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: PRICENULL
  index, low_limit_price = cme_globex_mdp3_sbe_v1_5.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: PRICENULL
  index, max_price_variation = cme_globex_mdp3_sbe_v1_5.max_price_variation.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uInt32
  index, rpt_seq = cme_globex_mdp3_sbe_v1_5.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Limits Banding Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_limits_banding_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_limits_banding_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_group.fields(buffer, offset, packet, parent, incremental_refresh_limits_banding_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_group.fields(buffer, offset, packet, parent, incremental_refresh_limits_banding_group_index)
  end
end

-- Incremental Refresh Limits Banding Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_groups = {}

-- Calculate size of: Incremental Refresh Limits Banding Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local incremental_refresh_limits_banding_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + incremental_refresh_limits_banding_group_count * 32

  return index
end

-- Display: Incremental Refresh Limits Banding Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Limits Banding Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Incremental Refresh Limits Banding Group
  for incremental_refresh_limits_banding_group_index = 1, num_in_group do
    index, incremental_refresh_limits_banding_group = cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_group.dissect(buffer, index, packet, parent, incremental_refresh_limits_banding_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Limits Banding Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_limits_banding_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_groups.fields(buffer, offset, packet, parent)
  end
end

-- Md Incremental Refresh Limits Banding
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_limits_banding = {}

-- Calculate size of: Md Incremental Refresh Limits Banding
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_limits_banding.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.transact_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.padding_2.size

  index = index + cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Limits Banding
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_limits_banding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Limits Banding
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_limits_banding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uInt64
  index, transact_time = cme_globex_mdp3_sbe_v1_5.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_globex_mdp3_sbe_v1_5.padding_2.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Limits Banding Groups: Struct of 2 fields
  index, incremental_refresh_limits_banding_groups = cme_globex_mdp3_sbe_v1_5.incremental_refresh_limits_banding_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Limits Banding
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_limits_banding.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_limits_banding, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_limits_banding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_limits_banding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_limits_banding.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Daily Statistics Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_group = {}

-- Size: Incremental Refresh Daily Statistics Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_group.size =
  cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.size + 
  cme_globex_mdp3_sbe_v1_5.md_entry_size_optional.size + 
  cme_globex_mdp3_sbe_v1_5.security_id.size + 
  cme_globex_mdp3_sbe_v1_5.rpt_seq.size + 
  cme_globex_mdp3_sbe_v1_5.trading_reference_date.size + 
  cme_globex_mdp3_sbe_v1_5.settl_price_type.size + 
  cme_globex_mdp3_sbe_v1_5.md_update_action.size + 
  cme_globex_mdp3_sbe_v1_5.md_entry_type_daily_statistics.size + 
  cme_globex_mdp3_sbe_v1_5.padding_7.size

-- Display: Incremental Refresh Daily Statistics Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Daily Statistics Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_group.fields = function(buffer, offset, packet, parent, incremental_refresh_daily_statistics_group_index)
  local index = offset

  -- Implicit Incremental Refresh Daily Statistics Group Index
  if incremental_refresh_daily_statistics_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_daily_statistics_group_index, incremental_refresh_daily_statistics_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: PRICENULL
  index, md_entry_px_optional = cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: Int32NULL
  index, md_entry_size_optional = cme_globex_mdp3_sbe_v1_5.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uInt32
  index, rpt_seq = cme_globex_mdp3_sbe_v1_5.rpt_seq.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: LocalMktDate
  index, trading_reference_date = cme_globex_mdp3_sbe_v1_5.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 8 fields
  index, settl_price_type = cme_globex_mdp3_sbe_v1_5.settl_price_type.dissect(buffer, index, packet, parent)

  -- Md Update Action: MDUpdateAction
  index, md_update_action = cme_globex_mdp3_sbe_v1_5.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Daily Statistics: MDEntryTypeDailyStatistics
  index, md_entry_type_daily_statistics = cme_globex_mdp3_sbe_v1_5.md_entry_type_daily_statistics.dissect(buffer, index, packet, parent)

  -- Padding 7: 7 Byte
  index, padding_7 = cme_globex_mdp3_sbe_v1_5.padding_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Daily Statistics Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_daily_statistics_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_daily_statistics_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_group.fields(buffer, offset, packet, parent, incremental_refresh_daily_statistics_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_group.fields(buffer, offset, packet, parent, incremental_refresh_daily_statistics_group_index)
  end
end

-- Incremental Refresh Daily Statistics Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_groups = {}

-- Calculate size of: Incremental Refresh Daily Statistics Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local incremental_refresh_daily_statistics_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + incremental_refresh_daily_statistics_group_count * 32

  return index
end

-- Display: Incremental Refresh Daily Statistics Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Daily Statistics Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Incremental Refresh Daily Statistics Group
  for incremental_refresh_daily_statistics_group_index = 1, num_in_group do
    index, incremental_refresh_daily_statistics_group = cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_group.dissect(buffer, index, packet, parent, incremental_refresh_daily_statistics_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Daily Statistics Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_daily_statistics_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_groups.fields(buffer, offset, packet, parent)
  end
end

-- Md Incremental Refresh Daily Statistics
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_daily_statistics = {}

-- Calculate size of: Md Incremental Refresh Daily Statistics
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_daily_statistics.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.transact_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.padding_2.size

  index = index + cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Daily Statistics
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_daily_statistics.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Daily Statistics
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_daily_statistics.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uInt64
  index, transact_time = cme_globex_mdp3_sbe_v1_5.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_globex_mdp3_sbe_v1_5.padding_2.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Daily Statistics Groups: Struct of 2 fields
  index, incremental_refresh_daily_statistics_groups = cme_globex_mdp3_sbe_v1_5.incremental_refresh_daily_statistics_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Daily Statistics
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_daily_statistics.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_daily_statistics, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_daily_statistics.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_daily_statistics.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_daily_statistics.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Book Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_group = {}

-- Size: Incremental Refresh Book Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_group.size =
  cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.size + 
  cme_globex_mdp3_sbe_v1_5.md_entry_size_optional.size + 
  cme_globex_mdp3_sbe_v1_5.security_id.size + 
  cme_globex_mdp3_sbe_v1_5.rpt_seq.size + 
  cme_globex_mdp3_sbe_v1_5.number_of_orders.size + 
  cme_globex_mdp3_sbe_v1_5.md_price_level.size + 
  cme_globex_mdp3_sbe_v1_5.md_update_action.size + 
  cme_globex_mdp3_sbe_v1_5.md_entry_type_book.size + 
  cme_globex_mdp3_sbe_v1_5.padding_5.size

-- Display: Incremental Refresh Book Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Book Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_group.fields = function(buffer, offset, packet, parent, incremental_refresh_book_group_index)
  local index = offset

  -- Implicit Incremental Refresh Book Group Index
  if incremental_refresh_book_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_book_group_index, incremental_refresh_book_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: PRICENULL
  index, md_entry_px_optional = cme_globex_mdp3_sbe_v1_5.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: Int32NULL
  index, md_entry_size_optional = cme_globex_mdp3_sbe_v1_5.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: uInt32
  index, rpt_seq = cme_globex_mdp3_sbe_v1_5.rpt_seq.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Int32NULL
  index, number_of_orders = cme_globex_mdp3_sbe_v1_5.number_of_orders.dissect(buffer, index, packet, parent)

  -- Md Price Level: uInt8
  index, md_price_level = cme_globex_mdp3_sbe_v1_5.md_price_level.dissect(buffer, index, packet, parent)

  -- Md Update Action: MDUpdateAction
  index, md_update_action = cme_globex_mdp3_sbe_v1_5.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: MDEntryTypeBook
  index, md_entry_type_book = cme_globex_mdp3_sbe_v1_5.md_entry_type_book.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_globex_mdp3_sbe_v1_5.padding_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Book Group
cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_book_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_book_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_group.fields(buffer, offset, packet, parent, incremental_refresh_book_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_group.fields(buffer, offset, packet, parent, incremental_refresh_book_group_index)
  end
end

-- Incremental Refresh Book Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_groups = {}

-- Calculate size of: Incremental Refresh Book Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local incremental_refresh_book_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + incremental_refresh_book_group_count * 32

  return index
end

-- Display: Incremental Refresh Book Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Book Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Incremental Refresh Book Group
  for incremental_refresh_book_group_index = 1, num_in_group do
    index, incremental_refresh_book_group = cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_group.dissect(buffer, index, packet, parent, incremental_refresh_book_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Book Groups
cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.incremental_refresh_book_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_groups.fields(buffer, offset, packet, parent)
  end
end

-- Md Incremental Refresh Book
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_book = {}

-- Calculate size of: Md Incremental Refresh Book
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_book.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.transact_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.padding_2.size

  index = index + cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Book
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_book.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Book
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_book.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uInt64
  index, transact_time = cme_globex_mdp3_sbe_v1_5.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_globex_mdp3_sbe_v1_5.padding_2.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Book Groups: Struct of 2 fields
  index, incremental_refresh_book_groups = cme_globex_mdp3_sbe_v1_5.incremental_refresh_book_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Book
cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_book.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_incremental_refresh_book, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_book.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_book.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_book.fields(buffer, offset, packet, parent)
  end
end

-- Security Status
cme_globex_mdp3_sbe_v1_5.security_status = {}

-- Size: Security Status
cme_globex_mdp3_sbe_v1_5.security_status.size =
  cme_globex_mdp3_sbe_v1_5.transact_time.size + 
  cme_globex_mdp3_sbe_v1_5.security_group.size + 
  cme_globex_mdp3_sbe_v1_5.asset.size + 
  cme_globex_mdp3_sbe_v1_5.security_id_optional.size + 
  cme_globex_mdp3_sbe_v1_5.trade_date.size + 
  cme_globex_mdp3_sbe_v1_5.match_event_indicator.size + 
  cme_globex_mdp3_sbe_v1_5.security_trading_status.size + 
  cme_globex_mdp3_sbe_v1_5.halt_reason.size + 
  cme_globex_mdp3_sbe_v1_5.security_trading_event.size

-- Display: Security Status
cme_globex_mdp3_sbe_v1_5.security_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status
cme_globex_mdp3_sbe_v1_5.security_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uInt64
  index, transact_time = cme_globex_mdp3_sbe_v1_5.transact_time.dissect(buffer, index, packet, parent)

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_mdp3_sbe_v1_5.security_group.dissect(buffer, index, packet, parent)

  -- Asset: Asset
  index, asset = cme_globex_mdp3_sbe_v1_5.asset.dissect(buffer, index, packet, parent)

  -- Security Id Optional: Int32NULL
  index, security_id_optional = cme_globex_mdp3_sbe_v1_5.security_id_optional.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = cme_globex_mdp3_sbe_v1_5.trade_date.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatus
  index, security_trading_status = cme_globex_mdp3_sbe_v1_5.security_trading_status.dissect(buffer, index, packet, parent)

  -- Halt Reason: HaltReason
  index, halt_reason = cme_globex_mdp3_sbe_v1_5.halt_reason.dissect(buffer, index, packet, parent)

  -- Security Trading Event: SecurityTradingEvent
  index, security_trading_event = cme_globex_mdp3_sbe_v1_5.security_trading_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status
cme_globex_mdp3_sbe_v1_5.security_status.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_status, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.security_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.security_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.security_status.fields(buffer, offset, packet, parent)
  end
end

-- Legs Group
cme_globex_mdp3_sbe_v1_5.legs_group = {}

-- Size: Legs Group
cme_globex_mdp3_sbe_v1_5.legs_group.size =
  cme_globex_mdp3_sbe_v1_5.leg_security_id.size + 
  cme_globex_mdp3_sbe_v1_5.leg_side.size + 
  cme_globex_mdp3_sbe_v1_5.leg_ratio_qty.size + 
  cme_globex_mdp3_sbe_v1_5.leg_price.size + 
  cme_globex_mdp3_sbe_v1_5.leg_option_delta.size

-- Display: Legs Group
cme_globex_mdp3_sbe_v1_5.legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Legs Group
cme_globex_mdp3_sbe_v1_5.legs_group.fields = function(buffer, offset, packet, parent, legs_group_index)
  local index = offset

  -- Implicit Legs Group Index
  if legs_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.legs_group_index, legs_group_index)
    iteration:set_generated()
  end

  -- Leg Security Id: Int32
  index, leg_security_id = cme_globex_mdp3_sbe_v1_5.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Side: LegSide
  index, leg_side = cme_globex_mdp3_sbe_v1_5.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: Int8
  index, leg_ratio_qty = cme_globex_mdp3_sbe_v1_5.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Price: PRICENULL
  index, leg_price = cme_globex_mdp3_sbe_v1_5.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Option Delta: DecimalQty
  index, leg_option_delta = cme_globex_mdp3_sbe_v1_5.leg_option_delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Legs Group
cme_globex_mdp3_sbe_v1_5.legs_group.dissect = function(buffer, offset, packet, parent, legs_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.legs_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.legs_group.fields(buffer, offset, packet, parent, legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.legs_group.fields(buffer, offset, packet, parent, legs_group_index)
  end
end

-- Legs Groups
cme_globex_mdp3_sbe_v1_5.legs_groups = {}

-- Calculate size of: Legs Groups
cme_globex_mdp3_sbe_v1_5.legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local legs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + legs_group_count * 18

  return index
end

-- Display: Legs Groups
cme_globex_mdp3_sbe_v1_5.legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Legs Groups
cme_globex_mdp3_sbe_v1_5.legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Legs Group
  for legs_group_index = 1, num_in_group do
    index, legs_group = cme_globex_mdp3_sbe_v1_5.legs_group.dissect(buffer, index, packet, parent, legs_group_index)
  end

  return index
end

-- Dissect: Legs Groups
cme_globex_mdp3_sbe_v1_5.legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.legs_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Md Instrument Definition Spread
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_spread = {}

-- Calculate size of: Md Instrument Definition Spread
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_spread.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_update_action.size

  index = index + cme_globex_mdp3_sbe_v1_5.last_update_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.md_security_trading_status.size

  index = index + cme_globex_mdp3_sbe_v1_5.appl_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.market_segment_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.underlying_product_optional.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_exchange.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_group.size

  index = index + cme_globex_mdp3_sbe_v1_5.asset.size

  index = index + cme_globex_mdp3_sbe_v1_5.symbol.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.cfi_code.size

  index = index + cme_globex_mdp3_sbe_v1_5.maturity_month_year.size

  index = index + cme_globex_mdp3_sbe_v1_5.currency.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_sub_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.user_defined_instrument.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_algorithm.size

  index = index + cme_globex_mdp3_sbe_v1_5.min_trade_vol.size

  index = index + cme_globex_mdp3_sbe_v1_5.max_trade_vol.size

  index = index + cme_globex_mdp3_sbe_v1_5.min_price_increment.size

  index = index + cme_globex_mdp3_sbe_v1_5.display_factor.size

  index = index + cme_globex_mdp3_sbe_v1_5.price_display_format.size

  index = index + cme_globex_mdp3_sbe_v1_5.price_ratio.size

  index = index + cme_globex_mdp3_sbe_v1_5.tick_rule.size

  index = index + cme_globex_mdp3_sbe_v1_5.unit_of_measure.size

  index = index + cme_globex_mdp3_sbe_v1_5.trading_reference_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.settl_price_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.open_interest_qty.size

  index = index + cme_globex_mdp3_sbe_v1_5.cleared_volume.size

  index = index + cme_globex_mdp3_sbe_v1_5.high_limit_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.low_limit_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.max_price_variation.size

  index = index + cme_globex_mdp3_sbe_v1_5.main_fraction.size

  index = index + cme_globex_mdp3_sbe_v1_5.sub_fraction.size

  index = index + cme_globex_mdp3_sbe_v1_5.events_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.feed_types_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Spread
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_spread.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Spread
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_spread.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: uInt32NULL
  index, tot_num_reports_optional = cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: SecurityUpdateAction
  index, security_update_action = cme_globex_mdp3_sbe_v1_5.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: uInt64
  index, last_update_time = cme_globex_mdp3_sbe_v1_5.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: SecurityTradingStatus
  index, md_security_trading_status = cme_globex_mdp3_sbe_v1_5.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: Int16
  index, appl_id = cme_globex_mdp3_sbe_v1_5.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: uInt8
  index, market_segment_id = cme_globex_mdp3_sbe_v1_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product Optional: uInt8NULL
  index, underlying_product_optional = cme_globex_mdp3_sbe_v1_5.underlying_product_optional.dissect(buffer, index, packet, parent)

  -- Security Exchange: SecurityExchange
  index, security_exchange = cme_globex_mdp3_sbe_v1_5.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_mdp3_sbe_v1_5.security_group.dissect(buffer, index, packet, parent)

  -- Asset: Asset
  index, asset = cme_globex_mdp3_sbe_v1_5.asset.dissect(buffer, index, packet, parent)

  -- Symbol: Symbol
  index, symbol = cme_globex_mdp3_sbe_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: SecurityType
  index, security_type = cme_globex_mdp3_sbe_v1_5.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: CFICode
  index, cfi_code = cme_globex_mdp3_sbe_v1_5.cfi_code.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_globex_mdp3_sbe_v1_5.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: Currency
  index, currency = cme_globex_mdp3_sbe_v1_5.currency.dissect(buffer, index, packet, parent)

  -- Security Sub Type: SecuritySubType
  index, security_sub_type = cme_globex_mdp3_sbe_v1_5.security_sub_type.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: UserDefinedInstrument
  index, user_defined_instrument = cme_globex_mdp3_sbe_v1_5.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Match Algorithm: CHAR
  index, match_algorithm = cme_globex_mdp3_sbe_v1_5.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: uInt32
  index, min_trade_vol = cme_globex_mdp3_sbe_v1_5.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: uInt32
  index, max_trade_vol = cme_globex_mdp3_sbe_v1_5.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment: PRICE
  index, min_price_increment = cme_globex_mdp3_sbe_v1_5.min_price_increment.dissect(buffer, index, packet, parent)

  -- Display Factor: FLOAT
  index, display_factor = cme_globex_mdp3_sbe_v1_5.display_factor.dissect(buffer, index, packet, parent)

  -- Price Display Format: uInt8NULL
  index, price_display_format = cme_globex_mdp3_sbe_v1_5.price_display_format.dissect(buffer, index, packet, parent)

  -- Price Ratio: PRICENULL
  index, price_ratio = cme_globex_mdp3_sbe_v1_5.price_ratio.dissect(buffer, index, packet, parent)

  -- Tick Rule: Int8NULL
  index, tick_rule = cme_globex_mdp3_sbe_v1_5.tick_rule.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: UnitOfMeasure
  index, unit_of_measure = cme_globex_mdp3_sbe_v1_5.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Trading Reference Price: PRICENULL
  index, trading_reference_price = cme_globex_mdp3_sbe_v1_5.trading_reference_price.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 8 fields
  index, settl_price_type = cme_globex_mdp3_sbe_v1_5.settl_price_type.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: Int32NULL
  index, open_interest_qty = cme_globex_mdp3_sbe_v1_5.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Cleared Volume: Int32NULL
  index, cleared_volume = cme_globex_mdp3_sbe_v1_5.cleared_volume.dissect(buffer, index, packet, parent)

  -- High Limit Price: PRICENULL
  index, high_limit_price = cme_globex_mdp3_sbe_v1_5.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: PRICENULL
  index, low_limit_price = cme_globex_mdp3_sbe_v1_5.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: PRICENULL
  index, max_price_variation = cme_globex_mdp3_sbe_v1_5.max_price_variation.dissect(buffer, index, packet, parent)

  -- Main Fraction: uInt8NULL
  index, main_fraction = cme_globex_mdp3_sbe_v1_5.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: uInt8NULL
  index, sub_fraction = cme_globex_mdp3_sbe_v1_5.sub_fraction.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_globex_mdp3_sbe_v1_5.events_groups.dissect(buffer, index, packet, parent)

  -- Feed Types Groups: Struct of 2 fields
  index, feed_types_groups = cme_globex_mdp3_sbe_v1_5.feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  -- Legs Groups: Struct of 2 fields
  index, legs_groups = cme_globex_mdp3_sbe_v1_5.legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Spread
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_spread.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_instrument_definition_spread, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.md_instrument_definition_spread.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.md_instrument_definition_spread.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.md_instrument_definition_spread.fields(buffer, offset, packet, parent)
  end
end

-- Md Instrument Definition Future
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_future = {}

-- Calculate size of: Md Instrument Definition Future
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_future.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_update_action.size

  index = index + cme_globex_mdp3_sbe_v1_5.last_update_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.md_security_trading_status.size

  index = index + cme_globex_mdp3_sbe_v1_5.appl_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.market_segment_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.underlying_product.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_exchange.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_group.size

  index = index + cme_globex_mdp3_sbe_v1_5.asset.size

  index = index + cme_globex_mdp3_sbe_v1_5.symbol.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.cfi_code.size

  index = index + cme_globex_mdp3_sbe_v1_5.maturity_month_year.size

  index = index + cme_globex_mdp3_sbe_v1_5.currency.size

  index = index + cme_globex_mdp3_sbe_v1_5.settl_currency.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_algorithm.size

  index = index + cme_globex_mdp3_sbe_v1_5.min_trade_vol.size

  index = index + cme_globex_mdp3_sbe_v1_5.max_trade_vol.size

  index = index + cme_globex_mdp3_sbe_v1_5.min_price_increment.size

  index = index + cme_globex_mdp3_sbe_v1_5.display_factor.size

  index = index + cme_globex_mdp3_sbe_v1_5.main_fraction.size

  index = index + cme_globex_mdp3_sbe_v1_5.sub_fraction.size

  index = index + cme_globex_mdp3_sbe_v1_5.price_display_format.size

  index = index + cme_globex_mdp3_sbe_v1_5.unit_of_measure.size

  index = index + cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty.size

  index = index + cme_globex_mdp3_sbe_v1_5.trading_reference_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.settl_price_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.open_interest_qty.size

  index = index + cme_globex_mdp3_sbe_v1_5.cleared_volume.size

  index = index + cme_globex_mdp3_sbe_v1_5.high_limit_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.low_limit_price.size

  index = index + cme_globex_mdp3_sbe_v1_5.max_price_variation.size

  index = index + cme_globex_mdp3_sbe_v1_5.decay_quantity.size

  index = index + cme_globex_mdp3_sbe_v1_5.decay_start_date.size

  index = index + cme_globex_mdp3_sbe_v1_5.original_contract_size.size

  index = index + cme_globex_mdp3_sbe_v1_5.contract_multiplier.size

  index = index + cme_globex_mdp3_sbe_v1_5.contract_multiplier_unit.size

  index = index + cme_globex_mdp3_sbe_v1_5.flow_schedule_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.min_price_increment_amount.size

  index = index + cme_globex_mdp3_sbe_v1_5.user_defined_instrument.size

  index = index + cme_globex_mdp3_sbe_v1_5.events_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.feed_types_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Future
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_future.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Future
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_future.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: uInt32NULL
  index, tot_num_reports_optional = cme_globex_mdp3_sbe_v1_5.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: SecurityUpdateAction
  index, security_update_action = cme_globex_mdp3_sbe_v1_5.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: uInt64
  index, last_update_time = cme_globex_mdp3_sbe_v1_5.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: SecurityTradingStatus
  index, md_security_trading_status = cme_globex_mdp3_sbe_v1_5.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: Int16
  index, appl_id = cme_globex_mdp3_sbe_v1_5.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: uInt8
  index, market_segment_id = cme_globex_mdp3_sbe_v1_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: uInt8
  index, underlying_product = cme_globex_mdp3_sbe_v1_5.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Exchange: SecurityExchange
  index, security_exchange = cme_globex_mdp3_sbe_v1_5.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_mdp3_sbe_v1_5.security_group.dissect(buffer, index, packet, parent)

  -- Asset: Asset
  index, asset = cme_globex_mdp3_sbe_v1_5.asset.dissect(buffer, index, packet, parent)

  -- Symbol: Symbol
  index, symbol = cme_globex_mdp3_sbe_v1_5.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: SecurityType
  index, security_type = cme_globex_mdp3_sbe_v1_5.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: CFICode
  index, cfi_code = cme_globex_mdp3_sbe_v1_5.cfi_code.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_globex_mdp3_sbe_v1_5.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: Currency
  index, currency = cme_globex_mdp3_sbe_v1_5.currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: Currency
  index, settl_currency = cme_globex_mdp3_sbe_v1_5.settl_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: CHAR
  index, match_algorithm = cme_globex_mdp3_sbe_v1_5.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: uInt32
  index, min_trade_vol = cme_globex_mdp3_sbe_v1_5.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: uInt32
  index, max_trade_vol = cme_globex_mdp3_sbe_v1_5.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment: PRICE
  index, min_price_increment = cme_globex_mdp3_sbe_v1_5.min_price_increment.dissect(buffer, index, packet, parent)

  -- Display Factor: FLOAT
  index, display_factor = cme_globex_mdp3_sbe_v1_5.display_factor.dissect(buffer, index, packet, parent)

  -- Main Fraction: uInt8NULL
  index, main_fraction = cme_globex_mdp3_sbe_v1_5.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: uInt8NULL
  index, sub_fraction = cme_globex_mdp3_sbe_v1_5.sub_fraction.dissect(buffer, index, packet, parent)

  -- Price Display Format: uInt8NULL
  index, price_display_format = cme_globex_mdp3_sbe_v1_5.price_display_format.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: UnitOfMeasure
  index, unit_of_measure = cme_globex_mdp3_sbe_v1_5.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty: PRICENULL
  index, unit_of_measure_qty = cme_globex_mdp3_sbe_v1_5.unit_of_measure_qty.dissect(buffer, index, packet, parent)

  -- Trading Reference Price: PRICENULL
  index, trading_reference_price = cme_globex_mdp3_sbe_v1_5.trading_reference_price.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 8 fields
  index, settl_price_type = cme_globex_mdp3_sbe_v1_5.settl_price_type.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: Int32NULL
  index, open_interest_qty = cme_globex_mdp3_sbe_v1_5.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Cleared Volume: Int32NULL
  index, cleared_volume = cme_globex_mdp3_sbe_v1_5.cleared_volume.dissect(buffer, index, packet, parent)

  -- High Limit Price: PRICENULL
  index, high_limit_price = cme_globex_mdp3_sbe_v1_5.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: PRICENULL
  index, low_limit_price = cme_globex_mdp3_sbe_v1_5.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: PRICENULL
  index, max_price_variation = cme_globex_mdp3_sbe_v1_5.max_price_variation.dissect(buffer, index, packet, parent)

  -- Decay Quantity: Int32NULL
  index, decay_quantity = cme_globex_mdp3_sbe_v1_5.decay_quantity.dissect(buffer, index, packet, parent)

  -- Decay Start Date: LocalMktDate
  index, decay_start_date = cme_globex_mdp3_sbe_v1_5.decay_start_date.dissect(buffer, index, packet, parent)

  -- Original Contract Size: Int32NULL
  index, original_contract_size = cme_globex_mdp3_sbe_v1_5.original_contract_size.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: Int32NULL
  index, contract_multiplier = cme_globex_mdp3_sbe_v1_5.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Contract Multiplier Unit: Int8NULL
  index, contract_multiplier_unit = cme_globex_mdp3_sbe_v1_5.contract_multiplier_unit.dissect(buffer, index, packet, parent)

  -- Flow Schedule Type: Int8NULL
  index, flow_schedule_type = cme_globex_mdp3_sbe_v1_5.flow_schedule_type.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount: PRICENULL
  index, min_price_increment_amount = cme_globex_mdp3_sbe_v1_5.min_price_increment_amount.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: UserDefinedInstrument
  index, user_defined_instrument = cme_globex_mdp3_sbe_v1_5.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_globex_mdp3_sbe_v1_5.events_groups.dissect(buffer, index, packet, parent)

  -- Feed Types Groups: Struct of 2 fields
  index, feed_types_groups = cme_globex_mdp3_sbe_v1_5.feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_globex_mdp3_sbe_v1_5.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_globex_mdp3_sbe_v1_5.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Future
cme_globex_mdp3_sbe_v1_5.md_instrument_definition_future.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.md_instrument_definition_future, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.md_instrument_definition_future.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.md_instrument_definition_future.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.md_instrument_definition_future.fields(buffer, offset, packet, parent)
  end
end

-- Admin Logout
cme_globex_mdp3_sbe_v1_5.admin_logout = {}

-- Size: Admin Logout
cme_globex_mdp3_sbe_v1_5.admin_logout.size =
  cme_globex_mdp3_sbe_v1_5.text.size

-- Display: Admin Logout
cme_globex_mdp3_sbe_v1_5.admin_logout.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Logout
cme_globex_mdp3_sbe_v1_5.admin_logout.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: String100
  index, text = cme_globex_mdp3_sbe_v1_5.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Logout
cme_globex_mdp3_sbe_v1_5.admin_logout.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.admin_logout, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.admin_logout.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.admin_logout.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.admin_logout.fields(buffer, offset, packet, parent)
  end
end

-- Admin Login
cme_globex_mdp3_sbe_v1_5.admin_login = {}

-- Size: Admin Login
cme_globex_mdp3_sbe_v1_5.admin_login.size =
  cme_globex_mdp3_sbe_v1_5.heart_bt_int.size

-- Display: Admin Login
cme_globex_mdp3_sbe_v1_5.admin_login.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Login
cme_globex_mdp3_sbe_v1_5.admin_login.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heart Bt Int: Int8
  index, heart_bt_int = cme_globex_mdp3_sbe_v1_5.heart_bt_int.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Login
cme_globex_mdp3_sbe_v1_5.admin_login.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.admin_login, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.admin_login.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.admin_login.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.admin_login.fields(buffer, offset, packet, parent)
  end
end

-- Admin Heartbeat
cme_globex_mdp3_sbe_v1_5.admin_heartbeat = {}

-- Display: Admin Heartbeat
cme_globex_mdp3_sbe_v1_5.admin_heartbeat.display = function(packet, parent, length)
  return "Admin Heartbeat"
end


-- Dissect: Admin Heartbeat
cme_globex_mdp3_sbe_v1_5.admin_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cme_globex_mdp3_sbe_v1_5.admin_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Channel Reset Group
cme_globex_mdp3_sbe_v1_5.channel_reset_group = {}

-- Size: Channel Reset Group
cme_globex_mdp3_sbe_v1_5.channel_reset_group.size =
  cme_globex_mdp3_sbe_v1_5.appl_id.size

-- Display: Channel Reset Group
cme_globex_mdp3_sbe_v1_5.channel_reset_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset Group
cme_globex_mdp3_sbe_v1_5.channel_reset_group.fields = function(buffer, offset, packet, parent, channel_reset_group_index)
  local index = offset

  -- Implicit Channel Reset Group Index
  if channel_reset_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.channel_reset_group_index, channel_reset_group_index)
    iteration:set_generated()
  end

  -- Appl Id: Int16
  index, appl_id = cme_globex_mdp3_sbe_v1_5.appl_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset Group
cme_globex_mdp3_sbe_v1_5.channel_reset_group.dissect = function(buffer, offset, packet, parent, channel_reset_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.channel_reset_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.channel_reset_group.fields(buffer, offset, packet, parent, channel_reset_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.channel_reset_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.channel_reset_group.fields(buffer, offset, packet, parent, channel_reset_group_index)
  end
end

-- Channel Reset Groups
cme_globex_mdp3_sbe_v1_5.channel_reset_groups = {}

-- Calculate size of: Channel Reset Groups
cme_globex_mdp3_sbe_v1_5.channel_reset_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local channel_reset_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + channel_reset_group_count * 2

  return index
end

-- Display: Channel Reset Groups
cme_globex_mdp3_sbe_v1_5.channel_reset_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset Groups
cme_globex_mdp3_sbe_v1_5.channel_reset_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Channel Reset Group
  for channel_reset_group_index = 1, num_in_group do
    index, channel_reset_group = cme_globex_mdp3_sbe_v1_5.channel_reset_group.dissect(buffer, index, packet, parent, channel_reset_group_index)
  end

  return index
end

-- Dissect: Channel Reset Groups
cme_globex_mdp3_sbe_v1_5.channel_reset_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.channel_reset_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.channel_reset_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.channel_reset_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.channel_reset_groups.fields(buffer, offset, packet, parent)
  end
end

-- Channel Reset
cme_globex_mdp3_sbe_v1_5.channel_reset = {}

-- Calculate size of: Channel Reset
cme_globex_mdp3_sbe_v1_5.channel_reset.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.transact_time.size

  index = index + cme_globex_mdp3_sbe_v1_5.match_event_indicator.size

  index = index + cme_globex_mdp3_sbe_v1_5.channel_reset_groups.size(buffer, offset + index)

  return index
end

-- Display: Channel Reset
cme_globex_mdp3_sbe_v1_5.channel_reset.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset
cme_globex_mdp3_sbe_v1_5.channel_reset.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uInt64
  index, transact_time = cme_globex_mdp3_sbe_v1_5.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_globex_mdp3_sbe_v1_5.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Channel Reset Groups: Struct of 2 fields
  index, channel_reset_groups = cme_globex_mdp3_sbe_v1_5.channel_reset_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset
cme_globex_mdp3_sbe_v1_5.channel_reset.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.channel_reset, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.channel_reset.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.channel_reset.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.channel_reset.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
cme_globex_mdp3_sbe_v1_5.server_payload = {}

-- Dissect: Server Payload
cme_globex_mdp3_sbe_v1_5.server_payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Channel Reset
  if template_id == 4 then
    return cme_globex_mdp3_sbe_v1_5.channel_reset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat
  if template_id == 12 then
    return cme_globex_mdp3_sbe_v1_5.admin_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Login
  if template_id == 15 then
    return cme_globex_mdp3_sbe_v1_5.admin_login.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Logout
  if template_id == 16 then
    return cme_globex_mdp3_sbe_v1_5.admin_logout.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Future
  if template_id == 27 then
    return cme_globex_mdp3_sbe_v1_5.md_instrument_definition_future.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Spread
  if template_id == 29 then
    return cme_globex_mdp3_sbe_v1_5.md_instrument_definition_spread.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status
  if template_id == 30 then
    return cme_globex_mdp3_sbe_v1_5.security_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Book
  if template_id == 32 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_book.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Daily Statistics
  if template_id == 33 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_daily_statistics.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Limits Banding
  if template_id == 34 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_limits_banding.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Session Statistics
  if template_id == 35 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_session_statistics.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade
  if template_id == 36 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Volume
  if template_id == 37 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_volume.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh
  if template_id == 38 then
    return cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if template_id == 39 then
    return cme_globex_mdp3_sbe_v1_5.quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Option
  if template_id == 41 then
    return cme_globex_mdp3_sbe_v1_5.md_instrument_definition_option.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Summary
  if template_id == 42 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade_summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Negotiation Reject
  if template_id == 201 then
    return cme_globex_mdp3_sbe_v1_5.negotiation_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Negotiation Response
  if template_id == 202 then
    return cme_globex_mdp3_sbe_v1_5.negotiation_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Terminate
  if template_id == 203 then
    return cme_globex_mdp3_sbe_v1_5.terminate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Ack
  if template_id == 206 then
    return cme_globex_mdp3_sbe_v1_5.request_ack.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Reject
  if template_id == 207 then
    return cme_globex_mdp3_sbe_v1_5.request_reject.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cme_globex_mdp3_sbe_v1_5.message_header = {}

-- Size: Message Header
cme_globex_mdp3_sbe_v1_5.message_header.size =
  cme_globex_mdp3_sbe_v1_5.block_length.size + 
  cme_globex_mdp3_sbe_v1_5.template_id.size + 
  cme_globex_mdp3_sbe_v1_5.schema_id.size + 
  cme_globex_mdp3_sbe_v1_5.version.size

-- Display: Message Header
cme_globex_mdp3_sbe_v1_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_globex_mdp3_sbe_v1_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = cme_globex_mdp3_sbe_v1_5.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = cme_globex_mdp3_sbe_v1_5.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = cme_globex_mdp3_sbe_v1_5.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = cme_globex_mdp3_sbe_v1_5.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_globex_mdp3_sbe_v1_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.message_header, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Tcp Message
cme_globex_mdp3_sbe_v1_5.server_tcp_message = {}

-- Display: Server Tcp Message
cme_globex_mdp3_sbe_v1_5.server_tcp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Tcp Message
cme_globex_mdp3_sbe_v1_5.server_tcp_message.fields = function(buffer, offset, packet, parent, size_of_server_tcp_message)
  local index = offset

  -- Tcp Message Size: 2 Byte Unsigned Fixed Width Integer
  index, tcp_message_size = cme_globex_mdp3_sbe_v1_5.tcp_message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_globex_mdp3_sbe_v1_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Server Payload: Runtime Type with 22 branches
  index = cme_globex_mdp3_sbe_v1_5.server_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Server Tcp Message
cme_globex_mdp3_sbe_v1_5.server_tcp_message.dissect = function(buffer, offset, packet, parent, size_of_server_tcp_message)
  local index = offset + size_of_server_tcp_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.server_tcp_message, buffer(offset, 0))
    local current = cme_globex_mdp3_sbe_v1_5.server_tcp_message.fields(buffer, offset, packet, parent, size_of_server_tcp_message)
    parent:set_len(size_of_server_tcp_message)
    local display = cme_globex_mdp3_sbe_v1_5.server_tcp_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_globex_mdp3_sbe_v1_5.server_tcp_message.fields(buffer, offset, packet, parent, size_of_server_tcp_message)

    return index
  end
end

-- Remaining Bytes For: Server Tcp Message
local server_tcp_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < cme_globex_mdp3_sbe_v1_5.server_tcp_message.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Technical Header
cme_globex_mdp3_sbe_v1_5.server_technical_header = {}

-- Size: Server Technical Header
cme_globex_mdp3_sbe_v1_5.server_technical_header.size =
  cme_globex_mdp3_sbe_v1_5.encoding_type.size + 
  cme_globex_mdp3_sbe_v1_5.message_sequence_number.size + 
  cme_globex_mdp3_sbe_v1_5.tcp_sending_time.size

-- Display: Server Technical Header
cme_globex_mdp3_sbe_v1_5.server_technical_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Technical Header
cme_globex_mdp3_sbe_v1_5.server_technical_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer Static
  index, encoding_type = cme_globex_mdp3_sbe_v1_5.encoding_type.dissect(buffer, index, packet, parent)

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_globex_mdp3_sbe_v1_5.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Tcp Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, tcp_sending_time = cme_globex_mdp3_sbe_v1_5.tcp_sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Technical Header
cme_globex_mdp3_sbe_v1_5.server_technical_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.server_technical_header, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.server_technical_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.server_technical_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.server_technical_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Tcp Packet
cme_globex_mdp3_sbe_v1_5.server_tcp_packet = {}

-- Verify required size of Tcp packet
cme_globex_mdp3_sbe_v1_5.server_tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= cme_globex_mdp3_sbe_v1_5.server_technical_header.size + cme_globex_mdp3_sbe_v1_5.tcp_message_size.size + cme_globex_mdp3_sbe_v1_5.message_header.size
end

-- Dissect Server Tcp Packet
cme_globex_mdp3_sbe_v1_5.server_tcp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Server Technical Header: Struct of 3 fields
  index, server_technical_header = cme_globex_mdp3_sbe_v1_5.server_technical_header.dissect(buffer, index, packet, parent)

  -- Dependency for Server Tcp Message
  local end_of_payload = buffer:len()

  -- Server Tcp Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_tcp_message = server_tcp_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = cme_globex_mdp3_sbe_v1_5.server_tcp_message.dissect(buffer, index, packet, parent, size_of_server_tcp_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Subscriber Heartbeat
cme_globex_mdp3_sbe_v1_5.subscriber_heartbeat = {}

-- Display: Subscriber Heartbeat
cme_globex_mdp3_sbe_v1_5.subscriber_heartbeat.display = function(packet, parent, length)
  return "Subscriber Heartbeat"
end


-- Dissect: Subscriber Heartbeat
cme_globex_mdp3_sbe_v1_5.subscriber_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cme_globex_mdp3_sbe_v1_5.subscriber_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Security Status Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_group = {}

-- Size: Security Status Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_group.size =
  cme_globex_mdp3_sbe_v1_5.security_id.size

-- Display: Security Status Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_group.fields = function(buffer, offset, packet, parent, security_status_request_related_symbol_group_index)
  local index = offset

  -- Implicit Security Status Request Related Symbol Group Index
  if security_status_request_related_symbol_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_related_symbol_group_index, security_status_request_related_symbol_group_index)
    iteration:set_generated()
  end

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_group.dissect = function(buffer, offset, packet, parent, security_status_request_related_symbol_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_related_symbol_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_group.fields(buffer, offset, packet, parent, security_status_request_related_symbol_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_group.fields(buffer, offset, packet, parent, security_status_request_related_symbol_group_index)
  end
end

-- Security Status Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_groups = {}

-- Calculate size of: Security Status Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local security_status_request_related_symbol_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_status_request_related_symbol_group_count * 4

  return index
end

-- Display: Security Status Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Security Status Request Related Symbol Group
  for security_status_request_related_symbol_group_index = 1, num_in_group do
    index, security_status_request_related_symbol_group = cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_group.dissect(buffer, index, packet, parent, security_status_request_related_symbol_group_index)
  end

  return index
end

-- Dissect: Security Status Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_related_symbol_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Request Security Group
cme_globex_mdp3_sbe_v1_5.security_status_request_security_group = {}

-- Size: Security Status Request Security Group
cme_globex_mdp3_sbe_v1_5.security_status_request_security_group.size =
  cme_globex_mdp3_sbe_v1_5.security_group.size

-- Display: Security Status Request Security Group
cme_globex_mdp3_sbe_v1_5.security_status_request_security_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Request Security Group
cme_globex_mdp3_sbe_v1_5.security_status_request_security_group.fields = function(buffer, offset, packet, parent, security_status_request_security_group_index)
  local index = offset

  -- Implicit Security Status Request Security Group Index
  if security_status_request_security_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_security_group_index, security_status_request_security_group_index)
    iteration:set_generated()
  end

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_mdp3_sbe_v1_5.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Request Security Group
cme_globex_mdp3_sbe_v1_5.security_status_request_security_group.dissect = function(buffer, offset, packet, parent, security_status_request_security_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_security_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.security_status_request_security_group.fields(buffer, offset, packet, parent, security_status_request_security_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.security_status_request_security_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.security_status_request_security_group.fields(buffer, offset, packet, parent, security_status_request_security_group_index)
  end
end

-- Security Status Request Security Groups
cme_globex_mdp3_sbe_v1_5.security_status_request_security_groups = {}

-- Calculate size of: Security Status Request Security Groups
cme_globex_mdp3_sbe_v1_5.security_status_request_security_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local security_status_request_security_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_status_request_security_group_count * 6

  return index
end

-- Display: Security Status Request Security Groups
cme_globex_mdp3_sbe_v1_5.security_status_request_security_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Request Security Groups
cme_globex_mdp3_sbe_v1_5.security_status_request_security_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Security Status Request Security Group
  for security_status_request_security_group_index = 1, num_in_group do
    index, security_status_request_security_group = cme_globex_mdp3_sbe_v1_5.security_status_request_security_group.dissect(buffer, index, packet, parent, security_status_request_security_group_index)
  end

  return index
end

-- Dissect: Security Status Request Security Groups
cme_globex_mdp3_sbe_v1_5.security_status_request_security_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request_security_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.security_status_request_security_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.security_status_request_security_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.security_status_request_security_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Request
cme_globex_mdp3_sbe_v1_5.security_status_request = {}

-- Calculate size of: Security Status Request
cme_globex_mdp3_sbe_v1_5.security_status_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.md_req_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.subscription_req_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_status_request_security_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Status Request
cme_globex_mdp3_sbe_v1_5.security_status_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Request
cme_globex_mdp3_sbe_v1_5.security_status_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Req Id: uInt32
  index, md_req_id = cme_globex_mdp3_sbe_v1_5.md_req_id.dissect(buffer, index, packet, parent)

  -- Subscription Req Type: SubscriptionReqType
  index, subscription_req_type = cme_globex_mdp3_sbe_v1_5.subscription_req_type.dissect(buffer, index, packet, parent)

  -- Security Status Request Security Groups: Struct of 2 fields
  index, security_status_request_security_groups = cme_globex_mdp3_sbe_v1_5.security_status_request_security_groups.dissect(buffer, index, packet, parent)

  -- Security Status Request Related Symbol Groups: Struct of 2 fields
  index, security_status_request_related_symbol_groups = cme_globex_mdp3_sbe_v1_5.security_status_request_related_symbol_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Request
cme_globex_mdp3_sbe_v1_5.security_status_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_status_request, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.security_status_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.security_status_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.security_status_request.fields(buffer, offset, packet, parent)
  end
end

-- Security List Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_group = {}

-- Size: Security List Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_group.size =
  cme_globex_mdp3_sbe_v1_5.security_id.size

-- Display: Security List Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_group.fields = function(buffer, offset, packet, parent, security_list_request_related_symbol_group_index)
  local index = offset

  -- Implicit Security List Request Related Symbol Group Index
  if security_list_request_related_symbol_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_related_symbol_group_index, security_list_request_related_symbol_group_index)
    iteration:set_generated()
  end

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_group.dissect = function(buffer, offset, packet, parent, security_list_request_related_symbol_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_related_symbol_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_group.fields(buffer, offset, packet, parent, security_list_request_related_symbol_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_group.fields(buffer, offset, packet, parent, security_list_request_related_symbol_group_index)
  end
end

-- Security List Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_groups = {}

-- Calculate size of: Security List Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local security_list_request_related_symbol_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_list_request_related_symbol_group_count * 4

  return index
end

-- Display: Security List Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Security List Request Related Symbol Group
  for security_list_request_related_symbol_group_index = 1, num_in_group do
    index, security_list_request_related_symbol_group = cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_group.dissect(buffer, index, packet, parent, security_list_request_related_symbol_group_index)
  end

  return index
end

-- Dissect: Security List Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_related_symbol_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security List Request Security Group
cme_globex_mdp3_sbe_v1_5.security_list_request_security_group = {}

-- Size: Security List Request Security Group
cme_globex_mdp3_sbe_v1_5.security_list_request_security_group.size =
  cme_globex_mdp3_sbe_v1_5.security_group.size

-- Display: Security List Request Security Group
cme_globex_mdp3_sbe_v1_5.security_list_request_security_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Request Security Group
cme_globex_mdp3_sbe_v1_5.security_list_request_security_group.fields = function(buffer, offset, packet, parent, security_list_request_security_group_index)
  local index = offset

  -- Implicit Security List Request Security Group Index
  if security_list_request_security_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_security_group_index, security_list_request_security_group_index)
    iteration:set_generated()
  end

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_mdp3_sbe_v1_5.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Request Security Group
cme_globex_mdp3_sbe_v1_5.security_list_request_security_group.dissect = function(buffer, offset, packet, parent, security_list_request_security_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_security_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.security_list_request_security_group.fields(buffer, offset, packet, parent, security_list_request_security_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.security_list_request_security_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.security_list_request_security_group.fields(buffer, offset, packet, parent, security_list_request_security_group_index)
  end
end

-- Security List Request Security Groups
cme_globex_mdp3_sbe_v1_5.security_list_request_security_groups = {}

-- Calculate size of: Security List Request Security Groups
cme_globex_mdp3_sbe_v1_5.security_list_request_security_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local security_list_request_security_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_list_request_security_group_count * 6

  return index
end

-- Display: Security List Request Security Groups
cme_globex_mdp3_sbe_v1_5.security_list_request_security_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Request Security Groups
cme_globex_mdp3_sbe_v1_5.security_list_request_security_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Security List Request Security Group
  for security_list_request_security_group_index = 1, num_in_group do
    index, security_list_request_security_group = cme_globex_mdp3_sbe_v1_5.security_list_request_security_group.dissect(buffer, index, packet, parent, security_list_request_security_group_index)
  end

  return index
end

-- Dissect: Security List Request Security Groups
cme_globex_mdp3_sbe_v1_5.security_list_request_security_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request_security_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.security_list_request_security_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.security_list_request_security_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.security_list_request_security_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security List Request
cme_globex_mdp3_sbe_v1_5.security_list_request = {}

-- Calculate size of: Security List Request
cme_globex_mdp3_sbe_v1_5.security_list_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.md_req_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.subscription_req_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.security_list_request_security_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_groups.size(buffer, offset + index)

  return index
end

-- Display: Security List Request
cme_globex_mdp3_sbe_v1_5.security_list_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security List Request
cme_globex_mdp3_sbe_v1_5.security_list_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Req Id: uInt32
  index, md_req_id = cme_globex_mdp3_sbe_v1_5.md_req_id.dissect(buffer, index, packet, parent)

  -- Subscription Req Type: SubscriptionReqType
  index, subscription_req_type = cme_globex_mdp3_sbe_v1_5.subscription_req_type.dissect(buffer, index, packet, parent)

  -- Security List Request Security Groups: Struct of 2 fields
  index, security_list_request_security_groups = cme_globex_mdp3_sbe_v1_5.security_list_request_security_groups.dissect(buffer, index, packet, parent)

  -- Security List Request Related Symbol Groups: Struct of 2 fields
  index, security_list_request_related_symbol_groups = cme_globex_mdp3_sbe_v1_5.security_list_request_related_symbol_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security List Request
cme_globex_mdp3_sbe_v1_5.security_list_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.security_list_request, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.security_list_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.security_list_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.security_list_request.fields(buffer, offset, packet, parent)
  end
end

-- Market Data Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_group = {}

-- Size: Market Data Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_group.size =
  cme_globex_mdp3_sbe_v1_5.security_id.size

-- Display: Market Data Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_group.fields = function(buffer, offset, packet, parent, market_data_request_related_symbol_group_index)
  local index = offset

  -- Implicit Market Data Request Related Symbol Group Index
  if market_data_request_related_symbol_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_related_symbol_group_index, market_data_request_related_symbol_group_index)
    iteration:set_generated()
  end

  -- Security Id: Int32
  index, security_id = cme_globex_mdp3_sbe_v1_5.security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Request Related Symbol Group
cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_group.dissect = function(buffer, offset, packet, parent, market_data_request_related_symbol_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_related_symbol_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_group.fields(buffer, offset, packet, parent, market_data_request_related_symbol_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_group.fields(buffer, offset, packet, parent, market_data_request_related_symbol_group_index)
  end
end

-- Market Data Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_groups = {}

-- Calculate size of: Market Data Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local market_data_request_related_symbol_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + market_data_request_related_symbol_group_count * 4

  return index
end

-- Display: Market Data Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Market Data Request Related Symbol Group
  for market_data_request_related_symbol_group_index = 1, num_in_group do
    index, market_data_request_related_symbol_group = cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_group.dissect(buffer, index, packet, parent, market_data_request_related_symbol_group_index)
  end

  return index
end

-- Dissect: Market Data Request Related Symbol Groups
cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_related_symbol_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_groups.fields(buffer, offset, packet, parent)
  end
end

-- Market Data Request Security Group
cme_globex_mdp3_sbe_v1_5.market_data_request_security_group = {}

-- Size: Market Data Request Security Group
cme_globex_mdp3_sbe_v1_5.market_data_request_security_group.size =
  cme_globex_mdp3_sbe_v1_5.security_group.size

-- Display: Market Data Request Security Group
cme_globex_mdp3_sbe_v1_5.market_data_request_security_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Request Security Group
cme_globex_mdp3_sbe_v1_5.market_data_request_security_group.fields = function(buffer, offset, packet, parent, market_data_request_security_group_index)
  local index = offset

  -- Implicit Market Data Request Security Group Index
  if market_data_request_security_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_security_group_index, market_data_request_security_group_index)
    iteration:set_generated()
  end

  -- Security Group: SecurityGroup
  index, security_group = cme_globex_mdp3_sbe_v1_5.security_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Request Security Group
cme_globex_mdp3_sbe_v1_5.market_data_request_security_group.dissect = function(buffer, offset, packet, parent, market_data_request_security_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_security_group, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.market_data_request_security_group.fields(buffer, offset, packet, parent, market_data_request_security_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.market_data_request_security_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.market_data_request_security_group.fields(buffer, offset, packet, parent, market_data_request_security_group_index)
  end
end

-- Market Data Request Security Groups
cme_globex_mdp3_sbe_v1_5.market_data_request_security_groups = {}

-- Calculate size of: Market Data Request Security Groups
cme_globex_mdp3_sbe_v1_5.market_data_request_security_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.group_size.size

  -- Calculate field size from count
  local market_data_request_security_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + market_data_request_security_group_count * 6

  return index
end

-- Display: Market Data Request Security Groups
cme_globex_mdp3_sbe_v1_5.market_data_request_security_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Request Security Groups
cme_globex_mdp3_sbe_v1_5.market_data_request_security_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_globex_mdp3_sbe_v1_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Market Data Request Security Group
  for market_data_request_security_group_index = 1, num_in_group do
    index, market_data_request_security_group = cme_globex_mdp3_sbe_v1_5.market_data_request_security_group.dissect(buffer, index, packet, parent, market_data_request_security_group_index)
  end

  return index
end

-- Dissect: Market Data Request Security Groups
cme_globex_mdp3_sbe_v1_5.market_data_request_security_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request_security_groups, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.market_data_request_security_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.market_data_request_security_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.market_data_request_security_groups.fields(buffer, offset, packet, parent)
  end
end

-- Market Data Request
cme_globex_mdp3_sbe_v1_5.market_data_request = {}

-- Calculate size of: Market Data Request
cme_globex_mdp3_sbe_v1_5.market_data_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_globex_mdp3_sbe_v1_5.md_req_id.size

  index = index + cme_globex_mdp3_sbe_v1_5.subscription_req_type.size

  index = index + cme_globex_mdp3_sbe_v1_5.market_data_request_security_groups.size(buffer, offset + index)

  index = index + cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_groups.size(buffer, offset + index)

  return index
end

-- Display: Market Data Request
cme_globex_mdp3_sbe_v1_5.market_data_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Request
cme_globex_mdp3_sbe_v1_5.market_data_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Req Id: uInt32
  index, md_req_id = cme_globex_mdp3_sbe_v1_5.md_req_id.dissect(buffer, index, packet, parent)

  -- Subscription Req Type: SubscriptionReqType
  index, subscription_req_type = cme_globex_mdp3_sbe_v1_5.subscription_req_type.dissect(buffer, index, packet, parent)

  -- Market Data Request Security Groups: Struct of 2 fields
  index, market_data_request_security_groups = cme_globex_mdp3_sbe_v1_5.market_data_request_security_groups.dissect(buffer, index, packet, parent)

  -- Market Data Request Related Symbol Groups: Struct of 2 fields
  index, market_data_request_related_symbol_groups = cme_globex_mdp3_sbe_v1_5.market_data_request_related_symbol_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Request
cme_globex_mdp3_sbe_v1_5.market_data_request.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.market_data_request, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.market_data_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.market_data_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.market_data_request.fields(buffer, offset, packet, parent)
  end
end

-- Negotiate
cme_globex_mdp3_sbe_v1_5.negotiate = {}

-- Size: Negotiate
cme_globex_mdp3_sbe_v1_5.negotiate.size =
  cme_globex_mdp3_sbe_v1_5.hmac_signature.size + 
  cme_globex_mdp3_sbe_v1_5.access_key_id.size + 
  cme_globex_mdp3_sbe_v1_5.uuid.size + 
  cme_globex_mdp3_sbe_v1_5.request_timestamp.size + 
  cme_globex_mdp3_sbe_v1_5.session.size + 
  cme_globex_mdp3_sbe_v1_5.firm.size

-- Display: Negotiate
cme_globex_mdp3_sbe_v1_5.negotiate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiate
cme_globex_mdp3_sbe_v1_5.negotiate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hmac Signature: String32Req
  index, hmac_signature = cme_globex_mdp3_sbe_v1_5.hmac_signature.dissect(buffer, index, packet, parent)

  -- Access Key Id: String20Req
  index, access_key_id = cme_globex_mdp3_sbe_v1_5.access_key_id.dissect(buffer, index, packet, parent)

  -- Uuid: uInt64
  index, uuid = cme_globex_mdp3_sbe_v1_5.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: uInt64
  index, request_timestamp = cme_globex_mdp3_sbe_v1_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Session: String5
  index, session = cme_globex_mdp3_sbe_v1_5.session.dissect(buffer, index, packet, parent)

  -- Firm: String5
  index, firm = cme_globex_mdp3_sbe_v1_5.firm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate
cme_globex_mdp3_sbe_v1_5.negotiate.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.negotiate, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.negotiate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.negotiate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.negotiate.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
cme_globex_mdp3_sbe_v1_5.client_payload = {}

-- Dissect: Client Payload
cme_globex_mdp3_sbe_v1_5.client_payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Negotiate
  if template_id == 200 then
    return cme_globex_mdp3_sbe_v1_5.negotiate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Terminate
  if template_id == 203 then
    return cme_globex_mdp3_sbe_v1_5.terminate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Data Request
  if template_id == 205 then
    return cme_globex_mdp3_sbe_v1_5.market_data_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Request
  if template_id == 208 then
    return cme_globex_mdp3_sbe_v1_5.security_list_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Request
  if template_id == 209 then
    return cme_globex_mdp3_sbe_v1_5.security_status_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscriber Heartbeat
  if template_id == 210 then
    return cme_globex_mdp3_sbe_v1_5.subscriber_heartbeat.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Tcp Message
cme_globex_mdp3_sbe_v1_5.client_tcp_message = {}

-- Display: Client Tcp Message
cme_globex_mdp3_sbe_v1_5.client_tcp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Tcp Message
cme_globex_mdp3_sbe_v1_5.client_tcp_message.fields = function(buffer, offset, packet, parent, size_of_client_tcp_message)
  local index = offset

  -- Tcp Message Size: 2 Byte Unsigned Fixed Width Integer
  index, tcp_message_size = cme_globex_mdp3_sbe_v1_5.tcp_message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_globex_mdp3_sbe_v1_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Client Payload: Runtime Type with 6 branches
  index = cme_globex_mdp3_sbe_v1_5.client_payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Client Tcp Message
cme_globex_mdp3_sbe_v1_5.client_tcp_message.dissect = function(buffer, offset, packet, parent, size_of_client_tcp_message)
  local index = offset + size_of_client_tcp_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.client_tcp_message, buffer(offset, 0))
    local current = cme_globex_mdp3_sbe_v1_5.client_tcp_message.fields(buffer, offset, packet, parent, size_of_client_tcp_message)
    parent:set_len(size_of_client_tcp_message)
    local display = cme_globex_mdp3_sbe_v1_5.client_tcp_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_globex_mdp3_sbe_v1_5.client_tcp_message.fields(buffer, offset, packet, parent, size_of_client_tcp_message)

    return index
  end
end

-- Remaining Bytes For: Client Tcp Message
local client_tcp_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < cme_globex_mdp3_sbe_v1_5.client_tcp_message.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Technical Header
cme_globex_mdp3_sbe_v1_5.client_technical_header = {}

-- Size: Client Technical Header
cme_globex_mdp3_sbe_v1_5.client_technical_header.size =
  cme_globex_mdp3_sbe_v1_5.encoding_type.size + 
  cme_globex_mdp3_sbe_v1_5.message_sequence_number.size + 
  cme_globex_mdp3_sbe_v1_5.tcp_sending_time.size

-- Display: Client Technical Header
cme_globex_mdp3_sbe_v1_5.client_technical_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Technical Header
cme_globex_mdp3_sbe_v1_5.client_technical_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer Static
  index, encoding_type = cme_globex_mdp3_sbe_v1_5.encoding_type.dissect(buffer, index, packet, parent)

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_globex_mdp3_sbe_v1_5.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Tcp Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, tcp_sending_time = cme_globex_mdp3_sbe_v1_5.tcp_sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Technical Header
cme_globex_mdp3_sbe_v1_5.client_technical_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.client_technical_header, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.client_technical_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.client_technical_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.client_technical_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Tcp Packet
cme_globex_mdp3_sbe_v1_5.client_tcp_packet = {}

-- Verify required size of Tcp packet
cme_globex_mdp3_sbe_v1_5.client_tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= cme_globex_mdp3_sbe_v1_5.client_technical_header.size + cme_globex_mdp3_sbe_v1_5.tcp_message_size.size + cme_globex_mdp3_sbe_v1_5.message_header.size
end

-- Dissect Client Tcp Packet
cme_globex_mdp3_sbe_v1_5.client_tcp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Client Technical Header: Struct of 3 fields
  index, client_technical_header = cme_globex_mdp3_sbe_v1_5.client_technical_header.dissect(buffer, index, packet, parent)

  -- Dependency for Client Tcp Message
  local end_of_payload = buffer:len()

  -- Client Tcp Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_tcp_message = client_tcp_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = cme_globex_mdp3_sbe_v1_5.client_tcp_message.dissect(buffer, index, packet, parent, size_of_client_tcp_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Payload
cme_globex_mdp3_sbe_v1_5.payload = {}

-- Dissect: Payload
cme_globex_mdp3_sbe_v1_5.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Channel Reset
  if template_id == 4 then
    return cme_globex_mdp3_sbe_v1_5.channel_reset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat
  if template_id == 12 then
    return cme_globex_mdp3_sbe_v1_5.admin_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Login
  if template_id == 15 then
    return cme_globex_mdp3_sbe_v1_5.admin_login.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Logout
  if template_id == 16 then
    return cme_globex_mdp3_sbe_v1_5.admin_logout.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Future
  if template_id == 27 then
    return cme_globex_mdp3_sbe_v1_5.md_instrument_definition_future.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Spread
  if template_id == 29 then
    return cme_globex_mdp3_sbe_v1_5.md_instrument_definition_spread.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status
  if template_id == 30 then
    return cme_globex_mdp3_sbe_v1_5.security_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Book
  if template_id == 32 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_book.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Daily Statistics
  if template_id == 33 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_daily_statistics.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Limits Banding
  if template_id == 34 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_limits_banding.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Session Statistics
  if template_id == 35 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_session_statistics.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade
  if template_id == 36 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Volume
  if template_id == 37 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_volume.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh
  if template_id == 38 then
    return cme_globex_mdp3_sbe_v1_5.snapshot_full_refresh.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if template_id == 39 then
    return cme_globex_mdp3_sbe_v1_5.quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Option
  if template_id == 41 then
    return cme_globex_mdp3_sbe_v1_5.md_instrument_definition_option.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Summary
  if template_id == 42 then
    return cme_globex_mdp3_sbe_v1_5.md_incremental_refresh_trade_summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Negotiate
  if template_id == 200 then
    return cme_globex_mdp3_sbe_v1_5.negotiate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Negotiation Reject
  if template_id == 201 then
    return cme_globex_mdp3_sbe_v1_5.negotiation_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Negotiation Response
  if template_id == 202 then
    return cme_globex_mdp3_sbe_v1_5.negotiation_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Terminate
  if template_id == 203 then
    return cme_globex_mdp3_sbe_v1_5.terminate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Data Request
  if template_id == 205 then
    return cme_globex_mdp3_sbe_v1_5.market_data_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Ack
  if template_id == 206 then
    return cme_globex_mdp3_sbe_v1_5.request_ack.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Reject
  if template_id == 207 then
    return cme_globex_mdp3_sbe_v1_5.request_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security List Request
  if template_id == 208 then
    return cme_globex_mdp3_sbe_v1_5.security_list_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Request
  if template_id == 209 then
    return cme_globex_mdp3_sbe_v1_5.security_status_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subscriber Heartbeat
  if template_id == 210 then
    return cme_globex_mdp3_sbe_v1_5.subscriber_heartbeat.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
cme_globex_mdp3_sbe_v1_5.message = {}

-- Display: Message
cme_globex_mdp3_sbe_v1_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_globex_mdp3_sbe_v1_5.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_globex_mdp3_sbe_v1_5.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_globex_mdp3_sbe_v1_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 27 branches
  index = cme_globex_mdp3_sbe_v1_5.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_globex_mdp3_sbe_v1_5.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.message, buffer(offset, 0))
    local current = cme_globex_mdp3_sbe_v1_5.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = cme_globex_mdp3_sbe_v1_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_globex_mdp3_sbe_v1_5.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Binary Packet Header
cme_globex_mdp3_sbe_v1_5.binary_packet_header = {}

-- Size: Binary Packet Header
cme_globex_mdp3_sbe_v1_5.binary_packet_header.size =
  cme_globex_mdp3_sbe_v1_5.packet_sequence_number.size + 
  cme_globex_mdp3_sbe_v1_5.sending_time.size

-- Display: Binary Packet Header
cme_globex_mdp3_sbe_v1_5.binary_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_globex_mdp3_sbe_v1_5.binary_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = cme_globex_mdp3_sbe_v1_5.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_globex_mdp3_sbe_v1_5.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_globex_mdp3_sbe_v1_5.binary_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_globex_mdp3_sbe_v1_5.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_globex_mdp3_sbe_v1_5.binary_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_globex_mdp3_sbe_v1_5.binary_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_globex_mdp3_sbe_v1_5.binary_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
cme_globex_mdp3_sbe_v1_5.udp_packet = {}

-- Verify required size of Udp packet
cme_globex_mdp3_sbe_v1_5.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= cme_globex_mdp3_sbe_v1_5.binary_packet_header.size + cme_globex_mdp3_sbe_v1_5.message_size.size + cme_globex_mdp3_sbe_v1_5.message_header.size
end

-- Dissect Udp Packet
cme_globex_mdp3_sbe_v1_5.udp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_globex_mdp3_sbe_v1_5.binary_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = cme_globex_mdp3_sbe_v1_5.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_globex_mdp3_sbe_v1_5.init()
end

-- Connection roles for Cme Globex Mdp3 Sbe 1.5: Client is the initiator, Server is the acceptor
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
cme_globex_mdp3_sbe_v1_5.role = function(packet)
  if omi_cme_globex_mdp3_sbe_v1_5.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_cme_globex_mdp3_sbe_v1_5.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_cme_globex_mdp3_sbe_v1_5.prefs.acceptor_port
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
  if omi_cme_globex_mdp3_sbe_v1_5.prefs.swap_sides then
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
cme_globex_mdp3_sbe_v1_5.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Cme Globex Mdp3 Sbe 1.5
function omi_cme_globex_mdp3_sbe_v1_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cme_globex_mdp3_sbe_v1_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_globex_mdp3_sbe_v1_5, buffer(), omi_cme_globex_mdp3_sbe_v1_5.description, "("..buffer:len().." Bytes)")
  if packet.port_type == 3 then
    return cme_globex_mdp3_sbe_v1_5.udp_packet.dissect(buffer, packet, protocol)
  end
  if packet.port_type == 2 then
    local role = cme_globex_mdp3_sbe_v1_5.role(packet)
    if role == "initiator" then
      return cme_globex_mdp3_sbe_v1_5.client_tcp_packet.dissect(buffer, packet, protocol)
    end
    return cme_globex_mdp3_sbe_v1_5.server_tcp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Tcp Packet: would its message dispatch accept this frame?
cme_globex_mdp3_sbe_v1_5.client_tcp_packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end
  local template_id = buffer(18, 2):le_uint()

  -- Negotiate
  if template_id == 200 then
    return true
  end

  -- Terminate
  if template_id == 203 then
    return true
  end

  -- Market Data Request
  if template_id == 205 then
    return true
  end

  -- Security List Request
  if template_id == 208 then
    return true
  end

  -- Security Status Request
  if template_id == 209 then
    return true
  end

  -- Subscriber Heartbeat
  if template_id == 210 then
    return true
  end

  return false
end


-- Fingerprint of Server Tcp Packet: would its message dispatch accept this frame?
cme_globex_mdp3_sbe_v1_5.server_tcp_packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end
  local template_id = buffer(18, 2):le_uint()

  -- Channel Reset
  if template_id == 4 then
    return true
  end

  -- Admin Heartbeat
  if template_id == 12 then
    return true
  end

  -- Admin Login
  if template_id == 15 then
    return true
  end

  -- Admin Logout
  if template_id == 16 then
    return true
  end

  -- Md Instrument Definition Future
  if template_id == 27 then
    return true
  end

  -- Md Instrument Definition Spread
  if template_id == 29 then
    return true
  end

  -- Security Status
  if template_id == 30 then
    return true
  end

  -- Md Incremental Refresh Book
  if template_id == 32 then
    return true
  end

  -- Md Incremental Refresh Daily Statistics
  if template_id == 33 then
    return true
  end

  -- Md Incremental Refresh Limits Banding
  if template_id == 34 then
    return true
  end

  -- Md Incremental Refresh Session Statistics
  if template_id == 35 then
    return true
  end

  -- Md Incremental Refresh Trade
  if template_id == 36 then
    return true
  end

  -- Md Incremental Refresh Volume
  if template_id == 37 then
    return true
  end

  -- Snapshot Full Refresh
  if template_id == 38 then
    return true
  end

  -- Quote Request
  if template_id == 39 then
    return true
  end

  -- Md Instrument Definition Option
  if template_id == 41 then
    return true
  end

  -- Md Incremental Refresh Trade Summary
  if template_id == 42 then
    return true
  end

  -- Negotiation Reject
  if template_id == 201 then
    return true
  end

  -- Negotiation Response
  if template_id == 202 then
    return true
  end

  -- Terminate
  if template_id == 203 then
    return true
  end

  -- Request Ack
  if template_id == 206 then
    return true
  end

  -- Request Reject
  if template_id == 207 then
    return true
  end

  return false
end



-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
cme_globex_mdp3_sbe_v1_5.schema_id.udp_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 1 then
    return true
  end

  if value == 2 then
    return true
  end

  return false
end

-- Verify Version Field
cme_globex_mdp3_sbe_v1_5.version.udp_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 5 then
    return true
  end

  if value == 0 then
    return true
  end

  return false
end

-- Verify Encoding Type Field
cme_globex_mdp3_sbe_v1_5.encoding_type.client_tcp_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 2):le_uint()

  if value == 51966 then
    return true
  end

  return false
end

-- Verify Schema Id Field
cme_globex_mdp3_sbe_v1_5.schema_id.client_tcp_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 1 then
    return true
  end

  if value == 2 then
    return true
  end

  return false
end

-- Verify Version Field
cme_globex_mdp3_sbe_v1_5.version.client_tcp_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(22, 2):le_uint()

  if value == 5 then
    return true
  end

  if value == 0 then
    return true
  end

  return false
end

-- Verify Encoding Type Field
cme_globex_mdp3_sbe_v1_5.encoding_type.server_tcp_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 2):le_uint()

  if value == 51966 then
    return true
  end

  return false
end

-- Verify Schema Id Field
cme_globex_mdp3_sbe_v1_5.schema_id.server_tcp_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 1 then
    return true
  end

  if value == 2 then
    return true
  end

  return false
end

-- Verify Version Field
cme_globex_mdp3_sbe_v1_5.version.server_tcp_packet_verify = function(buffer)
  -- Attempt to read field
  local value = buffer(22, 2):le_uint()

  if value == 5 then
    return true
  end

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Globex Mdp3 Sbe 1.5 (Udp)
local function omi_cme_globex_mdp3_sbe_v1_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_globex_mdp3_sbe_v1_5.udp_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_globex_mdp3_sbe_v1_5.schema_id.udp_packet_verify(buffer) then return false end

  -- Verify Version
  if not cme_globex_mdp3_sbe_v1_5.version.udp_packet_verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_globex_mdp3_sbe_v1_5
  omi_cme_globex_mdp3_sbe_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cme Globex Mdp3 Sbe 1.5 (Tcp)
local function omi_cme_globex_mdp3_sbe_v1_5_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_globex_mdp3_sbe_v1_5.client_tcp_packet.requiredsize(buffer) then return false end

  -- Verify Encoding Type
  if not cme_globex_mdp3_sbe_v1_5.encoding_type.client_tcp_packet_verify(buffer) then return false end

  -- Verify Schema Id
  if not cme_globex_mdp3_sbe_v1_5.schema_id.client_tcp_packet_verify(buffer) then return false end

  -- Verify Version
  if not cme_globex_mdp3_sbe_v1_5.version.client_tcp_packet_verify(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not cme_globex_mdp3_sbe_v1_5.client_tcp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_globex_mdp3_sbe_v1_5
  omi_cme_globex_mdp3_sbe_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cme Globex Mdp3 Sbe 1.5 (Tcp)
local function omi_cme_globex_mdp3_sbe_v1_5_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_globex_mdp3_sbe_v1_5.server_tcp_packet.requiredsize(buffer) then return false end

  -- Verify Encoding Type
  if not cme_globex_mdp3_sbe_v1_5.encoding_type.server_tcp_packet_verify(buffer) then return false end

  -- Verify Schema Id
  if not cme_globex_mdp3_sbe_v1_5.schema_id.server_tcp_packet_verify(buffer) then return false end

  -- Verify Version
  if not cme_globex_mdp3_sbe_v1_5.version.server_tcp_packet_verify(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not cme_globex_mdp3_sbe_v1_5.server_tcp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_globex_mdp3_sbe_v1_5
  omi_cme_globex_mdp3_sbe_v1_5.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cme Globex Mdp3 Sbe 1.5 (Tcp): apply the heuristic of the sender's connection role
local function omi_cme_globex_mdp3_sbe_v1_5_tcp_heuristic(buffer, packet, parent)
  local role = cme_globex_mdp3_sbe_v1_5.role(packet)
  local first, second = omi_cme_globex_mdp3_sbe_v1_5_tcp_initiator_heuristic, omi_cme_globex_mdp3_sbe_v1_5_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  cme_globex_mdp3_sbe_v1_5.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  cme_globex_mdp3_sbe_v1_5.swap(packet)

  return false
end

-- Register Heuristics for Cme Globex Mdp3 Sbe 1.5
omi_cme_globex_mdp3_sbe_v1_5:register_heuristic("udp", omi_cme_globex_mdp3_sbe_v1_5_udp_heuristic)
omi_cme_globex_mdp3_sbe_v1_5:register_heuristic("tcp", omi_cme_globex_mdp3_sbe_v1_5_tcp_heuristic)
-- Register Cme Globex Mdp3 Sbe 1.5 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cme_globex_mdp3_sbe_v1_5)
-- Register Cme Globex Mdp3 Sbe 1.5 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cme_globex_mdp3_sbe_v1_5)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: CME Group
--   Version: 1.5
--   Date: Wednesday, August 6, 2014
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
