-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures Mdp3 Sbe 1.12 Protocol
local cme_futures_mdp3_sbe_v1_12 = Proto("Cme.Futures.Mdp3.Sbe.v1.12.Lua", "Cme Futures Mdp3 Sbe 1.12")

-- Component Tables
local show = {}
local format = {}
local cme_futures_mdp3_sbe_v1_12_display = {}
local cme_futures_mdp3_sbe_v1_12_dissect = {}
local cme_futures_mdp3_sbe_v1_12_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Futures Mdp3 Sbe 1.12 Fields
cme_futures_mdp3_sbe_v1_12.fields.actual = ProtoField.new("Actual", "cme.futures.mdp3.sbe.v1.12.actual", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
cme_futures_mdp3_sbe_v1_12.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "cme.futures.mdp3.sbe.v1.12.aggressorindicator", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.aggressor_side = ProtoField.new("Aggressor Side", "cme.futures.mdp3.sbe.v1.12.aggressorside", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.appl_id = ProtoField.new("Appl Id", "cme.futures.mdp3.sbe.v1.12.applid", ftypes.INT16)
cme_futures_mdp3_sbe_v1_12.fields.asset = ProtoField.new("Asset", "cme.futures.mdp3.sbe.v1.12.asset", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.futures.mdp3.sbe.v1.12.binarypacketheader", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.block_length = ProtoField.new("Block Length", "cme.futures.mdp3.sbe.v1.12.blocklength", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.block_trade_eligible = ProtoField.new("Block Trade Eligible", "cme.futures.mdp3.sbe.v1.12.blocktradeeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x04000000)
cme_futures_mdp3_sbe_v1_12.fields.cfi_code = ProtoField.new("Cfi Code", "cme.futures.mdp3.sbe.v1.12.cficode", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.channel_reset_group = ProtoField.new("Channel Reset Group", "cme.futures.mdp3.sbe.v1.12.channelresetgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.channel_reset_groups = ProtoField.new("Channel Reset Groups", "cme.futures.mdp3.sbe.v1.12.channelresetgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.cleared_volume = ProtoField.new("Cleared Volume", "cme.futures.mdp3.sbe.v1.12.clearedvolume", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.collateral_market_price = ProtoField.new("Collateral Market Price", "cme.futures.mdp3.sbe.v1.12.collateralmarketprice", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.collateral_market_value_group = ProtoField.new("Collateral Market Value Group", "cme.futures.mdp3.sbe.v1.12.collateralmarketvaluegroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.collateral_market_value_groups = ProtoField.new("Collateral Market Value Groups", "cme.futures.mdp3.sbe.v1.12.collateralmarketvaluegroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "cme.futures.mdp3.sbe.v1.12.contractmultiplier", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.contract_multiplier_unit = ProtoField.new("Contract Multiplier Unit", "cme.futures.mdp3.sbe.v1.12.contractmultiplierunit", ftypes.INT8)
cme_futures_mdp3_sbe_v1_12.fields.country_of_issue = ProtoField.new("Country Of Issue", "cme.futures.mdp3.sbe.v1.12.countryofissue", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.coupon_day_count = ProtoField.new("Coupon Day Count", "cme.futures.mdp3.sbe.v1.12.coupondaycount", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.coupon_frequency_period = ProtoField.new("Coupon Frequency Period", "cme.futures.mdp3.sbe.v1.12.couponfrequencyperiod", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.coupon_frequency_unit = ProtoField.new("Coupon Frequency Unit", "cme.futures.mdp3.sbe.v1.12.couponfrequencyunit", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.coupon_rate = ProtoField.new("Coupon Rate", "cme.futures.mdp3.sbe.v1.12.couponrate", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.currency = ProtoField.new("Currency", "cme.futures.mdp3.sbe.v1.12.currency", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.current_chunk = ProtoField.new("Current Chunk", "cme.futures.mdp3.sbe.v1.12.currentchunk", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.daily_product_eligibility = ProtoField.new("Daily Product Eligibility", "cme.futures.mdp3.sbe.v1.12.dailyproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000200)
cme_futures_mdp3_sbe_v1_12.fields.dated_date = ProtoField.new("Dated Date", "cme.futures.mdp3.sbe.v1.12.dateddate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.day = ProtoField.new("Day", "cme.futures.mdp3.sbe.v1.12.day", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.decay_quantity = ProtoField.new("Decay Quantity", "cme.futures.mdp3.sbe.v1.12.decayquantity", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.decay_start_date = ProtoField.new("Decay Start Date", "cme.futures.mdp3.sbe.v1.12.decaystartdate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.decaying_product_eligibility = ProtoField.new("Decaying Product Eligibility", "cme.futures.mdp3.sbe.v1.12.decayingproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00800000)
cme_futures_mdp3_sbe_v1_12.fields.dirty_price = ProtoField.new("Dirty Price", "cme.futures.mdp3.sbe.v1.12.dirtyprice", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.display_factor = ProtoField.new("Display Factor", "cme.futures.mdp3.sbe.v1.12.displayfactor", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.ebf_eligible = ProtoField.new("Ebf Eligible", "cme.futures.mdp3.sbe.v1.12.ebfeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x10000000)
cme_futures_mdp3_sbe_v1_12.fields.efp_eligible = ProtoField.new("Efp Eligible", "cme.futures.mdp3.sbe.v1.12.efpeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x08000000)
cme_futures_mdp3_sbe_v1_12.fields.efr_eligible = ProtoField.new("Efr Eligible", "cme.futures.mdp3.sbe.v1.12.efreligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x40000000)
cme_futures_mdp3_sbe_v1_12.fields.efs_eligible = ProtoField.new("Efs Eligible", "cme.futures.mdp3.sbe.v1.12.efseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x20000000)
cme_futures_mdp3_sbe_v1_12.fields.electronic_match_eligible = ProtoField.new("Electronic Match Eligible", "cme.futures.mdp3.sbe.v1.12.electronicmatcheligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x01000000)
cme_futures_mdp3_sbe_v1_12.fields.end_date = ProtoField.new("End Date", "cme.futures.mdp3.sbe.v1.12.enddate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.end_of_event = ProtoField.new("End Of Event", "cme.futures.mdp3.sbe.v1.12.endofevent", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
cme_futures_mdp3_sbe_v1_12.fields.event_time = ProtoField.new("Event Time", "cme.futures.mdp3.sbe.v1.12.eventtime", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.event_type = ProtoField.new("Event Type", "cme.futures.mdp3.sbe.v1.12.eventtype", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.events_group = ProtoField.new("Events Group", "cme.futures.mdp3.sbe.v1.12.eventsgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.events_groups = ProtoField.new("Events Groups", "cme.futures.mdp3.sbe.v1.12.eventsgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.final_daily = ProtoField.new("Final Daily", "cme.futures.mdp3.sbe.v1.12.finaldaily", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
cme_futures_mdp3_sbe_v1_12.fields.financial_instrument_full_name = ProtoField.new("Financial Instrument Full Name", "cme.futures.mdp3.sbe.v1.12.financialinstrumentfullname", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.fix_rate_local_time = ProtoField.new("Fix Rate Local Time", "cme.futures.mdp3.sbe.v1.12.fixratelocaltime", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.fix_rate_local_time_zone = ProtoField.new("Fix Rate Local Time Zone", "cme.futures.mdp3.sbe.v1.12.fixratelocaltimezone", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.flow_schedule_type = ProtoField.new("Flow Schedule Type", "cme.futures.mdp3.sbe.v1.12.flowscheduletype", ftypes.INT8)
cme_futures_mdp3_sbe_v1_12.fields.fx_benchmark_rate_fix = ProtoField.new("Fx Benchmark Rate Fix", "cme.futures.mdp3.sbe.v1.12.fxbenchmarkratefix", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.fx_currency_symbol = ProtoField.new("Fx Currency Symbol", "cme.futures.mdp3.sbe.v1.12.fxcurrencysymbol", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.group_size = ProtoField.new("Group Size", "cme.futures.mdp3.sbe.v1.12.groupsize", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.group_size_8_byte = ProtoField.new("Group Size 8 Byte", "cme.futures.mdp3.sbe.v1.12.groupsize8byte", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.gt_orders_eligibility = ProtoField.new("Gt Orders Eligibility", "cme.futures.mdp3.sbe.v1.12.gtorderseligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000400)
cme_futures_mdp3_sbe_v1_12.fields.halt_reason = ProtoField.new("Halt Reason", "cme.futures.mdp3.sbe.v1.12.haltreason", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "cme.futures.mdp3.sbe.v1.12.heartbtint", ftypes.INT8)
cme_futures_mdp3_sbe_v1_12.fields.high_limit_price = ProtoField.new("High Limit Price", "cme.futures.mdp3.sbe.v1.12.highlimitprice", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.ilink_indicative_mass_quoting_eligible = ProtoField.new("ILink Indicative Mass Quoting Eligible", "cme.futures.mdp3.sbe.v1.12.ilinkindicativemassquotingeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00010000)
cme_futures_mdp3_sbe_v1_12.fields.implied_matching_eligibility = ProtoField.new("Implied Matching Eligibility", "cme.futures.mdp3.sbe.v1.12.impliedmatchingeligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000800)
cme_futures_mdp3_sbe_v1_12.fields.inst_attrib_group = ProtoField.new("Inst Attrib Group", "cme.futures.mdp3.sbe.v1.12.instattribgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.inst_attrib_groups = ProtoField.new("Inst Attrib Groups", "cme.futures.mdp3.sbe.v1.12.instattribgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.inst_attrib_value = ProtoField.new("Inst Attrib Value", "cme.futures.mdp3.sbe.v1.12.instattribvalue", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.instrument_guid = ProtoField.new("Instrument Guid", "cme.futures.mdp3.sbe.v1.12.instrumentguid", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.intervening_days = ProtoField.new("Intervening Days", "cme.futures.mdp3.sbe.v1.12.interveningdays", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.intraday = ProtoField.new("Intraday", "cme.futures.mdp3.sbe.v1.12.intraday", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
cme_futures_mdp3_sbe_v1_12.fields.inverted_book = ProtoField.new("Inverted Book", "cme.futures.mdp3.sbe.v1.12.invertedbook", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00004000)
cme_futures_mdp3_sbe_v1_12.fields.is_aon_instrument = ProtoField.new("Is Aon Instrument", "cme.futures.mdp3.sbe.v1.12.isaoninstrument", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00008000)
cme_futures_mdp3_sbe_v1_12.fields.is_fractional = ProtoField.new("Is Fractional", "cme.futures.mdp3.sbe.v1.12.isfractional", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00080000)
cme_futures_mdp3_sbe_v1_12.fields.issue_date = ProtoField.new("Issue Date", "cme.futures.mdp3.sbe.v1.12.issuedate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.issuer = ProtoField.new("Issuer", "cme.futures.mdp3.sbe.v1.12.issuer", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.last_implied_msg = ProtoField.new("Last Implied Msg", "cme.futures.mdp3.sbe.v1.12.lastimpliedmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
cme_futures_mdp3_sbe_v1_12.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "cme.futures.mdp3.sbe.v1.12.lastmsgseqnumprocessed", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.last_qty = ProtoField.new("Last Qty", "cme.futures.mdp3.sbe.v1.12.lastqty", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.last_quote_msg = ProtoField.new("Last Quote Msg", "cme.futures.mdp3.sbe.v1.12.lastquotemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
cme_futures_mdp3_sbe_v1_12.fields.last_stats_msg = ProtoField.new("Last Stats Msg", "cme.futures.mdp3.sbe.v1.12.laststatsmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
cme_futures_mdp3_sbe_v1_12.fields.last_trade_msg = ProtoField.new("Last Trade Msg", "cme.futures.mdp3.sbe.v1.12.lasttrademsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
cme_futures_mdp3_sbe_v1_12.fields.last_update_time = ProtoField.new("Last Update Time", "cme.futures.mdp3.sbe.v1.12.lastupdatetime", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.last_volume_msg = ProtoField.new("Last Volume Msg", "cme.futures.mdp3.sbe.v1.12.lastvolumemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
cme_futures_mdp3_sbe_v1_12.fields.leg_option_delta = ProtoField.new("Leg Option Delta", "cme.futures.mdp3.sbe.v1.12.legoptiondelta", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.leg_price = ProtoField.new("Leg Price", "cme.futures.mdp3.sbe.v1.12.legprice", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.futures.mdp3.sbe.v1.12.legratioqty", ftypes.INT8)
cme_futures_mdp3_sbe_v1_12.fields.leg_security_id = ProtoField.new("Leg Security Id", "cme.futures.mdp3.sbe.v1.12.legsecurityid", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.leg_side = ProtoField.new("Leg Side", "cme.futures.mdp3.sbe.v1.12.legside", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.lot_type = ProtoField.new("Lot Type", "cme.futures.mdp3.sbe.v1.12.lottype", ftypes.INT8)
cme_futures_mdp3_sbe_v1_12.fields.lot_type_rules_group = ProtoField.new("Lot Type Rules Group", "cme.futures.mdp3.sbe.v1.12.lottyperulesgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.lot_type_rules_groups = ProtoField.new("Lot Type Rules Groups", "cme.futures.mdp3.sbe.v1.12.lottyperulesgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.low_limit_price = ProtoField.new("Low Limit Price", "cme.futures.mdp3.sbe.v1.12.lowlimitprice", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.m_d_feed_types_group = ProtoField.new("M D Feed Types Group", "cme.futures.mdp3.sbe.v1.12.mdfeedtypesgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_feed_types_groups = ProtoField.new("M D Feed Types Groups", "cme.futures.mdp3.sbe.v1.12.mdfeedtypesgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_group = ProtoField.new("M D Incremental Refresh Book Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbookgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_groups = ProtoField.new("M D Incremental Refresh Book Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbookgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_group = ProtoField.new("M D Incremental Refresh Book Long Qty Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbooklongqtygroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_groups = ProtoField.new("M D Incremental Refresh Book Long Qty Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbooklongqtygroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_order_group = ProtoField.new("M D Incremental Refresh Book Long Qty Order Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbooklongqtyordergroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_order_groups = ProtoField.new("M D Incremental Refresh Book Long Qty Order Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbooklongqtyordergroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_order_group = ProtoField.new("M D Incremental Refresh Book Order Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbookordergroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_order_groups = ProtoField.new("M D Incremental Refresh Book Order Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbookordergroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_daily_statistics_group = ProtoField.new("M D Incremental Refresh Daily Statistics Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshdailystatisticsgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_daily_statistics_groups = ProtoField.new("M D Incremental Refresh Daily Statistics Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshdailystatisticsgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_limits_banding_group = ProtoField.new("M D Incremental Refresh Limits Banding Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshlimitsbandinggroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_limits_banding_groups = ProtoField.new("M D Incremental Refresh Limits Banding Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshlimitsbandinggroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_order_book_group = ProtoField.new("M D Incremental Refresh Order Book Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshorderbookgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_order_book_groups = ProtoField.new("M D Incremental Refresh Order Book Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshorderbookgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_group = ProtoField.new("M D Incremental Refresh Session Statistics Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshsessionstatisticsgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_groups = ProtoField.new("M D Incremental Refresh Session Statistics Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshsessionstatisticsgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_long_qty_group = ProtoField.new("M D Incremental Refresh Session Statistics Long Qty Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshsessionstatisticslongqtygroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_long_qty_groups = ProtoField.new("M D Incremental Refresh Session Statistics Long Qty Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshsessionstatisticslongqtygroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_group = ProtoField.new("M D Incremental Refresh Trade Summary Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummarygroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_groups = ProtoField.new("M D Incremental Refresh Trade Summary Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummarygroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_group = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummarylongqtygroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_groups = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummarylongqtygroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_order_group = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Order Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummarylongqtyordergroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_order_groups = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Order Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummarylongqtyordergroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_order_group = ProtoField.new("M D Incremental Refresh Trade Summary Order Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummaryordergroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_order_groups = ProtoField.new("M D Incremental Refresh Trade Summary Order Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummaryordergroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_group = ProtoField.new("M D Incremental Refresh Volume Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshvolumegroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_groups = ProtoField.new("M D Incremental Refresh Volume Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshvolumegroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_long_qty_group = ProtoField.new("M D Incremental Refresh Volume Long Qty Group", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshvolumelongqtygroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_long_qty_groups = ProtoField.new("M D Incremental Refresh Volume Long Qty Groups", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshvolumelongqtygroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_instrument_definition_spread_leg_group = ProtoField.new("M D Instrument Definition Spread Leg Group", "cme.futures.mdp3.sbe.v1.12.mdinstrumentdefinitionspreadleggroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.m_d_instrument_definition_spread_leg_groups = ProtoField.new("M D Instrument Definition Spread Leg Groups", "cme.futures.mdp3.sbe.v1.12.mdinstrumentdefinitionspreadleggroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.main_fraction = ProtoField.new("Main Fraction", "cme.futures.mdp3.sbe.v1.12.mainfraction", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.market_depth = ProtoField.new("Market Depth", "cme.futures.mdp3.sbe.v1.12.marketdepth", ftypes.INT8)
cme_futures_mdp3_sbe_v1_12.fields.market_segment_id = ProtoField.new("Market Segment Id", "cme.futures.mdp3.sbe.v1.12.marketsegmentid", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.market_set = ProtoField.new("Market Set", "cme.futures.mdp3.sbe.v1.12.marketset", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.match_algorithm = ProtoField.new("Match Algorithm", "cme.futures.mdp3.sbe.v1.12.matchalgorithm", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "cme.futures.mdp3.sbe.v1.12.matcheventindicator", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.maturity_date = ProtoField.new("Maturity Date", "cme.futures.mdp3.sbe.v1.12.maturitydate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.futures.mdp3.sbe.v1.12.maturitymonthyear", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.max_no_of_substitutions = ProtoField.new("Max No Of Substitutions", "cme.futures.mdp3.sbe.v1.12.maxnoofsubstitutions", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.max_price_discretion_offset = ProtoField.new("Max Price Discretion Offset", "cme.futures.mdp3.sbe.v1.12.maxpricediscretionoffset", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.max_price_variation = ProtoField.new("Max Price Variation", "cme.futures.mdp3.sbe.v1.12.maxpricevariation", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "cme.futures.mdp3.sbe.v1.12.maxtradevol", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.md_display_qty = ProtoField.new("Md Display Qty", "cme.futures.mdp3.sbe.v1.12.mddisplayqty", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.md_display_qty_optional = ProtoField.new("Md Display Qty Optional", "cme.futures.mdp3.sbe.v1.12.mddisplayqtyoptional", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.futures.mdp3.sbe.v1.12.mdentrypx", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.md_entry_px_optional = ProtoField.new("Md Entry Px Optional", "cme.futures.mdp3.sbe.v1.12.mdentrypxoptional", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.futures.mdp3.sbe.v1.12.mdentrysize", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.md_entry_size_optional = ProtoField.new("Md Entry Size Optional", "cme.futures.mdp3.sbe.v1.12.mdentrysizeoptional", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.md_entry_size_u_int_64 = ProtoField.new("Md Entry Size u Int 64", "cme.futures.mdp3.sbe.v1.12.mdentrysizeuint64", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.md_entry_size_u_int_64_null = ProtoField.new("Md Entry Size u Int 64 Null", "cme.futures.mdp3.sbe.v1.12.mdentrysizeuint64null", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.md_entry_type_ = ProtoField.new("Md Entry Type ", "cme.futures.mdp3.sbe.v1.12.mdentrytype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_entry_type_book = ProtoField.new("Md Entry Type Book", "cme.futures.mdp3.sbe.v1.12.mdentrytypebook", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_entry_type_daily_statistics = ProtoField.new("Md Entry Type Daily Statistics", "cme.futures.mdp3.sbe.v1.12.mdentrytypedailystatistics", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_entry_type_statistics = ProtoField.new("Md Entry Type Statistics", "cme.futures.mdp3.sbe.v1.12.mdentrytypestatistics", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_feed_type = ProtoField.new("Md Feed Type", "cme.futures.mdp3.sbe.v1.12.mdfeedtype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_order_priority = ProtoField.new("Md Order Priority", "cme.futures.mdp3.sbe.v1.12.mdorderpriority", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.md_order_priority_optional = ProtoField.new("Md Order Priority Optional", "cme.futures.mdp3.sbe.v1.12.mdorderpriorityoptional", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.md_price_level = ProtoField.new("Md Price Level", "cme.futures.mdp3.sbe.v1.12.mdpricelevel", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.md_price_level_optional = ProtoField.new("Md Price Level Optional", "cme.futures.mdp3.sbe.v1.12.mdpriceleveloptional", ftypes.INT8)
cme_futures_mdp3_sbe_v1_12.fields.md_price_level_u_int_8_null = ProtoField.new("Md Price Level u Int 8 Null", "cme.futures.mdp3.sbe.v1.12.mdpriceleveluint8null", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.md_security_trading_status = ProtoField.new("Md Security Trading Status", "cme.futures.mdp3.sbe.v1.12.mdsecuritytradingstatus", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.md_stream_id = ProtoField.new("Md Stream Id", "cme.futures.mdp3.sbe.v1.12.mdstreamid", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.md_trade_entry_i_d_u_int_32 = ProtoField.new("Md Trade Entry I D u Int 32", "cme.futures.mdp3.sbe.v1.12.mdtradeentryiduint32", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.md_trade_entry_i_d_u_int_32_null = ProtoField.new("Md Trade Entry I D u Int 32 Null", "cme.futures.mdp3.sbe.v1.12.mdtradeentryiduint32null", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.md_update_action = ProtoField.new("Md Update Action", "cme.futures.mdp3.sbe.v1.12.mdupdateaction", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.message = ProtoField.new("Message", "cme.futures.mdp3.sbe.v1.12.message", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.message_header = ProtoField.new("Message Header", "cme.futures.mdp3.sbe.v1.12.messageheader", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.futures.mdp3.sbe.v1.12.messagesequencenumber", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.message_size = ProtoField.new("Message Size", "cme.futures.mdp3.sbe.v1.12.messagesize", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.min_cab_price = ProtoField.new("Min Cab Price", "cme.futures.mdp3.sbe.v1.12.mincabprice", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.min_lot_size_decimal_qty = ProtoField.new("Min Lot Size Decimal Qty", "cme.futures.mdp3.sbe.v1.12.minlotsizedecimalqty", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.min_price_increment = ProtoField.new("Min Price Increment", "cme.futures.mdp3.sbe.v1.12.minpriceincrement", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "cme.futures.mdp3.sbe.v1.12.minpriceincrementamount", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.min_price_increment_optional = ProtoField.new("Min Price Increment Optional", "cme.futures.mdp3.sbe.v1.12.minpriceincrementoptional", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.min_quote_life = ProtoField.new("Min Quote Life", "cme.futures.mdp3.sbe.v1.12.minquotelife", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "cme.futures.mdp3.sbe.v1.12.mintradevol", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.money_or_par = ProtoField.new("Money Or Par", "cme.futures.mdp3.sbe.v1.12.moneyorpar", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.month = ProtoField.new("Month", "cme.futures.mdp3.sbe.v1.12.month", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.negative_price_outright_eligible = ProtoField.new("Negative Price Outright Eligible", "cme.futures.mdp3.sbe.v1.12.negativepriceoutrighteligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00040000)
cme_futures_mdp3_sbe_v1_12.fields.negative_strike_eligible = ProtoField.new("Negative Strike Eligible", "cme.futures.mdp3.sbe.v1.12.negativestrikeeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00020000)
cme_futures_mdp3_sbe_v1_12.fields.no_chunks = ProtoField.new("No Chunks", "cme.futures.mdp3.sbe.v1.12.nochunks", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.null_value = ProtoField.new("Null Value", "cme.futures.mdp3.sbe.v1.12.nullvalue", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
cme_futures_mdp3_sbe_v1_12.fields.num_in_group = ProtoField.new("Num In Group", "cme.futures.mdp3.sbe.v1.12.numingroup", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.number_of_orders = ProtoField.new("Number Of Orders", "cme.futures.mdp3.sbe.v1.12.numberoforders", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.number_of_orders_optional = ProtoField.new("Number Of Orders Optional", "cme.futures.mdp3.sbe.v1.12.numberofordersoptional", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.futures.mdp3.sbe.v1.12.openclosesettlflag", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.open_interest_qty = ProtoField.new("Open Interest Qty", "cme.futures.mdp3.sbe.v1.12.openinterestqty", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.order_cross_eligible = ProtoField.new("Order Cross Eligible", "cme.futures.mdp3.sbe.v1.12.ordercrosseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x02000000)
cme_futures_mdp3_sbe_v1_12.fields.order_id = ProtoField.new("Order Id", "cme.futures.mdp3.sbe.v1.12.orderid", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.order_id_optional = ProtoField.new("Order Id Optional", "cme.futures.mdp3.sbe.v1.12.orderidoptional", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.order_qty = ProtoField.new("Order Qty", "cme.futures.mdp3.sbe.v1.12.orderqty", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.order_update_action = ProtoField.new("Order Update Action", "cme.futures.mdp3.sbe.v1.12.orderupdateaction", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.original_contract_size = ProtoField.new("Original Contract Size", "cme.futures.mdp3.sbe.v1.12.originalcontractsize", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.otc_eligible = ProtoField.new("Otc Eligible", "cme.futures.mdp3.sbe.v1.12.otceligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x80000000)
cme_futures_mdp3_sbe_v1_12.fields.packet = ProtoField.new("Packet", "cme.futures.mdp3.sbe.v1.12.packet", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.padding_1 = ProtoField.new("Padding 1", "cme.futures.mdp3.sbe.v1.12.padding1", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_12.fields.padding_2 = ProtoField.new("Padding 2", "cme.futures.mdp3.sbe.v1.12.padding2", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_12.fields.padding_3 = ProtoField.new("Padding 3", "cme.futures.mdp3.sbe.v1.12.padding3", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_12.fields.padding_4 = ProtoField.new("Padding 4", "cme.futures.mdp3.sbe.v1.12.padding4", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_12.fields.padding_5 = ProtoField.new("Padding 5", "cme.futures.mdp3.sbe.v1.12.padding5", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_12.fields.padding_6 = ProtoField.new("Padding 6", "cme.futures.mdp3.sbe.v1.12.padding6", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_12.fields.padding_7 = ProtoField.new("Padding 7", "cme.futures.mdp3.sbe.v1.12.padding7", ftypes.BYTES)
cme_futures_mdp3_sbe_v1_12.fields.par_value = ProtoField.new("Par Value", "cme.futures.mdp3.sbe.v1.12.parvalue", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.party_role_clearing_org = ProtoField.new("Party Role Clearing Org", "cme.futures.mdp3.sbe.v1.12.partyroleclearingorg", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.payload = ProtoField.new("Payload", "cme.futures.mdp3.sbe.v1.12.payload", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.price_display_format = ProtoField.new("Price Display Format", "cme.futures.mdp3.sbe.v1.12.pricedisplayformat", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.price_precision = ProtoField.new("Price Precision", "cme.futures.mdp3.sbe.v1.12.priceprecision", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.price_quote_currency = ProtoField.new("Price Quote Currency", "cme.futures.mdp3.sbe.v1.12.pricequotecurrency", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.price_quote_method = ProtoField.new("Price Quote Method", "cme.futures.mdp3.sbe.v1.12.pricequotemethod", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.price_ratio = ProtoField.new("Price Ratio", "cme.futures.mdp3.sbe.v1.12.priceratio", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.put_or_call = ProtoField.new("Put Or Call", "cme.futures.mdp3.sbe.v1.12.putorcall", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.futures.mdp3.sbe.v1.12.quotereqid", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.quote_type = ProtoField.new("Quote Type", "cme.futures.mdp3.sbe.v1.12.quotetype", ftypes.INT8)
cme_futures_mdp3_sbe_v1_12.fields.rate_source = ProtoField.new("Rate Source", "cme.futures.mdp3.sbe.v1.12.ratesource", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.recovery_msg = ProtoField.new("Recovery Msg", "cme.futures.mdp3.sbe.v1.12.recoverymsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
cme_futures_mdp3_sbe_v1_12.fields.reference_id = ProtoField.new("Reference Id", "cme.futures.mdp3.sbe.v1.12.referenceid", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.related_instruments_group = ProtoField.new("Related Instruments Group", "cme.futures.mdp3.sbe.v1.12.relatedinstrumentsgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.related_instruments_groups = ProtoField.new("Related Instruments Groups", "cme.futures.mdp3.sbe.v1.12.relatedinstrumentsgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.related_security_id = ProtoField.new("Related Security Id", "cme.futures.mdp3.sbe.v1.12.relatedsecurityid", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.futures.mdp3.sbe.v1.12.relatedsymgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.futures.mdp3.sbe.v1.12.relatedsymgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.related_symbol = ProtoField.new("Related Symbol", "cme.futures.mdp3.sbe.v1.12.relatedsymbol", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.repo_sub_type = ProtoField.new("Repo Sub Type", "cme.futures.mdp3.sbe.v1.12.reposubtype", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.reserved = ProtoField.new("Reserved", "cme.futures.mdp3.sbe.v1.12.reserved", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
cme_futures_mdp3_sbe_v1_12.fields.reserved_8 = ProtoField.new("Reserved 8", "cme.futures.mdp3.sbe.v1.12.reserved8", ftypes.UINT32, nil, base.DEC, 0x000000FF)
cme_futures_mdp3_sbe_v1_12.fields.reserved_bits = ProtoField.new("Reserved Bits", "cme.futures.mdp3.sbe.v1.12.reservedbits", ftypes.UINT8, nil, base.DEC, 0x70)
cme_futures_mdp3_sbe_v1_12.fields.rfq_cross_eligible = ProtoField.new("Rfq Cross Eligible", "cme.futures.mdp3.sbe.v1.12.rfqcrosseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00200000)
cme_futures_mdp3_sbe_v1_12.fields.risk_set = ProtoField.new("Risk Set", "cme.futures.mdp3.sbe.v1.12.riskset", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.rounded = ProtoField.new("Rounded", "cme.futures.mdp3.sbe.v1.12.rounded", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
cme_futures_mdp3_sbe_v1_12.fields.rpt_seq = ProtoField.new("Rpt Seq", "cme.futures.mdp3.sbe.v1.12.rptseq", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.mdp3.sbe.v1.12.schemaid", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.security_alt_id = ProtoField.new("Security Alt Id", "cme.futures.mdp3.sbe.v1.12.securityaltid", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "cme.futures.mdp3.sbe.v1.12.securityaltidsource", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.security_exchange = ProtoField.new("Security Exchange", "cme.futures.mdp3.sbe.v1.12.securityexchange", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.security_group = ProtoField.new("Security Group", "cme.futures.mdp3.sbe.v1.12.securitygroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.security_id = ProtoField.new("Security Id", "cme.futures.mdp3.sbe.v1.12.securityid", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.security_id_optional = ProtoField.new("Security Id Optional", "cme.futures.mdp3.sbe.v1.12.securityidoptional", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.security_status_workup_order_group = ProtoField.new("Security Status Workup Order Group", "cme.futures.mdp3.sbe.v1.12.securitystatusworkupordergroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.security_status_workup_order_groups = ProtoField.new("Security Status Workup Order Groups", "cme.futures.mdp3.sbe.v1.12.securitystatusworkupordergroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.futures.mdp3.sbe.v1.12.securitysubtype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.security_trading_event = ProtoField.new("Security Trading Event", "cme.futures.mdp3.sbe.v1.12.securitytradingevent", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.security_trading_status = ProtoField.new("Security Trading Status", "cme.futures.mdp3.sbe.v1.12.securitytradingstatus", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.security_type = ProtoField.new("Security Type", "cme.futures.mdp3.sbe.v1.12.securitytype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.security_update_action = ProtoField.new("Security Update Action", "cme.futures.mdp3.sbe.v1.12.securityupdateaction", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.sending_time = ProtoField.new("Sending Time", "cme.futures.mdp3.sbe.v1.12.sendingtime", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.settl_currency = ProtoField.new("Settl Currency", "cme.futures.mdp3.sbe.v1.12.settlcurrency", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.settl_date = ProtoField.new("Settl Date", "cme.futures.mdp3.sbe.v1.12.settldate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.settl_price_type = ProtoField.new("Settl Price Type", "cme.futures.mdp3.sbe.v1.12.settlpricetype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.settl_type = ProtoField.new("Settl Type", "cme.futures.mdp3.sbe.v1.12.settltype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.settlement_locale = ProtoField.new("Settlement Locale", "cme.futures.mdp3.sbe.v1.12.settlementlocale", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.side = ProtoField.new("Side", "cme.futures.mdp3.sbe.v1.12.side", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.side_optional = ProtoField.new("Side Optional", "cme.futures.mdp3.sbe.v1.12.sideoptional", ftypes.INT8)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_group = ProtoField.new("Snapshot Full Refresh Group", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_groups = ProtoField.new("Snapshot Full Refresh Groups", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_long_qty_group = ProtoField.new("Snapshot Full Refresh Long Qty Group", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshlongqtygroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_long_qty_groups = ProtoField.new("Snapshot Full Refresh Long Qty Groups", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshlongqtygroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_order_book_group = ProtoField.new("Snapshot Full Refresh Order Book Group", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshorderbookgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_order_book_groups = ProtoField.new("Snapshot Full Refresh Order Book Groups", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshorderbookgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tc_p_long_qty_group = ProtoField.new("Snapshot Full Refresh Tc P Long Qty Group", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshtcplongqtygroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tc_p_long_qty_groups = ProtoField.new("Snapshot Full Refresh Tc P Long Qty Groups", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshtcplongqtygroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tcp_group = ProtoField.new("Snapshot Full Refresh Tcp Group", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshtcpgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tcp_groups = ProtoField.new("Snapshot Full Refresh Tcp Groups", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshtcpgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_refresh_top_orders_group = ProtoField.new("Snapshot Refresh Top Orders Group", "cme.futures.mdp3.sbe.v1.12.snapshotrefreshtopordersgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_refresh_top_orders_groups = ProtoField.new("Snapshot Refresh Top Orders Groups", "cme.futures.mdp3.sbe.v1.12.snapshotrefreshtopordersgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.start_date = ProtoField.new("Start Date", "cme.futures.mdp3.sbe.v1.12.startdate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.strike_currency = ProtoField.new("Strike Currency", "cme.futures.mdp3.sbe.v1.12.strikecurrency", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.strike_price = ProtoField.new("Strike Price", "cme.futures.mdp3.sbe.v1.12.strikeprice", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.sub_fraction = ProtoField.new("Sub Fraction", "cme.futures.mdp3.sbe.v1.12.subfraction", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.symbol = ProtoField.new("Symbol", "cme.futures.mdp3.sbe.v1.12.symbol", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.template_id = ProtoField.new("Template Id", "cme.futures.mdp3.sbe.v1.12.templateid", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.term_code = ProtoField.new("Term Code", "cme.futures.mdp3.sbe.v1.12.termcode", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.termination_type = ProtoField.new("Termination Type", "cme.futures.mdp3.sbe.v1.12.terminationtype", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.text = ProtoField.new("Text", "cme.futures.mdp3.sbe.v1.12.text", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.tick_rule = ProtoField.new("Tick Rule", "cme.futures.mdp3.sbe.v1.12.tickrule", ftypes.INT8)
cme_futures_mdp3_sbe_v1_12.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "cme.futures.mdp3.sbe.v1.12.totnumreports", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.tot_num_reports_optional = ProtoField.new("Tot Num Reports Optional", "cme.futures.mdp3.sbe.v1.12.totnumreportsoptional", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.trade_date = ProtoField.new("Trade Date", "cme.futures.mdp3.sbe.v1.12.tradedate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.trade_link_id = ProtoField.new("Trade Link Id", "cme.futures.mdp3.sbe.v1.12.tradelinkid", ftypes.UINT32)
cme_futures_mdp3_sbe_v1_12.fields.tradeable_size = ProtoField.new("Tradeable Size", "cme.futures.mdp3.sbe.v1.12.tradeablesize", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "cme.futures.mdp3.sbe.v1.12.tradingreferencedate", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.trading_reference_price = ProtoField.new("Trading Reference Price", "cme.futures.mdp3.sbe.v1.12.tradingreferenceprice", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.trading_sessions_group = ProtoField.new("Trading Sessions Group", "cme.futures.mdp3.sbe.v1.12.tradingsessionsgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.trading_sessions_groups = ProtoField.new("Trading Sessions Groups", "cme.futures.mdp3.sbe.v1.12.tradingsessionsgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.mdp3.sbe.v1.12.transacttime", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.triangulation_eligible = ProtoField.new("Triangulation Eligible", "cme.futures.mdp3.sbe.v1.12.triangulationeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00001000)
cme_futures_mdp3_sbe_v1_12.fields.underlying_instrument_guid = ProtoField.new("Underlying Instrument Guid", "cme.futures.mdp3.sbe.v1.12.underlyinginstrumentguid", ftypes.UINT64)
cme_futures_mdp3_sbe_v1_12.fields.underlying_product = ProtoField.new("Underlying Product", "cme.futures.mdp3.sbe.v1.12.underlyingproduct", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.underlying_product_optional = ProtoField.new("Underlying Product Optional", "cme.futures.mdp3.sbe.v1.12.underlyingproductoptional", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.underlying_security_alt_id = ProtoField.new("Underlying Security Alt Id", "cme.futures.mdp3.sbe.v1.12.underlyingsecurityaltid", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.underlying_security_alt_id_source = ProtoField.new("Underlying Security Alt Id Source", "cme.futures.mdp3.sbe.v1.12.underlyingsecurityaltidsource", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "cme.futures.mdp3.sbe.v1.12.underlyingsecurityid", ftypes.INT32)
cme_futures_mdp3_sbe_v1_12.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "cme.futures.mdp3.sbe.v1.12.underlyingsymbol", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.underlyings_group = ProtoField.new("Underlyings Group", "cme.futures.mdp3.sbe.v1.12.underlyingsgroup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.underlyings_groups = ProtoField.new("Underlyings Groups", "cme.futures.mdp3.sbe.v1.12.underlyingsgroups", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "cme.futures.mdp3.sbe.v1.12.unitofmeasure", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.unit_of_measure_qty = ProtoField.new("Unit Of Measure Qty", "cme.futures.mdp3.sbe.v1.12.unitofmeasureqty", ftypes.DOUBLE)
cme_futures_mdp3_sbe_v1_12.fields.user_defined_instrument = ProtoField.new("User Defined Instrument", "cme.futures.mdp3.sbe.v1.12.userdefinedinstrument", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.variable_cab_eligible = ProtoField.new("Variable Cab Eligible", "cme.futures.mdp3.sbe.v1.12.variablecabeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00002000)
cme_futures_mdp3_sbe_v1_12.fields.variable_product_eligibility = ProtoField.new("Variable Product Eligibility", "cme.futures.mdp3.sbe.v1.12.variableproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000100)
cme_futures_mdp3_sbe_v1_12.fields.version = ProtoField.new("Version", "cme.futures.mdp3.sbe.v1.12.version", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.volatility_quoted_option = ProtoField.new("Volatility Quoted Option", "cme.futures.mdp3.sbe.v1.12.volatilityquotedoption", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00100000)
cme_futures_mdp3_sbe_v1_12.fields.week = ProtoField.new("Week", "cme.futures.mdp3.sbe.v1.12.week", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.workup_trading_status = ProtoField.new("Workup Trading Status", "cme.futures.mdp3.sbe.v1.12.workuptradingstatus", ftypes.UINT8)
cme_futures_mdp3_sbe_v1_12.fields.year = ProtoField.new("Year", "cme.futures.mdp3.sbe.v1.12.year", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.zero_price_outright_eligible = ProtoField.new("Zero Price Outright Eligible", "cme.futures.mdp3.sbe.v1.12.zeropriceoutrighteligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00400000)

-- Cme Futures Mdp3 Sbe 1.12 messages
cme_futures_mdp3_sbe_v1_12.fields.admin_login = ProtoField.new("Admin Login", "cme.futures.mdp3.sbe.v1.12.adminlogin", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.admin_logout = ProtoField.new("Admin Logout", "cme.futures.mdp3.sbe.v1.12.adminlogout", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.channel_reset = ProtoField.new("Channel Reset", "cme.futures.mdp3.sbe.v1.12.channelreset", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.collateral_market_value = ProtoField.new("Collateral Market Value", "cme.futures.mdp3.sbe.v1.12.collateralmarketvalue", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_book = ProtoField.new("Md Incremental Refresh Book", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbook", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_book_long_qty = ProtoField.new("Md Incremental Refresh Book Long Qty", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbooklongqty", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_daily_statistics = ProtoField.new("Md Incremental Refresh Daily Statistics", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshdailystatistics", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_limits_banding = ProtoField.new("Md Incremental Refresh Limits Banding", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshlimitsbanding", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_order_book = ProtoField.new("Md Incremental Refresh Order Book", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshorderbook", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_session_statistics = ProtoField.new("Md Incremental Refresh Session Statistics", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshsessionstatistics", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_session_statistics_long_qty = ProtoField.new("Md Incremental Refresh Session Statistics Long Qty", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshsessionstatisticslongqty", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_trade_summary = ProtoField.new("Md Incremental Refresh Trade Summary", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummary", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_trade_summary_long_qty = ProtoField.new("Md Incremental Refresh Trade Summary Long Qty", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummarylongqty", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_volume = ProtoField.new("Md Incremental Refresh Volume", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshvolume", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_volume_long_qty = ProtoField.new("Md Incremental Refresh Volume Long Qty", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshvolumelongqty", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_fixed_income = ProtoField.new("Md Instrument Definition Fixed Income", "cme.futures.mdp3.sbe.v1.12.mdinstrumentdefinitionfixedincome", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_future = ProtoField.new("Md Instrument Definition Future", "cme.futures.mdp3.sbe.v1.12.mdinstrumentdefinitionfuture", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_fx = ProtoField.new("Md Instrument Definition Fx", "cme.futures.mdp3.sbe.v1.12.mdinstrumentdefinitionfx", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_option = ProtoField.new("Md Instrument Definition Option", "cme.futures.mdp3.sbe.v1.12.mdinstrumentdefinitionoption", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_repo = ProtoField.new("Md Instrument Definition Repo", "cme.futures.mdp3.sbe.v1.12.mdinstrumentdefinitionrepo", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_spread = ProtoField.new("Md Instrument Definition Spread", "cme.futures.mdp3.sbe.v1.12.mdinstrumentdefinitionspread", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.quote_request = ProtoField.new("Quote Request", "cme.futures.mdp3.sbe.v1.12.quoterequest", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.security_status = ProtoField.new("Security Status", "cme.futures.mdp3.sbe.v1.12.securitystatus", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.security_status_workup = ProtoField.new("Security Status Workup", "cme.futures.mdp3.sbe.v1.12.securitystatusworkup", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh = ProtoField.new("Snapshot Full Refresh", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefresh", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_long_qty = ProtoField.new("Snapshot Full Refresh Long Qty", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshlongqty", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_order_book = ProtoField.new("Snapshot Full Refresh Order Book", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshorderbook", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tcp = ProtoField.new("Snapshot Full Refresh Tcp", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshtcp", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tcp_long_qty = ProtoField.new("Snapshot Full Refresh Tcp Long Qty", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshtcplongqty", ftypes.STRING)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_refresh_top_orders = ProtoField.new("Snapshot Refresh Top Orders", "cme.futures.mdp3.sbe.v1.12.snapshotrefreshtoporders", ftypes.STRING)

-- Cme Futures Mdp3 Sbe 1.12 generated fields
cme_futures_mdp3_sbe_v1_12.fields.channel_reset_group_index = ProtoField.new("Channel Reset Group Index", "cme.futures.mdp3.sbe.v1.12.channelresetgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.collateral_market_value_group_index = ProtoField.new("Collateral Market Value Group Index", "cme.futures.mdp3.sbe.v1.12.collateralmarketvaluegroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.events_group_index = ProtoField.new("Events Group Index", "cme.futures.mdp3.sbe.v1.12.eventsgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.inst_attrib_group_index = ProtoField.new("Inst Attrib Group Index", "cme.futures.mdp3.sbe.v1.12.instattribgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.lot_type_rules_group_index = ProtoField.new("Lot Type Rules Group Index", "cme.futures.mdp3.sbe.v1.12.lottyperulesgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_feed_types_group_index = ProtoField.new("M D Feed Types Group Index", "cme.futures.mdp3.sbe.v1.12.mdfeedtypesgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_group_index = ProtoField.new("M D Incremental Refresh Book Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbookgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_group_index = ProtoField.new("M D Incremental Refresh Book Long Qty Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbooklongqtygroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_order_group_index = ProtoField.new("M D Incremental Refresh Book Long Qty Order Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbooklongqtyordergroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_order_group_index = ProtoField.new("M D Incremental Refresh Book Order Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshbookordergroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_daily_statistics_group_index = ProtoField.new("M D Incremental Refresh Daily Statistics Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshdailystatisticsgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_limits_banding_group_index = ProtoField.new("M D Incremental Refresh Limits Banding Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshlimitsbandinggroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_order_book_group_index = ProtoField.new("M D Incremental Refresh Order Book Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshorderbookgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_group_index = ProtoField.new("M D Incremental Refresh Session Statistics Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshsessionstatisticsgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_long_qty_group_index = ProtoField.new("M D Incremental Refresh Session Statistics Long Qty Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshsessionstatisticslongqtygroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_group_index = ProtoField.new("M D Incremental Refresh Trade Summary Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummarygroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_group_index = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummarylongqtygroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_order_group_index = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Order Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummarylongqtyordergroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_order_group_index = ProtoField.new("M D Incremental Refresh Trade Summary Order Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshtradesummaryordergroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_group_index = ProtoField.new("M D Incremental Refresh Volume Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshvolumegroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_long_qty_group_index = ProtoField.new("M D Incremental Refresh Volume Long Qty Group Index", "cme.futures.mdp3.sbe.v1.12.mdincrementalrefreshvolumelongqtygroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.m_d_instrument_definition_spread_leg_group_index = ProtoField.new("M D Instrument Definition Spread Leg Group Index", "cme.futures.mdp3.sbe.v1.12.mdinstrumentdefinitionspreadleggroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.related_instruments_group_index = ProtoField.new("Related Instruments Group Index", "cme.futures.mdp3.sbe.v1.12.relatedinstrumentsgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.related_sym_group_index = ProtoField.new("Related Sym Group Index", "cme.futures.mdp3.sbe.v1.12.relatedsymgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.security_status_workup_order_group_index = ProtoField.new("Security Status Workup Order Group Index", "cme.futures.mdp3.sbe.v1.12.securitystatusworkupordergroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_group_index = ProtoField.new("Snapshot Full Refresh Group Index", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_long_qty_group_index = ProtoField.new("Snapshot Full Refresh Long Qty Group Index", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshlongqtygroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_order_book_group_index = ProtoField.new("Snapshot Full Refresh Order Book Group Index", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshorderbookgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tc_p_long_qty_group_index = ProtoField.new("Snapshot Full Refresh Tc P Long Qty Group Index", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshtcplongqtygroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tcp_group_index = ProtoField.new("Snapshot Full Refresh Tcp Group Index", "cme.futures.mdp3.sbe.v1.12.snapshotfullrefreshtcpgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.snapshot_refresh_top_orders_group_index = ProtoField.new("Snapshot Refresh Top Orders Group Index", "cme.futures.mdp3.sbe.v1.12.snapshotrefreshtopordersgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.trading_sessions_group_index = ProtoField.new("Trading Sessions Group Index", "cme.futures.mdp3.sbe.v1.12.tradingsessionsgroupindex", ftypes.UINT16)
cme_futures_mdp3_sbe_v1_12.fields.underlyings_group_index = ProtoField.new("Underlyings Group Index", "cme.futures.mdp3.sbe.v1.12.underlyingsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cme Futures Mdp3 Sbe 1.12 Element Dissection Options
show.admin_login = true
show.admin_logout = true
show.binary_packet_header = true
show.channel_reset = true
show.channel_reset_group = true
show.channel_reset_groups = true
show.collateral_market_value = true
show.collateral_market_value_group = true
show.collateral_market_value_groups = true
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
show.m_d_incremental_refresh_book_group = true
show.m_d_incremental_refresh_book_groups = true
show.m_d_incremental_refresh_book_long_qty_group = true
show.m_d_incremental_refresh_book_long_qty_groups = true
show.m_d_incremental_refresh_book_long_qty_order_group = true
show.m_d_incremental_refresh_book_long_qty_order_groups = true
show.m_d_incremental_refresh_book_order_group = true
show.m_d_incremental_refresh_book_order_groups = true
show.m_d_incremental_refresh_daily_statistics_group = true
show.m_d_incremental_refresh_daily_statistics_groups = true
show.m_d_incremental_refresh_limits_banding_group = true
show.m_d_incremental_refresh_limits_banding_groups = true
show.m_d_incremental_refresh_order_book_group = true
show.m_d_incremental_refresh_order_book_groups = true
show.m_d_incremental_refresh_session_statistics_group = true
show.m_d_incremental_refresh_session_statistics_groups = true
show.m_d_incremental_refresh_session_statistics_long_qty_group = true
show.m_d_incremental_refresh_session_statistics_long_qty_groups = true
show.m_d_incremental_refresh_trade_summary_group = true
show.m_d_incremental_refresh_trade_summary_groups = true
show.m_d_incremental_refresh_trade_summary_long_qty_group = true
show.m_d_incremental_refresh_trade_summary_long_qty_groups = true
show.m_d_incremental_refresh_trade_summary_long_qty_order_group = true
show.m_d_incremental_refresh_trade_summary_long_qty_order_groups = true
show.m_d_incremental_refresh_trade_summary_order_group = true
show.m_d_incremental_refresh_trade_summary_order_groups = true
show.m_d_incremental_refresh_volume_group = true
show.m_d_incremental_refresh_volume_groups = true
show.m_d_incremental_refresh_volume_long_qty_group = true
show.m_d_incremental_refresh_volume_long_qty_groups = true
show.m_d_instrument_definition_spread_leg_group = true
show.m_d_instrument_definition_spread_leg_groups = true
show.match_event_indicator = true
show.maturity_month_year = true
show.md_incremental_refresh_book = true
show.md_incremental_refresh_book_long_qty = true
show.md_incremental_refresh_daily_statistics = true
show.md_incremental_refresh_limits_banding = true
show.md_incremental_refresh_order_book = true
show.md_incremental_refresh_session_statistics = true
show.md_incremental_refresh_session_statistics_long_qty = true
show.md_incremental_refresh_trade_summary = true
show.md_incremental_refresh_trade_summary_long_qty = true
show.md_incremental_refresh_volume = true
show.md_incremental_refresh_volume_long_qty = true
show.md_instrument_definition_fixed_income = true
show.md_instrument_definition_future = true
show.md_instrument_definition_fx = true
show.md_instrument_definition_option = true
show.md_instrument_definition_repo = true
show.md_instrument_definition_spread = true
show.message = true
show.message_header = true
show.packet = true
show.quote_request = true
show.related_instruments_group = true
show.related_instruments_groups = true
show.related_sym_group = true
show.related_sym_groups = true
show.security_status = true
show.security_status_workup = true
show.security_status_workup_order_group = true
show.security_status_workup_order_groups = true
show.settl_price_type = true
show.snapshot_full_refresh = true
show.snapshot_full_refresh_group = true
show.snapshot_full_refresh_groups = true
show.snapshot_full_refresh_long_qty = true
show.snapshot_full_refresh_long_qty_group = true
show.snapshot_full_refresh_long_qty_groups = true
show.snapshot_full_refresh_order_book = true
show.snapshot_full_refresh_order_book_group = true
show.snapshot_full_refresh_order_book_groups = true
show.snapshot_full_refresh_tc_p_long_qty_group = true
show.snapshot_full_refresh_tc_p_long_qty_groups = true
show.snapshot_full_refresh_tcp = true
show.snapshot_full_refresh_tcp_group = true
show.snapshot_full_refresh_tcp_groups = true
show.snapshot_full_refresh_tcp_long_qty = true
show.snapshot_refresh_top_orders = true
show.snapshot_refresh_top_orders_group = true
show.snapshot_refresh_top_orders_groups = true
show.trading_sessions_group = true
show.trading_sessions_groups = true
show.underlyings_group = true
show.underlyings_groups = true
show.payload = false

-- Register Cme Futures Mdp3 Sbe 1.12 Show Options
cme_futures_mdp3_sbe_v1_12.prefs.show_admin_login = Pref.bool("Show Admin Login", show.admin_login, "Parse and add Admin Login to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_admin_logout = Pref.bool("Show Admin Logout", show.admin_logout, "Parse and add Admin Logout to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_channel_reset = Pref.bool("Show Channel Reset", show.channel_reset, "Parse and add Channel Reset to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_channel_reset_group = Pref.bool("Show Channel Reset Group", show.channel_reset_group, "Parse and add Channel Reset Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_channel_reset_groups = Pref.bool("Show Channel Reset Groups", show.channel_reset_groups, "Parse and add Channel Reset Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_collateral_market_value = Pref.bool("Show Collateral Market Value", show.collateral_market_value, "Parse and add Collateral Market Value to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_collateral_market_value_group = Pref.bool("Show Collateral Market Value Group", show.collateral_market_value_group, "Parse and add Collateral Market Value Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_collateral_market_value_groups = Pref.bool("Show Collateral Market Value Groups", show.collateral_market_value_groups, "Parse and add Collateral Market Value Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_events_group = Pref.bool("Show Events Group", show.events_group, "Parse and add Events Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_events_groups = Pref.bool("Show Events Groups", show.events_groups, "Parse and add Events Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_group_size_8_byte = Pref.bool("Show Group Size 8 Byte", show.group_size_8_byte, "Parse and add Group Size 8 Byte to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_inst_attrib_group = Pref.bool("Show Inst Attrib Group", show.inst_attrib_group, "Parse and add Inst Attrib Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_inst_attrib_groups = Pref.bool("Show Inst Attrib Groups", show.inst_attrib_groups, "Parse and add Inst Attrib Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_inst_attrib_value = Pref.bool("Show Inst Attrib Value", show.inst_attrib_value, "Parse and add Inst Attrib Value to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_lot_type_rules_group = Pref.bool("Show Lot Type Rules Group", show.lot_type_rules_group, "Parse and add Lot Type Rules Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_lot_type_rules_groups = Pref.bool("Show Lot Type Rules Groups", show.lot_type_rules_groups, "Parse and add Lot Type Rules Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_feed_types_group = Pref.bool("Show M D Feed Types Group", show.m_d_feed_types_group, "Parse and add M D Feed Types Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_feed_types_groups = Pref.bool("Show M D Feed Types Groups", show.m_d_feed_types_groups, "Parse and add M D Feed Types Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_group = Pref.bool("Show M D Incremental Refresh Book Group", show.m_d_incremental_refresh_book_group, "Parse and add M D Incremental Refresh Book Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_groups = Pref.bool("Show M D Incremental Refresh Book Groups", show.m_d_incremental_refresh_book_groups, "Parse and add M D Incremental Refresh Book Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_group = Pref.bool("Show M D Incremental Refresh Book Long Qty Group", show.m_d_incremental_refresh_book_long_qty_group, "Parse and add M D Incremental Refresh Book Long Qty Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_groups = Pref.bool("Show M D Incremental Refresh Book Long Qty Groups", show.m_d_incremental_refresh_book_long_qty_groups, "Parse and add M D Incremental Refresh Book Long Qty Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_order_group = Pref.bool("Show M D Incremental Refresh Book Long Qty Order Group", show.m_d_incremental_refresh_book_long_qty_order_group, "Parse and add M D Incremental Refresh Book Long Qty Order Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_order_groups = Pref.bool("Show M D Incremental Refresh Book Long Qty Order Groups", show.m_d_incremental_refresh_book_long_qty_order_groups, "Parse and add M D Incremental Refresh Book Long Qty Order Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_order_group = Pref.bool("Show M D Incremental Refresh Book Order Group", show.m_d_incremental_refresh_book_order_group, "Parse and add M D Incremental Refresh Book Order Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_order_groups = Pref.bool("Show M D Incremental Refresh Book Order Groups", show.m_d_incremental_refresh_book_order_groups, "Parse and add M D Incremental Refresh Book Order Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_daily_statistics_group = Pref.bool("Show M D Incremental Refresh Daily Statistics Group", show.m_d_incremental_refresh_daily_statistics_group, "Parse and add M D Incremental Refresh Daily Statistics Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_daily_statistics_groups = Pref.bool("Show M D Incremental Refresh Daily Statistics Groups", show.m_d_incremental_refresh_daily_statistics_groups, "Parse and add M D Incremental Refresh Daily Statistics Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_limits_banding_group = Pref.bool("Show M D Incremental Refresh Limits Banding Group", show.m_d_incremental_refresh_limits_banding_group, "Parse and add M D Incremental Refresh Limits Banding Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_limits_banding_groups = Pref.bool("Show M D Incremental Refresh Limits Banding Groups", show.m_d_incremental_refresh_limits_banding_groups, "Parse and add M D Incremental Refresh Limits Banding Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_order_book_group = Pref.bool("Show M D Incremental Refresh Order Book Group", show.m_d_incremental_refresh_order_book_group, "Parse and add M D Incremental Refresh Order Book Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_order_book_groups = Pref.bool("Show M D Incremental Refresh Order Book Groups", show.m_d_incremental_refresh_order_book_groups, "Parse and add M D Incremental Refresh Order Book Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_group = Pref.bool("Show M D Incremental Refresh Session Statistics Group", show.m_d_incremental_refresh_session_statistics_group, "Parse and add M D Incremental Refresh Session Statistics Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_groups = Pref.bool("Show M D Incremental Refresh Session Statistics Groups", show.m_d_incremental_refresh_session_statistics_groups, "Parse and add M D Incremental Refresh Session Statistics Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_group = Pref.bool("Show M D Incremental Refresh Session Statistics Long Qty Group", show.m_d_incremental_refresh_session_statistics_long_qty_group, "Parse and add M D Incremental Refresh Session Statistics Long Qty Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_groups = Pref.bool("Show M D Incremental Refresh Session Statistics Long Qty Groups", show.m_d_incremental_refresh_session_statistics_long_qty_groups, "Parse and add M D Incremental Refresh Session Statistics Long Qty Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_group = Pref.bool("Show M D Incremental Refresh Trade Summary Group", show.m_d_incremental_refresh_trade_summary_group, "Parse and add M D Incremental Refresh Trade Summary Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_groups = Pref.bool("Show M D Incremental Refresh Trade Summary Groups", show.m_d_incremental_refresh_trade_summary_groups, "Parse and add M D Incremental Refresh Trade Summary Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_group = Pref.bool("Show M D Incremental Refresh Trade Summary Long Qty Group", show.m_d_incremental_refresh_trade_summary_long_qty_group, "Parse and add M D Incremental Refresh Trade Summary Long Qty Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_groups = Pref.bool("Show M D Incremental Refresh Trade Summary Long Qty Groups", show.m_d_incremental_refresh_trade_summary_long_qty_groups, "Parse and add M D Incremental Refresh Trade Summary Long Qty Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_group = Pref.bool("Show M D Incremental Refresh Trade Summary Long Qty Order Group", show.m_d_incremental_refresh_trade_summary_long_qty_order_group, "Parse and add M D Incremental Refresh Trade Summary Long Qty Order Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_groups = Pref.bool("Show M D Incremental Refresh Trade Summary Long Qty Order Groups", show.m_d_incremental_refresh_trade_summary_long_qty_order_groups, "Parse and add M D Incremental Refresh Trade Summary Long Qty Order Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_order_group = Pref.bool("Show M D Incremental Refresh Trade Summary Order Group", show.m_d_incremental_refresh_trade_summary_order_group, "Parse and add M D Incremental Refresh Trade Summary Order Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_order_groups = Pref.bool("Show M D Incremental Refresh Trade Summary Order Groups", show.m_d_incremental_refresh_trade_summary_order_groups, "Parse and add M D Incremental Refresh Trade Summary Order Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_group = Pref.bool("Show M D Incremental Refresh Volume Group", show.m_d_incremental_refresh_volume_group, "Parse and add M D Incremental Refresh Volume Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_groups = Pref.bool("Show M D Incremental Refresh Volume Groups", show.m_d_incremental_refresh_volume_groups, "Parse and add M D Incremental Refresh Volume Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_long_qty_group = Pref.bool("Show M D Incremental Refresh Volume Long Qty Group", show.m_d_incremental_refresh_volume_long_qty_group, "Parse and add M D Incremental Refresh Volume Long Qty Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_long_qty_groups = Pref.bool("Show M D Incremental Refresh Volume Long Qty Groups", show.m_d_incremental_refresh_volume_long_qty_groups, "Parse and add M D Incremental Refresh Volume Long Qty Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_instrument_definition_spread_leg_group = Pref.bool("Show M D Instrument Definition Spread Leg Group", show.m_d_instrument_definition_spread_leg_group, "Parse and add M D Instrument Definition Spread Leg Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_instrument_definition_spread_leg_groups = Pref.bool("Show M D Instrument Definition Spread Leg Groups", show.m_d_instrument_definition_spread_leg_groups, "Parse and add M D Instrument Definition Spread Leg Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_match_event_indicator = Pref.bool("Show Match Event Indicator", show.match_event_indicator, "Parse and add Match Event Indicator to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_book = Pref.bool("Show Md Incremental Refresh Book", show.md_incremental_refresh_book, "Parse and add Md Incremental Refresh Book to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_book_long_qty = Pref.bool("Show Md Incremental Refresh Book Long Qty", show.md_incremental_refresh_book_long_qty, "Parse and add Md Incremental Refresh Book Long Qty to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_daily_statistics = Pref.bool("Show Md Incremental Refresh Daily Statistics", show.md_incremental_refresh_daily_statistics, "Parse and add Md Incremental Refresh Daily Statistics to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_limits_banding = Pref.bool("Show Md Incremental Refresh Limits Banding", show.md_incremental_refresh_limits_banding, "Parse and add Md Incremental Refresh Limits Banding to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_order_book = Pref.bool("Show Md Incremental Refresh Order Book", show.md_incremental_refresh_order_book, "Parse and add Md Incremental Refresh Order Book to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_session_statistics = Pref.bool("Show Md Incremental Refresh Session Statistics", show.md_incremental_refresh_session_statistics, "Parse and add Md Incremental Refresh Session Statistics to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_session_statistics_long_qty = Pref.bool("Show Md Incremental Refresh Session Statistics Long Qty", show.md_incremental_refresh_session_statistics_long_qty, "Parse and add Md Incremental Refresh Session Statistics Long Qty to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_trade_summary = Pref.bool("Show Md Incremental Refresh Trade Summary", show.md_incremental_refresh_trade_summary, "Parse and add Md Incremental Refresh Trade Summary to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_trade_summary_long_qty = Pref.bool("Show Md Incremental Refresh Trade Summary Long Qty", show.md_incremental_refresh_trade_summary_long_qty, "Parse and add Md Incremental Refresh Trade Summary Long Qty to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_volume = Pref.bool("Show Md Incremental Refresh Volume", show.md_incremental_refresh_volume, "Parse and add Md Incremental Refresh Volume to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_volume_long_qty = Pref.bool("Show Md Incremental Refresh Volume Long Qty", show.md_incremental_refresh_volume_long_qty, "Parse and add Md Incremental Refresh Volume Long Qty to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_fixed_income = Pref.bool("Show Md Instrument Definition Fixed Income", show.md_instrument_definition_fixed_income, "Parse and add Md Instrument Definition Fixed Income to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_future = Pref.bool("Show Md Instrument Definition Future", show.md_instrument_definition_future, "Parse and add Md Instrument Definition Future to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_fx = Pref.bool("Show Md Instrument Definition Fx", show.md_instrument_definition_fx, "Parse and add Md Instrument Definition Fx to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_option = Pref.bool("Show Md Instrument Definition Option", show.md_instrument_definition_option, "Parse and add Md Instrument Definition Option to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_repo = Pref.bool("Show Md Instrument Definition Repo", show.md_instrument_definition_repo, "Parse and add Md Instrument Definition Repo to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_spread = Pref.bool("Show Md Instrument Definition Spread", show.md_instrument_definition_spread, "Parse and add Md Instrument Definition Spread to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_related_instruments_group = Pref.bool("Show Related Instruments Group", show.related_instruments_group, "Parse and add Related Instruments Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_related_instruments_groups = Pref.bool("Show Related Instruments Groups", show.related_instruments_groups, "Parse and add Related Instruments Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_related_sym_group = Pref.bool("Show Related Sym Group", show.related_sym_group, "Parse and add Related Sym Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_related_sym_groups = Pref.bool("Show Related Sym Groups", show.related_sym_groups, "Parse and add Related Sym Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_security_status = Pref.bool("Show Security Status", show.security_status, "Parse and add Security Status to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_security_status_workup = Pref.bool("Show Security Status Workup", show.security_status_workup, "Parse and add Security Status Workup to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_security_status_workup_order_group = Pref.bool("Show Security Status Workup Order Group", show.security_status_workup_order_group, "Parse and add Security Status Workup Order Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_security_status_workup_order_groups = Pref.bool("Show Security Status Workup Order Groups", show.security_status_workup_order_groups, "Parse and add Security Status Workup Order Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_settl_price_type = Pref.bool("Show Settl Price Type", show.settl_price_type, "Parse and add Settl Price Type to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh = Pref.bool("Show Snapshot Full Refresh", show.snapshot_full_refresh, "Parse and add Snapshot Full Refresh to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_group = Pref.bool("Show Snapshot Full Refresh Group", show.snapshot_full_refresh_group, "Parse and add Snapshot Full Refresh Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_groups = Pref.bool("Show Snapshot Full Refresh Groups", show.snapshot_full_refresh_groups, "Parse and add Snapshot Full Refresh Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_long_qty = Pref.bool("Show Snapshot Full Refresh Long Qty", show.snapshot_full_refresh_long_qty, "Parse and add Snapshot Full Refresh Long Qty to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_long_qty_group = Pref.bool("Show Snapshot Full Refresh Long Qty Group", show.snapshot_full_refresh_long_qty_group, "Parse and add Snapshot Full Refresh Long Qty Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_long_qty_groups = Pref.bool("Show Snapshot Full Refresh Long Qty Groups", show.snapshot_full_refresh_long_qty_groups, "Parse and add Snapshot Full Refresh Long Qty Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_order_book = Pref.bool("Show Snapshot Full Refresh Order Book", show.snapshot_full_refresh_order_book, "Parse and add Snapshot Full Refresh Order Book to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_order_book_group = Pref.bool("Show Snapshot Full Refresh Order Book Group", show.snapshot_full_refresh_order_book_group, "Parse and add Snapshot Full Refresh Order Book Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_order_book_groups = Pref.bool("Show Snapshot Full Refresh Order Book Groups", show.snapshot_full_refresh_order_book_groups, "Parse and add Snapshot Full Refresh Order Book Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tc_p_long_qty_group = Pref.bool("Show Snapshot Full Refresh Tc P Long Qty Group", show.snapshot_full_refresh_tc_p_long_qty_group, "Parse and add Snapshot Full Refresh Tc P Long Qty Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tc_p_long_qty_groups = Pref.bool("Show Snapshot Full Refresh Tc P Long Qty Groups", show.snapshot_full_refresh_tc_p_long_qty_groups, "Parse and add Snapshot Full Refresh Tc P Long Qty Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp = Pref.bool("Show Snapshot Full Refresh Tcp", show.snapshot_full_refresh_tcp, "Parse and add Snapshot Full Refresh Tcp to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp_group = Pref.bool("Show Snapshot Full Refresh Tcp Group", show.snapshot_full_refresh_tcp_group, "Parse and add Snapshot Full Refresh Tcp Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp_groups = Pref.bool("Show Snapshot Full Refresh Tcp Groups", show.snapshot_full_refresh_tcp_groups, "Parse and add Snapshot Full Refresh Tcp Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp_long_qty = Pref.bool("Show Snapshot Full Refresh Tcp Long Qty", show.snapshot_full_refresh_tcp_long_qty, "Parse and add Snapshot Full Refresh Tcp Long Qty to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_refresh_top_orders = Pref.bool("Show Snapshot Refresh Top Orders", show.snapshot_refresh_top_orders, "Parse and add Snapshot Refresh Top Orders to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_refresh_top_orders_group = Pref.bool("Show Snapshot Refresh Top Orders Group", show.snapshot_refresh_top_orders_group, "Parse and add Snapshot Refresh Top Orders Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_refresh_top_orders_groups = Pref.bool("Show Snapshot Refresh Top Orders Groups", show.snapshot_refresh_top_orders_groups, "Parse and add Snapshot Refresh Top Orders Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_trading_sessions_group = Pref.bool("Show Trading Sessions Group", show.trading_sessions_group, "Parse and add Trading Sessions Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_trading_sessions_groups = Pref.bool("Show Trading Sessions Groups", show.trading_sessions_groups, "Parse and add Trading Sessions Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_underlyings_group = Pref.bool("Show Underlyings Group", show.underlyings_group, "Parse and add Underlyings Group to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_underlyings_groups = Pref.bool("Show Underlyings Groups", show.underlyings_groups, "Parse and add Underlyings Groups to protocol tree")
cme_futures_mdp3_sbe_v1_12.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cme_futures_mdp3_sbe_v1_12.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.admin_login ~= cme_futures_mdp3_sbe_v1_12.prefs.show_admin_login then
    show.admin_login = cme_futures_mdp3_sbe_v1_12.prefs.show_admin_login
    changed = true
  end
  if show.admin_logout ~= cme_futures_mdp3_sbe_v1_12.prefs.show_admin_logout then
    show.admin_logout = cme_futures_mdp3_sbe_v1_12.prefs.show_admin_logout
    changed = true
  end
  if show.binary_packet_header ~= cme_futures_mdp3_sbe_v1_12.prefs.show_binary_packet_header then
    show.binary_packet_header = cme_futures_mdp3_sbe_v1_12.prefs.show_binary_packet_header
    changed = true
  end
  if show.channel_reset ~= cme_futures_mdp3_sbe_v1_12.prefs.show_channel_reset then
    show.channel_reset = cme_futures_mdp3_sbe_v1_12.prefs.show_channel_reset
    changed = true
  end
  if show.channel_reset_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_channel_reset_group then
    show.channel_reset_group = cme_futures_mdp3_sbe_v1_12.prefs.show_channel_reset_group
    changed = true
  end
  if show.channel_reset_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_channel_reset_groups then
    show.channel_reset_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_channel_reset_groups
    changed = true
  end
  if show.collateral_market_value ~= cme_futures_mdp3_sbe_v1_12.prefs.show_collateral_market_value then
    show.collateral_market_value = cme_futures_mdp3_sbe_v1_12.prefs.show_collateral_market_value
    changed = true
  end
  if show.collateral_market_value_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_collateral_market_value_group then
    show.collateral_market_value_group = cme_futures_mdp3_sbe_v1_12.prefs.show_collateral_market_value_group
    changed = true
  end
  if show.collateral_market_value_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_collateral_market_value_groups then
    show.collateral_market_value_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_collateral_market_value_groups
    changed = true
  end
  if show.events_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_events_group then
    show.events_group = cme_futures_mdp3_sbe_v1_12.prefs.show_events_group
    changed = true
  end
  if show.events_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_events_groups then
    show.events_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_events_groups
    changed = true
  end
  if show.group_size ~= cme_futures_mdp3_sbe_v1_12.prefs.show_group_size then
    show.group_size = cme_futures_mdp3_sbe_v1_12.prefs.show_group_size
    changed = true
  end
  if show.group_size_8_byte ~= cme_futures_mdp3_sbe_v1_12.prefs.show_group_size_8_byte then
    show.group_size_8_byte = cme_futures_mdp3_sbe_v1_12.prefs.show_group_size_8_byte
    changed = true
  end
  if show.inst_attrib_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_inst_attrib_group then
    show.inst_attrib_group = cme_futures_mdp3_sbe_v1_12.prefs.show_inst_attrib_group
    changed = true
  end
  if show.inst_attrib_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_inst_attrib_groups then
    show.inst_attrib_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_inst_attrib_groups
    changed = true
  end
  if show.inst_attrib_value ~= cme_futures_mdp3_sbe_v1_12.prefs.show_inst_attrib_value then
    show.inst_attrib_value = cme_futures_mdp3_sbe_v1_12.prefs.show_inst_attrib_value
    changed = true
  end
  if show.lot_type_rules_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_lot_type_rules_group then
    show.lot_type_rules_group = cme_futures_mdp3_sbe_v1_12.prefs.show_lot_type_rules_group
    changed = true
  end
  if show.lot_type_rules_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_lot_type_rules_groups then
    show.lot_type_rules_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_lot_type_rules_groups
    changed = true
  end
  if show.m_d_feed_types_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_feed_types_group then
    show.m_d_feed_types_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_feed_types_group
    changed = true
  end
  if show.m_d_feed_types_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_feed_types_groups then
    show.m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_feed_types_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_group then
    show.m_d_incremental_refresh_book_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_groups then
    show.m_d_incremental_refresh_book_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_long_qty_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_group then
    show.m_d_incremental_refresh_book_long_qty_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_long_qty_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_groups then
    show.m_d_incremental_refresh_book_long_qty_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_long_qty_order_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_order_group then
    show.m_d_incremental_refresh_book_long_qty_order_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_long_qty_order_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_order_groups then
    show.m_d_incremental_refresh_book_long_qty_order_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_long_qty_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_order_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_order_group then
    show.m_d_incremental_refresh_book_order_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_order_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_order_groups then
    show.m_d_incremental_refresh_book_order_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_book_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_daily_statistics_group then
    show.m_d_incremental_refresh_daily_statistics_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_daily_statistics_group
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_daily_statistics_groups then
    show.m_d_incremental_refresh_daily_statistics_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_daily_statistics_groups
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_limits_banding_group then
    show.m_d_incremental_refresh_limits_banding_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_limits_banding_group
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_limits_banding_groups then
    show.m_d_incremental_refresh_limits_banding_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_limits_banding_groups
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_order_book_group then
    show.m_d_incremental_refresh_order_book_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_order_book_group
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_order_book_groups then
    show.m_d_incremental_refresh_order_book_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_order_book_groups
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_group then
    show.m_d_incremental_refresh_session_statistics_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_group
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_groups then
    show.m_d_incremental_refresh_session_statistics_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_groups
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_long_qty_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_group then
    show.m_d_incremental_refresh_session_statistics_long_qty_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_group
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_long_qty_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_groups then
    show.m_d_incremental_refresh_session_statistics_long_qty_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_group then
    show.m_d_incremental_refresh_trade_summary_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_groups then
    show.m_d_incremental_refresh_trade_summary_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_long_qty_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_group then
    show.m_d_incremental_refresh_trade_summary_long_qty_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_long_qty_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_groups then
    show.m_d_incremental_refresh_trade_summary_long_qty_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_long_qty_order_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_group then
    show.m_d_incremental_refresh_trade_summary_long_qty_order_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_long_qty_order_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_groups then
    show.m_d_incremental_refresh_trade_summary_long_qty_order_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_order_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_order_group then
    show.m_d_incremental_refresh_trade_summary_order_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_order_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_order_groups then
    show.m_d_incremental_refresh_trade_summary_order_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_trade_summary_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_volume_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_group then
    show.m_d_incremental_refresh_volume_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_group
    changed = true
  end
  if show.m_d_incremental_refresh_volume_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_groups then
    show.m_d_incremental_refresh_volume_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_groups
    changed = true
  end
  if show.m_d_incremental_refresh_volume_long_qty_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_long_qty_group then
    show.m_d_incremental_refresh_volume_long_qty_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_long_qty_group
    changed = true
  end
  if show.m_d_incremental_refresh_volume_long_qty_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_long_qty_groups then
    show.m_d_incremental_refresh_volume_long_qty_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_incremental_refresh_volume_long_qty_groups
    changed = true
  end
  if show.m_d_instrument_definition_spread_leg_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_instrument_definition_spread_leg_group then
    show.m_d_instrument_definition_spread_leg_group = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_instrument_definition_spread_leg_group
    changed = true
  end
  if show.m_d_instrument_definition_spread_leg_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_instrument_definition_spread_leg_groups then
    show.m_d_instrument_definition_spread_leg_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_m_d_instrument_definition_spread_leg_groups
    changed = true
  end
  if show.match_event_indicator ~= cme_futures_mdp3_sbe_v1_12.prefs.show_match_event_indicator then
    show.match_event_indicator = cme_futures_mdp3_sbe_v1_12.prefs.show_match_event_indicator
    changed = true
  end
  if show.maturity_month_year ~= cme_futures_mdp3_sbe_v1_12.prefs.show_maturity_month_year then
    show.maturity_month_year = cme_futures_mdp3_sbe_v1_12.prefs.show_maturity_month_year
    changed = true
  end
  if show.md_incremental_refresh_book ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_book then
    show.md_incremental_refresh_book = cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_book
    changed = true
  end
  if show.md_incremental_refresh_book_long_qty ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_book_long_qty then
    show.md_incremental_refresh_book_long_qty = cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_book_long_qty
    changed = true
  end
  if show.md_incremental_refresh_daily_statistics ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_daily_statistics then
    show.md_incremental_refresh_daily_statistics = cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_daily_statistics
    changed = true
  end
  if show.md_incremental_refresh_limits_banding ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_limits_banding then
    show.md_incremental_refresh_limits_banding = cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_limits_banding
    changed = true
  end
  if show.md_incremental_refresh_order_book ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_order_book then
    show.md_incremental_refresh_order_book = cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_order_book
    changed = true
  end
  if show.md_incremental_refresh_session_statistics ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_session_statistics then
    show.md_incremental_refresh_session_statistics = cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_session_statistics
    changed = true
  end
  if show.md_incremental_refresh_session_statistics_long_qty ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_session_statistics_long_qty then
    show.md_incremental_refresh_session_statistics_long_qty = cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_session_statistics_long_qty
    changed = true
  end
  if show.md_incremental_refresh_trade_summary ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_trade_summary then
    show.md_incremental_refresh_trade_summary = cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_trade_summary
    changed = true
  end
  if show.md_incremental_refresh_trade_summary_long_qty ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_trade_summary_long_qty then
    show.md_incremental_refresh_trade_summary_long_qty = cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_trade_summary_long_qty
    changed = true
  end
  if show.md_incremental_refresh_volume ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_volume then
    show.md_incremental_refresh_volume = cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_volume
    changed = true
  end
  if show.md_incremental_refresh_volume_long_qty ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_volume_long_qty then
    show.md_incremental_refresh_volume_long_qty = cme_futures_mdp3_sbe_v1_12.prefs.show_md_incremental_refresh_volume_long_qty
    changed = true
  end
  if show.md_instrument_definition_fixed_income ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_fixed_income then
    show.md_instrument_definition_fixed_income = cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_fixed_income
    changed = true
  end
  if show.md_instrument_definition_future ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_future then
    show.md_instrument_definition_future = cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_future
    changed = true
  end
  if show.md_instrument_definition_fx ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_fx then
    show.md_instrument_definition_fx = cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_fx
    changed = true
  end
  if show.md_instrument_definition_option ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_option then
    show.md_instrument_definition_option = cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_option
    changed = true
  end
  if show.md_instrument_definition_repo ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_repo then
    show.md_instrument_definition_repo = cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_repo
    changed = true
  end
  if show.md_instrument_definition_spread ~= cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_spread then
    show.md_instrument_definition_spread = cme_futures_mdp3_sbe_v1_12.prefs.show_md_instrument_definition_spread
    changed = true
  end
  if show.message ~= cme_futures_mdp3_sbe_v1_12.prefs.show_message then
    show.message = cme_futures_mdp3_sbe_v1_12.prefs.show_message
    changed = true
  end
  if show.message_header ~= cme_futures_mdp3_sbe_v1_12.prefs.show_message_header then
    show.message_header = cme_futures_mdp3_sbe_v1_12.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cme_futures_mdp3_sbe_v1_12.prefs.show_packet then
    show.packet = cme_futures_mdp3_sbe_v1_12.prefs.show_packet
    changed = true
  end
  if show.quote_request ~= cme_futures_mdp3_sbe_v1_12.prefs.show_quote_request then
    show.quote_request = cme_futures_mdp3_sbe_v1_12.prefs.show_quote_request
    changed = true
  end
  if show.related_instruments_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_related_instruments_group then
    show.related_instruments_group = cme_futures_mdp3_sbe_v1_12.prefs.show_related_instruments_group
    changed = true
  end
  if show.related_instruments_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_related_instruments_groups then
    show.related_instruments_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_related_instruments_groups
    changed = true
  end
  if show.related_sym_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_related_sym_group then
    show.related_sym_group = cme_futures_mdp3_sbe_v1_12.prefs.show_related_sym_group
    changed = true
  end
  if show.related_sym_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_related_sym_groups then
    show.related_sym_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_related_sym_groups
    changed = true
  end
  if show.security_status ~= cme_futures_mdp3_sbe_v1_12.prefs.show_security_status then
    show.security_status = cme_futures_mdp3_sbe_v1_12.prefs.show_security_status
    changed = true
  end
  if show.security_status_workup ~= cme_futures_mdp3_sbe_v1_12.prefs.show_security_status_workup then
    show.security_status_workup = cme_futures_mdp3_sbe_v1_12.prefs.show_security_status_workup
    changed = true
  end
  if show.security_status_workup_order_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_security_status_workup_order_group then
    show.security_status_workup_order_group = cme_futures_mdp3_sbe_v1_12.prefs.show_security_status_workup_order_group
    changed = true
  end
  if show.security_status_workup_order_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_security_status_workup_order_groups then
    show.security_status_workup_order_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_security_status_workup_order_groups
    changed = true
  end
  if show.settl_price_type ~= cme_futures_mdp3_sbe_v1_12.prefs.show_settl_price_type then
    show.settl_price_type = cme_futures_mdp3_sbe_v1_12.prefs.show_settl_price_type
    changed = true
  end
  if show.snapshot_full_refresh ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh then
    show.snapshot_full_refresh = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh
    changed = true
  end
  if show.snapshot_full_refresh_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_group then
    show.snapshot_full_refresh_group = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_group
    changed = true
  end
  if show.snapshot_full_refresh_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_groups then
    show.snapshot_full_refresh_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_groups
    changed = true
  end
  if show.snapshot_full_refresh_long_qty ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_long_qty then
    show.snapshot_full_refresh_long_qty = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_long_qty
    changed = true
  end
  if show.snapshot_full_refresh_long_qty_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_long_qty_group then
    show.snapshot_full_refresh_long_qty_group = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_long_qty_group
    changed = true
  end
  if show.snapshot_full_refresh_long_qty_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_long_qty_groups then
    show.snapshot_full_refresh_long_qty_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_long_qty_groups
    changed = true
  end
  if show.snapshot_full_refresh_order_book ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_order_book then
    show.snapshot_full_refresh_order_book = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_order_book
    changed = true
  end
  if show.snapshot_full_refresh_order_book_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_order_book_group then
    show.snapshot_full_refresh_order_book_group = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_order_book_group
    changed = true
  end
  if show.snapshot_full_refresh_order_book_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_order_book_groups then
    show.snapshot_full_refresh_order_book_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_order_book_groups
    changed = true
  end
  if show.snapshot_full_refresh_tc_p_long_qty_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tc_p_long_qty_group then
    show.snapshot_full_refresh_tc_p_long_qty_group = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tc_p_long_qty_group
    changed = true
  end
  if show.snapshot_full_refresh_tc_p_long_qty_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tc_p_long_qty_groups then
    show.snapshot_full_refresh_tc_p_long_qty_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tc_p_long_qty_groups
    changed = true
  end
  if show.snapshot_full_refresh_tcp ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp then
    show.snapshot_full_refresh_tcp = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp
    changed = true
  end
  if show.snapshot_full_refresh_tcp_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp_group then
    show.snapshot_full_refresh_tcp_group = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp_group
    changed = true
  end
  if show.snapshot_full_refresh_tcp_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp_groups then
    show.snapshot_full_refresh_tcp_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp_groups
    changed = true
  end
  if show.snapshot_full_refresh_tcp_long_qty ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp_long_qty then
    show.snapshot_full_refresh_tcp_long_qty = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_full_refresh_tcp_long_qty
    changed = true
  end
  if show.snapshot_refresh_top_orders ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_refresh_top_orders then
    show.snapshot_refresh_top_orders = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_refresh_top_orders
    changed = true
  end
  if show.snapshot_refresh_top_orders_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_refresh_top_orders_group then
    show.snapshot_refresh_top_orders_group = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_refresh_top_orders_group
    changed = true
  end
  if show.snapshot_refresh_top_orders_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_refresh_top_orders_groups then
    show.snapshot_refresh_top_orders_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_snapshot_refresh_top_orders_groups
    changed = true
  end
  if show.trading_sessions_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_trading_sessions_group then
    show.trading_sessions_group = cme_futures_mdp3_sbe_v1_12.prefs.show_trading_sessions_group
    changed = true
  end
  if show.trading_sessions_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_trading_sessions_groups then
    show.trading_sessions_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_trading_sessions_groups
    changed = true
  end
  if show.underlyings_group ~= cme_futures_mdp3_sbe_v1_12.prefs.show_underlyings_group then
    show.underlyings_group = cme_futures_mdp3_sbe_v1_12.prefs.show_underlyings_group
    changed = true
  end
  if show.underlyings_groups ~= cme_futures_mdp3_sbe_v1_12.prefs.show_underlyings_groups then
    show.underlyings_groups = cme_futures_mdp3_sbe_v1_12.prefs.show_underlyings_groups
    changed = true
  end
  if show.payload ~= cme_futures_mdp3_sbe_v1_12.prefs.show_payload then
    show.payload = cme_futures_mdp3_sbe_v1_12.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Futures Mdp3 Sbe 1.12
-----------------------------------------------------------------------

-- Size: Md Entry Type
cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_ = 1

-- Display: Md Entry Type
cme_futures_mdp3_sbe_v1_12_display.md_entry_type_ = function(value)
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
  if value == "9" then
    return "Md Entry Type : Vwap (9)"
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
    return "Md Entry Type : Threshold Limitsand Price Band Variation (g)"
  end
  if value == "w" then
    return "Md Entry Type : Market Best Offer (w)"
  end
  if value == "x" then
    return "Md Entry Type : Market Best Bid (x)"
  end

  return "Md Entry Type : Unknown("..value..")"
end

-- Dissect: Md Entry Type
cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_ = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_12_display.md_entry_type_(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_entry_type_, range, value, display)

  return offset + length, value
end

-- Size: Open Close Settl Flag
cme_futures_mdp3_sbe_v1_12_size_of.open_close_settl_flag = 1

-- Display: Open Close Settl Flag
cme_futures_mdp3_sbe_v1_12_display.open_close_settl_flag = function(value)
  if value == 255 then
    return "Open Close Settl Flag: No Value"
  end
  if value == 0 then
    return "Open Close Settl Flag: Daily Open Price (0)"
  end
  if value == 5 then
    return "Open Close Settl Flag: Indicative Opening Price (5)"
  end
  if value == 100 then
    return "Open Close Settl Flag: Intraday Vwap (100)"
  end
  if value == 101 then
    return "Open Close Settl Flag: Repo Average 830 Am (101)"
  end
  if value == 102 then
    return "Open Close Settl Flag: Repo Average 10 Am (102)"
  end
  if value == 103 then
    return "Open Close Settl Flag: Prev Session Repo Average 10 Am (103)"
  end

  return "Open Close Settl Flag: Unknown("..value..")"
end

-- Dissect: Open Close Settl Flag
cme_futures_mdp3_sbe_v1_12_dissect.open_close_settl_flag = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.open_close_settl_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.open_close_settl_flag(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Size: Md Price Level u Int 8 Null
cme_futures_mdp3_sbe_v1_12_size_of.md_price_level_u_int_8_null = 1

-- Display: Md Price Level u Int 8 Null
cme_futures_mdp3_sbe_v1_12_display.md_price_level_u_int_8_null = function(value)
  -- Check if field has value
  if value == 255 then
    return "Md Price Level u Int 8 Null: No Value"
  end

  return "Md Price Level u Int 8 Null: "..value
end

-- Dissect: Md Price Level u Int 8 Null
cme_futures_mdp3_sbe_v1_12_dissect.md_price_level_u_int_8_null = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_price_level_u_int_8_null
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_price_level_u_int_8_null(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_price_level_u_int_8_null, range, value, display)

  return offset + length, value
end

-- Size: Number Of Orders Optional
cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders_optional = 4

-- Display: Number Of Orders Optional
cme_futures_mdp3_sbe_v1_12_display.number_of_orders_optional = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Number Of Orders Optional: No Value"
  end

  return "Number Of Orders Optional: "..value
end

-- Dissect: Number Of Orders Optional
cme_futures_mdp3_sbe_v1_12_dissect.number_of_orders_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.number_of_orders_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.number_of_orders_optional, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Size u Int 64 Null
cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_u_int_64_null = 8

-- Display: Md Entry Size u Int 64 Null
cme_futures_mdp3_sbe_v1_12_display.md_entry_size_u_int_64_null = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Entry Size u Int 64 Null: No Value"
  end

  return "Md Entry Size u Int 64 Null: "..value
end

-- Dissect: Md Entry Size u Int 64 Null
cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_u_int_64_null = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_u_int_64_null
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_entry_size_u_int_64_null(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_entry_size_u_int_64_null, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Px Optional
cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px_optional = 8

-- Display: Md Entry Px Optional
cme_futures_mdp3_sbe_v1_12_display.md_entry_px_optional = function(raw, value)
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

  return raw:tonumber()/1000000000
end

-- Dissect: Md Entry Px Optional
cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px_optional
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.md_entry_px_optional(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.md_entry_px_optional(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_entry_px_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh Long Qty Group
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_long_qty_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_u_int_64_null

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_price_level_u_int_8_null

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.open_close_settl_flag

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_

  return index
end

-- Display: Snapshot Full Refresh Long Qty Group
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_long_qty_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty_group_fields = function(buffer, offset, packet, parent, snapshot_full_refresh_long_qty_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Long Qty Group Index
  if snapshot_full_refresh_long_qty_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_long_qty_group_index, snapshot_full_refresh_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size u Int 64 Null: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_u_int_64_null = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_u_int_64_null(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_12_dissect.number_of_orders_optional(buffer, index, packet, parent)

  -- Md Price Level u Int 8 Null: 1 Byte Unsigned Fixed Width Integer Nullable
  index, md_price_level_u_int_8_null = cme_futures_mdp3_sbe_v1_12_dissect.md_price_level_u_int_8_null(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_12_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 20 values
  index, md_entry_type_ = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty_group = function(buffer, offset, packet, parent, snapshot_full_refresh_long_qty_group_index)
  if show.snapshot_full_refresh_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty_group_fields(buffer, offset, packet, parent, snapshot_full_refresh_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_long_qty_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty_group_fields(buffer, offset, packet, parent, snapshot_full_refresh_long_qty_group_index)
  end
end

-- Size: Num In Group
cme_futures_mdp3_sbe_v1_12_size_of.num_in_group = 1

-- Display: Num In Group
cme_futures_mdp3_sbe_v1_12_display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
cme_futures_mdp3_sbe_v1_12_dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.num_in_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: Block Length
cme_futures_mdp3_sbe_v1_12_size_of.block_length = 2

-- Display: Block Length
cme_futures_mdp3_sbe_v1_12_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_futures_mdp3_sbe_v1_12_dissect.block_length = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.block_length(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size
cme_futures_mdp3_sbe_v1_12_size_of.group_size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.block_length

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.num_in_group

  return index
end

-- Display: Group Size
cme_futures_mdp3_sbe_v1_12_display.group_size = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_futures_mdp3_sbe_v1_12_dissect.group_size_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_mdp3_sbe_v1_12_dissect.block_length(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = cme_futures_mdp3_sbe_v1_12_dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_futures_mdp3_sbe_v1_12_dissect.group_size = function(buffer, offset, packet, parent)
  if show.group_size then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.group_size, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.group_size_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.group_size(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.group_size_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Snapshot Full Refresh Long Qty Groups
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_long_qty_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local snapshot_full_refresh_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_long_qty_group_count * 23

  return index
end

-- Display: Snapshot Full Refresh Long Qty Groups
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_long_qty_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Long Qty Group
  for snapshot_full_refresh_long_qty_group_index = 1, num_in_group do
    index, snapshot_full_refresh_long_qty_group = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty_group(buffer, index, packet, parent, snapshot_full_refresh_long_qty_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_long_qty_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_long_qty_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty_groups_fields(buffer, offset, packet, parent)
end

-- Size: Max Price Variation
cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation = 8

-- Display: Max Price Variation
cme_futures_mdp3_sbe_v1_12_display.max_price_variation = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Max Price Variation: No Value"
  end

  return "Max Price Variation: "..value
end

-- Translate: Max Price Variation
translate.max_price_variation = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Max Price Variation
cme_futures_mdp3_sbe_v1_12_dissect.max_price_variation = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.max_price_variation(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.max_price_variation(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.max_price_variation, range, value, display)

  return offset + length, value
end

-- Size: Low Limit Price
cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price = 8

-- Display: Low Limit Price
cme_futures_mdp3_sbe_v1_12_display.low_limit_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
translate.low_limit_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Low Limit Price
cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.low_limit_price(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.low_limit_price(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Size: High Limit Price
cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price = 8

-- Display: High Limit Price
cme_futures_mdp3_sbe_v1_12_display.high_limit_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Translate: High Limit Price
translate.high_limit_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: High Limit Price
cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.high_limit_price(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.high_limit_price(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Size: Md Security Trading Status
cme_futures_mdp3_sbe_v1_12_size_of.md_security_trading_status = 1

-- Display: Md Security Trading Status
cme_futures_mdp3_sbe_v1_12_display.md_security_trading_status = function(value)
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
  if value == 201 then
    return "Md Security Trading Status: Private Workup (201)"
  end
  if value == 202 then
    return "Md Security Trading Status: Public Workup (202)"
  end

  return "Md Security Trading Status: Unknown("..value..")"
end

-- Dissect: Md Security Trading Status
cme_futures_mdp3_sbe_v1_12_dissect.md_security_trading_status = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_security_trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_security_trading_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_security_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
cme_futures_mdp3_sbe_v1_12_size_of.trade_date = 2

-- Display: Trade Date
cme_futures_mdp3_sbe_v1_12_display.trade_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_futures_mdp3_sbe_v1_12_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Last Update Time
cme_futures_mdp3_sbe_v1_12_size_of.last_update_time = 8

-- Display: Last Update Time
cme_futures_mdp3_sbe_v1_12_display.last_update_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Last Update Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Update Time
cme_futures_mdp3_sbe_v1_12_dissect.last_update_time = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.last_update_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.last_update_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
cme_futures_mdp3_sbe_v1_12_size_of.transact_time = 8

-- Display: Transact Time
cme_futures_mdp3_sbe_v1_12_display.transact_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
cme_futures_mdp3_sbe_v1_12_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Rpt Seq
cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq = 4

-- Display: Rpt Seq
cme_futures_mdp3_sbe_v1_12_display.rpt_seq = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.rpt_seq(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Size: Security Id
cme_futures_mdp3_sbe_v1_12_size_of.security_id = 4

-- Display: Security Id
cme_futures_mdp3_sbe_v1_12_display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cme_futures_mdp3_sbe_v1_12_dissect.security_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Tot Num Reports
cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports = 4

-- Display: Tot Num Reports
cme_futures_mdp3_sbe_v1_12_display.tot_num_reports = function(value)
  return "Tot Num Reports: "..value
end

-- Dissect: Tot Num Reports
cme_futures_mdp3_sbe_v1_12_dissect.tot_num_reports = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.tot_num_reports(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.tot_num_reports, range, value, display)

  return offset + length, value
end

-- Size: Last Msg Seq Num Processed
cme_futures_mdp3_sbe_v1_12_size_of.last_msg_seq_num_processed = 4

-- Display: Last Msg Seq Num Processed
cme_futures_mdp3_sbe_v1_12_display.last_msg_seq_num_processed = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
cme_futures_mdp3_sbe_v1_12_dissect.last_msg_seq_num_processed = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.last_msg_seq_num_processed
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.last_msg_seq_num_processed(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh Long Qty
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_long_qty = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_msg_seq_num_processed

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_update_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trade_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_security_trading_status

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_long_qty_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Long Qty
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_long_qty = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = cme_futures_mdp3_sbe_v1_12_dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = cme_futures_mdp3_sbe_v1_12_dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_12_dissect.last_update_time(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_12_dissect.trade_date(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_12_dissect.md_security_trading_status(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_12_dissect.max_price_variation(buffer, index, packet, parent)

  -- Snapshot Full Refresh Long Qty Groups: Struct of 2 fields
  index, snapshot_full_refresh_long_qty_groups = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_long_qty then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_long_qty(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_long_qty(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh Tc P Long Qty Group
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tc_p_long_qty_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_u_int_64_null

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_price_level_u_int_8_null

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.open_close_settl_flag

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_

  return index
end

-- Display: Snapshot Full Refresh Tc P Long Qty Group
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tc_p_long_qty_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tc P Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tc_p_long_qty_group_fields = function(buffer, offset, packet, parent, snapshot_full_refresh_tc_p_long_qty_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Tc P Long Qty Group Index
  if snapshot_full_refresh_tc_p_long_qty_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tc_p_long_qty_group_index, snapshot_full_refresh_tc_p_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size u Int 64 Null: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_u_int_64_null = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_u_int_64_null(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_12_dissect.number_of_orders_optional(buffer, index, packet, parent)

  -- Md Price Level u Int 8 Null: 1 Byte Unsigned Fixed Width Integer Nullable
  index, md_price_level_u_int_8_null = cme_futures_mdp3_sbe_v1_12_dissect.md_price_level_u_int_8_null(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_12_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 20 values
  index, md_entry_type_ = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Tc P Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tc_p_long_qty_group = function(buffer, offset, packet, parent, snapshot_full_refresh_tc_p_long_qty_group_index)
  if show.snapshot_full_refresh_tc_p_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tc_p_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tc_p_long_qty_group_fields(buffer, offset, packet, parent, snapshot_full_refresh_tc_p_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tc_p_long_qty_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tc_p_long_qty_group_fields(buffer, offset, packet, parent, snapshot_full_refresh_tc_p_long_qty_group_index)
  end
end

-- Calculate size of: Snapshot Full Refresh Tc P Long Qty Groups
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tc_p_long_qty_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local snapshot_full_refresh_tc_p_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_tc_p_long_qty_group_count * 23

  return index
end

-- Display: Snapshot Full Refresh Tc P Long Qty Groups
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tc_p_long_qty_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tc P Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tc_p_long_qty_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Tc P Long Qty Group
  for snapshot_full_refresh_tc_p_long_qty_group_index = 1, num_in_group do
    index, snapshot_full_refresh_tc_p_long_qty_group = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tc_p_long_qty_group(buffer, index, packet, parent, snapshot_full_refresh_tc_p_long_qty_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Tc P Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tc_p_long_qty_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_tc_p_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tc_p_long_qty_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tc_p_long_qty_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tc_p_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tc_p_long_qty_groups_fields(buffer, offset, packet, parent)
end

-- Size: Match Event Indicator
cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator = 1

-- Display: Match Event Indicator
cme_futures_mdp3_sbe_v1_12_display.match_event_indicator = function(buffer, packet, parent)
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
cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator_bits = function(buffer, offset, packet, parent)

  -- End Of Event: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.end_of_event, buffer(offset, 1))

  -- Reserved: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.reserved, buffer(offset, 1))

  -- Recovery Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.recovery_msg, buffer(offset, 1))

  -- Last Implied Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.last_implied_msg, buffer(offset, 1))

  -- Last Stats Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.last_stats_msg, buffer(offset, 1))

  -- Last Quote Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.last_quote_msg, buffer(offset, 1))

  -- Last Volume Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.last_volume_msg, buffer(offset, 1))

  -- Last Trade Msg: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.last_trade_msg, buffer(offset, 1))
end

-- Dissect: Match Event Indicator
cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_12_display.match_event_indicator(range, packet, parent)
  local element = parent:add(cme_futures_mdp3_sbe_v1_12.fields.match_event_indicator, range, display)

  if show.match_event_indicator then
    cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Snapshot Full Refresh Tcp Long Qty
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tcp_long_qty = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tc_p_long_qty_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Tcp Long Qty
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tcp_long_qty = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tcp Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_long_qty_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_12_dissect.max_price_variation(buffer, index, packet, parent)

  -- Snapshot Full Refresh Tc P Long Qty Groups: Struct of 2 fields
  index, snapshot_full_refresh_tc_p_long_qty_groups = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tc_p_long_qty_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Tcp Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_long_qty = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_tcp_long_qty then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tcp_long_qty(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tcp_long_qty(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tcp_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_long_qty_fields(buffer, offset, packet, parent)
end

-- Size: Padding 5
cme_futures_mdp3_sbe_v1_12_size_of.padding_5 = 5

-- Display: Padding 5
cme_futures_mdp3_sbe_v1_12_display.padding_5 = function(value)
  return "Padding 5: "..value
end

-- Dissect: Padding 5
cme_futures_mdp3_sbe_v1_12_dissect.padding_5 = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.padding_5
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_12_display.padding_5(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.padding_5, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Type Statistics
cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_statistics = 1

-- Display: Md Entry Type Statistics
cme_futures_mdp3_sbe_v1_12_display.md_entry_type_statistics = function(value)
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
  if value == "9" then
    return "Md Entry Type Statistics: Vwap (9)"
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
cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_statistics = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_statistics
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_12_display.md_entry_type_statistics(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_entry_type_statistics, range, value, display)

  return offset + length, value
end

-- Size: Md Update Action
cme_futures_mdp3_sbe_v1_12_size_of.md_update_action = 1

-- Display: Md Update Action
cme_futures_mdp3_sbe_v1_12_display.md_update_action = function(value)
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
cme_futures_mdp3_sbe_v1_12_dissect.md_update_action = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_update_action
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Px
cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px = 8

-- Display: Md Entry Px
cme_futures_mdp3_sbe_v1_12_display.md_entry_px = function(value)
  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
translate.md_entry_px = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Md Entry Px
cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.md_entry_px(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.md_entry_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Session Statistics Long Qty Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_session_statistics_long_qty_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_u_int_64_null

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.open_close_settl_flag

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_statistics

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_5

  return index
end

-- Display: M D Incremental Refresh Session Statistics Long Qty Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_session_statistics_long_qty_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_long_qty_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_long_qty_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Session Statistics Long Qty Group Index
  if m_d_incremental_refresh_session_statistics_long_qty_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_long_qty_group_index, m_d_incremental_refresh_session_statistics_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size u Int 64 Null: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_u_int_64_null = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_u_int_64_null(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_12_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_12_dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Statistics: 1 Byte Ascii String Enum with 6 values
  index, md_entry_type_statistics = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_statistics(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_futures_mdp3_sbe_v1_12_dissect.padding_5(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_long_qty_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_long_qty_group_index)
  if show.m_d_incremental_refresh_session_statistics_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_long_qty_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_session_statistics_long_qty_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_long_qty_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_long_qty_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Session Statistics Long Qty Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_session_statistics_long_qty_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_session_statistics_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_session_statistics_long_qty_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Session Statistics Long Qty Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_session_statistics_long_qty_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_long_qty_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Session Statistics Long Qty Group
  for m_d_incremental_refresh_session_statistics_long_qty_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_session_statistics_long_qty_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_long_qty_group(buffer, index, packet, parent, m_d_incremental_refresh_session_statistics_long_qty_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_long_qty_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_session_statistics_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_session_statistics_long_qty_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_session_statistics_long_qty_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_long_qty_groups_fields(buffer, offset, packet, parent)
end

-- Size: Padding 2
cme_futures_mdp3_sbe_v1_12_size_of.padding_2 = 2

-- Display: Padding 2
cme_futures_mdp3_sbe_v1_12_display.padding_2 = function(value)
  return "Padding 2: "..value
end

-- Dissect: Padding 2
cme_futures_mdp3_sbe_v1_12_dissect.padding_2 = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.padding_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_12_display.padding_2(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.padding_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Incremental Refresh Session Statistics Long Qty
cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_session_statistics_long_qty = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_session_statistics_long_qty_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Session Statistics Long Qty
cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_session_statistics_long_qty = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Session Statistics Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_session_statistics_long_qty_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Session Statistics Long Qty Groups: Struct of 2 fields
  index, m_d_incremental_refresh_session_statistics_long_qty_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_long_qty_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Session Statistics Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_session_statistics_long_qty = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_session_statistics_long_qty then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_session_statistics_long_qty(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_session_statistics_long_qty(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_session_statistics_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_session_statistics_long_qty_fields(buffer, offset, packet, parent)
end

-- Size: Padding 7
cme_futures_mdp3_sbe_v1_12_size_of.padding_7 = 7

-- Display: Padding 7
cme_futures_mdp3_sbe_v1_12_display.padding_7 = function(value)
  return "Padding 7: "..value
end

-- Dissect: Padding 7
cme_futures_mdp3_sbe_v1_12_dissect.padding_7 = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.padding_7
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_12_display.padding_7(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.padding_7, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Size u Int 64
cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_u_int_64 = 8

-- Display: Md Entry Size u Int 64
cme_futures_mdp3_sbe_v1_12_display.md_entry_size_u_int_64 = function(value)
  return "Md Entry Size u Int 64: "..value
end

-- Dissect: Md Entry Size u Int 64
cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_u_int_64 = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_u_int_64
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_entry_size_u_int_64(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_entry_size_u_int_64, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Volume Long Qty Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_volume_long_qty_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_u_int_64

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_7

  return index
end

-- Display: M D Incremental Refresh Volume Long Qty Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_volume_long_qty_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_long_qty_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_volume_long_qty_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Volume Long Qty Group Index
  if m_d_incremental_refresh_volume_long_qty_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_long_qty_group_index, m_d_incremental_refresh_volume_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Size u Int 64: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_size_u_int_64 = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_u_int_64(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_12_dissect.md_update_action(buffer, index, packet, parent)

  -- Padding 7: 7 Byte
  index, padding_7 = cme_futures_mdp3_sbe_v1_12_dissect.padding_7(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Volume Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_long_qty_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_volume_long_qty_group_index)
  if show.m_d_incremental_refresh_volume_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_long_qty_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_volume_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_volume_long_qty_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_long_qty_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_volume_long_qty_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Volume Long Qty Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_volume_long_qty_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_volume_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_volume_long_qty_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Volume Long Qty Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_volume_long_qty_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_long_qty_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Volume Long Qty Group
  for m_d_incremental_refresh_volume_long_qty_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_volume_long_qty_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_long_qty_group(buffer, index, packet, parent, m_d_incremental_refresh_volume_long_qty_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Volume Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_long_qty_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_volume_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_volume_long_qty_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_volume_long_qty_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_long_qty_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Volume Long Qty
cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_volume_long_qty = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_volume_long_qty_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Volume Long Qty
cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_volume_long_qty = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Volume Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_volume_long_qty_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Volume Long Qty Groups: Struct of 2 fields
  index, m_d_incremental_refresh_volume_long_qty_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_long_qty_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Volume Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_volume_long_qty = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_volume_long_qty then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_volume_long_qty(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_volume_long_qty(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_volume_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_volume_long_qty_fields(buffer, offset, packet, parent)
end

-- Size: Padding 4
cme_futures_mdp3_sbe_v1_12_size_of.padding_4 = 4

-- Display: Padding 4
cme_futures_mdp3_sbe_v1_12_display.padding_4 = function(value)
  return "Padding 4: "..value
end

-- Dissect: Padding 4
cme_futures_mdp3_sbe_v1_12_dissect.padding_4 = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.padding_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_12_display.padding_4(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.padding_4, range, value, display)

  return offset + length, value
end

-- Size: Last Qty
cme_futures_mdp3_sbe_v1_12_size_of.last_qty = 4

-- Display: Last Qty
cme_futures_mdp3_sbe_v1_12_display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
cme_futures_mdp3_sbe_v1_12_dissect.last_qty = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.last_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.last_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Size: Order Id
cme_futures_mdp3_sbe_v1_12_size_of.order_id = 8

-- Display: Order Id
cme_futures_mdp3_sbe_v1_12_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cme_futures_mdp3_sbe_v1_12_dissect.order_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.order_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Trade Summary Long Qty Order Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_long_qty_order_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.order_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_4

  return index
end

-- Display: M D Incremental Refresh Trade Summary Long Qty Order Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_long_qty_order_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Long Qty Order Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_order_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary Long Qty Order Group Index
  if m_d_incremental_refresh_trade_summary_long_qty_order_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_order_group_index, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_12_dissect.order_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = cme_futures_mdp3_sbe_v1_12_dissect.last_qty(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index, padding_4 = cme_futures_mdp3_sbe_v1_12_dissect.padding_4(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Long Qty Order Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_order_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
  if show.m_d_incremental_refresh_trade_summary_long_qty_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_order_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_long_qty_order_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_order_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
  end
end

-- Calculate size of: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_12_size_of.group_size_8_byte = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.block_length

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_5

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.num_in_group

  return index
end

-- Display: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_12_display.group_size_8_byte = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_12_dissect.group_size_8_byte_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_mdp3_sbe_v1_12_dissect.block_length(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_futures_mdp3_sbe_v1_12_dissect.padding_5(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = cme_futures_mdp3_sbe_v1_12_dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_12_dissect.group_size_8_byte = function(buffer, offset, packet, parent)
  if show.group_size_8_byte then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.group_size_8_byte, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.group_size_8_byte_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.group_size_8_byte(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.group_size_8_byte_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: M D Incremental Refresh Trade Summary Long Qty Order Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_long_qty_order_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size_8_byte(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_long_qty_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_long_qty_order_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Trade Summary Long Qty Order Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_long_qty_order_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Long Qty Order Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_order_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_12_dissect.group_size_8_byte(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary Long Qty Order Group
  for m_d_incremental_refresh_trade_summary_long_qty_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_long_qty_order_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_order_group(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Long Qty Order Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_order_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_long_qty_order_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_long_qty_order_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_long_qty_order_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_order_groups_fields(buffer, offset, packet, parent)
end

-- Size: Padding 6
cme_futures_mdp3_sbe_v1_12_size_of.padding_6 = 6

-- Display: Padding 6
cme_futures_mdp3_sbe_v1_12_display.padding_6 = function(value)
  return "Padding 6: "..value
end

-- Dissect: Padding 6
cme_futures_mdp3_sbe_v1_12_dissect.padding_6 = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.padding_6
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_12_display.padding_6(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.padding_6, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Side
cme_futures_mdp3_sbe_v1_12_size_of.aggressor_side = 1

-- Display: Aggressor Side
cme_futures_mdp3_sbe_v1_12_display.aggressor_side = function(value)
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
cme_futures_mdp3_sbe_v1_12_dissect.aggressor_side = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.aggressor_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Size: Md Trade Entry I D u Int 32
cme_futures_mdp3_sbe_v1_12_size_of.md_trade_entry_i_d_u_int_32 = 4

-- Display: Md Trade Entry I D u Int 32
cme_futures_mdp3_sbe_v1_12_display.md_trade_entry_i_d_u_int_32 = function(value)
  return "Md Trade Entry I D u Int 32: "..value
end

-- Dissect: Md Trade Entry I D u Int 32
cme_futures_mdp3_sbe_v1_12_dissect.md_trade_entry_i_d_u_int_32 = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_trade_entry_i_d_u_int_32
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_trade_entry_i_d_u_int_32(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_trade_entry_i_d_u_int_32, range, value, display)

  return offset + length, value
end

-- Size: Number Of Orders
cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders = 4

-- Display: Number Of Orders
cme_futures_mdp3_sbe_v1_12_display.number_of_orders = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
cme_futures_mdp3_sbe_v1_12_dissect.number_of_orders = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.number_of_orders(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Trade Summary Long Qty Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_long_qty_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_u_int_64

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_trade_entry_i_d_u_int_32

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.aggressor_side

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_6

  return index
end

-- Display: M D Incremental Refresh Trade Summary Long Qty Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_long_qty_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary Long Qty Group Index
  if m_d_incremental_refresh_trade_summary_long_qty_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_group_index, m_d_incremental_refresh_trade_summary_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size u Int 64: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_size_u_int_64 = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_u_int_64(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index, number_of_orders = cme_futures_mdp3_sbe_v1_12_dissect.number_of_orders(buffer, index, packet, parent)

  -- Md Trade Entry I D u Int 32: 4 Byte Unsigned Fixed Width Integer
  index, md_trade_entry_i_d_u_int_32 = cme_futures_mdp3_sbe_v1_12_dissect.md_trade_entry_i_d_u_int_32(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_mdp3_sbe_v1_12_dissect.aggressor_side(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_12_dissect.md_update_action(buffer, index, packet, parent)

  -- Padding 6: 6 Byte
  index, padding_6 = cme_futures_mdp3_sbe_v1_12_dissect.padding_6(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_group_index)
  if show.m_d_incremental_refresh_trade_summary_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_long_qty_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Trade Summary Long Qty Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_long_qty_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_long_qty_group_count * 40

  return index
end

-- Display: M D Incremental Refresh Trade Summary Long Qty Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_long_qty_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary Long Qty Group
  for m_d_incremental_refresh_trade_summary_long_qty_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_long_qty_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_group(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_long_qty_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_long_qty_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Trade Summary Long Qty
cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_trade_summary_long_qty = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_long_qty_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_long_qty_order_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Summary Long Qty
cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_trade_summary_long_qty = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Summary Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_trade_summary_long_qty_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary Long Qty Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_long_qty_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_groups(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary Long Qty Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_long_qty_order_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_long_qty_order_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Summary Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_trade_summary_long_qty = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_summary_long_qty then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_trade_summary_long_qty(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_trade_summary_long_qty(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_trade_summary_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_trade_summary_long_qty_fields(buffer, offset, packet, parent)
end

-- Size: Order Update Action
cme_futures_mdp3_sbe_v1_12_size_of.order_update_action = 1

-- Display: Order Update Action
cme_futures_mdp3_sbe_v1_12_display.order_update_action = function(value)
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
cme_futures_mdp3_sbe_v1_12_dissect.order_update_action = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.order_update_action
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.order_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.order_update_action, range, value, display)

  return offset + length, value
end

-- Size: Reference Id
cme_futures_mdp3_sbe_v1_12_size_of.reference_id = 1

-- Display: Reference Id
cme_futures_mdp3_sbe_v1_12_display.reference_id = function(value)
  -- Check if field has value
  if value == 255 then
    return "Reference Id: No Value"
  end

  return "Reference Id: "..value
end

-- Dissect: Reference Id
cme_futures_mdp3_sbe_v1_12_dissect.reference_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.reference_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.reference_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.reference_id, range, value, display)

  return offset + length, value
end

-- Size: Md Display Qty Optional
cme_futures_mdp3_sbe_v1_12_size_of.md_display_qty_optional = 4

-- Display: Md Display Qty Optional
cme_futures_mdp3_sbe_v1_12_display.md_display_qty_optional = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Display Qty Optional: No Value"
  end

  return "Md Display Qty Optional: "..value
end

-- Dissect: Md Display Qty Optional
cme_futures_mdp3_sbe_v1_12_dissect.md_display_qty_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_display_qty_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_display_qty_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_display_qty_optional, range, value, display)

  return offset + length, value
end

-- Size: Md Order Priority Optional
cme_futures_mdp3_sbe_v1_12_size_of.md_order_priority_optional = 8

-- Display: Md Order Priority Optional
cme_futures_mdp3_sbe_v1_12_display.md_order_priority_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Order Priority Optional: No Value"
  end

  return "Md Order Priority Optional: "..value
end

-- Dissect: Md Order Priority Optional
cme_futures_mdp3_sbe_v1_12_dissect.md_order_priority_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_order_priority_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_order_priority_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_order_priority_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Book Long Qty Order Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_long_qty_order_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.order_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_order_priority_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_display_qty_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.reference_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.order_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  return index
end

-- Display: M D Incremental Refresh Book Long Qty Order Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_long_qty_order_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Long Qty Order Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_order_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book Long Qty Order Group Index
  if m_d_incremental_refresh_book_long_qty_order_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_order_group_index, m_d_incremental_refresh_book_long_qty_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_12_dissect.order_id(buffer, index, packet, parent)

  -- Md Order Priority Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_order_priority_optional(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_display_qty_optional(buffer, index, packet, parent)

  -- Reference Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, reference_id = cme_futures_mdp3_sbe_v1_12_dissect.reference_id(buffer, index, packet, parent)

  -- Order Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_update_action = cme_futures_mdp3_sbe_v1_12_dissect.order_update_action(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book Long Qty Order Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_order_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_order_group_index)
  if show.m_d_incremental_refresh_book_long_qty_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_order_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_long_qty_order_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_order_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_order_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Book Long Qty Order Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_long_qty_order_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size_8_byte(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_book_long_qty_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_long_qty_order_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Book Long Qty Order Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_long_qty_order_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Long Qty Order Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_order_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_12_dissect.group_size_8_byte(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book Long Qty Order Group
  for m_d_incremental_refresh_book_long_qty_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_long_qty_order_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_order_group(buffer, index, packet, parent, m_d_incremental_refresh_book_long_qty_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book Long Qty Order Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_order_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_long_qty_order_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_long_qty_order_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_long_qty_order_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_order_groups_fields(buffer, offset, packet, parent)
end

-- Size: Padding 1
cme_futures_mdp3_sbe_v1_12_size_of.padding_1 = 1

-- Display: Padding 1
cme_futures_mdp3_sbe_v1_12_display.padding_1 = function(value)
  return "Padding 1: "..value
end

-- Dissect: Padding 1
cme_futures_mdp3_sbe_v1_12_dissect.padding_1 = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.padding_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_12_display.padding_1(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.padding_1, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Type Book
cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_book = 1

-- Display: Md Entry Type Book
cme_futures_mdp3_sbe_v1_12_display.md_entry_type_book = function(value)
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
  if value == "w" then
    return "Md Entry Type Book: Market Best Offer (w)"
  end
  if value == "x" then
    return "Md Entry Type Book: Market Best Bid (x)"
  end

  return "Md Entry Type Book: Unknown("..value..")"
end

-- Dissect: Md Entry Type Book
cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_book = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_book
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_12_display.md_entry_type_book(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_entry_type_book, range, value, display)

  return offset + length, value
end

-- Size: Md Price Level
cme_futures_mdp3_sbe_v1_12_size_of.md_price_level = 1

-- Display: Md Price Level
cme_futures_mdp3_sbe_v1_12_display.md_price_level = function(value)
  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
cme_futures_mdp3_sbe_v1_12_dissect.md_price_level = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_price_level
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_price_level(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Book Long Qty Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_long_qty_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_u_int_64_null

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_price_level

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_book

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_1

  return index
end

-- Display: M D Incremental Refresh Book Long Qty Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_long_qty_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book Long Qty Group Index
  if m_d_incremental_refresh_book_long_qty_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_group_index, m_d_incremental_refresh_book_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size u Int 64 Null: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_u_int_64_null = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_u_int_64_null(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_12_dissect.number_of_orders_optional(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = cme_futures_mdp3_sbe_v1_12_dissect.md_price_level(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_12_dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 7 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_book(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = cme_futures_mdp3_sbe_v1_12_dissect.padding_1(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book Long Qty Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_group_index)
  if show.m_d_incremental_refresh_book_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_long_qty_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Book Long Qty Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_long_qty_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_book_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_long_qty_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Book Long Qty Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_long_qty_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book Long Qty Group
  for m_d_incremental_refresh_book_long_qty_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_long_qty_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_group(buffer, index, packet, parent, m_d_incremental_refresh_book_long_qty_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book Long Qty Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_long_qty_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_long_qty_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Book Long Qty
cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_book_long_qty = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_long_qty_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_long_qty_order_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Book Long Qty
cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_book_long_qty = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Book Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_book_long_qty_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Book Long Qty Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_long_qty_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_groups(buffer, index, packet, parent)

  -- M D Incremental Refresh Book Long Qty Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_long_qty_order_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_long_qty_order_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Book Long Qty
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_book_long_qty = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_book_long_qty then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_book_long_qty(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_book_long_qty(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_book_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_book_long_qty_fields(buffer, offset, packet, parent)
end

-- Size: Security Alt Id
cme_futures_mdp3_sbe_v1_12_size_of.security_alt_id = 12

-- Display: Security Alt Id
cme_futures_mdp3_sbe_v1_12_display.security_alt_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id: No Value"
  end

  return "Security Alt Id: "..value
end

-- Dissect: Security Alt Id
cme_futures_mdp3_sbe_v1_12_dissect.security_alt_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.security_alt_id
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

  local display = cme_futures_mdp3_sbe_v1_12_display.security_alt_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_alt_id, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
cme_futures_mdp3_sbe_v1_12_size_of.maturity_date = 2

-- Display: Maturity Date
cme_futures_mdp3_sbe_v1_12_display.maturity_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cme_futures_mdp3_sbe_v1_12_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Settl Date
cme_futures_mdp3_sbe_v1_12_size_of.settl_date = 2

-- Display: Settl Date
cme_futures_mdp3_sbe_v1_12_display.settl_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Settl Date: No Value"
  end

  return "Settl Date: "..value
end

-- Dissect: Settl Date
cme_futures_mdp3_sbe_v1_12_dissect.settl_date = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.settl_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.settl_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Sessions Group
cme_futures_mdp3_sbe_v1_12_size_of.trading_sessions_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trade_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.maturity_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_alt_id

  return index
end

-- Display: Trading Sessions Group
cme_futures_mdp3_sbe_v1_12_display.trading_sessions_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Sessions Group
cme_futures_mdp3_sbe_v1_12_dissect.trading_sessions_group_fields = function(buffer, offset, packet, parent, trading_sessions_group_index)
  local index = offset

  -- Implicit Trading Sessions Group Index
  if trading_sessions_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.trading_sessions_group_index, trading_sessions_group_index)
    iteration:set_generated()
  end

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_12_dissect.trade_date(buffer, index, packet, parent)

  -- Settl Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settl_date = cme_futures_mdp3_sbe_v1_12_dissect.settl_date(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_mdp3_sbe_v1_12_dissect.maturity_date(buffer, index, packet, parent)

  -- Security Alt Id: 12 Byte Ascii String
  index, security_alt_id = cme_futures_mdp3_sbe_v1_12_dissect.security_alt_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Sessions Group
cme_futures_mdp3_sbe_v1_12_dissect.trading_sessions_group = function(buffer, offset, packet, parent, trading_sessions_group_index)
  if show.trading_sessions_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.trading_sessions_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.trading_sessions_group_fields(buffer, offset, packet, parent, trading_sessions_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.trading_sessions_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.trading_sessions_group_fields(buffer, offset, packet, parent, trading_sessions_group_index)
  end
end

-- Calculate size of: Trading Sessions Groups
cme_futures_mdp3_sbe_v1_12_size_of.trading_sessions_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local trading_sessions_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + trading_sessions_group_count * 18

  return index
end

-- Display: Trading Sessions Groups
cme_futures_mdp3_sbe_v1_12_display.trading_sessions_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Sessions Groups
cme_futures_mdp3_sbe_v1_12_dissect.trading_sessions_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Trading Sessions Group
  for trading_sessions_group_index = 1, num_in_group do
    index, trading_sessions_group = cme_futures_mdp3_sbe_v1_12_dissect.trading_sessions_group(buffer, index, packet, parent, trading_sessions_group_index)
  end

  return index
end

-- Dissect: Trading Sessions Groups
cme_futures_mdp3_sbe_v1_12_dissect.trading_sessions_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trading_sessions_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.trading_sessions_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.trading_sessions_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.trading_sessions_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.trading_sessions_groups_fields(buffer, offset, packet, parent)
end

-- Size: Min Lot Size Decimal Qty
cme_futures_mdp3_sbe_v1_12_size_of.min_lot_size_decimal_qty = 4

-- Display: Min Lot Size Decimal Qty
cme_futures_mdp3_sbe_v1_12_display.min_lot_size_decimal_qty = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Min Lot Size Decimal Qty: No Value"
  end

  return "Min Lot Size Decimal Qty: "..value
end

-- Translate: Min Lot Size Decimal Qty
translate.min_lot_size_decimal_qty = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Min Lot Size Decimal Qty
cme_futures_mdp3_sbe_v1_12_dissect.min_lot_size_decimal_qty = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.min_lot_size_decimal_qty
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = translate.min_lot_size_decimal_qty(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.min_lot_size_decimal_qty(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.min_lot_size_decimal_qty, range, value, display)

  return offset + length, value
end

-- Size: Lot Type
cme_futures_mdp3_sbe_v1_12_size_of.lot_type = 1

-- Display: Lot Type
cme_futures_mdp3_sbe_v1_12_display.lot_type = function(value)
  return "Lot Type: "..value
end

-- Dissect: Lot Type
cme_futures_mdp3_sbe_v1_12_dissect.lot_type = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.lot_type
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.lot_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_12_size_of.lot_type_rules_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.lot_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_lot_size_decimal_qty

  return index
end

-- Display: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_12_display.lot_type_rules_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_group_fields = function(buffer, offset, packet, parent, lot_type_rules_group_index)
  local index = offset

  -- Implicit Lot Type Rules Group Index
  if lot_type_rules_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.lot_type_rules_group_index, lot_type_rules_group_index)
    iteration:set_generated()
  end

  -- Lot Type: 1 Byte Signed Fixed Width Integer
  index, lot_type = cme_futures_mdp3_sbe_v1_12_dissect.lot_type(buffer, index, packet, parent)

  -- Min Lot Size Decimal Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, min_lot_size_decimal_qty = cme_futures_mdp3_sbe_v1_12_dissect.min_lot_size_decimal_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_group = function(buffer, offset, packet, parent, lot_type_rules_group_index)
  if show.lot_type_rules_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.lot_type_rules_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_group_fields(buffer, offset, packet, parent, lot_type_rules_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.lot_type_rules_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_group_fields(buffer, offset, packet, parent, lot_type_rules_group_index)
  end
end

-- Calculate size of: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_12_size_of.lot_type_rules_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local lot_type_rules_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + lot_type_rules_group_count * 5

  return index
end

-- Display: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_12_display.lot_type_rules_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Lot Type Rules Group
  for lot_type_rules_group_index = 1, num_in_group do
    index, lot_type_rules_group = cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_group(buffer, index, packet, parent, lot_type_rules_group_index)
  end

  return index
end

-- Dissect: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.lot_type_rules_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.lot_type_rules_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.lot_type_rules_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.lot_type_rules_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_groups_fields(buffer, offset, packet, parent)
end

-- Size: Inst Attrib Value
cme_futures_mdp3_sbe_v1_12_size_of.inst_attrib_value = 4

-- Display: Inst Attrib Value
cme_futures_mdp3_sbe_v1_12_display.inst_attrib_value = function(buffer, packet, parent)
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
  -- Is Is Aon Instrument flag set?
  if buffer:bitfield(16) > 0 then
    display = display.."Is Aon Instrument|"
  end
  -- Is Inverted Book flag set?
  if buffer:bitfield(17) > 0 then
    display = display.."Inverted Book|"
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
cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_value_bits = function(buffer, offset, packet, parent)

  -- Otc Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.otc_eligible, buffer(offset, 4))

  -- Efr Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.efr_eligible, buffer(offset, 4))

  -- Efs Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.efs_eligible, buffer(offset, 4))

  -- Ebf Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.ebf_eligible, buffer(offset, 4))

  -- Efp Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.efp_eligible, buffer(offset, 4))

  -- Block Trade Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.block_trade_eligible, buffer(offset, 4))

  -- Order Cross Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.order_cross_eligible, buffer(offset, 4))

  -- Electronic Match Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.electronic_match_eligible, buffer(offset, 4))

  -- Decaying Product Eligibility: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.decaying_product_eligibility, buffer(offset, 4))

  -- Zero Price Outright Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.zero_price_outright_eligible, buffer(offset, 4))

  -- Rfq Cross Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.rfq_cross_eligible, buffer(offset, 4))

  -- Volatility Quoted Option: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.volatility_quoted_option, buffer(offset, 4))

  -- Is Fractional: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.is_fractional, buffer(offset, 4))

  -- Negative Price Outright Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.negative_price_outright_eligible, buffer(offset, 4))

  -- Negative Strike Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.negative_strike_eligible, buffer(offset, 4))

  -- ILink Indicative Mass Quoting Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.ilink_indicative_mass_quoting_eligible, buffer(offset, 4))

  -- Is Aon Instrument: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.is_aon_instrument, buffer(offset, 4))

  -- Inverted Book: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.inverted_book, buffer(offset, 4))

  -- Variable Cab Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.variable_cab_eligible, buffer(offset, 4))

  -- Triangulation Eligible: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.triangulation_eligible, buffer(offset, 4))

  -- Implied Matching Eligibility: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.implied_matching_eligibility, buffer(offset, 4))

  -- Gt Orders Eligibility: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.gt_orders_eligibility, buffer(offset, 4))

  -- Daily Product Eligibility: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.daily_product_eligibility, buffer(offset, 4))

  -- Variable Product Eligibility: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.variable_product_eligibility, buffer(offset, 4))

  -- Reserved 8: 8 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.reserved_8, buffer(offset, 4))
end

-- Dissect: Inst Attrib Value
cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_value = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_12_display.inst_attrib_value(range, packet, parent)
  local element = parent:add(cme_futures_mdp3_sbe_v1_12.fields.inst_attrib_value, range, display)

  if show.inst_attrib_value then
    cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_value_bits(buffer, offset, packet, element)
  end

  return offset + 4, range
end

-- Calculate size of: Inst Attrib Group
cme_futures_mdp3_sbe_v1_12_size_of.inst_attrib_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.inst_attrib_value

  return index
end

-- Display: Inst Attrib Group
cme_futures_mdp3_sbe_v1_12_display.inst_attrib_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inst Attrib Group
cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_group_fields = function(buffer, offset, packet, parent, inst_attrib_group_index)
  local index = offset

  -- Implicit Inst Attrib Group Index
  if inst_attrib_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.inst_attrib_group_index, inst_attrib_group_index)
    iteration:set_generated()
  end

  -- Inst Attrib Value: Struct of 25 fields
  index, inst_attrib_value = cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Inst Attrib Group
cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_group = function(buffer, offset, packet, parent, inst_attrib_group_index)
  if show.inst_attrib_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.inst_attrib_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_group_fields(buffer, offset, packet, parent, inst_attrib_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.inst_attrib_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_group_fields(buffer, offset, packet, parent, inst_attrib_group_index)
  end
end

-- Calculate size of: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_12_size_of.inst_attrib_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local inst_attrib_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + inst_attrib_group_count * 4

  return index
end

-- Display: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_12_display.inst_attrib_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Inst Attrib Group
  for inst_attrib_group_index = 1, num_in_group do
    index, inst_attrib_group = cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_group(buffer, index, packet, parent, inst_attrib_group_index)
  end

  return index
end

-- Dissect: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.inst_attrib_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.inst_attrib_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.inst_attrib_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.inst_attrib_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_groups_fields(buffer, offset, packet, parent)
end

-- Size: Market Depth
cme_futures_mdp3_sbe_v1_12_size_of.market_depth = 1

-- Display: Market Depth
cme_futures_mdp3_sbe_v1_12_display.market_depth = function(value)
  return "Market Depth: "..value
end

-- Dissect: Market Depth
cme_futures_mdp3_sbe_v1_12_dissect.market_depth = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.market_depth
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.market_depth(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.market_depth, range, value, display)

  return offset + length, value
end

-- Size: Md Feed Type
cme_futures_mdp3_sbe_v1_12_size_of.md_feed_type = 3

-- Display: Md Feed Type
cme_futures_mdp3_sbe_v1_12_display.md_feed_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Feed Type: No Value"
  end

  return "Md Feed Type: "..value
end

-- Dissect: Md Feed Type
cme_futures_mdp3_sbe_v1_12_dissect.md_feed_type = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_feed_type
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

  local display = cme_futures_mdp3_sbe_v1_12_display.md_feed_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_feed_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Feed Types Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_feed_types_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_feed_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.market_depth

  return index
end

-- Display: M D Feed Types Group
cme_futures_mdp3_sbe_v1_12_display.m_d_feed_types_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Feed Types Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_group_fields = function(buffer, offset, packet, parent, m_d_feed_types_group_index)
  local index = offset

  -- Implicit M D Feed Types Group Index
  if m_d_feed_types_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_feed_types_group_index, m_d_feed_types_group_index)
    iteration:set_generated()
  end

  -- Md Feed Type: 3 Byte Ascii String
  index, md_feed_type = cme_futures_mdp3_sbe_v1_12_dissect.md_feed_type(buffer, index, packet, parent)

  -- Market Depth: 1 Byte Signed Fixed Width Integer
  index, market_depth = cme_futures_mdp3_sbe_v1_12_dissect.market_depth(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Feed Types Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_group = function(buffer, offset, packet, parent, m_d_feed_types_group_index)
  if show.m_d_feed_types_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_feed_types_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_group_fields(buffer, offset, packet, parent, m_d_feed_types_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_feed_types_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_group_fields(buffer, offset, packet, parent, m_d_feed_types_group_index)
  end
end

-- Calculate size of: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_feed_types_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_feed_types_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_feed_types_group_count * 4

  return index
end

-- Display: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_feed_types_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Feed Types Group
  for m_d_feed_types_group_index = 1, num_in_group do
    index, m_d_feed_types_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_group(buffer, index, packet, parent, m_d_feed_types_group_index)
  end

  return index
end

-- Dissect: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_feed_types_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_feed_types_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_feed_types_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_feed_types_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_groups_fields(buffer, offset, packet, parent)
end

-- Size: Event Time
cme_futures_mdp3_sbe_v1_12_size_of.event_time = 8

-- Display: Event Time
cme_futures_mdp3_sbe_v1_12_display.event_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Event Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Event Time
cme_futures_mdp3_sbe_v1_12_dissect.event_time = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.event_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.event_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.event_time, range, value, display)

  return offset + length, value
end

-- Size: Event Type
cme_futures_mdp3_sbe_v1_12_size_of.event_type = 1

-- Display: Event Type
cme_futures_mdp3_sbe_v1_12_display.event_type = function(value)
  if value == 5 then
    return "Event Type: Activation (5)"
  end
  if value == 7 then
    return "Event Type: Last Eligible Trade Date (7)"
  end

  return "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
cme_futures_mdp3_sbe_v1_12_dissect.event_type = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.event_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.event_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.event_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Events Group
cme_futures_mdp3_sbe_v1_12_size_of.events_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.event_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.event_time

  return index
end

-- Display: Events Group
cme_futures_mdp3_sbe_v1_12_display.events_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events Group
cme_futures_mdp3_sbe_v1_12_dissect.events_group_fields = function(buffer, offset, packet, parent, events_group_index)
  local index = offset

  -- Implicit Events Group Index
  if events_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.events_group_index, events_group_index)
    iteration:set_generated()
  end

  -- Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, event_type = cme_futures_mdp3_sbe_v1_12_dissect.event_type(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = cme_futures_mdp3_sbe_v1_12_dissect.event_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Events Group
cme_futures_mdp3_sbe_v1_12_dissect.events_group = function(buffer, offset, packet, parent, events_group_index)
  if show.events_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.events_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.events_group_fields(buffer, offset, packet, parent, events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.events_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.events_group_fields(buffer, offset, packet, parent, events_group_index)
  end
end

-- Calculate size of: Events Groups
cme_futures_mdp3_sbe_v1_12_size_of.events_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local events_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + events_group_count * 9

  return index
end

-- Display: Events Groups
cme_futures_mdp3_sbe_v1_12_display.events_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events Groups
cme_futures_mdp3_sbe_v1_12_dissect.events_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Events Group
  for events_group_index = 1, num_in_group do
    index, events_group = cme_futures_mdp3_sbe_v1_12_dissect.events_group(buffer, index, packet, parent, events_group_index)
  end

  return index
end

-- Dissect: Events Groups
cme_futures_mdp3_sbe_v1_12_dissect.events_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.events_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.events_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.events_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.events_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.events_groups_fields(buffer, offset, packet, parent)
end

-- Size: Settlement Locale
cme_futures_mdp3_sbe_v1_12_size_of.settlement_locale = 8

-- Display: Settlement Locale
cme_futures_mdp3_sbe_v1_12_display.settlement_locale = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settlement Locale: No Value"
  end

  return "Settlement Locale: "..value
end

-- Dissect: Settlement Locale
cme_futures_mdp3_sbe_v1_12_dissect.settlement_locale = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.settlement_locale
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

  local display = cme_futures_mdp3_sbe_v1_12_display.settlement_locale(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.settlement_locale, range, value, display)

  return offset + length, value
end

-- Size: Week
cme_futures_mdp3_sbe_v1_12_size_of.week = 1

-- Display: Week
cme_futures_mdp3_sbe_v1_12_display.week = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value"
  end

  return "Week: "..value
end

-- Dissect: Week
cme_futures_mdp3_sbe_v1_12_dissect.week = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.week
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.week(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.week, range, value, display)

  return offset + length, value
end

-- Size: Day
cme_futures_mdp3_sbe_v1_12_size_of.day = 1

-- Display: Day
cme_futures_mdp3_sbe_v1_12_display.day = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value"
  end

  return "Day: "..value
end

-- Dissect: Day
cme_futures_mdp3_sbe_v1_12_dissect.day = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.day
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.day(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.day, range, value, display)

  return offset + length, value
end

-- Size: Month
cme_futures_mdp3_sbe_v1_12_size_of.month = 1

-- Display: Month
cme_futures_mdp3_sbe_v1_12_display.month = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value"
  end

  return "Month: "..value
end

-- Dissect: Month
cme_futures_mdp3_sbe_v1_12_dissect.month = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.month
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.month(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.month, range, value, display)

  return offset + length, value
end

-- Size: Year
cme_futures_mdp3_sbe_v1_12_size_of.year = 2

-- Display: Year
cme_futures_mdp3_sbe_v1_12_display.year = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value"
  end

  return "Year: "..value
end

-- Dissect: Year
cme_futures_mdp3_sbe_v1_12_dissect.year = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.year
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.year(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.year, range, value, display)

  return offset + length, value
end

-- Calculate size of: Maturity Month Year
cme_futures_mdp3_sbe_v1_12_size_of.maturity_month_year = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.year

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.month

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.day

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.week

  return index
end

-- Display: Maturity Month Year
cme_futures_mdp3_sbe_v1_12_display.maturity_month_year = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maturity Month Year
cme_futures_mdp3_sbe_v1_12_dissect.maturity_month_year_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = cme_futures_mdp3_sbe_v1_12_dissect.year(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = cme_futures_mdp3_sbe_v1_12_dissect.month(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = cme_futures_mdp3_sbe_v1_12_dissect.day(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = cme_futures_mdp3_sbe_v1_12_dissect.week(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
cme_futures_mdp3_sbe_v1_12_dissect.maturity_month_year = function(buffer, offset, packet, parent)
  if show.maturity_month_year then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.maturity_month_year, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.maturity_month_year_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.maturity_month_year(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.maturity_month_year_fields(buffer, offset, packet, parent)
  end
end

-- Size: Instrument Guid
cme_futures_mdp3_sbe_v1_12_size_of.instrument_guid = 8

-- Display: Instrument Guid
cme_futures_mdp3_sbe_v1_12_display.instrument_guid = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Instrument Guid: No Value"
  end

  return "Instrument Guid: "..value
end

-- Dissect: Instrument Guid
cme_futures_mdp3_sbe_v1_12_dissect.instrument_guid = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.instrument_guid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.instrument_guid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.instrument_guid, range, value, display)

  return offset + length, value
end

-- Size: Max Price Discretion Offset
cme_futures_mdp3_sbe_v1_12_size_of.max_price_discretion_offset = 8

-- Display: Max Price Discretion Offset
cme_futures_mdp3_sbe_v1_12_display.max_price_discretion_offset = function(value)
  return "Max Price Discretion Offset: "..value
end

-- Translate: Max Price Discretion Offset
translate.max_price_discretion_offset = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Max Price Discretion Offset
cme_futures_mdp3_sbe_v1_12_dissect.max_price_discretion_offset = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.max_price_discretion_offset
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.max_price_discretion_offset(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.max_price_discretion_offset(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.max_price_discretion_offset, range, value, display)

  return offset + length, value
end

-- Size: Min Quote Life
cme_futures_mdp3_sbe_v1_12_size_of.min_quote_life = 4

-- Display: Min Quote Life
cme_futures_mdp3_sbe_v1_12_display.min_quote_life = function(value)
  return "Min Quote Life: "..value
end

-- Dissect: Min Quote Life
cme_futures_mdp3_sbe_v1_12_dissect.min_quote_life = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.min_quote_life
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.min_quote_life(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.min_quote_life, range, value, display)

  return offset + length, value
end

-- Size: Fix Rate Local Time Zone
cme_futures_mdp3_sbe_v1_12_size_of.fix_rate_local_time_zone = 20

-- Display: Fix Rate Local Time Zone
cme_futures_mdp3_sbe_v1_12_display.fix_rate_local_time_zone = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Rate Local Time Zone: No Value"
  end

  return "Fix Rate Local Time Zone: "..value
end

-- Dissect: Fix Rate Local Time Zone
cme_futures_mdp3_sbe_v1_12_dissect.fix_rate_local_time_zone = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.fix_rate_local_time_zone
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

  local display = cme_futures_mdp3_sbe_v1_12_display.fix_rate_local_time_zone(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.fix_rate_local_time_zone, range, value, display)

  return offset + length, value
end

-- Size: Fix Rate Local Time
cme_futures_mdp3_sbe_v1_12_size_of.fix_rate_local_time = 8

-- Display: Fix Rate Local Time
cme_futures_mdp3_sbe_v1_12_display.fix_rate_local_time = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Rate Local Time: No Value"
  end

  return "Fix Rate Local Time: "..value
end

-- Dissect: Fix Rate Local Time
cme_futures_mdp3_sbe_v1_12_dissect.fix_rate_local_time = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.fix_rate_local_time
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

  local display = cme_futures_mdp3_sbe_v1_12_display.fix_rate_local_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.fix_rate_local_time, range, value, display)

  return offset + length, value
end

-- Size: Rate Source
cme_futures_mdp3_sbe_v1_12_size_of.rate_source = 12

-- Display: Rate Source
cme_futures_mdp3_sbe_v1_12_display.rate_source = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Rate Source: No Value"
  end

  return "Rate Source: "..value
end

-- Dissect: Rate Source
cme_futures_mdp3_sbe_v1_12_dissect.rate_source = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.rate_source
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

  local display = cme_futures_mdp3_sbe_v1_12_display.rate_source(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.rate_source, range, value, display)

  return offset + length, value
end

-- Size: Fx Benchmark Rate Fix
cme_futures_mdp3_sbe_v1_12_size_of.fx_benchmark_rate_fix = 20

-- Display: Fx Benchmark Rate Fix
cme_futures_mdp3_sbe_v1_12_display.fx_benchmark_rate_fix = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fx Benchmark Rate Fix: No Value"
  end

  return "Fx Benchmark Rate Fix: "..value
end

-- Dissect: Fx Benchmark Rate Fix
cme_futures_mdp3_sbe_v1_12_dissect.fx_benchmark_rate_fix = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.fx_benchmark_rate_fix
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

  local display = cme_futures_mdp3_sbe_v1_12_display.fx_benchmark_rate_fix(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.fx_benchmark_rate_fix, range, value, display)

  return offset + length, value
end

-- Size: Intervening Days
cme_futures_mdp3_sbe_v1_12_size_of.intervening_days = 2

-- Display: Intervening Days
cme_futures_mdp3_sbe_v1_12_display.intervening_days = function(value)
  return "Intervening Days: "..value
end

-- Dissect: Intervening Days
cme_futures_mdp3_sbe_v1_12_dissect.intervening_days = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.intervening_days
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.intervening_days(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.intervening_days, range, value, display)

  return offset + length, value
end

-- Size: Settl Type
cme_futures_mdp3_sbe_v1_12_size_of.settl_type = 3

-- Display: Settl Type
cme_futures_mdp3_sbe_v1_12_display.settl_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settl Type: No Value"
  end

  return "Settl Type: "..value
end

-- Dissect: Settl Type
cme_futures_mdp3_sbe_v1_12_dissect.settl_type = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.settl_type
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

  local display = cme_futures_mdp3_sbe_v1_12_display.settl_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.settl_type, range, value, display)

  return offset + length, value
end

-- Size: Fx Currency Symbol
cme_futures_mdp3_sbe_v1_12_size_of.fx_currency_symbol = 7

-- Display: Fx Currency Symbol
cme_futures_mdp3_sbe_v1_12_display.fx_currency_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fx Currency Symbol: No Value"
  end

  return "Fx Currency Symbol: "..value
end

-- Dissect: Fx Currency Symbol
cme_futures_mdp3_sbe_v1_12_dissect.fx_currency_symbol = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.fx_currency_symbol
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

  local display = cme_futures_mdp3_sbe_v1_12_display.fx_currency_symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.fx_currency_symbol, range, value, display)

  return offset + length, value
end

-- Size: Financial Instrument Full Name
cme_futures_mdp3_sbe_v1_12_size_of.financial_instrument_full_name = 35

-- Display: Financial Instrument Full Name
cme_futures_mdp3_sbe_v1_12_display.financial_instrument_full_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Financial Instrument Full Name: No Value"
  end

  return "Financial Instrument Full Name: "..value
end

-- Dissect: Financial Instrument Full Name
cme_futures_mdp3_sbe_v1_12_dissect.financial_instrument_full_name = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.financial_instrument_full_name
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

  local display = cme_futures_mdp3_sbe_v1_12_display.financial_instrument_full_name(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.financial_instrument_full_name, range, value, display)

  return offset + length, value
end

-- Size: User Defined Instrument
cme_futures_mdp3_sbe_v1_12_size_of.user_defined_instrument = 1

-- Display: User Defined Instrument
cme_futures_mdp3_sbe_v1_12_display.user_defined_instrument = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Defined Instrument: No Value"
  end

  return "User Defined Instrument: "..value
end

-- Dissect: User Defined Instrument
cme_futures_mdp3_sbe_v1_12_dissect.user_defined_instrument = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.user_defined_instrument
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_12_display.user_defined_instrument(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.user_defined_instrument, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Measure Qty
cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure_qty = 8

-- Display: Unit Of Measure Qty
cme_futures_mdp3_sbe_v1_12_display.unit_of_measure_qty = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Unit Of Measure Qty: No Value"
  end

  return "Unit Of Measure Qty: "..value
end

-- Translate: Unit Of Measure Qty
translate.unit_of_measure_qty = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Unit Of Measure Qty
cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure_qty = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure_qty
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.unit_of_measure_qty(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.unit_of_measure_qty(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.unit_of_measure_qty, range, value, display)

  return offset + length, value
end

-- Size: Unit Of Measure
cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure = 30

-- Display: Unit Of Measure
cme_futures_mdp3_sbe_v1_12_display.unit_of_measure = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure: No Value"
  end

  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure
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

  local display = cme_futures_mdp3_sbe_v1_12_display.unit_of_measure(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Size: Price Precision
cme_futures_mdp3_sbe_v1_12_size_of.price_precision = 1

-- Display: Price Precision
cme_futures_mdp3_sbe_v1_12_display.price_precision = function(value)
  return "Price Precision: "..value
end

-- Dissect: Price Precision
cme_futures_mdp3_sbe_v1_12_dissect.price_precision = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.price_precision
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.price_precision(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.price_precision, range, value, display)

  return offset + length, value
end

-- Size: Display Factor
cme_futures_mdp3_sbe_v1_12_size_of.display_factor = 8

-- Display: Display Factor
cme_futures_mdp3_sbe_v1_12_display.display_factor = function(value)
  return "Display Factor: "..value
end

-- Translate: Display Factor
translate.display_factor = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Display Factor
cme_futures_mdp3_sbe_v1_12_dissect.display_factor = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.display_factor
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.display_factor(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.display_factor(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.display_factor, range, value, display)

  return offset + length, value
end

-- Size: Min Price Increment
cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment = 8

-- Display: Min Price Increment
cme_futures_mdp3_sbe_v1_12_display.min_price_increment = function(value)
  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
translate.min_price_increment = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Min Price Increment
cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.min_price_increment(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.min_price_increment(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Size: Max Trade Vol
cme_futures_mdp3_sbe_v1_12_size_of.max_trade_vol = 4

-- Display: Max Trade Vol
cme_futures_mdp3_sbe_v1_12_display.max_trade_vol = function(value)
  return "Max Trade Vol: "..value
end

-- Dissect: Max Trade Vol
cme_futures_mdp3_sbe_v1_12_dissect.max_trade_vol = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.max_trade_vol
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.max_trade_vol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.max_trade_vol, range, value, display)

  return offset + length, value
end

-- Size: Min Trade Vol
cme_futures_mdp3_sbe_v1_12_size_of.min_trade_vol = 4

-- Display: Min Trade Vol
cme_futures_mdp3_sbe_v1_12_display.min_trade_vol = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
cme_futures_mdp3_sbe_v1_12_dissect.min_trade_vol = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.min_trade_vol
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.min_trade_vol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Size: Match Algorithm
cme_futures_mdp3_sbe_v1_12_size_of.match_algorithm = 1

-- Display: Match Algorithm
cme_futures_mdp3_sbe_v1_12_display.match_algorithm = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Match Algorithm: No Value"
  end

  return "Match Algorithm: "..value
end

-- Dissect: Match Algorithm
cme_futures_mdp3_sbe_v1_12_dissect.match_algorithm = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.match_algorithm
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_12_display.match_algorithm(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.match_algorithm, range, value, display)

  return offset + length, value
end

-- Size: Price Quote Currency
cme_futures_mdp3_sbe_v1_12_size_of.price_quote_currency = 3

-- Display: Price Quote Currency
cme_futures_mdp3_sbe_v1_12_display.price_quote_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Price Quote Currency: No Value"
  end

  return "Price Quote Currency: "..value
end

-- Dissect: Price Quote Currency
cme_futures_mdp3_sbe_v1_12_dissect.price_quote_currency = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.price_quote_currency
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

  local display = cme_futures_mdp3_sbe_v1_12_display.price_quote_currency(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.price_quote_currency, range, value, display)

  return offset + length, value
end

-- Size: Settl Currency
cme_futures_mdp3_sbe_v1_12_size_of.settl_currency = 3

-- Display: Settl Currency
cme_futures_mdp3_sbe_v1_12_display.settl_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settl Currency: No Value"
  end

  return "Settl Currency: "..value
end

-- Dissect: Settl Currency
cme_futures_mdp3_sbe_v1_12_dissect.settl_currency = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.settl_currency
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

  local display = cme_futures_mdp3_sbe_v1_12_display.settl_currency(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.settl_currency, range, value, display)

  return offset + length, value
end

-- Size: Currency
cme_futures_mdp3_sbe_v1_12_size_of.currency = 3

-- Display: Currency
cme_futures_mdp3_sbe_v1_12_display.currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
cme_futures_mdp3_sbe_v1_12_dissect.currency = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.currency
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

  local display = cme_futures_mdp3_sbe_v1_12_display.currency(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Cfi Code
cme_futures_mdp3_sbe_v1_12_size_of.cfi_code = 6

-- Display: Cfi Code
cme_futures_mdp3_sbe_v1_12_display.cfi_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
cme_futures_mdp3_sbe_v1_12_dissect.cfi_code = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.cfi_code
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

  local display = cme_futures_mdp3_sbe_v1_12_display.cfi_code(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Size: Security Type
cme_futures_mdp3_sbe_v1_12_size_of.security_type = 6

-- Display: Security Type
cme_futures_mdp3_sbe_v1_12_display.security_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
cme_futures_mdp3_sbe_v1_12_dissect.security_type = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.security_type
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

  local display = cme_futures_mdp3_sbe_v1_12_display.security_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cme_futures_mdp3_sbe_v1_12_size_of.symbol = 20

-- Display: Symbol
cme_futures_mdp3_sbe_v1_12_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_futures_mdp3_sbe_v1_12_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.symbol
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

  local display = cme_futures_mdp3_sbe_v1_12_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Asset
cme_futures_mdp3_sbe_v1_12_size_of.asset = 6

-- Display: Asset
cme_futures_mdp3_sbe_v1_12_display.asset = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Asset: No Value"
  end

  return "Asset: "..value
end

-- Dissect: Asset
cme_futures_mdp3_sbe_v1_12_dissect.asset = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.asset
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

  local display = cme_futures_mdp3_sbe_v1_12_display.asset(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.asset, range, value, display)

  return offset + length, value
end

-- Size: Security Group
cme_futures_mdp3_sbe_v1_12_size_of.security_group = 6

-- Display: Security Group
cme_futures_mdp3_sbe_v1_12_display.security_group = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
cme_futures_mdp3_sbe_v1_12_dissect.security_group = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.security_group
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

  local display = cme_futures_mdp3_sbe_v1_12_display.security_group(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_group, range, value, display)

  return offset + length, value
end

-- Size: Security Exchange
cme_futures_mdp3_sbe_v1_12_size_of.security_exchange = 4

-- Display: Security Exchange
cme_futures_mdp3_sbe_v1_12_display.security_exchange = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
cme_futures_mdp3_sbe_v1_12_dissect.security_exchange = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.security_exchange
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

  local display = cme_futures_mdp3_sbe_v1_12_display.security_exchange(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Size: Underlying Product
cme_futures_mdp3_sbe_v1_12_size_of.underlying_product = 1

-- Display: Underlying Product
cme_futures_mdp3_sbe_v1_12_display.underlying_product = function(value)
  return "Underlying Product: "..value
end

-- Dissect: Underlying Product
cme_futures_mdp3_sbe_v1_12_dissect.underlying_product = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.underlying_product
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.underlying_product(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.underlying_product, range, value, display)

  return offset + length, value
end

-- Size: Market Segment Id
cme_futures_mdp3_sbe_v1_12_size_of.market_segment_id = 1

-- Display: Market Segment Id
cme_futures_mdp3_sbe_v1_12_display.market_segment_id = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
cme_futures_mdp3_sbe_v1_12_dissect.market_segment_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.market_segment_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Size: Appl Id
cme_futures_mdp3_sbe_v1_12_size_of.appl_id = 2

-- Display: Appl Id
cme_futures_mdp3_sbe_v1_12_display.appl_id = function(value)
  return "Appl Id: "..value
end

-- Dissect: Appl Id
cme_futures_mdp3_sbe_v1_12_dissect.appl_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.appl_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.appl_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Size: Security Update Action
cme_futures_mdp3_sbe_v1_12_size_of.security_update_action = 1

-- Display: Security Update Action
cme_futures_mdp3_sbe_v1_12_display.security_update_action = function(value)
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
cme_futures_mdp3_sbe_v1_12_dissect.security_update_action = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.security_update_action
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_12_display.security_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_update_action, range, value, display)

  return offset + length, value
end

-- Size: Tot Num Reports Optional
cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports_optional = 4

-- Display: Tot Num Reports Optional
cme_futures_mdp3_sbe_v1_12_display.tot_num_reports_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Tot Num Reports Optional: No Value"
  end

  return "Tot Num Reports Optional: "..value
end

-- Dissect: Tot Num Reports Optional
cme_futures_mdp3_sbe_v1_12_dissect.tot_num_reports_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.tot_num_reports_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.tot_num_reports_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Fx
cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_fx = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_update_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_security_trading_status

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.appl_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.market_segment_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlying_product

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_exchange

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_group

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.asset

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.symbol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.cfi_code

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.price_quote_currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_algorithm

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.display_factor

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.price_precision

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.user_defined_instrument

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.financial_instrument_full_name

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.fx_currency_symbol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.intervening_days

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.fx_benchmark_rate_fix

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rate_source

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.fix_rate_local_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.fix_rate_local_time_zone

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_quote_life

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_price_discretion_offset

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.instrument_guid

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.maturity_month_year(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settlement_locale

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.events_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.inst_attrib_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.lot_type_rules_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_sessions_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Fx
cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_fx = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Fx
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_fx_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_12_dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_12_dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_12_dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_12_dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_12_dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_12_dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_12_dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_12_dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_12_dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_12_dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_12_dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_12_dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_12_dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_12_dissect.currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_12_dissect.settl_currency(buffer, index, packet, parent)

  -- Price Quote Currency: 3 Byte Ascii String
  index, price_quote_currency = cme_futures_mdp3_sbe_v1_12_dissect.price_quote_currency(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_12_dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index, min_price_increment = cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_12_dissect.display_factor(buffer, index, packet, parent)

  -- Price Precision: 1 Byte Unsigned Fixed Width Integer
  index, price_precision = cme_futures_mdp3_sbe_v1_12_dissect.price_precision(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty = cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure_qty(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_12_dissect.max_price_variation(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_12_dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_mdp3_sbe_v1_12_dissect.financial_instrument_full_name(buffer, index, packet, parent)

  -- Fx Currency Symbol: 7 Byte Ascii String
  index, fx_currency_symbol = cme_futures_mdp3_sbe_v1_12_dissect.fx_currency_symbol(buffer, index, packet, parent)

  -- Settl Type: 3 Byte Ascii String
  index, settl_type = cme_futures_mdp3_sbe_v1_12_dissect.settl_type(buffer, index, packet, parent)

  -- Intervening Days: 2 Byte Unsigned Fixed Width Integer
  index, intervening_days = cme_futures_mdp3_sbe_v1_12_dissect.intervening_days(buffer, index, packet, parent)

  -- Fx Benchmark Rate Fix: 20 Byte Ascii String
  index, fx_benchmark_rate_fix = cme_futures_mdp3_sbe_v1_12_dissect.fx_benchmark_rate_fix(buffer, index, packet, parent)

  -- Rate Source: 12 Byte Ascii String
  index, rate_source = cme_futures_mdp3_sbe_v1_12_dissect.rate_source(buffer, index, packet, parent)

  -- Fix Rate Local Time: 8 Byte Ascii String
  index, fix_rate_local_time = cme_futures_mdp3_sbe_v1_12_dissect.fix_rate_local_time(buffer, index, packet, parent)

  -- Fix Rate Local Time Zone: 20 Byte Ascii String
  index, fix_rate_local_time_zone = cme_futures_mdp3_sbe_v1_12_dissect.fix_rate_local_time_zone(buffer, index, packet, parent)

  -- Min Quote Life: 4 Byte Unsigned Fixed Width Integer
  index, min_quote_life = cme_futures_mdp3_sbe_v1_12_dissect.min_quote_life(buffer, index, packet, parent)

  -- Max Price Discretion Offset: 8 Byte Signed Fixed Width Integer
  index, max_price_discretion_offset = cme_futures_mdp3_sbe_v1_12_dissect.max_price_discretion_offset(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_12_dissect.instrument_guid(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_12_dissect.maturity_month_year(buffer, index, packet, parent)

  -- Settlement Locale: 8 Byte Ascii String
  index, settlement_locale = cme_futures_mdp3_sbe_v1_12_dissect.settlement_locale(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_12_dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_groups(buffer, index, packet, parent)

  -- Trading Sessions Groups: Struct of 2 fields
  index, trading_sessions_groups = cme_futures_mdp3_sbe_v1_12_dissect.trading_sessions_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Fx
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_fx = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_fx then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_fx(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_fx(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_fx, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_fx_fields(buffer, offset, packet, parent)
end

-- Size: Md Stream Id
cme_futures_mdp3_sbe_v1_12_size_of.md_stream_id = 1

-- Display: Md Stream Id
cme_futures_mdp3_sbe_v1_12_display.md_stream_id = function(value)
  if value == 255 then
    return "Md Stream Id: No Value"
  end
  if value == 0 then
    return "Md Stream Id: Market Place Assistant (0)"
  end
  if value == 1 then
    return "Md Stream Id: Globex (1)"
  end
  if value == 2 then
    return "Md Stream Id: Refinitiv (2)"
  end
  if value == 3 then
    return "Md Stream Id: Icap (3)"
  end

  return "Md Stream Id: Unknown("..value..")"
end

-- Dissect: Md Stream Id
cme_futures_mdp3_sbe_v1_12_dissect.md_stream_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_stream_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_stream_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_stream_id, range, value, display)

  return offset + length, value
end

-- Size: Underlying Instrument Guid
cme_futures_mdp3_sbe_v1_12_size_of.underlying_instrument_guid = 8

-- Display: Underlying Instrument Guid
cme_futures_mdp3_sbe_v1_12_display.underlying_instrument_guid = function(value)
  return "Underlying Instrument Guid: "..value
end

-- Dissect: Underlying Instrument Guid
cme_futures_mdp3_sbe_v1_12_dissect.underlying_instrument_guid = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.underlying_instrument_guid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.underlying_instrument_guid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.underlying_instrument_guid, range, value, display)

  return offset + length, value
end

-- Size: Dirty Price
cme_futures_mdp3_sbe_v1_12_size_of.dirty_price = 8

-- Display: Dirty Price
cme_futures_mdp3_sbe_v1_12_display.dirty_price = function(value)
  return "Dirty Price: "..value
end

-- Translate: Dirty Price
translate.dirty_price = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Dirty Price
cme_futures_mdp3_sbe_v1_12_dissect.dirty_price = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.dirty_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.dirty_price(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.dirty_price(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.dirty_price, range, value, display)

  return offset + length, value
end

-- Size: Collateral Market Price
cme_futures_mdp3_sbe_v1_12_size_of.collateral_market_price = 8

-- Display: Collateral Market Price
cme_futures_mdp3_sbe_v1_12_display.collateral_market_price = function(value)
  return "Collateral Market Price: "..value
end

-- Translate: Collateral Market Price
translate.collateral_market_price = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Collateral Market Price
cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_price = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.collateral_market_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.collateral_market_price(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.collateral_market_price(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.collateral_market_price, range, value, display)

  return offset + length, value
end

-- Size: Underlying Security Alt Id Source
cme_futures_mdp3_sbe_v1_12_size_of.underlying_security_alt_id_source = 1

-- Display: Underlying Security Alt Id Source
cme_futures_mdp3_sbe_v1_12_display.underlying_security_alt_id_source = function(value)
  if value == 255 then
    return "Underlying Security Alt Id Source: No Value"
  end
  if value == 1 then
    return "Underlying Security Alt Id Source: Cusip (1)"
  end
  if value == 4 then
    return "Underlying Security Alt Id Source: Isin (4)"
  end

  return "Underlying Security Alt Id Source: Unknown("..value..")"
end

-- Dissect: Underlying Security Alt Id Source
cme_futures_mdp3_sbe_v1_12_dissect.underlying_security_alt_id_source = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.underlying_security_alt_id_source
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.underlying_security_alt_id_source(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.underlying_security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Size: Underlying Security Alt Id
cme_futures_mdp3_sbe_v1_12_size_of.underlying_security_alt_id = 12

-- Display: Underlying Security Alt Id
cme_futures_mdp3_sbe_v1_12_display.underlying_security_alt_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Security Alt Id: No Value"
  end

  return "Underlying Security Alt Id: "..value
end

-- Dissect: Underlying Security Alt Id
cme_futures_mdp3_sbe_v1_12_dissect.underlying_security_alt_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.underlying_security_alt_id
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

  local display = cme_futures_mdp3_sbe_v1_12_display.underlying_security_alt_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.underlying_security_alt_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Collateral Market Value Group
cme_futures_mdp3_sbe_v1_12_size_of.collateral_market_value_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlying_security_alt_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlying_security_alt_id_source

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.collateral_market_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.dirty_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlying_instrument_guid

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_stream_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  return index
end

-- Display: Collateral Market Value Group
cme_futures_mdp3_sbe_v1_12_display.collateral_market_value_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collateral Market Value Group
cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value_group_fields = function(buffer, offset, packet, parent, collateral_market_value_group_index)
  local index = offset

  -- Implicit Collateral Market Value Group Index
  if collateral_market_value_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.collateral_market_value_group_index, collateral_market_value_group_index)
    iteration:set_generated()
  end

  -- Underlying Security Alt Id: 12 Byte Ascii String
  index, underlying_security_alt_id = cme_futures_mdp3_sbe_v1_12_dissect.underlying_security_alt_id(buffer, index, packet, parent)

  -- Underlying Security Alt Id Source: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, underlying_security_alt_id_source = cme_futures_mdp3_sbe_v1_12_dissect.underlying_security_alt_id_source(buffer, index, packet, parent)

  -- Collateral Market Price: 8 Byte Signed Fixed Width Integer
  index, collateral_market_price = cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_price(buffer, index, packet, parent)

  -- Dirty Price: 8 Byte Signed Fixed Width Integer
  index, dirty_price = cme_futures_mdp3_sbe_v1_12_dissect.dirty_price(buffer, index, packet, parent)

  -- Underlying Instrument Guid: 8 Byte Unsigned Fixed Width Integer
  index, underlying_instrument_guid = cme_futures_mdp3_sbe_v1_12_dissect.underlying_instrument_guid(buffer, index, packet, parent)

  -- Md Stream Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, md_stream_id = cme_futures_mdp3_sbe_v1_12_dissect.md_stream_id(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Collateral Market Value Group
cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value_group = function(buffer, offset, packet, parent, collateral_market_value_group_index)
  if show.collateral_market_value_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.collateral_market_value_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value_group_fields(buffer, offset, packet, parent, collateral_market_value_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.collateral_market_value_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value_group_fields(buffer, offset, packet, parent, collateral_market_value_group_index)
  end
end

-- Calculate size of: Collateral Market Value Groups
cme_futures_mdp3_sbe_v1_12_size_of.collateral_market_value_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local collateral_market_value_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + collateral_market_value_group_count * 40

  return index
end

-- Display: Collateral Market Value Groups
cme_futures_mdp3_sbe_v1_12_display.collateral_market_value_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collateral Market Value Groups
cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Collateral Market Value Group
  for collateral_market_value_group_index = 1, num_in_group do
    index, collateral_market_value_group = cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value_group(buffer, index, packet, parent, collateral_market_value_group_index)
  end

  return index
end

-- Dissect: Collateral Market Value Groups
cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.collateral_market_value_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.collateral_market_value_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.collateral_market_value_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.collateral_market_value_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Collateral Market Value
cme_futures_mdp3_sbe_v1_12_size_of.collateral_market_value = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.collateral_market_value_groups(buffer, offset + index)

  return index
end

-- Display: Collateral Market Value
cme_futures_mdp3_sbe_v1_12_display.collateral_market_value = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collateral Market Value
cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- Collateral Market Value Groups: Struct of 2 fields
  index, collateral_market_value_groups = cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Collateral Market Value
cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.collateral_market_value then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.collateral_market_value(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.collateral_market_value(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.collateral_market_value, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value_fields(buffer, offset, packet, parent)
end

-- Size: Settl Price Type
cme_futures_mdp3_sbe_v1_12_size_of.settl_price_type = 1

-- Display: Settl Price Type
cme_futures_mdp3_sbe_v1_12_display.settl_price_type = function(buffer, packet, parent)
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
cme_futures_mdp3_sbe_v1_12_dissect.settl_price_type_bits = function(buffer, offset, packet, parent)

  -- Null Value: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.null_value, buffer(offset, 1))

  -- Reserved Bits: 3 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.reserved_bits, buffer(offset, 1))

  -- Intraday: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.intraday, buffer(offset, 1))

  -- Rounded: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.rounded, buffer(offset, 1))

  -- Actual: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.actual, buffer(offset, 1))

  -- Final Daily: 1 Bit
  parent:add(cme_futures_mdp3_sbe_v1_12.fields.final_daily, buffer(offset, 1))
end

-- Dissect: Settl Price Type
cme_futures_mdp3_sbe_v1_12_dissect.settl_price_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_12_display.settl_price_type(range, packet, parent)
  local element = parent:add(cme_futures_mdp3_sbe_v1_12.fields.settl_price_type, range, display)

  if show.settl_price_type then
    cme_futures_mdp3_sbe_v1_12_dissect.settl_price_type_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Trading Reference Date
cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_date = 2

-- Display: Trading Reference Date
cme_futures_mdp3_sbe_v1_12_display.trading_reference_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trading Reference Date: No Value"
  end

  return "Trading Reference Date: "..value
end

-- Dissect: Trading Reference Date
cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_date = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.trading_reference_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.trading_reference_date, range, value, display)

  return offset + length, value
end

-- Size: Md Price Level Optional
cme_futures_mdp3_sbe_v1_12_size_of.md_price_level_optional = 1

-- Display: Md Price Level Optional
cme_futures_mdp3_sbe_v1_12_display.md_price_level_optional = function(value)
  -- Check if field has value
  if value == 127 then
    return "Md Price Level Optional: No Value"
  end

  return "Md Price Level Optional: "..value
end

-- Dissect: Md Price Level Optional
cme_futures_mdp3_sbe_v1_12_dissect.md_price_level_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_price_level_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_price_level_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_price_level_optional, range, value, display)

  return offset + length, value
end

-- Size: Tradeable Size
cme_futures_mdp3_sbe_v1_12_size_of.tradeable_size = 4

-- Display: Tradeable Size
cme_futures_mdp3_sbe_v1_12_display.tradeable_size = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Tradeable Size: No Value"
  end

  return "Tradeable Size: "..value
end

-- Dissect: Tradeable Size
cme_futures_mdp3_sbe_v1_12_dissect.tradeable_size = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.tradeable_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.tradeable_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.tradeable_size, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Size Optional
cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_optional = 4

-- Display: Md Entry Size Optional
cme_futures_mdp3_sbe_v1_12_display.md_entry_size_optional = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Entry Size Optional: No Value"
  end

  return "Md Entry Size Optional: "..value
end

-- Dissect: Md Entry Size Optional
cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_entry_size_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_entry_size_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh Tcp Group
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tcp_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tradeable_size

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_price_level_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.open_close_settl_flag

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_price_type

  return index
end

-- Display: Snapshot Full Refresh Tcp Group
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tcp_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tcp Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_group_fields = function(buffer, offset, packet, parent, snapshot_full_refresh_tcp_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Tcp Group Index
  if snapshot_full_refresh_tcp_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tcp_group_index, snapshot_full_refresh_tcp_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Tradeable Size: 4 Byte Signed Fixed Width Integer Nullable
  index, tradeable_size = cme_futures_mdp3_sbe_v1_12_dissect.tradeable_size(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_12_dissect.number_of_orders_optional(buffer, index, packet, parent)

  -- Md Price Level Optional: 1 Byte Signed Fixed Width Integer Nullable
  index, md_price_level_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_price_level_optional(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_12_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 20 values
  index, md_entry_type_ = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_date(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_12_dissect.settl_price_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Tcp Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_group = function(buffer, offset, packet, parent, snapshot_full_refresh_tcp_group_index)
  if show.snapshot_full_refresh_tcp_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tcp_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_group_fields(buffer, offset, packet, parent, snapshot_full_refresh_tcp_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tcp_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_group_fields(buffer, offset, packet, parent, snapshot_full_refresh_tcp_group_index)
  end
end

-- Calculate size of: Snapshot Full Refresh Tcp Groups
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tcp_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local snapshot_full_refresh_tcp_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_tcp_group_count * 26

  return index
end

-- Display: Snapshot Full Refresh Tcp Groups
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tcp_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tcp Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Tcp Group
  for snapshot_full_refresh_tcp_group_index = 1, num_in_group do
    index, snapshot_full_refresh_tcp_group = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_group(buffer, index, packet, parent, snapshot_full_refresh_tcp_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Tcp Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_tcp_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tcp_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tcp_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tcp_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh Tcp
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tcp = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tcp_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Tcp
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tcp = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tcp
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_12_dissect.max_price_variation(buffer, index, packet, parent)

  -- Snapshot Full Refresh Tcp Groups: Struct of 2 fields
  index, snapshot_full_refresh_tcp_groups = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Tcp
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_tcp then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tcp(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_tcp(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_tcp, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_fields(buffer, offset, packet, parent)
end

-- Size: Aggressor Indicator
cme_futures_mdp3_sbe_v1_12_size_of.aggressor_indicator = 1

-- Display: Aggressor Indicator
cme_futures_mdp3_sbe_v1_12_display.aggressor_indicator = function(value)
  if value == 255 then
    return "Aggressor Indicator: No Value"
  end
  if value == 0 then
    return "Aggressor Indicator: Not Aggressor (0)"
  end
  if value == 1 then
    return "Aggressor Indicator: Aggressor (1)"
  end

  return "Aggressor Indicator: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator
cme_futures_mdp3_sbe_v1_12_dissect.aggressor_indicator = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.aggressor_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.aggressor_indicator(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Size: Side
cme_futures_mdp3_sbe_v1_12_size_of.side = 1

-- Display: Side
cme_futures_mdp3_sbe_v1_12_display.side = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cme_futures_mdp3_sbe_v1_12_dissect.side = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status Workup Order Group
cme_futures_mdp3_sbe_v1_12_size_of.security_status_workup_order_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.order_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.side

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.aggressor_indicator

  return index
end

-- Display: Security Status Workup Order Group
cme_futures_mdp3_sbe_v1_12_display.security_status_workup_order_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Workup Order Group
cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup_order_group_fields = function(buffer, offset, packet, parent, security_status_workup_order_group_index)
  local index = offset

  -- Implicit Security Status Workup Order Group Index
  if security_status_workup_order_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_status_workup_order_group_index, security_status_workup_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_12_dissect.order_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_mdp3_sbe_v1_12_dissect.side(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_indicator = cme_futures_mdp3_sbe_v1_12_dissect.aggressor_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Workup Order Group
cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup_order_group = function(buffer, offset, packet, parent, security_status_workup_order_group_index)
  if show.security_status_workup_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_status_workup_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup_order_group_fields(buffer, offset, packet, parent, security_status_workup_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.security_status_workup_order_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup_order_group_fields(buffer, offset, packet, parent, security_status_workup_order_group_index)
  end
end

-- Calculate size of: Security Status Workup Order Groups
cme_futures_mdp3_sbe_v1_12_size_of.security_status_workup_order_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local security_status_workup_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_status_workup_order_group_count * 10

  return index
end

-- Display: Security Status Workup Order Groups
cme_futures_mdp3_sbe_v1_12_display.security_status_workup_order_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Workup Order Groups
cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup_order_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Security Status Workup Order Group
  for security_status_workup_order_group_index = 1, num_in_group do
    index, security_status_workup_order_group = cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup_order_group(buffer, index, packet, parent, security_status_workup_order_group_index)
  end

  return index
end

-- Dissect: Security Status Workup Order Groups
cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup_order_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_status_workup_order_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.security_status_workup_order_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.security_status_workup_order_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_status_workup_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup_order_groups_fields(buffer, offset, packet, parent)
end

-- Size: Security Trading Event
cme_futures_mdp3_sbe_v1_12_size_of.security_trading_event = 1

-- Display: Security Trading Event
cme_futures_mdp3_sbe_v1_12_display.security_trading_event = function(value)
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
  if value == 7 then
    return "Security Trading Event: End Of Workup (7)"
  end

  return "Security Trading Event: Unknown("..value..")"
end

-- Dissect: Security Trading Event
cme_futures_mdp3_sbe_v1_12_dissect.security_trading_event = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.security_trading_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.security_trading_event(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Size: Halt Reason
cme_futures_mdp3_sbe_v1_12_size_of.halt_reason = 1

-- Display: Halt Reason
cme_futures_mdp3_sbe_v1_12_display.halt_reason = function(value)
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
  if value == 7 then
    return "Halt Reason: Trade Date Roll (7)"
  end

  return "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
cme_futures_mdp3_sbe_v1_12_dissect.halt_reason = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.halt_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.halt_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Size: Workup Trading Status
cme_futures_mdp3_sbe_v1_12_size_of.workup_trading_status = 1

-- Display: Workup Trading Status
cme_futures_mdp3_sbe_v1_12_display.workup_trading_status = function(value)
  if value == 17 then
    return "Workup Trading Status: Ready To Trade (17)"
  end
  if value == 18 then
    return "Workup Trading Status: Not Available For Trading (18)"
  end
  if value == 201 then
    return "Workup Trading Status: Private Workup (201)"
  end
  if value == 202 then
    return "Workup Trading Status: Public Workup (202)"
  end

  return "Workup Trading Status: Unknown("..value..")"
end

-- Dissect: Workup Trading Status
cme_futures_mdp3_sbe_v1_12_dissect.workup_trading_status = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.workup_trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.workup_trading_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.workup_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Trade Link Id
cme_futures_mdp3_sbe_v1_12_size_of.trade_link_id = 4

-- Display: Trade Link Id
cme_futures_mdp3_sbe_v1_12_display.trade_link_id = function(value)
  return "Trade Link Id: "..value
end

-- Dissect: Trade Link Id
cme_futures_mdp3_sbe_v1_12_dissect.trade_link_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.trade_link_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.trade_link_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.trade_link_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status Workup
cme_futures_mdp3_sbe_v1_12_size_of.security_status_workup = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trade_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trade_link_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.workup_trading_status

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.halt_reason

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_trading_event

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_status_workup_order_groups(buffer, offset + index)

  return index
end

-- Display: Security Status Workup
cme_futures_mdp3_sbe_v1_12_display.security_status_workup = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Workup
cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_12_dissect.trade_date(buffer, index, packet, parent)

  -- Trade Link Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_link_id = cme_futures_mdp3_sbe_v1_12_dissect.trade_link_id(buffer, index, packet, parent)

  -- Workup Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, workup_trading_status = cme_futures_mdp3_sbe_v1_12_dissect.workup_trading_status(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, halt_reason = cme_futures_mdp3_sbe_v1_12_dissect.halt_reason(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, security_trading_event = cme_futures_mdp3_sbe_v1_12_dissect.security_trading_event(buffer, index, packet, parent)

  -- Security Status Workup Order Groups: Struct of 2 fields
  index, security_status_workup_order_groups = cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup_order_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Workup
cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_status_workup then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.security_status_workup(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.security_status_workup(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_status_workup, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup_fields(buffer, offset, packet, parent)
end

-- Size: Md Display Qty
cme_futures_mdp3_sbe_v1_12_size_of.md_display_qty = 4

-- Display: Md Display Qty
cme_futures_mdp3_sbe_v1_12_display.md_display_qty = function(value)
  return "Md Display Qty: "..value
end

-- Dissect: Md Display Qty
cme_futures_mdp3_sbe_v1_12_dissect.md_display_qty = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_display_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_display_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_display_qty, range, value, display)

  return offset + length, value
end

-- Size: Md Order Priority
cme_futures_mdp3_sbe_v1_12_size_of.md_order_priority = 8

-- Display: Md Order Priority
cme_futures_mdp3_sbe_v1_12_display.md_order_priority = function(value)
  return "Md Order Priority: "..value
end

-- Dissect: Md Order Priority
cme_futures_mdp3_sbe_v1_12_dissect.md_order_priority = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_order_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_order_priority(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_order_priority, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Refresh Top Orders Group
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_refresh_top_orders_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.order_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_order_priority

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_display_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_book

  return index
end

-- Display: Snapshot Refresh Top Orders Group
cme_futures_mdp3_sbe_v1_12_display.snapshot_refresh_top_orders_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Refresh Top Orders Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders_group_fields = function(buffer, offset, packet, parent, snapshot_refresh_top_orders_group_index)
  local index = offset

  -- Implicit Snapshot Refresh Top Orders Group Index
  if snapshot_refresh_top_orders_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_refresh_top_orders_group_index, snapshot_refresh_top_orders_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_12_dissect.order_id(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer
  index, md_order_priority = cme_futures_mdp3_sbe_v1_12_dissect.md_order_priority(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Display Qty: 4 Byte Signed Fixed Width Integer
  index, md_display_qty = cme_futures_mdp3_sbe_v1_12_dissect.md_display_qty(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 7 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_book(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Refresh Top Orders Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders_group = function(buffer, offset, packet, parent, snapshot_refresh_top_orders_group_index)
  if show.snapshot_refresh_top_orders_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_refresh_top_orders_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders_group_fields(buffer, offset, packet, parent, snapshot_refresh_top_orders_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_refresh_top_orders_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders_group_fields(buffer, offset, packet, parent, snapshot_refresh_top_orders_group_index)
  end
end

-- Calculate size of: Snapshot Refresh Top Orders Groups
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_refresh_top_orders_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local snapshot_refresh_top_orders_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_refresh_top_orders_group_count * 29

  return index
end

-- Display: Snapshot Refresh Top Orders Groups
cme_futures_mdp3_sbe_v1_12_display.snapshot_refresh_top_orders_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Refresh Top Orders Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Refresh Top Orders Group
  for snapshot_refresh_top_orders_group_index = 1, num_in_group do
    index, snapshot_refresh_top_orders_group = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders_group(buffer, index, packet, parent, snapshot_refresh_top_orders_group_index)
  end

  return index
end

-- Dissect: Snapshot Refresh Top Orders Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_refresh_top_orders_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_refresh_top_orders_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_refresh_top_orders_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_refresh_top_orders_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Refresh Top Orders
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_refresh_top_orders = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.snapshot_refresh_top_orders_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Refresh Top Orders
cme_futures_mdp3_sbe_v1_12_display.snapshot_refresh_top_orders = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Refresh Top Orders
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Snapshot Refresh Top Orders Groups: Struct of 2 fields
  index, snapshot_refresh_top_orders_groups = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Refresh Top Orders
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_refresh_top_orders then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_refresh_top_orders(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_refresh_top_orders(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_refresh_top_orders, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders_fields(buffer, offset, packet, parent)
end

-- Size: Related Symbol
cme_futures_mdp3_sbe_v1_12_size_of.related_symbol = 20

-- Display: Related Symbol
cme_futures_mdp3_sbe_v1_12_display.related_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Related Symbol: No Value"
  end

  return "Related Symbol: "..value
end

-- Dissect: Related Symbol
cme_futures_mdp3_sbe_v1_12_dissect.related_symbol = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.related_symbol
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

  local display = cme_futures_mdp3_sbe_v1_12_display.related_symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.related_symbol, range, value, display)

  return offset + length, value
end

-- Size: Related Security Id
cme_futures_mdp3_sbe_v1_12_size_of.related_security_id = 4

-- Display: Related Security Id
cme_futures_mdp3_sbe_v1_12_display.related_security_id = function(value)
  return "Related Security Id: "..value
end

-- Dissect: Related Security Id
cme_futures_mdp3_sbe_v1_12_dissect.related_security_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.related_security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.related_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.related_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Related Instruments Group
cme_futures_mdp3_sbe_v1_12_size_of.related_instruments_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.related_security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.related_symbol

  return index
end

-- Display: Related Instruments Group
cme_futures_mdp3_sbe_v1_12_display.related_instruments_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Instruments Group
cme_futures_mdp3_sbe_v1_12_dissect.related_instruments_group_fields = function(buffer, offset, packet, parent, related_instruments_group_index)
  local index = offset

  -- Implicit Related Instruments Group Index
  if related_instruments_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.related_instruments_group_index, related_instruments_group_index)
    iteration:set_generated()
  end

  -- Related Security Id: 4 Byte Signed Fixed Width Integer
  index, related_security_id = cme_futures_mdp3_sbe_v1_12_dissect.related_security_id(buffer, index, packet, parent)

  -- Related Symbol: 20 Byte Ascii String
  index, related_symbol = cme_futures_mdp3_sbe_v1_12_dissect.related_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Instruments Group
cme_futures_mdp3_sbe_v1_12_dissect.related_instruments_group = function(buffer, offset, packet, parent, related_instruments_group_index)
  if show.related_instruments_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.related_instruments_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.related_instruments_group_fields(buffer, offset, packet, parent, related_instruments_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.related_instruments_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.related_instruments_group_fields(buffer, offset, packet, parent, related_instruments_group_index)
  end
end

-- Calculate size of: Related Instruments Groups
cme_futures_mdp3_sbe_v1_12_size_of.related_instruments_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local related_instruments_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_instruments_group_count * 24

  return index
end

-- Display: Related Instruments Groups
cme_futures_mdp3_sbe_v1_12_display.related_instruments_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Instruments Groups
cme_futures_mdp3_sbe_v1_12_dissect.related_instruments_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Related Instruments Group
  for related_instruments_group_index = 1, num_in_group do
    index, related_instruments_group = cme_futures_mdp3_sbe_v1_12_dissect.related_instruments_group(buffer, index, packet, parent, related_instruments_group_index)
  end

  return index
end

-- Dissect: Related Instruments Groups
cme_futures_mdp3_sbe_v1_12_dissect.related_instruments_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.related_instruments_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.related_instruments_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.related_instruments_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.related_instruments_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.related_instruments_groups_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Symbol
cme_futures_mdp3_sbe_v1_12_size_of.underlying_symbol = 20

-- Display: Underlying Symbol
cme_futures_mdp3_sbe_v1_12_display.underlying_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
cme_futures_mdp3_sbe_v1_12_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.underlying_symbol
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

  local display = cme_futures_mdp3_sbe_v1_12_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Underlying Security Id
cme_futures_mdp3_sbe_v1_12_size_of.underlying_security_id = 4

-- Display: Underlying Security Id
cme_futures_mdp3_sbe_v1_12_display.underlying_security_id = function(value)
  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
cme_futures_mdp3_sbe_v1_12_dissect.underlying_security_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.underlying_security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.underlying_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.underlying_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlyings Group
cme_futures_mdp3_sbe_v1_12_size_of.underlyings_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlying_security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlying_symbol

  return index
end

-- Display: Underlyings Group
cme_futures_mdp3_sbe_v1_12_display.underlyings_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlyings Group
cme_futures_mdp3_sbe_v1_12_dissect.underlyings_group_fields = function(buffer, offset, packet, parent, underlyings_group_index)
  local index = offset

  -- Implicit Underlyings Group Index
  if underlyings_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.underlyings_group_index, underlyings_group_index)
    iteration:set_generated()
  end

  -- Underlying Security Id: 4 Byte Signed Fixed Width Integer
  index, underlying_security_id = cme_futures_mdp3_sbe_v1_12_dissect.underlying_security_id(buffer, index, packet, parent)

  -- Underlying Symbol: 20 Byte Ascii String
  index, underlying_symbol = cme_futures_mdp3_sbe_v1_12_dissect.underlying_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlyings Group
cme_futures_mdp3_sbe_v1_12_dissect.underlyings_group = function(buffer, offset, packet, parent, underlyings_group_index)
  if show.underlyings_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.underlyings_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.underlyings_group_fields(buffer, offset, packet, parent, underlyings_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.underlyings_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.underlyings_group_fields(buffer, offset, packet, parent, underlyings_group_index)
  end
end

-- Calculate size of: Underlyings Groups
cme_futures_mdp3_sbe_v1_12_size_of.underlyings_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local underlyings_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + underlyings_group_count * 24

  return index
end

-- Display: Underlyings Groups
cme_futures_mdp3_sbe_v1_12_display.underlyings_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlyings Groups
cme_futures_mdp3_sbe_v1_12_dissect.underlyings_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Underlyings Group
  for underlyings_group_index = 1, num_in_group do
    index, underlyings_group = cme_futures_mdp3_sbe_v1_12_dissect.underlyings_group(buffer, index, packet, parent, underlyings_group_index)
  end

  return index
end

-- Dissect: Underlyings Groups
cme_futures_mdp3_sbe_v1_12_dissect.underlyings_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlyings_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.underlyings_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.underlyings_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.underlyings_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.underlyings_groups_fields(buffer, offset, packet, parent)
end

-- Size: Term Code
cme_futures_mdp3_sbe_v1_12_size_of.term_code = 20

-- Display: Term Code
cme_futures_mdp3_sbe_v1_12_display.term_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Term Code: No Value"
  end

  return "Term Code: "..value
end

-- Dissect: Term Code
cme_futures_mdp3_sbe_v1_12_dissect.term_code = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.term_code
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

  local display = cme_futures_mdp3_sbe_v1_12_display.term_code(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.term_code, range, value, display)

  return offset + length, value
end

-- Size: Market Set
cme_futures_mdp3_sbe_v1_12_size_of.market_set = 6

-- Display: Market Set
cme_futures_mdp3_sbe_v1_12_display.market_set = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Set: No Value"
  end

  return "Market Set: "..value
end

-- Dissect: Market Set
cme_futures_mdp3_sbe_v1_12_dissect.market_set = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.market_set
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

  local display = cme_futures_mdp3_sbe_v1_12_display.market_set(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.market_set, range, value, display)

  return offset + length, value
end

-- Size: Risk Set
cme_futures_mdp3_sbe_v1_12_size_of.risk_set = 6

-- Display: Risk Set
cme_futures_mdp3_sbe_v1_12_display.risk_set = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Risk Set: No Value"
  end

  return "Risk Set: "..value
end

-- Dissect: Risk Set
cme_futures_mdp3_sbe_v1_12_dissect.risk_set = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.risk_set
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

  local display = cme_futures_mdp3_sbe_v1_12_display.risk_set(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.risk_set, range, value, display)

  return offset + length, value
end

-- Size: Price Quote Method
cme_futures_mdp3_sbe_v1_12_size_of.price_quote_method = 5

-- Display: Price Quote Method
cme_futures_mdp3_sbe_v1_12_display.price_quote_method = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Price Quote Method: No Value"
  end

  return "Price Quote Method: "..value
end

-- Dissect: Price Quote Method
cme_futures_mdp3_sbe_v1_12_dissect.price_quote_method = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.price_quote_method
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

  local display = cme_futures_mdp3_sbe_v1_12_display.price_quote_method(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.price_quote_method, range, value, display)

  return offset + length, value
end

-- Size: Max No Of Substitutions
cme_futures_mdp3_sbe_v1_12_size_of.max_no_of_substitutions = 1

-- Display: Max No Of Substitutions
cme_futures_mdp3_sbe_v1_12_display.max_no_of_substitutions = function(value)
  return "Max No Of Substitutions: "..value
end

-- Dissect: Max No Of Substitutions
cme_futures_mdp3_sbe_v1_12_dissect.max_no_of_substitutions = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.max_no_of_substitutions
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.max_no_of_substitutions(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.max_no_of_substitutions, range, value, display)

  return offset + length, value
end

-- Size: Money Or Par
cme_futures_mdp3_sbe_v1_12_size_of.money_or_par = 1

-- Display: Money Or Par
cme_futures_mdp3_sbe_v1_12_display.money_or_par = function(value)
  if value == 255 then
    return "Money Or Par: No Value"
  end
  if value == 1 then
    return "Money Or Par: Money (1)"
  end
  if value == 2 then
    return "Money Or Par: Par (2)"
  end

  return "Money Or Par: Unknown("..value..")"
end

-- Dissect: Money Or Par
cme_futures_mdp3_sbe_v1_12_dissect.money_or_par = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.money_or_par
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.money_or_par(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.money_or_par, range, value, display)

  return offset + length, value
end

-- Size: Repo Sub Type
cme_futures_mdp3_sbe_v1_12_size_of.repo_sub_type = 1

-- Display: Repo Sub Type
cme_futures_mdp3_sbe_v1_12_display.repo_sub_type = function(value)
  if value == 0 then
    return "Repo Sub Type: Special (0)"
  end
  if value == 1 then
    return "Repo Sub Type: Gc (1)"
  end
  if value == 2 then
    return "Repo Sub Type: Gc For Dbv (2)"
  end

  return "Repo Sub Type: Unknown("..value..")"
end

-- Dissect: Repo Sub Type
cme_futures_mdp3_sbe_v1_12_dissect.repo_sub_type = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.repo_sub_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.repo_sub_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.repo_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Termination Type
cme_futures_mdp3_sbe_v1_12_size_of.termination_type = 8

-- Display: Termination Type
cme_futures_mdp3_sbe_v1_12_display.termination_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Termination Type: No Value"
  end

  return "Termination Type: "..value
end

-- Dissect: Termination Type
cme_futures_mdp3_sbe_v1_12_dissect.termination_type = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.termination_type
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

  local display = cme_futures_mdp3_sbe_v1_12_display.termination_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.termination_type, range, value, display)

  return offset + length, value
end

-- Size: End Date
cme_futures_mdp3_sbe_v1_12_size_of.end_date = 2

-- Display: End Date
cme_futures_mdp3_sbe_v1_12_display.end_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "End Date: No Value"
  end

  return "End Date: "..value
end

-- Dissect: End Date
cme_futures_mdp3_sbe_v1_12_dissect.end_date = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.end_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.end_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.end_date, range, value, display)

  return offset + length, value
end

-- Size: Start Date
cme_futures_mdp3_sbe_v1_12_size_of.start_date = 2

-- Display: Start Date
cme_futures_mdp3_sbe_v1_12_display.start_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Start Date: No Value"
  end

  return "Start Date: "..value
end

-- Dissect: Start Date
cme_futures_mdp3_sbe_v1_12_dissect.start_date = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.start_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.start_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.start_date, range, value, display)

  return offset + length, value
end

-- Size: Party Role Clearing Org
cme_futures_mdp3_sbe_v1_12_size_of.party_role_clearing_org = 5

-- Display: Party Role Clearing Org
cme_futures_mdp3_sbe_v1_12_display.party_role_clearing_org = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Role Clearing Org: No Value"
  end

  return "Party Role Clearing Org: "..value
end

-- Dissect: Party Role Clearing Org
cme_futures_mdp3_sbe_v1_12_dissect.party_role_clearing_org = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.party_role_clearing_org
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

  local display = cme_futures_mdp3_sbe_v1_12_display.party_role_clearing_org(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.party_role_clearing_org, range, value, display)

  return offset + length, value
end

-- Size: Trading Reference Price
cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_price = 8

-- Display: Trading Reference Price
cme_futures_mdp3_sbe_v1_12_display.trading_reference_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Trading Reference Price: No Value"
  end

  return "Trading Reference Price: "..value
end

-- Translate: Trading Reference Price
translate.trading_reference_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Trading Reference Price
cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_price = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.trading_reference_price(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.trading_reference_price(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.trading_reference_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Repo
cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_repo = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_update_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_security_trading_status

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.appl_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.market_segment_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlying_product

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_exchange

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_group

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.asset

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.symbol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.cfi_code

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_algorithm

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.display_factor

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.financial_instrument_full_name

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.party_role_clearing_org

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.start_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.end_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.termination_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.repo_sub_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.money_or_par

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_no_of_substitutions

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.price_quote_method

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.user_defined_instrument

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.risk_set

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.market_set

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.instrument_guid

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.term_code

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.events_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.inst_attrib_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.lot_type_rules_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlyings_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.related_instruments_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Repo
cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_repo = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Repo
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_repo_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_12_dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_12_dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_12_dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_12_dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_12_dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_12_dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_12_dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_12_dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_12_dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_12_dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_12_dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_12_dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_12_dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_12_dissect.currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_12_dissect.settl_currency(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_12_dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index, min_price_increment = cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_12_dissect.display_factor(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty = cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure_qty(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_price(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_date(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_12_dissect.max_price_variation(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_mdp3_sbe_v1_12_dissect.financial_instrument_full_name(buffer, index, packet, parent)

  -- Party Role Clearing Org: 5 Byte Ascii String
  index, party_role_clearing_org = cme_futures_mdp3_sbe_v1_12_dissect.party_role_clearing_org(buffer, index, packet, parent)

  -- Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, start_date = cme_futures_mdp3_sbe_v1_12_dissect.start_date(buffer, index, packet, parent)

  -- End Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, end_date = cme_futures_mdp3_sbe_v1_12_dissect.end_date(buffer, index, packet, parent)

  -- Termination Type: 8 Byte Ascii String
  index, termination_type = cme_futures_mdp3_sbe_v1_12_dissect.termination_type(buffer, index, packet, parent)

  -- Repo Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, repo_sub_type = cme_futures_mdp3_sbe_v1_12_dissect.repo_sub_type(buffer, index, packet, parent)

  -- Money Or Par: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, money_or_par = cme_futures_mdp3_sbe_v1_12_dissect.money_or_par(buffer, index, packet, parent)

  -- Max No Of Substitutions: 1 Byte Unsigned Fixed Width Integer
  index, max_no_of_substitutions = cme_futures_mdp3_sbe_v1_12_dissect.max_no_of_substitutions(buffer, index, packet, parent)

  -- Price Quote Method: 5 Byte Ascii String
  index, price_quote_method = cme_futures_mdp3_sbe_v1_12_dissect.price_quote_method(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_12_dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Risk Set: 6 Byte Ascii String
  index, risk_set = cme_futures_mdp3_sbe_v1_12_dissect.risk_set(buffer, index, packet, parent)

  -- Market Set: 6 Byte Ascii String
  index, market_set = cme_futures_mdp3_sbe_v1_12_dissect.market_set(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_12_dissect.instrument_guid(buffer, index, packet, parent)

  -- Term Code: 20 Byte Ascii String
  index, term_code = cme_futures_mdp3_sbe_v1_12_dissect.term_code(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_12_dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_groups(buffer, index, packet, parent)

  -- Underlyings Groups: Struct of 2 fields
  index, underlyings_groups = cme_futures_mdp3_sbe_v1_12_dissect.underlyings_groups(buffer, index, packet, parent)

  -- Related Instruments Groups: Struct of 2 fields
  index, related_instruments_groups = cme_futures_mdp3_sbe_v1_12_dissect.related_instruments_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Repo
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_repo = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_repo then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_repo(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_repo(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_repo, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_repo_fields(buffer, offset, packet, parent)
end

-- Size: Security Alt Id Source
cme_futures_mdp3_sbe_v1_12_size_of.security_alt_id_source = 1

-- Display: Security Alt Id Source
cme_futures_mdp3_sbe_v1_12_display.security_alt_id_source = function(value)
  if value == 255 then
    return "Security Alt Id Source: No Value"
  end
  if value == 1 then
    return "Security Alt Id Source: Cusip (1)"
  end
  if value == 4 then
    return "Security Alt Id Source: Isin (4)"
  end

  return "Security Alt Id Source: Unknown("..value..")"
end

-- Dissect: Security Alt Id Source
cme_futures_mdp3_sbe_v1_12_dissect.security_alt_id_source = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.security_alt_id_source
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.security_alt_id_source(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Size: Issuer
cme_futures_mdp3_sbe_v1_12_size_of.issuer = 25

-- Display: Issuer
cme_futures_mdp3_sbe_v1_12_display.issuer = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuer: No Value"
  end

  return "Issuer: "..value
end

-- Dissect: Issuer
cme_futures_mdp3_sbe_v1_12_dissect.issuer = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.issuer
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

  local display = cme_futures_mdp3_sbe_v1_12_display.issuer(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.issuer, range, value, display)

  return offset + length, value
end

-- Size: Country Of Issue
cme_futures_mdp3_sbe_v1_12_size_of.country_of_issue = 2

-- Display: Country Of Issue
cme_futures_mdp3_sbe_v1_12_display.country_of_issue = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Country Of Issue: No Value"
  end

  return "Country Of Issue: "..value
end

-- Dissect: Country Of Issue
cme_futures_mdp3_sbe_v1_12_dissect.country_of_issue = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.country_of_issue
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

  local display = cme_futures_mdp3_sbe_v1_12_display.country_of_issue(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.country_of_issue, range, value, display)

  return offset + length, value
end

-- Size: Coupon Day Count
cme_futures_mdp3_sbe_v1_12_size_of.coupon_day_count = 20

-- Display: Coupon Day Count
cme_futures_mdp3_sbe_v1_12_display.coupon_day_count = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Coupon Day Count: No Value"
  end

  return "Coupon Day Count: "..value
end

-- Dissect: Coupon Day Count
cme_futures_mdp3_sbe_v1_12_dissect.coupon_day_count = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.coupon_day_count
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

  local display = cme_futures_mdp3_sbe_v1_12_display.coupon_day_count(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.coupon_day_count, range, value, display)

  return offset + length, value
end

-- Size: Coupon Frequency Period
cme_futures_mdp3_sbe_v1_12_size_of.coupon_frequency_period = 2

-- Display: Coupon Frequency Period
cme_futures_mdp3_sbe_v1_12_display.coupon_frequency_period = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Coupon Frequency Period: No Value"
  end

  return "Coupon Frequency Period: "..value
end

-- Dissect: Coupon Frequency Period
cme_futures_mdp3_sbe_v1_12_dissect.coupon_frequency_period = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.coupon_frequency_period
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.coupon_frequency_period(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.coupon_frequency_period, range, value, display)

  return offset + length, value
end

-- Size: Coupon Frequency Unit
cme_futures_mdp3_sbe_v1_12_size_of.coupon_frequency_unit = 3

-- Display: Coupon Frequency Unit
cme_futures_mdp3_sbe_v1_12_display.coupon_frequency_unit = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Coupon Frequency Unit: No Value"
  end

  return "Coupon Frequency Unit: "..value
end

-- Dissect: Coupon Frequency Unit
cme_futures_mdp3_sbe_v1_12_dissect.coupon_frequency_unit = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.coupon_frequency_unit
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

  local display = cme_futures_mdp3_sbe_v1_12_display.coupon_frequency_unit(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.coupon_frequency_unit, range, value, display)

  return offset + length, value
end

-- Size: Par Value
cme_futures_mdp3_sbe_v1_12_size_of.par_value = 8

-- Display: Par Value
cme_futures_mdp3_sbe_v1_12_display.par_value = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Par Value: No Value"
  end

  return "Par Value: "..value
end

-- Translate: Par Value
translate.par_value = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Par Value
cme_futures_mdp3_sbe_v1_12_dissect.par_value = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.par_value
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.par_value(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.par_value(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.par_value, range, value, display)

  return offset + length, value
end

-- Size: Coupon Rate
cme_futures_mdp3_sbe_v1_12_size_of.coupon_rate = 8

-- Display: Coupon Rate
cme_futures_mdp3_sbe_v1_12_display.coupon_rate = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Coupon Rate: No Value"
  end

  return "Coupon Rate: "..value
end

-- Translate: Coupon Rate
translate.coupon_rate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Coupon Rate
cme_futures_mdp3_sbe_v1_12_dissect.coupon_rate = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.coupon_rate
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.coupon_rate(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.coupon_rate(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Size: Dated Date
cme_futures_mdp3_sbe_v1_12_size_of.dated_date = 2

-- Display: Dated Date
cme_futures_mdp3_sbe_v1_12_display.dated_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Dated Date: No Value"
  end

  return "Dated Date: "..value
end

-- Dissect: Dated Date
cme_futures_mdp3_sbe_v1_12_dissect.dated_date = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.dated_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.dated_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.dated_date, range, value, display)

  return offset + length, value
end

-- Size: Issue Date
cme_futures_mdp3_sbe_v1_12_size_of.issue_date = 2

-- Display: Issue Date
cme_futures_mdp3_sbe_v1_12_display.issue_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Issue Date: No Value"
  end

  return "Issue Date: "..value
end

-- Dissect: Issue Date
cme_futures_mdp3_sbe_v1_12_dissect.issue_date = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.issue_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.issue_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Size: Min Price Increment Amount
cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment_amount = 8

-- Display: Min Price Increment Amount
cme_futures_mdp3_sbe_v1_12_display.min_price_increment_amount = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Amount: No Value"
  end

  return "Min Price Increment Amount: "..value
end

-- Translate: Min Price Increment Amount
translate.min_price_increment_amount = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Min Price Increment Amount
cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment_amount = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment_amount
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.min_price_increment_amount(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.min_price_increment_amount(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.min_price_increment_amount, range, value, display)

  return offset + length, value
end

-- Size: Price Display Format
cme_futures_mdp3_sbe_v1_12_size_of.price_display_format = 1

-- Display: Price Display Format
cme_futures_mdp3_sbe_v1_12_display.price_display_format = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Display Format: No Value"
  end

  return "Price Display Format: "..value
end

-- Dissect: Price Display Format
cme_futures_mdp3_sbe_v1_12_dissect.price_display_format = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.price_display_format
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.price_display_format(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.price_display_format, range, value, display)

  return offset + length, value
end

-- Size: Sub Fraction
cme_futures_mdp3_sbe_v1_12_size_of.sub_fraction = 1

-- Display: Sub Fraction
cme_futures_mdp3_sbe_v1_12_display.sub_fraction = function(value)
  -- Check if field has value
  if value == 255 then
    return "Sub Fraction: No Value"
  end

  return "Sub Fraction: "..value
end

-- Dissect: Sub Fraction
cme_futures_mdp3_sbe_v1_12_dissect.sub_fraction = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.sub_fraction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.sub_fraction(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.sub_fraction, range, value, display)

  return offset + length, value
end

-- Size: Main Fraction
cme_futures_mdp3_sbe_v1_12_size_of.main_fraction = 1

-- Display: Main Fraction
cme_futures_mdp3_sbe_v1_12_display.main_fraction = function(value)
  -- Check if field has value
  if value == 255 then
    return "Main Fraction: No Value"
  end

  return "Main Fraction: "..value
end

-- Dissect: Main Fraction
cme_futures_mdp3_sbe_v1_12_dissect.main_fraction = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.main_fraction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.main_fraction(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.main_fraction, range, value, display)

  return offset + length, value
end

-- Size: Min Price Increment Optional
cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment_optional = 8

-- Display: Min Price Increment Optional
cme_futures_mdp3_sbe_v1_12_display.min_price_increment_optional = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Optional: No Value"
  end

  return "Min Price Increment Optional: "..value
end

-- Translate: Min Price Increment Optional
translate.min_price_increment_optional = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Min Price Increment Optional
cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment_optional
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.min_price_increment_optional(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.min_price_increment_optional(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.min_price_increment_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Fixed Income
cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_fixed_income = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_update_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_security_trading_status

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.appl_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.market_segment_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlying_product

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_exchange

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_group

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.asset

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.symbol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.cfi_code

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_algorithm

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.display_factor

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.main_fraction

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.sub_fraction

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.price_display_format

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment_amount

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.issue_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.dated_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.maturity_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.coupon_rate

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.par_value

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.coupon_frequency_unit

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.coupon_frequency_period

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.coupon_day_count

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.country_of_issue

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.issuer

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.financial_instrument_full_name

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_alt_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_alt_id_source

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.price_quote_method

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.party_role_clearing_org

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.user_defined_instrument

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.risk_set

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.market_set

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.instrument_guid

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.events_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.inst_attrib_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.lot_type_rules_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Fixed Income
cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_fixed_income = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Fixed Income
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_fixed_income_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_12_dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_12_dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_12_dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_12_dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_12_dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_12_dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_12_dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_12_dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_12_dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_12_dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_12_dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_12_dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_12_dissect.cfi_code(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_12_dissect.currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_12_dissect.settl_currency(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_12_dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_optional = cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment_optional(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_12_dissect.display_factor(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_12_dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_12_dissect.sub_fraction(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_12_dissect.price_display_format(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty = cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure_qty(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_price(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_date(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_12_dissect.max_price_variation(buffer, index, packet, parent)

  -- Min Price Increment Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount = cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment_amount(buffer, index, packet, parent)

  -- Issue Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, issue_date = cme_futures_mdp3_sbe_v1_12_dissect.issue_date(buffer, index, packet, parent)

  -- Dated Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, dated_date = cme_futures_mdp3_sbe_v1_12_dissect.dated_date(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_mdp3_sbe_v1_12_dissect.maturity_date(buffer, index, packet, parent)

  -- Coupon Rate: 8 Byte Signed Fixed Width Integer Nullable
  index, coupon_rate = cme_futures_mdp3_sbe_v1_12_dissect.coupon_rate(buffer, index, packet, parent)

  -- Par Value: 8 Byte Signed Fixed Width Integer Nullable
  index, par_value = cme_futures_mdp3_sbe_v1_12_dissect.par_value(buffer, index, packet, parent)

  -- Coupon Frequency Unit: 3 Byte Ascii String
  index, coupon_frequency_unit = cme_futures_mdp3_sbe_v1_12_dissect.coupon_frequency_unit(buffer, index, packet, parent)

  -- Coupon Frequency Period: 2 Byte Unsigned Fixed Width Integer Nullable
  index, coupon_frequency_period = cme_futures_mdp3_sbe_v1_12_dissect.coupon_frequency_period(buffer, index, packet, parent)

  -- Coupon Day Count: 20 Byte Ascii String
  index, coupon_day_count = cme_futures_mdp3_sbe_v1_12_dissect.coupon_day_count(buffer, index, packet, parent)

  -- Country Of Issue: 2 Byte Ascii String
  index, country_of_issue = cme_futures_mdp3_sbe_v1_12_dissect.country_of_issue(buffer, index, packet, parent)

  -- Issuer: 25 Byte Ascii String
  index, issuer = cme_futures_mdp3_sbe_v1_12_dissect.issuer(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_mdp3_sbe_v1_12_dissect.financial_instrument_full_name(buffer, index, packet, parent)

  -- Security Alt Id: 12 Byte Ascii String
  index, security_alt_id = cme_futures_mdp3_sbe_v1_12_dissect.security_alt_id(buffer, index, packet, parent)

  -- Security Alt Id Source: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_alt_id_source = cme_futures_mdp3_sbe_v1_12_dissect.security_alt_id_source(buffer, index, packet, parent)

  -- Price Quote Method: 5 Byte Ascii String
  index, price_quote_method = cme_futures_mdp3_sbe_v1_12_dissect.price_quote_method(buffer, index, packet, parent)

  -- Party Role Clearing Org: 5 Byte Ascii String
  index, party_role_clearing_org = cme_futures_mdp3_sbe_v1_12_dissect.party_role_clearing_org(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_12_dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Risk Set: 6 Byte Ascii String
  index, risk_set = cme_futures_mdp3_sbe_v1_12_dissect.risk_set(buffer, index, packet, parent)

  -- Market Set: 6 Byte Ascii String
  index, market_set = cme_futures_mdp3_sbe_v1_12_dissect.market_set(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_12_dissect.instrument_guid(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_12_dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Fixed Income
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_fixed_income = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_fixed_income then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_fixed_income(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_fixed_income(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_fixed_income, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_fixed_income_fields(buffer, offset, packet, parent)
end

-- Size: Leg Option Delta
cme_futures_mdp3_sbe_v1_12_size_of.leg_option_delta = 4

-- Display: Leg Option Delta
cme_futures_mdp3_sbe_v1_12_display.leg_option_delta = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Leg Option Delta: No Value"
  end

  return "Leg Option Delta: "..value
end

-- Translate: Leg Option Delta
translate.leg_option_delta = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Leg Option Delta
cme_futures_mdp3_sbe_v1_12_dissect.leg_option_delta = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.leg_option_delta
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = translate.leg_option_delta(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.leg_option_delta(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.leg_option_delta, range, value, display)

  return offset + length, value
end

-- Size: Leg Price
cme_futures_mdp3_sbe_v1_12_size_of.leg_price = 8

-- Display: Leg Price
cme_futures_mdp3_sbe_v1_12_display.leg_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Translate: Leg Price
translate.leg_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Leg Price
cme_futures_mdp3_sbe_v1_12_dissect.leg_price = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.leg_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.leg_price(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.leg_price(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
cme_futures_mdp3_sbe_v1_12_size_of.leg_ratio_qty = 1

-- Display: Leg Ratio Qty
cme_futures_mdp3_sbe_v1_12_display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cme_futures_mdp3_sbe_v1_12_dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Side
cme_futures_mdp3_sbe_v1_12_size_of.leg_side = 1

-- Display: Leg Side
cme_futures_mdp3_sbe_v1_12_display.leg_side = function(value)
  if value == 1 then
    return "Leg Side: Buy Side (1)"
  end
  if value == 2 then
    return "Leg Side: Sell Side (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
cme_futures_mdp3_sbe_v1_12_dissect.leg_side = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.leg_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.leg_side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Id
cme_futures_mdp3_sbe_v1_12_size_of.leg_security_id = 4

-- Display: Leg Security Id
cme_futures_mdp3_sbe_v1_12_display.leg_security_id = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
cme_futures_mdp3_sbe_v1_12_dissect.leg_security_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.leg_security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Instrument Definition Spread Leg Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_instrument_definition_spread_leg_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.leg_security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.leg_side

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.leg_ratio_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.leg_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.leg_option_delta

  return index
end

-- Display: M D Instrument Definition Spread Leg Group
cme_futures_mdp3_sbe_v1_12_display.m_d_instrument_definition_spread_leg_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread Leg Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_instrument_definition_spread_leg_group_fields = function(buffer, offset, packet, parent, m_d_instrument_definition_spread_leg_group_index)
  local index = offset

  -- Implicit M D Instrument Definition Spread Leg Group Index
  if m_d_instrument_definition_spread_leg_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_instrument_definition_spread_leg_group_index, m_d_instrument_definition_spread_leg_group_index)
    iteration:set_generated()
  end

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = cme_futures_mdp3_sbe_v1_12_dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = cme_futures_mdp3_sbe_v1_12_dissect.leg_side(buffer, index, packet, parent)

  -- Leg Ratio Qty: 1 Byte Signed Fixed Width Integer
  index, leg_ratio_qty = cme_futures_mdp3_sbe_v1_12_dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price = cme_futures_mdp3_sbe_v1_12_dissect.leg_price(buffer, index, packet, parent)

  -- Leg Option Delta: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_option_delta = cme_futures_mdp3_sbe_v1_12_dissect.leg_option_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Instrument Definition Spread Leg Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_instrument_definition_spread_leg_group = function(buffer, offset, packet, parent, m_d_instrument_definition_spread_leg_group_index)
  if show.m_d_instrument_definition_spread_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_instrument_definition_spread_leg_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_instrument_definition_spread_leg_group_fields(buffer, offset, packet, parent, m_d_instrument_definition_spread_leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_instrument_definition_spread_leg_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_instrument_definition_spread_leg_group_fields(buffer, offset, packet, parent, m_d_instrument_definition_spread_leg_group_index)
  end
end

-- Calculate size of: M D Instrument Definition Spread Leg Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_instrument_definition_spread_leg_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_instrument_definition_spread_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_instrument_definition_spread_leg_group_count * 18

  return index
end

-- Display: M D Instrument Definition Spread Leg Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_instrument_definition_spread_leg_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread Leg Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_instrument_definition_spread_leg_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Instrument Definition Spread Leg Group
  for m_d_instrument_definition_spread_leg_group_index = 1, num_in_group do
    index, m_d_instrument_definition_spread_leg_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_instrument_definition_spread_leg_group(buffer, index, packet, parent, m_d_instrument_definition_spread_leg_group_index)
  end

  return index
end

-- Dissect: M D Instrument Definition Spread Leg Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_instrument_definition_spread_leg_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_instrument_definition_spread_leg_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_instrument_definition_spread_leg_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_instrument_definition_spread_leg_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_instrument_definition_spread_leg_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_instrument_definition_spread_leg_groups_fields(buffer, offset, packet, parent)
end

-- Size: Cleared Volume
cme_futures_mdp3_sbe_v1_12_size_of.cleared_volume = 4

-- Display: Cleared Volume
cme_futures_mdp3_sbe_v1_12_display.cleared_volume = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Cleared Volume: No Value"
  end

  return "Cleared Volume: "..value
end

-- Dissect: Cleared Volume
cme_futures_mdp3_sbe_v1_12_dissect.cleared_volume = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.cleared_volume
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.cleared_volume(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.cleared_volume, range, value, display)

  return offset + length, value
end

-- Size: Open Interest Qty
cme_futures_mdp3_sbe_v1_12_size_of.open_interest_qty = 4

-- Display: Open Interest Qty
cme_futures_mdp3_sbe_v1_12_display.open_interest_qty = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Open Interest Qty: No Value"
  end

  return "Open Interest Qty: "..value
end

-- Dissect: Open Interest Qty
cme_futures_mdp3_sbe_v1_12_dissect.open_interest_qty = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.open_interest_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.open_interest_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.open_interest_qty, range, value, display)

  return offset + length, value
end

-- Size: Tick Rule
cme_futures_mdp3_sbe_v1_12_size_of.tick_rule = 1

-- Display: Tick Rule
cme_futures_mdp3_sbe_v1_12_display.tick_rule = function(value)
  -- Check if field has value
  if value == 127 then
    return "Tick Rule: No Value"
  end

  return "Tick Rule: "..value
end

-- Dissect: Tick Rule
cme_futures_mdp3_sbe_v1_12_dissect.tick_rule = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.tick_rule
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.tick_rule(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.tick_rule, range, value, display)

  return offset + length, value
end

-- Size: Price Ratio
cme_futures_mdp3_sbe_v1_12_size_of.price_ratio = 8

-- Display: Price Ratio
cme_futures_mdp3_sbe_v1_12_display.price_ratio = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Price Ratio: No Value"
  end

  return "Price Ratio: "..value
end

-- Translate: Price Ratio
translate.price_ratio = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Price Ratio
cme_futures_mdp3_sbe_v1_12_dissect.price_ratio = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.price_ratio
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_ratio(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.price_ratio(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.price_ratio, range, value, display)

  return offset + length, value
end

-- Size: Security Sub Type
cme_futures_mdp3_sbe_v1_12_size_of.security_sub_type = 5

-- Display: Security Sub Type
cme_futures_mdp3_sbe_v1_12_display.security_sub_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
cme_futures_mdp3_sbe_v1_12_dissect.security_sub_type = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.security_sub_type
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

  local display = cme_futures_mdp3_sbe_v1_12_display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Product Optional
cme_futures_mdp3_sbe_v1_12_size_of.underlying_product_optional = 1

-- Display: Underlying Product Optional
cme_futures_mdp3_sbe_v1_12_display.underlying_product_optional = function(value)
  -- Check if field has value
  if value == 255 then
    return "Underlying Product Optional: No Value"
  end

  return "Underlying Product Optional: "..value
end

-- Dissect: Underlying Product Optional
cme_futures_mdp3_sbe_v1_12_dissect.underlying_product_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.underlying_product_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.underlying_product_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.underlying_product_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_spread = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_update_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_security_trading_status

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.appl_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.market_segment_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlying_product_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_exchange

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_group

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.asset

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.symbol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.cfi_code

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.maturity_month_year(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_sub_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.user_defined_instrument

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_algorithm

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.display_factor

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.price_display_format

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.price_ratio

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tick_rule

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_price_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.open_interest_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.cleared_volume

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.main_fraction

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.sub_fraction

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.price_quote_method

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.risk_set

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.market_set

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.instrument_guid

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.financial_instrument_full_name

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.events_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.inst_attrib_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.lot_type_rules_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_instrument_definition_spread_leg_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_spread = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_spread_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_12_dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_12_dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_12_dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_12_dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_12_dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_12_dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_optional = cme_futures_mdp3_sbe_v1_12_dissect.underlying_product_optional(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_12_dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_12_dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_12_dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_12_dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_12_dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_12_dissect.cfi_code(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_12_dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_12_dissect.currency(buffer, index, packet, parent)

  -- Security Sub Type: 5 Byte Ascii String
  index, security_sub_type = cme_futures_mdp3_sbe_v1_12_dissect.security_sub_type(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_12_dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_12_dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_optional = cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment_optional(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_12_dissect.display_factor(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_12_dissect.price_display_format(buffer, index, packet, parent)

  -- Price Ratio: 8 Byte Signed Fixed Width Integer Nullable
  index, price_ratio = cme_futures_mdp3_sbe_v1_12_dissect.price_ratio(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = cme_futures_mdp3_sbe_v1_12_dissect.tick_rule(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_price(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_12_dissect.settl_price_type(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_12_dissect.open_interest_qty(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_12_dissect.cleared_volume(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_12_dissect.max_price_variation(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_12_dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_12_dissect.sub_fraction(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_date(buffer, index, packet, parent)

  -- Price Quote Method: 5 Byte Ascii String
  index, price_quote_method = cme_futures_mdp3_sbe_v1_12_dissect.price_quote_method(buffer, index, packet, parent)

  -- Risk Set: 6 Byte Ascii String
  index, risk_set = cme_futures_mdp3_sbe_v1_12_dissect.risk_set(buffer, index, packet, parent)

  -- Market Set: 6 Byte Ascii String
  index, market_set = cme_futures_mdp3_sbe_v1_12_dissect.market_set(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_12_dissect.instrument_guid(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_mdp3_sbe_v1_12_dissect.financial_instrument_full_name(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_12_dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_groups(buffer, index, packet, parent)

  -- M D Instrument Definition Spread Leg Groups: Struct of 2 fields
  index, m_d_instrument_definition_spread_leg_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_instrument_definition_spread_leg_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_spread = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_spread then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_spread(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_spread(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_spread, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_spread_fields(buffer, offset, packet, parent)
end

-- Size: Min Cab Price
cme_futures_mdp3_sbe_v1_12_size_of.min_cab_price = 8

-- Display: Min Cab Price
cme_futures_mdp3_sbe_v1_12_display.min_cab_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Cab Price: No Value"
  end

  return "Min Cab Price: "..value
end

-- Translate: Min Cab Price
translate.min_cab_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Min Cab Price
cme_futures_mdp3_sbe_v1_12_dissect.min_cab_price = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.min_cab_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.min_cab_price(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.min_cab_price(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.min_cab_price, range, value, display)

  return offset + length, value
end

-- Size: Strike Currency
cme_futures_mdp3_sbe_v1_12_size_of.strike_currency = 3

-- Display: Strike Currency
cme_futures_mdp3_sbe_v1_12_display.strike_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Currency: No Value"
  end

  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
cme_futures_mdp3_sbe_v1_12_dissect.strike_currency = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.strike_currency
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

  local display = cme_futures_mdp3_sbe_v1_12_display.strike_currency(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
cme_futures_mdp3_sbe_v1_12_size_of.strike_price = 8

-- Display: Strike Price
cme_futures_mdp3_sbe_v1_12_display.strike_price = function(raw, value)
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

  return raw:tonumber()/1000000000
end

-- Dissect: Strike Price
cme_futures_mdp3_sbe_v1_12_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.strike_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.strike_price(raw)
  local display = cme_futures_mdp3_sbe_v1_12_display.strike_price(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Put Or Call
cme_futures_mdp3_sbe_v1_12_size_of.put_or_call = 1

-- Display: Put Or Call
cme_futures_mdp3_sbe_v1_12_display.put_or_call = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
cme_futures_mdp3_sbe_v1_12_dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.put_or_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_option = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_update_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_security_trading_status

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.appl_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.market_segment_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlying_product

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_exchange

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_group

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.asset

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.symbol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.cfi_code

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.put_or_call

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.maturity_month_year(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.strike_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.strike_currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_cab_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_algorithm

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment_amount

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.display_factor

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tick_rule

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.main_fraction

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.sub_fraction

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.price_display_format

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_price_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.cleared_volume

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.open_interest_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.user_defined_instrument

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.instrument_guid

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.events_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.inst_attrib_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.lot_type_rules_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlyings_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.related_instruments_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_option = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_option_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_12_dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_12_dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_12_dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_12_dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_12_dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_12_dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_12_dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_12_dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_12_dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_12_dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_12_dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_12_dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_12_dissect.cfi_code(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = cme_futures_mdp3_sbe_v1_12_dissect.put_or_call(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_12_dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_12_dissect.currency(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = cme_futures_mdp3_sbe_v1_12_dissect.strike_price(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String
  index, strike_currency = cme_futures_mdp3_sbe_v1_12_dissect.strike_currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_12_dissect.settl_currency(buffer, index, packet, parent)

  -- Min Cab Price: 8 Byte Signed Fixed Width Integer Nullable
  index, min_cab_price = cme_futures_mdp3_sbe_v1_12_dissect.min_cab_price(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_12_dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_optional = cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment_optional(buffer, index, packet, parent)

  -- Min Price Increment Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount = cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment_amount(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_12_dissect.display_factor(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = cme_futures_mdp3_sbe_v1_12_dissect.tick_rule(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_12_dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_12_dissect.sub_fraction(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_12_dissect.price_display_format(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty = cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure_qty(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_price(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_12_dissect.settl_price_type(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_12_dissect.cleared_volume(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_12_dissect.open_interest_qty(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_12_dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_date(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_12_dissect.instrument_guid(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_12_dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_groups(buffer, index, packet, parent)

  -- Underlyings Groups: Struct of 2 fields
  index, underlyings_groups = cme_futures_mdp3_sbe_v1_12_dissect.underlyings_groups(buffer, index, packet, parent)

  -- Related Instruments Groups: Struct of 2 fields
  index, related_instruments_groups = cme_futures_mdp3_sbe_v1_12_dissect.related_instruments_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_option = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_option then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_option(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_option(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_option, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_option_fields(buffer, offset, packet, parent)
end

-- Size: Flow Schedule Type
cme_futures_mdp3_sbe_v1_12_size_of.flow_schedule_type = 1

-- Display: Flow Schedule Type
cme_futures_mdp3_sbe_v1_12_display.flow_schedule_type = function(value)
  -- Check if field has value
  if value == 127 then
    return "Flow Schedule Type: No Value"
  end

  return "Flow Schedule Type: "..value
end

-- Dissect: Flow Schedule Type
cme_futures_mdp3_sbe_v1_12_dissect.flow_schedule_type = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.flow_schedule_type
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.flow_schedule_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.flow_schedule_type, range, value, display)

  return offset + length, value
end

-- Size: Contract Multiplier Unit
cme_futures_mdp3_sbe_v1_12_size_of.contract_multiplier_unit = 1

-- Display: Contract Multiplier Unit
cme_futures_mdp3_sbe_v1_12_display.contract_multiplier_unit = function(value)
  -- Check if field has value
  if value == 127 then
    return "Contract Multiplier Unit: No Value"
  end

  return "Contract Multiplier Unit: "..value
end

-- Dissect: Contract Multiplier Unit
cme_futures_mdp3_sbe_v1_12_dissect.contract_multiplier_unit = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.contract_multiplier_unit
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.contract_multiplier_unit(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.contract_multiplier_unit, range, value, display)

  return offset + length, value
end

-- Size: Contract Multiplier
cme_futures_mdp3_sbe_v1_12_size_of.contract_multiplier = 4

-- Display: Contract Multiplier
cme_futures_mdp3_sbe_v1_12_display.contract_multiplier = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
cme_futures_mdp3_sbe_v1_12_dissect.contract_multiplier = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.contract_multiplier
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.contract_multiplier(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Original Contract Size
cme_futures_mdp3_sbe_v1_12_size_of.original_contract_size = 4

-- Display: Original Contract Size
cme_futures_mdp3_sbe_v1_12_display.original_contract_size = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Original Contract Size: No Value"
  end

  return "Original Contract Size: "..value
end

-- Dissect: Original Contract Size
cme_futures_mdp3_sbe_v1_12_dissect.original_contract_size = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.original_contract_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.original_contract_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.original_contract_size, range, value, display)

  return offset + length, value
end

-- Size: Decay Start Date
cme_futures_mdp3_sbe_v1_12_size_of.decay_start_date = 2

-- Display: Decay Start Date
cme_futures_mdp3_sbe_v1_12_display.decay_start_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Decay Start Date: No Value"
  end

  return "Decay Start Date: "..value
end

-- Dissect: Decay Start Date
cme_futures_mdp3_sbe_v1_12_dissect.decay_start_date = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.decay_start_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.decay_start_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.decay_start_date, range, value, display)

  return offset + length, value
end

-- Size: Decay Quantity
cme_futures_mdp3_sbe_v1_12_size_of.decay_quantity = 4

-- Display: Decay Quantity
cme_futures_mdp3_sbe_v1_12_display.decay_quantity = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Decay Quantity: No Value"
  end

  return "Decay Quantity: "..value
end

-- Dissect: Decay Quantity
cme_futures_mdp3_sbe_v1_12_dissect.decay_quantity = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.decay_quantity
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.decay_quantity(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.decay_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_future = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_update_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_security_trading_status

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.appl_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.market_segment_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.underlying_product

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_exchange

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_group

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.asset

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.symbol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.cfi_code

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.maturity_month_year(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_currency

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_algorithm

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_trade_vol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.display_factor

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.main_fraction

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.sub_fraction

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.price_display_format

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.unit_of_measure_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_price_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.open_interest_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.cleared_volume

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.decay_quantity

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.decay_start_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.original_contract_size

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.contract_multiplier

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.contract_multiplier_unit

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.flow_schedule_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.min_price_increment_amount

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.user_defined_instrument

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.instrument_guid

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.events_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_feed_types_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.inst_attrib_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.lot_type_rules_groups(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_future = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_future_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_12_dissect.tot_num_reports_optional(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_12_dissect.security_update_action(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_12_dissect.last_update_time(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_12_dissect.md_security_trading_status(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_12_dissect.appl_id(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_12_dissect.market_segment_id(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_12_dissect.underlying_product(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_12_dissect.security_exchange(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_12_dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_12_dissect.asset(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_12_dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_12_dissect.security_type(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_12_dissect.cfi_code(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_12_dissect.maturity_month_year(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_12_dissect.currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_12_dissect.settl_currency(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_12_dissect.match_algorithm(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.min_trade_vol(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_12_dissect.max_trade_vol(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index, min_price_increment = cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_12_dissect.display_factor(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_12_dissect.main_fraction(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_12_dissect.sub_fraction(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_12_dissect.price_display_format(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty = cme_futures_mdp3_sbe_v1_12_dissect.unit_of_measure_qty(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_price(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_12_dissect.settl_price_type(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_12_dissect.open_interest_qty(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_12_dissect.cleared_volume(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_12_dissect.max_price_variation(buffer, index, packet, parent)

  -- Decay Quantity: 4 Byte Signed Fixed Width Integer Nullable
  index, decay_quantity = cme_futures_mdp3_sbe_v1_12_dissect.decay_quantity(buffer, index, packet, parent)

  -- Decay Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, decay_start_date = cme_futures_mdp3_sbe_v1_12_dissect.decay_start_date(buffer, index, packet, parent)

  -- Original Contract Size: 4 Byte Signed Fixed Width Integer Nullable
  index, original_contract_size = cme_futures_mdp3_sbe_v1_12_dissect.original_contract_size(buffer, index, packet, parent)

  -- Contract Multiplier: 4 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier = cme_futures_mdp3_sbe_v1_12_dissect.contract_multiplier(buffer, index, packet, parent)

  -- Contract Multiplier Unit: 1 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier_unit = cme_futures_mdp3_sbe_v1_12_dissect.contract_multiplier_unit(buffer, index, packet, parent)

  -- Flow Schedule Type: 1 Byte Signed Fixed Width Integer Nullable
  index, flow_schedule_type = cme_futures_mdp3_sbe_v1_12_dissect.flow_schedule_type(buffer, index, packet, parent)

  -- Min Price Increment Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount = cme_futures_mdp3_sbe_v1_12_dissect.min_price_increment_amount(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_12_dissect.user_defined_instrument(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_date(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_12_dissect.instrument_guid(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_12_dissect.events_groups(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_feed_types_groups(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_12_dissect.inst_attrib_groups(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_12_dissect.lot_type_rules_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_future = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_future then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_future(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_instrument_definition_future(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_instrument_definition_future, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_future_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh Order Book Group
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_order_book_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.order_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_order_priority_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_display_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_book

  return index
end

-- Display: Snapshot Full Refresh Order Book Group
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_order_book_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book_group_fields = function(buffer, offset, packet, parent, snapshot_full_refresh_order_book_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Order Book Group Index
  if snapshot_full_refresh_order_book_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_order_book_group_index, snapshot_full_refresh_order_book_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_12_dissect.order_id(buffer, index, packet, parent)

  -- Md Order Priority Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_order_priority_optional(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Display Qty: 4 Byte Signed Fixed Width Integer
  index, md_display_qty = cme_futures_mdp3_sbe_v1_12_dissect.md_display_qty(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 7 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_book(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book_group = function(buffer, offset, packet, parent, snapshot_full_refresh_order_book_group_index)
  if show.snapshot_full_refresh_order_book_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_order_book_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book_group_fields(buffer, offset, packet, parent, snapshot_full_refresh_order_book_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_order_book_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book_group_fields(buffer, offset, packet, parent, snapshot_full_refresh_order_book_group_index)
  end
end

-- Calculate size of: Snapshot Full Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_order_book_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local snapshot_full_refresh_order_book_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_order_book_group_count * 29

  return index
end

-- Display: Snapshot Full Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_order_book_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Order Book Group
  for snapshot_full_refresh_order_book_group_index = 1, num_in_group do
    index, snapshot_full_refresh_order_book_group = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book_group(buffer, index, packet, parent, snapshot_full_refresh_order_book_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_order_book_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_order_book_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_order_book_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book_groups_fields(buffer, offset, packet, parent)
end

-- Size: Current Chunk
cme_futures_mdp3_sbe_v1_12_size_of.current_chunk = 4

-- Display: Current Chunk
cme_futures_mdp3_sbe_v1_12_display.current_chunk = function(value)
  return "Current Chunk: "..value
end

-- Dissect: Current Chunk
cme_futures_mdp3_sbe_v1_12_dissect.current_chunk = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.current_chunk
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.current_chunk(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.current_chunk, range, value, display)

  return offset + length, value
end

-- Size: No Chunks
cme_futures_mdp3_sbe_v1_12_size_of.no_chunks = 4

-- Display: No Chunks
cme_futures_mdp3_sbe_v1_12_display.no_chunks = function(value)
  return "No Chunks: "..value
end

-- Dissect: No Chunks
cme_futures_mdp3_sbe_v1_12_dissect.no_chunks = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.no_chunks
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.no_chunks(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.no_chunks, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_order_book = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_msg_seq_num_processed

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.no_chunks

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.current_chunk

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_order_book_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_order_book = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = cme_futures_mdp3_sbe_v1_12_dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = cme_futures_mdp3_sbe_v1_12_dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- No Chunks: 4 Byte Unsigned Fixed Width Integer
  index, no_chunks = cme_futures_mdp3_sbe_v1_12_dissect.no_chunks(buffer, index, packet, parent)

  -- Current Chunk: 4 Byte Unsigned Fixed Width Integer
  index, current_chunk = cme_futures_mdp3_sbe_v1_12_dissect.current_chunk(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Snapshot Full Refresh Order Book Groups: Struct of 2 fields
  index, snapshot_full_refresh_order_book_groups = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_order_book(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_order_book(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_order_book, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh Group
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_price_level_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.open_close_settl_flag

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_price_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_

  return index
end

-- Display: Snapshot Full Refresh Group
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_group_fields = function(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Group Index
  if snapshot_full_refresh_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_group_index, snapshot_full_refresh_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_12_dissect.number_of_orders_optional(buffer, index, packet, parent)

  -- Md Price Level Optional: 1 Byte Signed Fixed Width Integer Nullable
  index, md_price_level_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_price_level_optional(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_date(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_12_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_12_dissect.settl_price_type(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 20 values
  index, md_entry_type_ = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Group
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_group = function(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
  if show.snapshot_full_refresh_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_group_fields(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_group_fields(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
  end
end

-- Calculate size of: Snapshot Full Refresh Groups
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local snapshot_full_refresh_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_group_count * 22

  return index
end

-- Display: Snapshot Full Refresh Groups
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Group
  for snapshot_full_refresh_group_index = 1, num_in_group do
    index, snapshot_full_refresh_group = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_group(buffer, index, packet, parent, snapshot_full_refresh_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Groups
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_msg_seq_num_processed

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tot_num_reports

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_update_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trade_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_security_trading_status

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = cme_futures_mdp3_sbe_v1_12_dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = cme_futures_mdp3_sbe_v1_12_dissect.tot_num_reports(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_12_dissect.last_update_time(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_12_dissect.trade_date(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_12_dissect.md_security_trading_status(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_12_dissect.max_price_variation(buffer, index, packet, parent)

  -- Snapshot Full Refresh Groups: Struct of 2 fields
  index, snapshot_full_refresh_groups = cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.snapshot_full_refresh(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.snapshot_full_refresh, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Session Statistics Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_session_statistics_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.open_close_settl_flag

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_statistics

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_1

  return index
end

-- Display: M D Incremental Refresh Session Statistics Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_session_statistics_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Session Statistics Group Index
  if m_d_incremental_refresh_session_statistics_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_group_index, m_d_incremental_refresh_session_statistics_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_12_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_12_dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Statistics: 1 Byte Ascii String Enum with 6 values
  index, md_entry_type_statistics = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_statistics(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = cme_futures_mdp3_sbe_v1_12_dissect.padding_1(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_group_index)
  if show.m_d_incremental_refresh_session_statistics_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_session_statistics_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Session Statistics Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_session_statistics_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_session_statistics_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_session_statistics_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Session Statistics Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_session_statistics_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Session Statistics Group
  for m_d_incremental_refresh_session_statistics_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_session_statistics_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_group(buffer, index, packet, parent, m_d_incremental_refresh_session_statistics_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_session_statistics_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_session_statistics_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_session_statistics_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_session_statistics_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_session_statistics = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_session_statistics_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_session_statistics = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_session_statistics_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Session Statistics Groups: Struct of 2 fields
  index, m_d_incremental_refresh_session_statistics_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_session_statistics_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_session_statistics = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_session_statistics then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_session_statistics(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_session_statistics(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_session_statistics, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_session_statistics_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Limits Banding Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_limits_banding_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.high_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.low_limit_price

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.max_price_variation

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  return index
end

-- Display: M D Incremental Refresh Limits Banding Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_limits_banding_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_limits_banding_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Limits Banding Group Index
  if m_d_incremental_refresh_limits_banding_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_limits_banding_group_index, m_d_incremental_refresh_limits_banding_group_index)
    iteration:set_generated()
  end

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.high_limit_price(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_12_dissect.low_limit_price(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_12_dissect.max_price_variation(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_limits_banding_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_group_index)
  if show.m_d_incremental_refresh_limits_banding_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_limits_banding_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_limits_banding_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_limits_banding_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_limits_banding_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Limits Banding Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_limits_banding_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_limits_banding_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_limits_banding_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Limits Banding Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_limits_banding_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_limits_banding_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Limits Banding Group
  for m_d_incremental_refresh_limits_banding_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_limits_banding_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_limits_banding_group(buffer, index, packet, parent, m_d_incremental_refresh_limits_banding_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_limits_banding_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_limits_banding_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_limits_banding_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_limits_banding_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_limits_banding_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_limits_banding_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_limits_banding = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_limits_banding_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_limits_banding = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_limits_banding_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Limits Banding Groups: Struct of 2 fields
  index, m_d_incremental_refresh_limits_banding_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_limits_banding_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_limits_banding = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_limits_banding then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_limits_banding(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_limits_banding(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_limits_banding, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_limits_banding_fields(buffer, offset, packet, parent)
end

-- Size: Md Entry Type Daily Statistics
cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_daily_statistics = 1

-- Display: Md Entry Type Daily Statistics
cme_futures_mdp3_sbe_v1_12_display.md_entry_type_daily_statistics = function(value)
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
cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_daily_statistics = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_daily_statistics
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_12_display.md_entry_type_daily_statistics(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_entry_type_daily_statistics, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Daily Statistics Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_daily_statistics_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trading_reference_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.settl_price_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_daily_statistics

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_7

  return index
end

-- Display: M D Incremental Refresh Daily Statistics Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_daily_statistics_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_daily_statistics_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Daily Statistics Group Index
  if m_d_incremental_refresh_daily_statistics_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_daily_statistics_group_index, m_d_incremental_refresh_daily_statistics_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_12_dissect.trading_reference_date(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_12_dissect.settl_price_type(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_12_dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Daily Statistics: 1 Byte Ascii String Enum with 4 values
  index, md_entry_type_daily_statistics = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_daily_statistics(buffer, index, packet, parent)

  -- Padding 7: 7 Byte
  index, padding_7 = cme_futures_mdp3_sbe_v1_12_dissect.padding_7(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_daily_statistics_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_group_index)
  if show.m_d_incremental_refresh_daily_statistics_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_daily_statistics_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_daily_statistics_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_daily_statistics_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_daily_statistics_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Daily Statistics Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_daily_statistics_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_daily_statistics_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_daily_statistics_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Daily Statistics Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_daily_statistics_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_daily_statistics_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Daily Statistics Group
  for m_d_incremental_refresh_daily_statistics_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_daily_statistics_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_daily_statistics_group(buffer, index, packet, parent, m_d_incremental_refresh_daily_statistics_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_daily_statistics_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_daily_statistics_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_daily_statistics_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_daily_statistics_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_daily_statistics_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_daily_statistics_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_daily_statistics = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_daily_statistics_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_daily_statistics = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_daily_statistics_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Daily Statistics Groups: Struct of 2 fields
  index, m_d_incremental_refresh_daily_statistics_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_daily_statistics_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_daily_statistics = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_daily_statistics then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_daily_statistics(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_daily_statistics(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_daily_statistics, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_daily_statistics_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Trade Summary Order Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_order_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.order_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.last_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_4

  return index
end

-- Display: M D Incremental Refresh Trade Summary Order Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_order_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Order Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_order_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary Order Group Index
  if m_d_incremental_refresh_trade_summary_order_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_order_group_index, m_d_incremental_refresh_trade_summary_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_12_dissect.order_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = cme_futures_mdp3_sbe_v1_12_dissect.last_qty(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index, padding_4 = cme_futures_mdp3_sbe_v1_12_dissect.padding_4(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Order Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_order_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_order_group_index)
  if show.m_d_incremental_refresh_trade_summary_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_order_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_order_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_order_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_order_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Trade Summary Order Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_order_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size_8_byte(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_order_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Trade Summary Order Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_order_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Order Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_order_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_12_dissect.group_size_8_byte(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary Order Group
  for m_d_incremental_refresh_trade_summary_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_order_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_order_group(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Order Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_order_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_order_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_order_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_order_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_order_groups_fields(buffer, offset, packet, parent)
end

-- Size: Md Trade Entry I D u Int 32 Null
cme_futures_mdp3_sbe_v1_12_size_of.md_trade_entry_i_d_u_int_32_null = 4

-- Display: Md Trade Entry I D u Int 32 Null
cme_futures_mdp3_sbe_v1_12_display.md_trade_entry_i_d_u_int_32_null = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Md Trade Entry I D u Int 32 Null: No Value"
  end

  return "Md Trade Entry I D u Int 32 Null: "..value
end

-- Dissect: Md Trade Entry I D u Int 32 Null
cme_futures_mdp3_sbe_v1_12_dissect.md_trade_entry_i_d_u_int_32_null = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_trade_entry_i_d_u_int_32_null
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_trade_entry_i_d_u_int_32_null(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_trade_entry_i_d_u_int_32_null, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Size
cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size = 4

-- Display: Md Entry Size
cme_futures_mdp3_sbe_v1_12_display.md_entry_size = function(value)
  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.md_entry_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Trade Summary Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.aggressor_side

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_trade_entry_i_d_u_int_32_null

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  return index
end

-- Display: M D Incremental Refresh Trade Summary Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary Group Index
  if m_d_incremental_refresh_trade_summary_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_group_index, m_d_incremental_refresh_trade_summary_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index, number_of_orders = cme_futures_mdp3_sbe_v1_12_dissect.number_of_orders(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_mdp3_sbe_v1_12_dissect.aggressor_side(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_12_dissect.md_update_action(buffer, index, packet, parent)

  -- Md Trade Entry I D u Int 32 Null: 4 Byte Unsigned Fixed Width Integer Nullable
  index, md_trade_entry_i_d_u_int_32_null = cme_futures_mdp3_sbe_v1_12_dissect.md_trade_entry_i_d_u_int_32_null(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_group_index)
  if show.m_d_incremental_refresh_trade_summary_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Trade Summary Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Trade Summary Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary Group
  for m_d_incremental_refresh_trade_summary_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_group(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_trade_summary_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_trade_summary_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_trade_summary = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_trade_summary_order_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_trade_summary = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_trade_summary_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_groups(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_order_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_trade_summary_order_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_trade_summary = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_summary then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_trade_summary(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_trade_summary(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_trade_summary, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_trade_summary_fields(buffer, offset, packet, parent)
end

-- Size: Order Id Optional
cme_futures_mdp3_sbe_v1_12_size_of.order_id_optional = 8

-- Display: Order Id Optional
cme_futures_mdp3_sbe_v1_12_display.order_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
cme_futures_mdp3_sbe_v1_12_dissect.order_id_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.order_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.order_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: M D Incremental Refresh Order Book Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_order_book_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.order_id_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_order_priority_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_display_qty_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_book

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_6

  return index
end

-- Display: M D Incremental Refresh Order Book Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_order_book_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_order_book_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Order Book Group Index
  if m_d_incremental_refresh_order_book_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_order_book_group_index, m_d_incremental_refresh_order_book_group_index)
    iteration:set_generated()
  end

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = cme_futures_mdp3_sbe_v1_12_dissect.order_id_optional(buffer, index, packet, parent)

  -- Md Order Priority Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_order_priority_optional(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_display_qty_optional(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_12_dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 7 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_book(buffer, index, packet, parent)

  -- Padding 6: 6 Byte
  index, padding_6 = cme_futures_mdp3_sbe_v1_12_dissect.padding_6(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Order Book Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_order_book_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_group_index)
  if show.m_d_incremental_refresh_order_book_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_order_book_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_order_book_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_order_book_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_order_book_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_order_book_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_order_book_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_order_book_group_count * 40

  return index
end

-- Display: M D Incremental Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_order_book_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_order_book_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Order Book Group
  for m_d_incremental_refresh_order_book_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_order_book_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_order_book_group(buffer, index, packet, parent, m_d_incremental_refresh_order_book_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_order_book_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_order_book_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_order_book_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_order_book_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_order_book_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_order_book_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_order_book = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_order_book_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_order_book = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_order_book_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Order Book Groups: Struct of 2 fields
  index, m_d_incremental_refresh_order_book_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_order_book_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_order_book = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_order_book then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_order_book(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_order_book(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_order_book, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_order_book_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Book Order Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_order_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.order_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_order_priority_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_display_qty_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.reference_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.order_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  return index
end

-- Display: M D Incremental Refresh Book Order Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_order_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Order Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_order_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book Order Group Index
  if m_d_incremental_refresh_book_order_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_order_group_index, m_d_incremental_refresh_book_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_12_dissect.order_id(buffer, index, packet, parent)

  -- Md Order Priority Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_order_priority_optional(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_display_qty_optional(buffer, index, packet, parent)

  -- Reference Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, reference_id = cme_futures_mdp3_sbe_v1_12_dissect.reference_id(buffer, index, packet, parent)

  -- Order Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_update_action = cme_futures_mdp3_sbe_v1_12_dissect.order_update_action(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book Order Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_order_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_order_group_index)
  if show.m_d_incremental_refresh_book_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_order_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_order_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_order_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_order_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Book Order Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_order_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size_8_byte(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_book_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_order_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Book Order Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_order_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Order Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_order_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_12_dissect.group_size_8_byte(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book Order Group
  for m_d_incremental_refresh_book_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_order_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_order_group(buffer, index, packet, parent, m_d_incremental_refresh_book_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book Order Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_order_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_order_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_order_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_order_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_order_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Book Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_px_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.number_of_orders_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_price_level

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_type_book

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.tradeable_size

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_1

  return index
end

-- Display: M D Incremental Refresh Book Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book Group Index
  if m_d_incremental_refresh_book_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_group_index, m_d_incremental_refresh_book_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_px_optional(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size_optional(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_12_dissect.number_of_orders_optional(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = cme_futures_mdp3_sbe_v1_12_dissect.md_price_level(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_12_dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 7 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_type_book(buffer, index, packet, parent)

  -- Tradeable Size: 4 Byte Signed Fixed Width Integer Nullable
  index, tradeable_size = cme_futures_mdp3_sbe_v1_12_dissect.tradeable_size(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = cme_futures_mdp3_sbe_v1_12_dissect.padding_1(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_group_index)
  if show.m_d_incremental_refresh_book_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Book Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_book_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Book Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book Group
  for m_d_incremental_refresh_book_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_group(buffer, index, packet, parent, m_d_incremental_refresh_book_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_book_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_book_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_book = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_groups(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_book_order_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_book = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_book_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Book Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_groups(buffer, index, packet, parent)

  -- M D Incremental Refresh Book Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_order_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_book_order_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_book = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_book then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_book(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_book(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_book, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_book_fields(buffer, offset, packet, parent)
end

-- Size: Side Optional
cme_futures_mdp3_sbe_v1_12_size_of.side_optional = 1

-- Display: Side Optional
cme_futures_mdp3_sbe_v1_12_display.side_optional = function(value)
  -- Check if field has value
  if value == 127 then
    return "Side Optional: No Value"
  end

  return "Side Optional: "..value
end

-- Dissect: Side Optional
cme_futures_mdp3_sbe_v1_12_dissect.side_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.side_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.side_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Size: Quote Type
cme_futures_mdp3_sbe_v1_12_size_of.quote_type = 1

-- Display: Quote Type
cme_futures_mdp3_sbe_v1_12_display.quote_type = function(value)
  return "Quote Type: "..value
end

-- Dissect: Quote Type
cme_futures_mdp3_sbe_v1_12_dissect.quote_type = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.quote_type
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.quote_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.quote_type, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
cme_futures_mdp3_sbe_v1_12_size_of.order_qty = 4

-- Display: Order Qty
cme_futures_mdp3_sbe_v1_12_display.order_qty = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty
cme_futures_mdp3_sbe_v1_12_dissect.order_qty = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.order_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Related Sym Group
cme_futures_mdp3_sbe_v1_12_size_of.related_sym_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.symbol

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.order_qty

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.quote_type

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.side_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  return index
end

-- Display: Related Sym Group
cme_futures_mdp3_sbe_v1_12_display.related_sym_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Group
cme_futures_mdp3_sbe_v1_12_dissect.related_sym_group_fields = function(buffer, offset, packet, parent, related_sym_group_index)
  local index = offset

  -- Implicit Related Sym Group Index
  if related_sym_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.related_sym_group_index, related_sym_group_index)
    iteration:set_generated()
  end

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_12_dissect.symbol(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = cme_futures_mdp3_sbe_v1_12_dissect.order_qty(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Signed Fixed Width Integer
  index, quote_type = cme_futures_mdp3_sbe_v1_12_dissect.quote_type(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Signed Fixed Width Integer Nullable
  index, side_optional = cme_futures_mdp3_sbe_v1_12_dissect.side_optional(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
cme_futures_mdp3_sbe_v1_12_dissect.related_sym_group = function(buffer, offset, packet, parent, related_sym_group_index)
  if show.related_sym_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.related_sym_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.related_sym_group_fields(buffer, offset, packet, parent, related_sym_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.related_sym_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.related_sym_group_fields(buffer, offset, packet, parent, related_sym_group_index)
  end
end

-- Calculate size of: Related Sym Groups
cme_futures_mdp3_sbe_v1_12_size_of.related_sym_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local related_sym_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_sym_group_count * 32

  return index
end

-- Display: Related Sym Groups
cme_futures_mdp3_sbe_v1_12_display.related_sym_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Groups
cme_futures_mdp3_sbe_v1_12_dissect.related_sym_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Related Sym Group
  for related_sym_group_index = 1, num_in_group do
    index, related_sym_group = cme_futures_mdp3_sbe_v1_12_dissect.related_sym_group(buffer, index, packet, parent, related_sym_group_index)
  end

  return index
end

-- Dissect: Related Sym Groups
cme_futures_mdp3_sbe_v1_12_dissect.related_sym_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.related_sym_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.related_sym_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.related_sym_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.related_sym_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.related_sym_groups_fields(buffer, offset, packet, parent)
end

-- Size: Padding 3
cme_futures_mdp3_sbe_v1_12_size_of.padding_3 = 3

-- Display: Padding 3
cme_futures_mdp3_sbe_v1_12_display.padding_3 = function(value)
  return "Padding 3: "..value
end

-- Dissect: Padding 3
cme_futures_mdp3_sbe_v1_12_dissect.padding_3 = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.padding_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_12_display.padding_3(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.padding_3, range, value, display)

  return offset + length, value
end

-- Size: Quote Req Id
cme_futures_mdp3_sbe_v1_12_size_of.quote_req_id = 23

-- Display: Quote Req Id
cme_futures_mdp3_sbe_v1_12_display.quote_req_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Req Id: No Value"
  end

  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
cme_futures_mdp3_sbe_v1_12_dissect.quote_req_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.quote_req_id
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

  local display = cme_futures_mdp3_sbe_v1_12_display.quote_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Request
cme_futures_mdp3_sbe_v1_12_size_of.quote_request = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.quote_req_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_3

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.related_sym_groups(buffer, offset + index)

  return index
end

-- Display: Quote Request
cme_futures_mdp3_sbe_v1_12_display.quote_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request
cme_futures_mdp3_sbe_v1_12_dissect.quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Quote Req Id: 23 Byte Ascii String
  index, quote_req_id = cme_futures_mdp3_sbe_v1_12_dissect.quote_req_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = cme_futures_mdp3_sbe_v1_12_dissect.padding_3(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = cme_futures_mdp3_sbe_v1_12_dissect.related_sym_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
cme_futures_mdp3_sbe_v1_12_dissect.quote_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.quote_request(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.quote_request, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.quote_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_volume_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_entry_size

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.rpt_seq

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.md_update_action

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_3

  return index
end

-- Display: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_volume_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_group_fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Volume Group Index
  if m_d_incremental_refresh_volume_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_group_index, m_d_incremental_refresh_volume_group_index)
    iteration:set_generated()
  end

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = cme_futures_mdp3_sbe_v1_12_dissect.md_entry_size(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_12_dissect.security_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_12_dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_12_dissect.md_update_action(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = cme_futures_mdp3_sbe_v1_12_dissect.padding_3(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_group = function(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
  if show.m_d_incremental_refresh_volume_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_volume_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_group_fields(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
  end
end

-- Calculate size of: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_volume_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local m_d_incremental_refresh_volume_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_volume_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_volume_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Volume Group
  for m_d_incremental_refresh_volume_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_volume_group = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_group(buffer, index, packet, parent, m_d_incremental_refresh_volume_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_volume_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_volume_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.m_d_incremental_refresh_volume_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.m_d_incremental_refresh_volume_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_volume = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.padding_2

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.m_d_incremental_refresh_volume_groups(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_volume = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_volume_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_12_dissect.padding_2(buffer, index, packet, parent)

  -- M D Incremental Refresh Volume Groups: Struct of 2 fields
  index, m_d_incremental_refresh_volume_groups = cme_futures_mdp3_sbe_v1_12_dissect.m_d_incremental_refresh_volume_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_volume = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_volume then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_volume(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.md_incremental_refresh_volume(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.md_incremental_refresh_volume, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_volume_fields(buffer, offset, packet, parent)
end

-- Size: Security Trading Status
cme_futures_mdp3_sbe_v1_12_size_of.security_trading_status = 1

-- Display: Security Trading Status
cme_futures_mdp3_sbe_v1_12_display.security_trading_status = function(value)
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
  if value == 201 then
    return "Security Trading Status: Private Workup (201)"
  end
  if value == 202 then
    return "Security Trading Status: Public Workup (202)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
cme_futures_mdp3_sbe_v1_12_dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.security_trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Security Id Optional
cme_futures_mdp3_sbe_v1_12_size_of.security_id_optional = 4

-- Display: Security Id Optional
cme_futures_mdp3_sbe_v1_12_display.security_id_optional = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Security Id Optional: No Value"
  end

  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
cme_futures_mdp3_sbe_v1_12_dissect.security_id_optional = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.security_id_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.security_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status
cme_futures_mdp3_sbe_v1_12_size_of.security_status = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_group

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.asset

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_id_optional

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.trade_date

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_trading_status

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.halt_reason

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.security_trading_event

  return index
end

-- Display: Security Status
cme_futures_mdp3_sbe_v1_12_display.security_status = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status
cme_futures_mdp3_sbe_v1_12_dissect.security_status_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_12_dissect.security_group(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_12_dissect.asset(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = cme_futures_mdp3_sbe_v1_12_dissect.security_id_optional(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_12_dissect.trade_date(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, security_trading_status = cme_futures_mdp3_sbe_v1_12_dissect.security_trading_status(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, halt_reason = cme_futures_mdp3_sbe_v1_12_dissect.halt_reason(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, security_trading_event = cme_futures_mdp3_sbe_v1_12_dissect.security_trading_event(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status
cme_futures_mdp3_sbe_v1_12_dissect.security_status = function(buffer, offset, packet, parent)
  if show.security_status then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.security_status, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.security_status_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.security_status(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.security_status_fields(buffer, offset, packet, parent)
  end
end

-- Size: Text
cme_futures_mdp3_sbe_v1_12_size_of.text = 180

-- Display: Text
cme_futures_mdp3_sbe_v1_12_display.text = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cme_futures_mdp3_sbe_v1_12_dissect.text = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.text
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

  local display = cme_futures_mdp3_sbe_v1_12_display.text(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.text, range, value, display)

  return offset + length, value
end

-- Calculate size of: Admin Logout
cme_futures_mdp3_sbe_v1_12_size_of.admin_logout = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.text

  return index
end

-- Display: Admin Logout
cme_futures_mdp3_sbe_v1_12_display.admin_logout = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Logout
cme_futures_mdp3_sbe_v1_12_dissect.admin_logout_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 180 Byte Ascii String
  index, text = cme_futures_mdp3_sbe_v1_12_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Logout
cme_futures_mdp3_sbe_v1_12_dissect.admin_logout = function(buffer, offset, packet, parent)
  if show.admin_logout then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.admin_logout, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.admin_logout_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.admin_logout(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.admin_logout_fields(buffer, offset, packet, parent)
  end
end

-- Size: Heart Bt Int
cme_futures_mdp3_sbe_v1_12_size_of.heart_bt_int = 1

-- Display: Heart Bt Int
cme_futures_mdp3_sbe_v1_12_display.heart_bt_int = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
cme_futures_mdp3_sbe_v1_12_dissect.heart_bt_int = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.heart_bt_int
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_12_display.heart_bt_int(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Calculate size of: Admin Login
cme_futures_mdp3_sbe_v1_12_size_of.admin_login = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.heart_bt_int

  return index
end

-- Display: Admin Login
cme_futures_mdp3_sbe_v1_12_display.admin_login = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Login
cme_futures_mdp3_sbe_v1_12_dissect.admin_login_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heart Bt Int: 1 Byte Signed Fixed Width Integer
  index, heart_bt_int = cme_futures_mdp3_sbe_v1_12_dissect.heart_bt_int(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Login
cme_futures_mdp3_sbe_v1_12_dissect.admin_login = function(buffer, offset, packet, parent)
  if show.admin_login then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.admin_login, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.admin_login_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.admin_login(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.admin_login_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Channel Reset Group
cme_futures_mdp3_sbe_v1_12_size_of.channel_reset_group = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.appl_id

  return index
end

-- Display: Channel Reset Group
cme_futures_mdp3_sbe_v1_12_display.channel_reset_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset Group
cme_futures_mdp3_sbe_v1_12_dissect.channel_reset_group_fields = function(buffer, offset, packet, parent, channel_reset_group_index)
  local index = offset

  -- Implicit Channel Reset Group Index
  if channel_reset_group_index ~= nil then
    local iteration = parent:add(cme_futures_mdp3_sbe_v1_12.fields.channel_reset_group_index, channel_reset_group_index)
    iteration:set_generated()
  end

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_12_dissect.appl_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset Group
cme_futures_mdp3_sbe_v1_12_dissect.channel_reset_group = function(buffer, offset, packet, parent, channel_reset_group_index)
  if show.channel_reset_group then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.channel_reset_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.channel_reset_group_fields(buffer, offset, packet, parent, channel_reset_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.channel_reset_group(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.channel_reset_group_fields(buffer, offset, packet, parent, channel_reset_group_index)
  end
end

-- Calculate size of: Channel Reset Groups
cme_futures_mdp3_sbe_v1_12_size_of.channel_reset_groups = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local channel_reset_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + channel_reset_group_count * 2

  return index
end

-- Display: Channel Reset Groups
cme_futures_mdp3_sbe_v1_12_display.channel_reset_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset Groups
cme_futures_mdp3_sbe_v1_12_dissect.channel_reset_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_12_dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Channel Reset Group
  for channel_reset_group_index = 1, num_in_group do
    index, channel_reset_group = cme_futures_mdp3_sbe_v1_12_dissect.channel_reset_group(buffer, index, packet, parent, channel_reset_group_index)
  end

  return index
end

-- Dissect: Channel Reset Groups
cme_futures_mdp3_sbe_v1_12_dissect.channel_reset_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.channel_reset_groups then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.channel_reset_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.channel_reset_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.channel_reset_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.channel_reset_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Channel Reset
cme_futures_mdp3_sbe_v1_12_size_of.channel_reset = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.transact_time

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.match_event_indicator

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.channel_reset_groups(buffer, offset + index)

  return index
end

-- Display: Channel Reset
cme_futures_mdp3_sbe_v1_12_display.channel_reset = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset
cme_futures_mdp3_sbe_v1_12_dissect.channel_reset_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_12_dissect.transact_time(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_12_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Channel Reset Groups: Struct of 2 fields
  index, channel_reset_groups = cme_futures_mdp3_sbe_v1_12_dissect.channel_reset_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset
cme_futures_mdp3_sbe_v1_12_dissect.channel_reset = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.channel_reset then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.channel_reset(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.channel_reset(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.channel_reset, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.channel_reset_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
cme_futures_mdp3_sbe_v1_12_size_of.payload = function(buffer, offset, template_id)
  -- Size of Channel Reset
  if template_id == 4 then
    return cme_futures_mdp3_sbe_v1_12_size_of.channel_reset(buffer, offset)
  end
  -- Size of Admin Heartbeat
  if template_id == 12 then
    return 0
  end
  -- Size of Admin Login
  if template_id == 15 then
    return cme_futures_mdp3_sbe_v1_12_size_of.admin_login(buffer, offset)
  end
  -- Size of Admin Logout
  if template_id == 16 then
    return cme_futures_mdp3_sbe_v1_12_size_of.admin_logout(buffer, offset)
  end
  -- Size of Security Status
  if template_id == 30 then
    return cme_futures_mdp3_sbe_v1_12_size_of.security_status(buffer, offset)
  end
  -- Size of Md Incremental Refresh Volume
  if template_id == 37 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_volume(buffer, offset)
  end
  -- Size of Quote Request
  if template_id == 39 then
    return cme_futures_mdp3_sbe_v1_12_size_of.quote_request(buffer, offset)
  end
  -- Size of Md Incremental Refresh Book
  if template_id == 46 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_book(buffer, offset)
  end
  -- Size of Md Incremental Refresh Order Book
  if template_id == 47 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_order_book(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Summary
  if template_id == 48 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_trade_summary(buffer, offset)
  end
  -- Size of Md Incremental Refresh Daily Statistics
  if template_id == 49 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_daily_statistics(buffer, offset)
  end
  -- Size of Md Incremental Refresh Limits Banding
  if template_id == 50 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_limits_banding(buffer, offset)
  end
  -- Size of Md Incremental Refresh Session Statistics
  if template_id == 51 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_session_statistics(buffer, offset)
  end
  -- Size of Snapshot Full Refresh
  if template_id == 52 then
    return cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Order Book
  if template_id == 53 then
    return cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_order_book(buffer, offset)
  end
  -- Size of Md Instrument Definition Future
  if template_id == 54 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_future(buffer, offset)
  end
  -- Size of Md Instrument Definition Option
  if template_id == 55 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_option(buffer, offset)
  end
  -- Size of Md Instrument Definition Spread
  if template_id == 56 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_spread(buffer, offset)
  end
  -- Size of Md Instrument Definition Fixed Income
  if template_id == 57 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_fixed_income(buffer, offset)
  end
  -- Size of Md Instrument Definition Repo
  if template_id == 58 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_repo(buffer, offset)
  end
  -- Size of Snapshot Refresh Top Orders
  if template_id == 59 then
    return cme_futures_mdp3_sbe_v1_12_size_of.snapshot_refresh_top_orders(buffer, offset)
  end
  -- Size of Security Status Workup
  if template_id == 60 then
    return cme_futures_mdp3_sbe_v1_12_size_of.security_status_workup(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Tcp
  if template_id == 61 then
    return cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tcp(buffer, offset)
  end
  -- Size of Collateral Market Value
  if template_id == 62 then
    return cme_futures_mdp3_sbe_v1_12_size_of.collateral_market_value(buffer, offset)
  end
  -- Size of Md Instrument Definition Fx
  if template_id == 63 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_instrument_definition_fx(buffer, offset)
  end
  -- Size of Md Incremental Refresh Book Long Qty
  if template_id == 64 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_book_long_qty(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Summary Long Qty
  if template_id == 65 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_trade_summary_long_qty(buffer, offset)
  end
  -- Size of Md Incremental Refresh Volume Long Qty
  if template_id == 66 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_volume_long_qty(buffer, offset)
  end
  -- Size of Md Incremental Refresh Session Statistics Long Qty
  if template_id == 67 then
    return cme_futures_mdp3_sbe_v1_12_size_of.md_incremental_refresh_session_statistics_long_qty(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Tcp Long Qty
  if template_id == 68 then
    return cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_tcp_long_qty(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Long Qty
  if template_id == 69 then
    return cme_futures_mdp3_sbe_v1_12_size_of.snapshot_full_refresh_long_qty(buffer, offset)
  end

  return 0
end

-- Display: Payload
cme_futures_mdp3_sbe_v1_12_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cme_futures_mdp3_sbe_v1_12_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Channel Reset
  if template_id == 4 then
    return cme_futures_mdp3_sbe_v1_12_dissect.channel_reset(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat
  if template_id == 12 then
  end
  -- Dissect Admin Login
  if template_id == 15 then
    return cme_futures_mdp3_sbe_v1_12_dissect.admin_login(buffer, offset, packet, parent)
  end
  -- Dissect Admin Logout
  if template_id == 16 then
    return cme_futures_mdp3_sbe_v1_12_dissect.admin_logout(buffer, offset, packet, parent)
  end
  -- Dissect Security Status
  if template_id == 30 then
    return cme_futures_mdp3_sbe_v1_12_dissect.security_status(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Volume
  if template_id == 37 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_volume(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if template_id == 39 then
    return cme_futures_mdp3_sbe_v1_12_dissect.quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Book
  if template_id == 46 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_book(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Order Book
  if template_id == 47 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_order_book(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Summary
  if template_id == 48 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_trade_summary(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Daily Statistics
  if template_id == 49 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_daily_statistics(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Limits Banding
  if template_id == 50 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_limits_banding(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Session Statistics
  if template_id == 51 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_session_statistics(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh
  if template_id == 52 then
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Order Book
  if template_id == 53 then
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_order_book(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Future
  if template_id == 54 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_future(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Option
  if template_id == 55 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_option(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Spread
  if template_id == 56 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_spread(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Fixed Income
  if template_id == 57 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_fixed_income(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Repo
  if template_id == 58 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_repo(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Refresh Top Orders
  if template_id == 59 then
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_refresh_top_orders(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Workup
  if template_id == 60 then
    return cme_futures_mdp3_sbe_v1_12_dissect.security_status_workup(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Tcp
  if template_id == 61 then
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp(buffer, offset, packet, parent)
  end
  -- Dissect Collateral Market Value
  if template_id == 62 then
    return cme_futures_mdp3_sbe_v1_12_dissect.collateral_market_value(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Fx
  if template_id == 63 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_instrument_definition_fx(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Book Long Qty
  if template_id == 64 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_book_long_qty(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Summary Long Qty
  if template_id == 65 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_trade_summary_long_qty(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Volume Long Qty
  if template_id == 66 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_volume_long_qty(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Session Statistics Long Qty
  if template_id == 67 then
    return cme_futures_mdp3_sbe_v1_12_dissect.md_incremental_refresh_session_statistics_long_qty(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Tcp Long Qty
  if template_id == 68 then
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_tcp_long_qty(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Long Qty
  if template_id == 69 then
    return cme_futures_mdp3_sbe_v1_12_dissect.snapshot_full_refresh_long_qty(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cme_futures_mdp3_sbe_v1_12_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cme_futures_mdp3_sbe_v1_12_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cme_futures_mdp3_sbe_v1_12_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_12_display.payload(buffer, packet, parent)
  local element = parent:add(cme_futures_mdp3_sbe_v1_12.fields.payload, range, display)

  return cme_futures_mdp3_sbe_v1_12_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
cme_futures_mdp3_sbe_v1_12_size_of.version = 2

-- Display: Version
cme_futures_mdp3_sbe_v1_12_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
cme_futures_mdp3_sbe_v1_12_dissect.version = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.version(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
cme_futures_mdp3_sbe_v1_12_size_of.schema_id = 2

-- Display: Schema Id
cme_futures_mdp3_sbe_v1_12_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
cme_futures_mdp3_sbe_v1_12_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
cme_futures_mdp3_sbe_v1_12_size_of.template_id = 2

-- Display: Template Id
cme_futures_mdp3_sbe_v1_12_display.template_id = function(value)
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
  if value == 30 then
    return "Template Id: Security Status (30)"
  end
  if value == 37 then
    return "Template Id: Md Incremental Refresh Volume (37)"
  end
  if value == 39 then
    return "Template Id: Quote Request (39)"
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
  if value == 57 then
    return "Template Id: Md Instrument Definition Fixed Income (57)"
  end
  if value == 58 then
    return "Template Id: Md Instrument Definition Repo (58)"
  end
  if value == 59 then
    return "Template Id: Snapshot Refresh Top Orders (59)"
  end
  if value == 60 then
    return "Template Id: Security Status Workup (60)"
  end
  if value == 61 then
    return "Template Id: Snapshot Full Refresh Tcp (61)"
  end
  if value == 62 then
    return "Template Id: Collateral Market Value (62)"
  end
  if value == 63 then
    return "Template Id: Md Instrument Definition Fx (63)"
  end
  if value == 64 then
    return "Template Id: Md Incremental Refresh Book Long Qty (64)"
  end
  if value == 65 then
    return "Template Id: Md Incremental Refresh Trade Summary Long Qty (65)"
  end
  if value == 66 then
    return "Template Id: Md Incremental Refresh Volume Long Qty (66)"
  end
  if value == 67 then
    return "Template Id: Md Incremental Refresh Session Statistics Long Qty (67)"
  end
  if value == 68 then
    return "Template Id: Snapshot Full Refresh Tcp Long Qty (68)"
  end
  if value == 69 then
    return "Template Id: Snapshot Full Refresh Long Qty (69)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_futures_mdp3_sbe_v1_12_dissect.template_id = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.template_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.template_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cme_futures_mdp3_sbe_v1_12_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.block_length

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.template_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.schema_id

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.version

  return index
end

-- Display: Message Header
cme_futures_mdp3_sbe_v1_12_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_futures_mdp3_sbe_v1_12_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_mdp3_sbe_v1_12_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 31 values
  index, template_id = cme_futures_mdp3_sbe_v1_12_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = cme_futures_mdp3_sbe_v1_12_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = cme_futures_mdp3_sbe_v1_12_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_futures_mdp3_sbe_v1_12_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.message_header, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Size: Message Size
cme_futures_mdp3_sbe_v1_12_size_of.message_size = 2

-- Display: Message Size
cme_futures_mdp3_sbe_v1_12_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_futures_mdp3_sbe_v1_12_dissect.message_size = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.message_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
cme_futures_mdp3_sbe_v1_12_size_of.message = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.message_size

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + cme_futures_mdp3_sbe_v1_12_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cme_futures_mdp3_sbe_v1_12_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_futures_mdp3_sbe_v1_12_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_futures_mdp3_sbe_v1_12_dissect.message_size(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_futures_mdp3_sbe_v1_12_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 31 branches
  index = cme_futures_mdp3_sbe_v1_12_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_futures_mdp3_sbe_v1_12_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cme_futures_mdp3_sbe_v1_12_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_12_display.message(buffer, packet, parent)
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.message, range, display)
  end

  return cme_futures_mdp3_sbe_v1_12_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sending Time
cme_futures_mdp3_sbe_v1_12_size_of.sending_time = 8

-- Display: Sending Time
cme_futures_mdp3_sbe_v1_12_display.sending_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
cme_futures_mdp3_sbe_v1_12_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_12_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Message Sequence Number
cme_futures_mdp3_sbe_v1_12_size_of.message_sequence_number = 4

-- Display: Message Sequence Number
cme_futures_mdp3_sbe_v1_12_display.message_sequence_number = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
cme_futures_mdp3_sbe_v1_12_dissect.message_sequence_number = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_12_size_of.message_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_12_display.message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(cme_futures_mdp3_sbe_v1_12.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Binary Packet Header
cme_futures_mdp3_sbe_v1_12_size_of.binary_packet_header = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.message_sequence_number

  index = index + cme_futures_mdp3_sbe_v1_12_size_of.sending_time

  return index
end

-- Display: Binary Packet Header
cme_futures_mdp3_sbe_v1_12_display.binary_packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_futures_mdp3_sbe_v1_12_dissect.binary_packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_futures_mdp3_sbe_v1_12_dissect.message_sequence_number(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_futures_mdp3_sbe_v1_12_dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_futures_mdp3_sbe_v1_12_dissect.binary_packet_header = function(buffer, offset, packet, parent)
  if show.binary_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(cme_futures_mdp3_sbe_v1_12.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_12_dissect.binary_packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_12_display.binary_packet_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_12_dissect.binary_packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
cme_futures_mdp3_sbe_v1_12_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_futures_mdp3_sbe_v1_12_dissect.binary_packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = cme_futures_mdp3_sbe_v1_12_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cme_futures_mdp3_sbe_v1_12.init()
end

-- Dissector for Cme Futures Mdp3 Sbe 1.12
function cme_futures_mdp3_sbe_v1_12.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cme_futures_mdp3_sbe_v1_12.name

  -- Dissect protocol
  local protocol = parent:add(cme_futures_mdp3_sbe_v1_12, buffer(), cme_futures_mdp3_sbe_v1_12.description, "("..buffer:len().." Bytes)")
  return cme_futures_mdp3_sbe_v1_12_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cme_futures_mdp3_sbe_v1_12)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cme_futures_mdp3_sbe_v1_12_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 12 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Futures Mdp3 Sbe 1.12
local function cme_futures_mdp3_sbe_v1_12_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cme_futures_mdp3_sbe_v1_12_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cme_futures_mdp3_sbe_v1_12
  cme_futures_mdp3_sbe_v1_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures Mdp3 Sbe 1.12
cme_futures_mdp3_sbe_v1_12:register_heuristic("udp", cme_futures_mdp3_sbe_v1_12_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 1.12
--   Date: Wednesday, March 10, 2021
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
