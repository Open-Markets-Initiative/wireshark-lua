-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures Mdp3 Sbe 1.13 Protocol
local omi_cme_futures_mdp3_sbe_v1_13 = Proto("Cme.Futures.Mdp3.Sbe.v1.13.Lua", "Cme Futures Mdp3 Sbe 1.13")

-- Protocol table
local cme_futures_mdp3_sbe_v1_13 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Futures Mdp3 Sbe 1.13 Fields
omi_cme_futures_mdp3_sbe_v1_13.fields.actual = ProtoField.new("Actual", "cme.futures.mdp3.sbe.v1.13.actual", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cme_futures_mdp3_sbe_v1_13.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "cme.futures.mdp3.sbe.v1.13.aggressorindicator", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.aggressor_side = ProtoField.new("Aggressor Side", "cme.futures.mdp3.sbe.v1.13.aggressorside", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.alt_min_price_increment = ProtoField.new("Alt Min Price Increment", "cme.futures.mdp3.sbe.v1.13.altminpriceincrement", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.alt_min_quote_life = ProtoField.new("Alt Min Quote Life", "cme.futures.mdp3.sbe.v1.13.altminquotelife", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.alt_price_increment_constraint = ProtoField.new("Alt Price Increment Constraint", "cme.futures.mdp3.sbe.v1.13.altpriceincrementconstraint", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.appl_id = ProtoField.new("Appl Id", "cme.futures.mdp3.sbe.v1.13.applid", ftypes.INT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.asset = ProtoField.new("Asset", "cme.futures.mdp3.sbe.v1.13.asset", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.futures.mdp3.sbe.v1.13.binarypacketheader", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.block_length = ProtoField.new("Block Length", "cme.futures.mdp3.sbe.v1.13.blocklength", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.block_trade_eligible = ProtoField.new("Block Trade Eligible", "cme.futures.mdp3.sbe.v1.13.blocktradeeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x04000000)
omi_cme_futures_mdp3_sbe_v1_13.fields.broken_date_end = ProtoField.new("Broken Date End", "cme.futures.mdp3.sbe.v1.13.brokendateend", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.broken_date_guid = ProtoField.new("Broken Date Guid", "cme.futures.mdp3.sbe.v1.13.brokendateguid", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.broken_date_security_id = ProtoField.new("Broken Date Security Id", "cme.futures.mdp3.sbe.v1.13.brokendatesecurityid", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.broken_date_start = ProtoField.new("Broken Date Start", "cme.futures.mdp3.sbe.v1.13.brokendatestart", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.broken_date_term_type = ProtoField.new("Broken Date Term Type", "cme.futures.mdp3.sbe.v1.13.brokendatetermtype", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.broken_dates_group = ProtoField.new("Broken Dates Group", "cme.futures.mdp3.sbe.v1.13.brokendatesgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.broken_dates_groups = ProtoField.new("Broken Dates Groups", "cme.futures.mdp3.sbe.v1.13.brokendatesgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.cfi_code = ProtoField.new("Cfi Code", "cme.futures.mdp3.sbe.v1.13.cficode", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.channel_reset_group = ProtoField.new("Channel Reset Group", "cme.futures.mdp3.sbe.v1.13.channelresetgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.channel_reset_groups = ProtoField.new("Channel Reset Groups", "cme.futures.mdp3.sbe.v1.13.channelresetgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.cleared_volume = ProtoField.new("Cleared Volume", "cme.futures.mdp3.sbe.v1.13.clearedvolume", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.collateral_market_price = ProtoField.new("Collateral Market Price", "cme.futures.mdp3.sbe.v1.13.collateralmarketprice", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.collateral_market_value_group = ProtoField.new("Collateral Market Value Group", "cme.futures.mdp3.sbe.v1.13.collateralmarketvaluegroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.collateral_market_value_groups = ProtoField.new("Collateral Market Value Groups", "cme.futures.mdp3.sbe.v1.13.collateralmarketvaluegroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "cme.futures.mdp3.sbe.v1.13.contractmultiplier", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.contract_multiplier_unit = ProtoField.new("Contract Multiplier Unit", "cme.futures.mdp3.sbe.v1.13.contractmultiplierunit", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.country_of_issue = ProtoField.new("Country Of Issue", "cme.futures.mdp3.sbe.v1.13.countryofissue", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.coupon_day_count = ProtoField.new("Coupon Day Count", "cme.futures.mdp3.sbe.v1.13.coupondaycount", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.coupon_frequency_period = ProtoField.new("Coupon Frequency Period", "cme.futures.mdp3.sbe.v1.13.couponfrequencyperiod", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.coupon_frequency_unit = ProtoField.new("Coupon Frequency Unit", "cme.futures.mdp3.sbe.v1.13.couponfrequencyunit", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.coupon_rate = ProtoField.new("Coupon Rate", "cme.futures.mdp3.sbe.v1.13.couponrate", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.currency = ProtoField.new("Currency", "cme.futures.mdp3.sbe.v1.13.currency", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.current_chunk = ProtoField.new("Current Chunk", "cme.futures.mdp3.sbe.v1.13.currentchunk", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.daily_product_eligibility = ProtoField.new("Daily Product Eligibility", "cme.futures.mdp3.sbe.v1.13.dailyproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000200)
omi_cme_futures_mdp3_sbe_v1_13.fields.dated_date = ProtoField.new("Dated Date", "cme.futures.mdp3.sbe.v1.13.dateddate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.day = ProtoField.new("Day", "cme.futures.mdp3.sbe.v1.13.day", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.decay_quantity = ProtoField.new("Decay Quantity", "cme.futures.mdp3.sbe.v1.13.decayquantity", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.decay_start_date = ProtoField.new("Decay Start Date", "cme.futures.mdp3.sbe.v1.13.decaystartdate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.decaying_product_eligibility = ProtoField.new("Decaying Product Eligibility", "cme.futures.mdp3.sbe.v1.13.decayingproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00800000)
omi_cme_futures_mdp3_sbe_v1_13.fields.dirty_price = ProtoField.new("Dirty Price", "cme.futures.mdp3.sbe.v1.13.dirtyprice", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.display_factor = ProtoField.new("Display Factor", "cme.futures.mdp3.sbe.v1.13.displayfactor", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.ebf_eligible = ProtoField.new("Ebf Eligible", "cme.futures.mdp3.sbe.v1.13.ebfeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x10000000)
omi_cme_futures_mdp3_sbe_v1_13.fields.efp_eligible = ProtoField.new("Efp Eligible", "cme.futures.mdp3.sbe.v1.13.efpeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x08000000)
omi_cme_futures_mdp3_sbe_v1_13.fields.efr_eligible = ProtoField.new("Efr Eligible", "cme.futures.mdp3.sbe.v1.13.efreligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x40000000)
omi_cme_futures_mdp3_sbe_v1_13.fields.efs_eligible = ProtoField.new("Efs Eligible", "cme.futures.mdp3.sbe.v1.13.efseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x20000000)
omi_cme_futures_mdp3_sbe_v1_13.fields.electronic_match_eligible = ProtoField.new("Electronic Match Eligible", "cme.futures.mdp3.sbe.v1.13.electronicmatcheligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x01000000)
omi_cme_futures_mdp3_sbe_v1_13.fields.end_date = ProtoField.new("End Date", "cme.futures.mdp3.sbe.v1.13.enddate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.end_of_event = ProtoField.new("End Of Event", "cme.futures.mdp3.sbe.v1.13.endofevent", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_cme_futures_mdp3_sbe_v1_13.fields.event_time = ProtoField.new("Event Time", "cme.futures.mdp3.sbe.v1.13.eventtime", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.event_type = ProtoField.new("Event Type", "cme.futures.mdp3.sbe.v1.13.eventtype", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.events_group = ProtoField.new("Events Group", "cme.futures.mdp3.sbe.v1.13.eventsgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.events_groups = ProtoField.new("Events Groups", "cme.futures.mdp3.sbe.v1.13.eventsgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.final_daily = ProtoField.new("Final Daily", "cme.futures.mdp3.sbe.v1.13.finaldaily", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_cme_futures_mdp3_sbe_v1_13.fields.financial_instrument_full_name = ProtoField.new("Financial Instrument Full Name", "cme.futures.mdp3.sbe.v1.13.financialinstrumentfullname", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.fix_rate_local_time = ProtoField.new("Fix Rate Local Time", "cme.futures.mdp3.sbe.v1.13.fixratelocaltime", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.fix_rate_local_time_zone = ProtoField.new("Fix Rate Local Time Zone", "cme.futures.mdp3.sbe.v1.13.fixratelocaltimezone", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.flow_schedule_type = ProtoField.new("Flow Schedule Type", "cme.futures.mdp3.sbe.v1.13.flowscheduletype", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.fx_benchmark_rate_fix = ProtoField.new("Fx Benchmark Rate Fix", "cme.futures.mdp3.sbe.v1.13.fxbenchmarkratefix", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.fx_currency_symbol = ProtoField.new("Fx Currency Symbol", "cme.futures.mdp3.sbe.v1.13.fxcurrencysymbol", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.group_size = ProtoField.new("Group Size", "cme.futures.mdp3.sbe.v1.13.groupsize", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.group_size_8_byte = ProtoField.new("Group Size 8 Byte", "cme.futures.mdp3.sbe.v1.13.groupsize8byte", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.gt_orders_eligibility = ProtoField.new("Gt Orders Eligibility", "cme.futures.mdp3.sbe.v1.13.gtorderseligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000400)
omi_cme_futures_mdp3_sbe_v1_13.fields.halt_reason = ProtoField.new("Halt Reason", "cme.futures.mdp3.sbe.v1.13.haltreason", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "cme.futures.mdp3.sbe.v1.13.heartbtint", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.high_limit_price = ProtoField.new("High Limit Price", "cme.futures.mdp3.sbe.v1.13.highlimitprice", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.ilink_indicative_mass_quoting_eligible = ProtoField.new("ILink Indicative Mass Quoting Eligible", "cme.futures.mdp3.sbe.v1.13.ilinkindicativemassquotingeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00010000)
omi_cme_futures_mdp3_sbe_v1_13.fields.implied_matching_eligibility = ProtoField.new("Implied Matching Eligibility", "cme.futures.mdp3.sbe.v1.13.impliedmatchingeligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000800)
omi_cme_futures_mdp3_sbe_v1_13.fields.inst_attrib_group = ProtoField.new("Inst Attrib Group", "cme.futures.mdp3.sbe.v1.13.instattribgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.inst_attrib_groups = ProtoField.new("Inst Attrib Groups", "cme.futures.mdp3.sbe.v1.13.instattribgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.inst_attrib_value = ProtoField.new("Inst Attrib Value", "cme.futures.mdp3.sbe.v1.13.instattribvalue", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.instrument_guid = ProtoField.new("Instrument Guid", "cme.futures.mdp3.sbe.v1.13.instrumentguid", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.intervening_days = ProtoField.new("Intervening Days", "cme.futures.mdp3.sbe.v1.13.interveningdays", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.intraday = ProtoField.new("Intraday", "cme.futures.mdp3.sbe.v1.13.intraday", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_cme_futures_mdp3_sbe_v1_13.fields.inverted_book = ProtoField.new("Inverted Book", "cme.futures.mdp3.sbe.v1.13.invertedbook", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00004000)
omi_cme_futures_mdp3_sbe_v1_13.fields.is_aon_instrument = ProtoField.new("Is Aon Instrument", "cme.futures.mdp3.sbe.v1.13.isaoninstrument", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00008000)
omi_cme_futures_mdp3_sbe_v1_13.fields.is_fractional = ProtoField.new("Is Fractional", "cme.futures.mdp3.sbe.v1.13.isfractional", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00080000)
omi_cme_futures_mdp3_sbe_v1_13.fields.issue_date = ProtoField.new("Issue Date", "cme.futures.mdp3.sbe.v1.13.issuedate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.issuer = ProtoField.new("Issuer", "cme.futures.mdp3.sbe.v1.13.issuer", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.last_implied_msg = ProtoField.new("Last Implied Msg", "cme.futures.mdp3.sbe.v1.13.lastimpliedmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_cme_futures_mdp3_sbe_v1_13.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "cme.futures.mdp3.sbe.v1.13.lastmsgseqnumprocessed", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.last_qty = ProtoField.new("Last Qty", "cme.futures.mdp3.sbe.v1.13.lastqty", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.last_quote_msg = ProtoField.new("Last Quote Msg", "cme.futures.mdp3.sbe.v1.13.lastquotemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_cme_futures_mdp3_sbe_v1_13.fields.last_stats_msg = ProtoField.new("Last Stats Msg", "cme.futures.mdp3.sbe.v1.13.laststatsmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_cme_futures_mdp3_sbe_v1_13.fields.last_trade_msg = ProtoField.new("Last Trade Msg", "cme.futures.mdp3.sbe.v1.13.lasttrademsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_cme_futures_mdp3_sbe_v1_13.fields.last_update_time = ProtoField.new("Last Update Time", "cme.futures.mdp3.sbe.v1.13.lastupdatetime", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.last_volume_msg = ProtoField.new("Last Volume Msg", "cme.futures.mdp3.sbe.v1.13.lastvolumemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cme_futures_mdp3_sbe_v1_13.fields.leg_option_delta = ProtoField.new("Leg Option Delta", "cme.futures.mdp3.sbe.v1.13.legoptiondelta", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.leg_price = ProtoField.new("Leg Price", "cme.futures.mdp3.sbe.v1.13.legprice", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.futures.mdp3.sbe.v1.13.legratioqty", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.leg_security_id = ProtoField.new("Leg Security Id", "cme.futures.mdp3.sbe.v1.13.legsecurityid", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.leg_side = ProtoField.new("Leg Side", "cme.futures.mdp3.sbe.v1.13.legside", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.lot_type = ProtoField.new("Lot Type", "cme.futures.mdp3.sbe.v1.13.lottype", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.lot_type_rules_group = ProtoField.new("Lot Type Rules Group", "cme.futures.mdp3.sbe.v1.13.lottyperulesgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.lot_type_rules_groups = ProtoField.new("Lot Type Rules Groups", "cme.futures.mdp3.sbe.v1.13.lottyperulesgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.low_limit_price = ProtoField.new("Low Limit Price", "cme.futures.mdp3.sbe.v1.13.lowlimitprice", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_feed_types_group = ProtoField.new("M D Feed Types Group", "cme.futures.mdp3.sbe.v1.13.mdfeedtypesgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_feed_types_groups = ProtoField.new("M D Feed Types Groups", "cme.futures.mdp3.sbe.v1.13.mdfeedtypesgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_group = ProtoField.new("M D Incremental Refresh Book Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbookgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_groups = ProtoField.new("M D Incremental Refresh Book Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbookgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_group = ProtoField.new("M D Incremental Refresh Book Long Qty Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbooklongqtygroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_groups = ProtoField.new("M D Incremental Refresh Book Long Qty Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbooklongqtygroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_order_group = ProtoField.new("M D Incremental Refresh Book Long Qty Order Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbooklongqtyordergroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_order_groups = ProtoField.new("M D Incremental Refresh Book Long Qty Order Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbooklongqtyordergroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_order_group = ProtoField.new("M D Incremental Refresh Book Order Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbookordergroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_order_groups = ProtoField.new("M D Incremental Refresh Book Order Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbookordergroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_daily_statistics_group = ProtoField.new("M D Incremental Refresh Daily Statistics Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshdailystatisticsgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_daily_statistics_groups = ProtoField.new("M D Incremental Refresh Daily Statistics Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshdailystatisticsgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_limits_banding_group = ProtoField.new("M D Incremental Refresh Limits Banding Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshlimitsbandinggroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_limits_banding_groups = ProtoField.new("M D Incremental Refresh Limits Banding Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshlimitsbandinggroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_order_book_group = ProtoField.new("M D Incremental Refresh Order Book Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshorderbookgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_order_book_groups = ProtoField.new("M D Incremental Refresh Order Book Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshorderbookgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_group = ProtoField.new("M D Incremental Refresh Session Statistics Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshsessionstatisticsgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_groups = ProtoField.new("M D Incremental Refresh Session Statistics Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshsessionstatisticsgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_long_qty_group = ProtoField.new("M D Incremental Refresh Session Statistics Long Qty Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshsessionstatisticslongqtygroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_long_qty_groups = ProtoField.new("M D Incremental Refresh Session Statistics Long Qty Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshsessionstatisticslongqtygroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_group = ProtoField.new("M D Incremental Refresh Trade Summary Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummarygroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_groups = ProtoField.new("M D Incremental Refresh Trade Summary Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummarygroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_group = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummarylongqtygroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_groups = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummarylongqtygroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_order_group = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Order Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummarylongqtyordergroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_order_groups = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Order Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummarylongqtyordergroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_order_group = ProtoField.new("M D Incremental Refresh Trade Summary Order Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummaryordergroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_order_groups = ProtoField.new("M D Incremental Refresh Trade Summary Order Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummaryordergroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_group = ProtoField.new("M D Incremental Refresh Volume Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshvolumegroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_groups = ProtoField.new("M D Incremental Refresh Volume Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshvolumegroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_long_qty_group = ProtoField.new("M D Incremental Refresh Volume Long Qty Group", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshvolumelongqtygroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_long_qty_groups = ProtoField.new("M D Incremental Refresh Volume Long Qty Groups", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshvolumelongqtygroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_instrument_definition_spread_leg_group = ProtoField.new("M D Instrument Definition Spread Leg Group", "cme.futures.mdp3.sbe.v1.13.mdinstrumentdefinitionspreadleggroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_instrument_definition_spread_leg_groups = ProtoField.new("M D Instrument Definition Spread Leg Groups", "cme.futures.mdp3.sbe.v1.13.mdinstrumentdefinitionspreadleggroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.main_fraction = ProtoField.new("Main Fraction", "cme.futures.mdp3.sbe.v1.13.mainfraction", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.market_depth = ProtoField.new("Market Depth", "cme.futures.mdp3.sbe.v1.13.marketdepth", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.market_segment_id = ProtoField.new("Market Segment Id", "cme.futures.mdp3.sbe.v1.13.marketsegmentid", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.market_set = ProtoField.new("Market Set", "cme.futures.mdp3.sbe.v1.13.marketset", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.match_algorithm = ProtoField.new("Match Algorithm", "cme.futures.mdp3.sbe.v1.13.matchalgorithm", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "cme.futures.mdp3.sbe.v1.13.matcheventindicator", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.maturity_date = ProtoField.new("Maturity Date", "cme.futures.mdp3.sbe.v1.13.maturitydate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.futures.mdp3.sbe.v1.13.maturitymonthyear", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.max_bid_ask_constraint = ProtoField.new("Max Bid Ask Constraint", "cme.futures.mdp3.sbe.v1.13.maxbidaskconstraint", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.max_no_of_substitutions = ProtoField.new("Max No Of Substitutions", "cme.futures.mdp3.sbe.v1.13.maxnoofsubstitutions", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.max_price_discretion_offset = ProtoField.new("Max Price Discretion Offset", "cme.futures.mdp3.sbe.v1.13.maxpricediscretionoffset", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.max_price_variation = ProtoField.new("Max Price Variation", "cme.futures.mdp3.sbe.v1.13.maxpricevariation", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "cme.futures.mdp3.sbe.v1.13.maxtradevol", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_display_qty = ProtoField.new("Md Display Qty", "cme.futures.mdp3.sbe.v1.13.mddisplayqty", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_display_qty_optional = ProtoField.new("Md Display Qty Optional", "cme.futures.mdp3.sbe.v1.13.mddisplayqtyoptional", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.futures.mdp3.sbe.v1.13.mdentrypx", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_px_optional = ProtoField.new("Md Entry Px Optional", "cme.futures.mdp3.sbe.v1.13.mdentrypxoptional", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.futures.mdp3.sbe.v1.13.mdentrysize", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_size_optional = ProtoField.new("Md Entry Size Optional", "cme.futures.mdp3.sbe.v1.13.mdentrysizeoptional", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_size_u_int_64 = ProtoField.new("Md Entry Size u Int 64", "cme.futures.mdp3.sbe.v1.13.mdentrysizeuint64", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_size_u_int_64_null = ProtoField.new("Md Entry Size u Int 64 Null", "cme.futures.mdp3.sbe.v1.13.mdentrysizeuint64null", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_type_ = ProtoField.new("Md Entry Type ", "cme.futures.mdp3.sbe.v1.13.mdentrytype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_type_book = ProtoField.new("Md Entry Type Book", "cme.futures.mdp3.sbe.v1.13.mdentrytypebook", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_type_daily_statistics = ProtoField.new("Md Entry Type Daily Statistics", "cme.futures.mdp3.sbe.v1.13.mdentrytypedailystatistics", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_type_statistics = ProtoField.new("Md Entry Type Statistics", "cme.futures.mdp3.sbe.v1.13.mdentrytypestatistics", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_feed_type = ProtoField.new("Md Feed Type", "cme.futures.mdp3.sbe.v1.13.mdfeedtype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_order_priority = ProtoField.new("Md Order Priority", "cme.futures.mdp3.sbe.v1.13.mdorderpriority", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_order_priority_optional = ProtoField.new("Md Order Priority Optional", "cme.futures.mdp3.sbe.v1.13.mdorderpriorityoptional", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_price_level = ProtoField.new("Md Price Level", "cme.futures.mdp3.sbe.v1.13.mdpricelevel", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_price_level_optional = ProtoField.new("Md Price Level Optional", "cme.futures.mdp3.sbe.v1.13.mdpriceleveloptional", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_price_level_u_int_8_null = ProtoField.new("Md Price Level u Int 8 Null", "cme.futures.mdp3.sbe.v1.13.mdpriceleveluint8null", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_security_trading_status = ProtoField.new("Md Security Trading Status", "cme.futures.mdp3.sbe.v1.13.mdsecuritytradingstatus", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_stream_id = ProtoField.new("Md Stream Id", "cme.futures.mdp3.sbe.v1.13.mdstreamid", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_trade_entry_i_d_u_int_32 = ProtoField.new("Md Trade Entry I D u Int 32", "cme.futures.mdp3.sbe.v1.13.mdtradeentryiduint32", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_trade_entry_i_d_u_int_32_null = ProtoField.new("Md Trade Entry I D u Int 32 Null", "cme.futures.mdp3.sbe.v1.13.mdtradeentryiduint32null", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_update_action = ProtoField.new("Md Update Action", "cme.futures.mdp3.sbe.v1.13.mdupdateaction", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.message = ProtoField.new("Message", "cme.futures.mdp3.sbe.v1.13.message", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.message_header = ProtoField.new("Message Header", "cme.futures.mdp3.sbe.v1.13.messageheader", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.message_size = ProtoField.new("Message Size", "cme.futures.mdp3.sbe.v1.13.messagesize", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.min_cab_price = ProtoField.new("Min Cab Price", "cme.futures.mdp3.sbe.v1.13.mincabprice", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.min_lot_size_decimal_qty = ProtoField.new("Min Lot Size Decimal Qty", "cme.futures.mdp3.sbe.v1.13.minlotsizedecimalqty", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.min_price_increment = ProtoField.new("Min Price Increment", "cme.futures.mdp3.sbe.v1.13.minpriceincrement", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "cme.futures.mdp3.sbe.v1.13.minpriceincrementamount", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.min_price_increment_optional = ProtoField.new("Min Price Increment Optional", "cme.futures.mdp3.sbe.v1.13.minpriceincrementoptional", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.min_quote_life = ProtoField.new("Min Quote Life", "cme.futures.mdp3.sbe.v1.13.minquotelife", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "cme.futures.mdp3.sbe.v1.13.mintradevol", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.money_or_par = ProtoField.new("Money Or Par", "cme.futures.mdp3.sbe.v1.13.moneyorpar", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.month = ProtoField.new("Month", "cme.futures.mdp3.sbe.v1.13.month", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.negative_price_outright_eligible = ProtoField.new("Negative Price Outright Eligible", "cme.futures.mdp3.sbe.v1.13.negativepriceoutrighteligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00040000)
omi_cme_futures_mdp3_sbe_v1_13.fields.negative_strike_eligible = ProtoField.new("Negative Strike Eligible", "cme.futures.mdp3.sbe.v1.13.negativestrikeeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00020000)
omi_cme_futures_mdp3_sbe_v1_13.fields.no_chunks = ProtoField.new("No Chunks", "cme.futures.mdp3.sbe.v1.13.nochunks", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.null_value = ProtoField.new("Null Value", "cme.futures.mdp3.sbe.v1.13.nullvalue", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_cme_futures_mdp3_sbe_v1_13.fields.num_in_group = ProtoField.new("Num In Group", "cme.futures.mdp3.sbe.v1.13.numingroup", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.number_of_orders = ProtoField.new("Number Of Orders", "cme.futures.mdp3.sbe.v1.13.numberoforders", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.number_of_orders_optional = ProtoField.new("Number Of Orders Optional", "cme.futures.mdp3.sbe.v1.13.numberofordersoptional", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "cme.futures.mdp3.sbe.v1.13.openclosesettlflag", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.open_interest_qty = ProtoField.new("Open Interest Qty", "cme.futures.mdp3.sbe.v1.13.openinterestqty", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.order_cross_eligible = ProtoField.new("Order Cross Eligible", "cme.futures.mdp3.sbe.v1.13.ordercrosseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x02000000)
omi_cme_futures_mdp3_sbe_v1_13.fields.order_id = ProtoField.new("Order Id", "cme.futures.mdp3.sbe.v1.13.orderid", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.order_id_optional = ProtoField.new("Order Id Optional", "cme.futures.mdp3.sbe.v1.13.orderidoptional", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.order_qty = ProtoField.new("Order Qty", "cme.futures.mdp3.sbe.v1.13.orderqty", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.order_update_action = ProtoField.new("Order Update Action", "cme.futures.mdp3.sbe.v1.13.orderupdateaction", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.original_contract_size = ProtoField.new("Original Contract Size", "cme.futures.mdp3.sbe.v1.13.originalcontractsize", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.otc_eligible = ProtoField.new("Otc Eligible", "cme.futures.mdp3.sbe.v1.13.otceligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x80000000)
omi_cme_futures_mdp3_sbe_v1_13.fields.packet = ProtoField.new("Packet", "cme.futures.mdp3.sbe.v1.13.packet", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "cme.futures.mdp3.sbe.v1.13.packetsequencenumber", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.padding_1 = ProtoField.new("Padding 1", "cme.futures.mdp3.sbe.v1.13.padding1", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_13.fields.padding_2 = ProtoField.new("Padding 2", "cme.futures.mdp3.sbe.v1.13.padding2", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_13.fields.padding_3 = ProtoField.new("Padding 3", "cme.futures.mdp3.sbe.v1.13.padding3", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_13.fields.padding_4 = ProtoField.new("Padding 4", "cme.futures.mdp3.sbe.v1.13.padding4", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_13.fields.padding_5 = ProtoField.new("Padding 5", "cme.futures.mdp3.sbe.v1.13.padding5", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_13.fields.padding_6 = ProtoField.new("Padding 6", "cme.futures.mdp3.sbe.v1.13.padding6", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_13.fields.padding_7 = ProtoField.new("Padding 7", "cme.futures.mdp3.sbe.v1.13.padding7", ftypes.BYTES)
omi_cme_futures_mdp3_sbe_v1_13.fields.par_value = ProtoField.new("Par Value", "cme.futures.mdp3.sbe.v1.13.parvalue", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.party_role_clearing_org = ProtoField.new("Party Role Clearing Org", "cme.futures.mdp3.sbe.v1.13.partyroleclearingorg", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.payload = ProtoField.new("Payload", "cme.futures.mdp3.sbe.v1.13.payload", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.price_display_format = ProtoField.new("Price Display Format", "cme.futures.mdp3.sbe.v1.13.pricedisplayformat", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.price_precision = ProtoField.new("Price Precision", "cme.futures.mdp3.sbe.v1.13.priceprecision", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.price_quote_currency = ProtoField.new("Price Quote Currency", "cme.futures.mdp3.sbe.v1.13.pricequotecurrency", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.price_quote_method = ProtoField.new("Price Quote Method", "cme.futures.mdp3.sbe.v1.13.pricequotemethod", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.price_ratio = ProtoField.new("Price Ratio", "cme.futures.mdp3.sbe.v1.13.priceratio", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.put_or_call = ProtoField.new("Put Or Call", "cme.futures.mdp3.sbe.v1.13.putorcall", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.futures.mdp3.sbe.v1.13.quotereqid", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.quote_type = ProtoField.new("Quote Type", "cme.futures.mdp3.sbe.v1.13.quotetype", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.rate_source = ProtoField.new("Rate Source", "cme.futures.mdp3.sbe.v1.13.ratesource", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.recovery_msg = ProtoField.new("Recovery Msg", "cme.futures.mdp3.sbe.v1.13.recoverymsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_cme_futures_mdp3_sbe_v1_13.fields.reference_id = ProtoField.new("Reference Id", "cme.futures.mdp3.sbe.v1.13.referenceid", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.related_instruments_group = ProtoField.new("Related Instruments Group", "cme.futures.mdp3.sbe.v1.13.relatedinstrumentsgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.related_instruments_groups = ProtoField.new("Related Instruments Groups", "cme.futures.mdp3.sbe.v1.13.relatedinstrumentsgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.related_security_id = ProtoField.new("Related Security Id", "cme.futures.mdp3.sbe.v1.13.relatedsecurityid", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.futures.mdp3.sbe.v1.13.relatedsymgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.futures.mdp3.sbe.v1.13.relatedsymgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.related_symbol = ProtoField.new("Related Symbol", "cme.futures.mdp3.sbe.v1.13.relatedsymbol", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.repo_sub_type = ProtoField.new("Repo Sub Type", "cme.futures.mdp3.sbe.v1.13.reposubtype", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.reserved = ProtoField.new("Reserved", "cme.futures.mdp3.sbe.v1.13.reserved", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_cme_futures_mdp3_sbe_v1_13.fields.reserved_8 = ProtoField.new("Reserved 8", "cme.futures.mdp3.sbe.v1.13.reserved8", ftypes.UINT32, nil, base.DEC, 0x000000FF)
omi_cme_futures_mdp3_sbe_v1_13.fields.reserved_bits = ProtoField.new("Reserved Bits", "cme.futures.mdp3.sbe.v1.13.reservedbits", ftypes.UINT8, nil, base.DEC, 0x70)
omi_cme_futures_mdp3_sbe_v1_13.fields.rfq_cross_eligible = ProtoField.new("Rfq Cross Eligible", "cme.futures.mdp3.sbe.v1.13.rfqcrosseligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00200000)
omi_cme_futures_mdp3_sbe_v1_13.fields.risk_set = ProtoField.new("Risk Set", "cme.futures.mdp3.sbe.v1.13.riskset", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.rounded = ProtoField.new("Rounded", "cme.futures.mdp3.sbe.v1.13.rounded", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_cme_futures_mdp3_sbe_v1_13.fields.rpt_seq = ProtoField.new("Rpt Seq", "cme.futures.mdp3.sbe.v1.13.rptseq", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.mdp3.sbe.v1.13.schemaid", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_alt_id = ProtoField.new("Security Alt Id", "cme.futures.mdp3.sbe.v1.13.securityaltid", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "cme.futures.mdp3.sbe.v1.13.securityaltidsource", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_exchange = ProtoField.new("Security Exchange", "cme.futures.mdp3.sbe.v1.13.securityexchange", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_group = ProtoField.new("Security Group", "cme.futures.mdp3.sbe.v1.13.securitygroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_id = ProtoField.new("Security Id", "cme.futures.mdp3.sbe.v1.13.securityid", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_id_optional = ProtoField.new("Security Id Optional", "cme.futures.mdp3.sbe.v1.13.securityidoptional", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_status_workup_order_group = ProtoField.new("Security Status Workup Order Group", "cme.futures.mdp3.sbe.v1.13.securitystatusworkupordergroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_status_workup_order_groups = ProtoField.new("Security Status Workup Order Groups", "cme.futures.mdp3.sbe.v1.13.securitystatusworkupordergroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.futures.mdp3.sbe.v1.13.securitysubtype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_trading_event = ProtoField.new("Security Trading Event", "cme.futures.mdp3.sbe.v1.13.securitytradingevent", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_trading_status = ProtoField.new("Security Trading Status", "cme.futures.mdp3.sbe.v1.13.securitytradingstatus", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_type = ProtoField.new("Security Type", "cme.futures.mdp3.sbe.v1.13.securitytype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_update_action = ProtoField.new("Security Update Action", "cme.futures.mdp3.sbe.v1.13.securityupdateaction", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.sending_time = ProtoField.new("Sending Time", "cme.futures.mdp3.sbe.v1.13.sendingtime", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.settl_currency = ProtoField.new("Settl Currency", "cme.futures.mdp3.sbe.v1.13.settlcurrency", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.settl_date = ProtoField.new("Settl Date", "cme.futures.mdp3.sbe.v1.13.settldate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.settl_price_type = ProtoField.new("Settl Price Type", "cme.futures.mdp3.sbe.v1.13.settlpricetype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.settl_type = ProtoField.new("Settl Type", "cme.futures.mdp3.sbe.v1.13.settltype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.settlement_locale = ProtoField.new("Settlement Locale", "cme.futures.mdp3.sbe.v1.13.settlementlocale", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.side = ProtoField.new("Side", "cme.futures.mdp3.sbe.v1.13.side", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.side_optional = ProtoField.new("Side Optional", "cme.futures.mdp3.sbe.v1.13.sideoptional", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_group = ProtoField.new("Snapshot Full Refresh Group", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_groups = ProtoField.new("Snapshot Full Refresh Groups", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_long_qty_group = ProtoField.new("Snapshot Full Refresh Long Qty Group", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshlongqtygroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_long_qty_groups = ProtoField.new("Snapshot Full Refresh Long Qty Groups", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshlongqtygroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_order_book_group = ProtoField.new("Snapshot Full Refresh Order Book Group", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshorderbookgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_order_book_groups = ProtoField.new("Snapshot Full Refresh Order Book Groups", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshorderbookgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tc_p_long_qty_group = ProtoField.new("Snapshot Full Refresh Tc P Long Qty Group", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshtcplongqtygroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tc_p_long_qty_groups = ProtoField.new("Snapshot Full Refresh Tc P Long Qty Groups", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshtcplongqtygroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tcp_group = ProtoField.new("Snapshot Full Refresh Tcp Group", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshtcpgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tcp_groups = ProtoField.new("Snapshot Full Refresh Tcp Groups", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshtcpgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_refresh_top_orders_group = ProtoField.new("Snapshot Refresh Top Orders Group", "cme.futures.mdp3.sbe.v1.13.snapshotrefreshtopordersgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_refresh_top_orders_groups = ProtoField.new("Snapshot Refresh Top Orders Groups", "cme.futures.mdp3.sbe.v1.13.snapshotrefreshtopordersgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.start_date = ProtoField.new("Start Date", "cme.futures.mdp3.sbe.v1.13.startdate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.strike_currency = ProtoField.new("Strike Currency", "cme.futures.mdp3.sbe.v1.13.strikecurrency", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.strike_price = ProtoField.new("Strike Price", "cme.futures.mdp3.sbe.v1.13.strikeprice", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.sub_fraction = ProtoField.new("Sub Fraction", "cme.futures.mdp3.sbe.v1.13.subfraction", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.symbol = ProtoField.new("Symbol", "cme.futures.mdp3.sbe.v1.13.symbol", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.template_id = ProtoField.new("Template Id", "cme.futures.mdp3.sbe.v1.13.templateid", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.term_code = ProtoField.new("Term Code", "cme.futures.mdp3.sbe.v1.13.termcode", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.termination_type = ProtoField.new("Termination Type", "cme.futures.mdp3.sbe.v1.13.terminationtype", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.text = ProtoField.new("Text", "cme.futures.mdp3.sbe.v1.13.text", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.tick_rule = ProtoField.new("Tick Rule", "cme.futures.mdp3.sbe.v1.13.tickrule", ftypes.INT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "cme.futures.mdp3.sbe.v1.13.totnumreports", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.tot_num_reports_optional = ProtoField.new("Tot Num Reports Optional", "cme.futures.mdp3.sbe.v1.13.totnumreportsoptional", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.trade_date = ProtoField.new("Trade Date", "cme.futures.mdp3.sbe.v1.13.tradedate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.trade_link_id = ProtoField.new("Trade Link Id", "cme.futures.mdp3.sbe.v1.13.tradelinkid", ftypes.UINT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.tradeable_size = ProtoField.new("Tradeable Size", "cme.futures.mdp3.sbe.v1.13.tradeablesize", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "cme.futures.mdp3.sbe.v1.13.tradingreferencedate", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.trading_reference_price = ProtoField.new("Trading Reference Price", "cme.futures.mdp3.sbe.v1.13.tradingreferenceprice", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.trading_sessions_group = ProtoField.new("Trading Sessions Group", "cme.futures.mdp3.sbe.v1.13.tradingsessionsgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.trading_sessions_groups = ProtoField.new("Trading Sessions Groups", "cme.futures.mdp3.sbe.v1.13.tradingsessionsgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.mdp3.sbe.v1.13.transacttime", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.triangulation_eligible = ProtoField.new("Triangulation Eligible", "cme.futures.mdp3.sbe.v1.13.triangulationeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00001000)
omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_instrument_guid = ProtoField.new("Underlying Instrument Guid", "cme.futures.mdp3.sbe.v1.13.underlyinginstrumentguid", ftypes.UINT64)
omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_product = ProtoField.new("Underlying Product", "cme.futures.mdp3.sbe.v1.13.underlyingproduct", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_product_optional = ProtoField.new("Underlying Product Optional", "cme.futures.mdp3.sbe.v1.13.underlyingproductoptional", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_security_alt_id = ProtoField.new("Underlying Security Alt Id", "cme.futures.mdp3.sbe.v1.13.underlyingsecurityaltid", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_security_alt_id_source = ProtoField.new("Underlying Security Alt Id Source", "cme.futures.mdp3.sbe.v1.13.underlyingsecurityaltidsource", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "cme.futures.mdp3.sbe.v1.13.underlyingsecurityid", ftypes.INT32)
omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "cme.futures.mdp3.sbe.v1.13.underlyingsymbol", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.underlyings_group = ProtoField.new("Underlyings Group", "cme.futures.mdp3.sbe.v1.13.underlyingsgroup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.underlyings_groups = ProtoField.new("Underlyings Groups", "cme.futures.mdp3.sbe.v1.13.underlyingsgroups", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "cme.futures.mdp3.sbe.v1.13.unitofmeasure", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.unit_of_measure_qty = ProtoField.new("Unit Of Measure Qty", "cme.futures.mdp3.sbe.v1.13.unitofmeasureqty", ftypes.DOUBLE)
omi_cme_futures_mdp3_sbe_v1_13.fields.user_defined_instrument = ProtoField.new("User Defined Instrument", "cme.futures.mdp3.sbe.v1.13.userdefinedinstrument", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.variable_cab_eligible = ProtoField.new("Variable Cab Eligible", "cme.futures.mdp3.sbe.v1.13.variablecabeligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00002000)
omi_cme_futures_mdp3_sbe_v1_13.fields.variable_product_eligibility = ProtoField.new("Variable Product Eligibility", "cme.futures.mdp3.sbe.v1.13.variableproducteligibility", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00000100)
omi_cme_futures_mdp3_sbe_v1_13.fields.version = ProtoField.new("Version", "cme.futures.mdp3.sbe.v1.13.version", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.volatility_quoted_option = ProtoField.new("Volatility Quoted Option", "cme.futures.mdp3.sbe.v1.13.volatilityquotedoption", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00100000)
omi_cme_futures_mdp3_sbe_v1_13.fields.week = ProtoField.new("Week", "cme.futures.mdp3.sbe.v1.13.week", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.workup_trading_status = ProtoField.new("Workup Trading Status", "cme.futures.mdp3.sbe.v1.13.workuptradingstatus", ftypes.UINT8)
omi_cme_futures_mdp3_sbe_v1_13.fields.year = ProtoField.new("Year", "cme.futures.mdp3.sbe.v1.13.year", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.zero_price_outright_eligible = ProtoField.new("Zero Price Outright Eligible", "cme.futures.mdp3.sbe.v1.13.zeropriceoutrighteligible", ftypes.UINT32, {[1]="Yes",[0]="No"}, base.DEC, 0x00400000)

-- Cme Futures Mdp3 Sbe 1.13 messages
omi_cme_futures_mdp3_sbe_v1_13.fields.admin_login = ProtoField.new("Admin Login", "cme.futures.mdp3.sbe.v1.13.adminlogin", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.admin_logout = ProtoField.new("Admin Logout", "cme.futures.mdp3.sbe.v1.13.adminlogout", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.channel_reset = ProtoField.new("Channel Reset", "cme.futures.mdp3.sbe.v1.13.channelreset", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.collateral_market_value = ProtoField.new("Collateral Market Value", "cme.futures.mdp3.sbe.v1.13.collateralmarketvalue", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_book = ProtoField.new("Md Incremental Refresh Book", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbook", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_book_long_qty = ProtoField.new("Md Incremental Refresh Book Long Qty", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbooklongqty", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_daily_statistics = ProtoField.new("Md Incremental Refresh Daily Statistics", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshdailystatistics", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_limits_banding = ProtoField.new("Md Incremental Refresh Limits Banding", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshlimitsbanding", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_order_book = ProtoField.new("Md Incremental Refresh Order Book", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshorderbook", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_session_statistics = ProtoField.new("Md Incremental Refresh Session Statistics", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshsessionstatistics", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_session_statistics_long_qty = ProtoField.new("Md Incremental Refresh Session Statistics Long Qty", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshsessionstatisticslongqty", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_trade_summary = ProtoField.new("Md Incremental Refresh Trade Summary", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummary", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_trade_summary_long_qty = ProtoField.new("Md Incremental Refresh Trade Summary Long Qty", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummarylongqty", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_volume = ProtoField.new("Md Incremental Refresh Volume", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshvolume", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_volume_long_qty = ProtoField.new("Md Incremental Refresh Volume Long Qty", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshvolumelongqty", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_fixed_income = ProtoField.new("Md Instrument Definition Fixed Income", "cme.futures.mdp3.sbe.v1.13.mdinstrumentdefinitionfixedincome", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_future = ProtoField.new("Md Instrument Definition Future", "cme.futures.mdp3.sbe.v1.13.mdinstrumentdefinitionfuture", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_fx = ProtoField.new("Md Instrument Definition Fx", "cme.futures.mdp3.sbe.v1.13.mdinstrumentdefinitionfx", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_option = ProtoField.new("Md Instrument Definition Option", "cme.futures.mdp3.sbe.v1.13.mdinstrumentdefinitionoption", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_repo = ProtoField.new("Md Instrument Definition Repo", "cme.futures.mdp3.sbe.v1.13.mdinstrumentdefinitionrepo", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_spread = ProtoField.new("Md Instrument Definition Spread", "cme.futures.mdp3.sbe.v1.13.mdinstrumentdefinitionspread", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.quote_request = ProtoField.new("Quote Request", "cme.futures.mdp3.sbe.v1.13.quoterequest", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_status = ProtoField.new("Security Status", "cme.futures.mdp3.sbe.v1.13.securitystatus", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_status_workup = ProtoField.new("Security Status Workup", "cme.futures.mdp3.sbe.v1.13.securitystatusworkup", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh = ProtoField.new("Snapshot Full Refresh", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefresh", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_long_qty = ProtoField.new("Snapshot Full Refresh Long Qty", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshlongqty", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_order_book = ProtoField.new("Snapshot Full Refresh Order Book", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshorderbook", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tcp = ProtoField.new("Snapshot Full Refresh Tcp", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshtcp", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tcp_long_qty = ProtoField.new("Snapshot Full Refresh Tcp Long Qty", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshtcplongqty", ftypes.STRING)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_refresh_top_orders = ProtoField.new("Snapshot Refresh Top Orders", "cme.futures.mdp3.sbe.v1.13.snapshotrefreshtoporders", ftypes.STRING)

-- Cme Futures Mdp3 Sbe 1.13 generated fields
omi_cme_futures_mdp3_sbe_v1_13.fields.broken_dates_group_index = ProtoField.new("Broken Dates Group Index", "cme.futures.mdp3.sbe.v1.13.brokendatesgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.channel_reset_group_index = ProtoField.new("Channel Reset Group Index", "cme.futures.mdp3.sbe.v1.13.channelresetgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.collateral_market_value_group_index = ProtoField.new("Collateral Market Value Group Index", "cme.futures.mdp3.sbe.v1.13.collateralmarketvaluegroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.events_group_index = ProtoField.new("Events Group Index", "cme.futures.mdp3.sbe.v1.13.eventsgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.inst_attrib_group_index = ProtoField.new("Inst Attrib Group Index", "cme.futures.mdp3.sbe.v1.13.instattribgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.lot_type_rules_group_index = ProtoField.new("Lot Type Rules Group Index", "cme.futures.mdp3.sbe.v1.13.lottyperulesgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_feed_types_group_index = ProtoField.new("M D Feed Types Group Index", "cme.futures.mdp3.sbe.v1.13.mdfeedtypesgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_group_index = ProtoField.new("M D Incremental Refresh Book Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbookgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_group_index = ProtoField.new("M D Incremental Refresh Book Long Qty Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbooklongqtygroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_order_group_index = ProtoField.new("M D Incremental Refresh Book Long Qty Order Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbooklongqtyordergroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_order_group_index = ProtoField.new("M D Incremental Refresh Book Order Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshbookordergroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_daily_statistics_group_index = ProtoField.new("M D Incremental Refresh Daily Statistics Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshdailystatisticsgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_limits_banding_group_index = ProtoField.new("M D Incremental Refresh Limits Banding Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshlimitsbandinggroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_order_book_group_index = ProtoField.new("M D Incremental Refresh Order Book Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshorderbookgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_group_index = ProtoField.new("M D Incremental Refresh Session Statistics Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshsessionstatisticsgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_long_qty_group_index = ProtoField.new("M D Incremental Refresh Session Statistics Long Qty Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshsessionstatisticslongqtygroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_group_index = ProtoField.new("M D Incremental Refresh Trade Summary Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummarygroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_group_index = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummarylongqtygroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_order_group_index = ProtoField.new("M D Incremental Refresh Trade Summary Long Qty Order Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummarylongqtyordergroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_order_group_index = ProtoField.new("M D Incremental Refresh Trade Summary Order Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshtradesummaryordergroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_group_index = ProtoField.new("M D Incremental Refresh Volume Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshvolumegroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_long_qty_group_index = ProtoField.new("M D Incremental Refresh Volume Long Qty Group Index", "cme.futures.mdp3.sbe.v1.13.mdincrementalrefreshvolumelongqtygroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_instrument_definition_spread_leg_group_index = ProtoField.new("M D Instrument Definition Spread Leg Group Index", "cme.futures.mdp3.sbe.v1.13.mdinstrumentdefinitionspreadleggroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.related_instruments_group_index = ProtoField.new("Related Instruments Group Index", "cme.futures.mdp3.sbe.v1.13.relatedinstrumentsgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.related_sym_group_index = ProtoField.new("Related Sym Group Index", "cme.futures.mdp3.sbe.v1.13.relatedsymgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.security_status_workup_order_group_index = ProtoField.new("Security Status Workup Order Group Index", "cme.futures.mdp3.sbe.v1.13.securitystatusworkupordergroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_group_index = ProtoField.new("Snapshot Full Refresh Group Index", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_long_qty_group_index = ProtoField.new("Snapshot Full Refresh Long Qty Group Index", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshlongqtygroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_order_book_group_index = ProtoField.new("Snapshot Full Refresh Order Book Group Index", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshorderbookgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tc_p_long_qty_group_index = ProtoField.new("Snapshot Full Refresh Tc P Long Qty Group Index", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshtcplongqtygroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tcp_group_index = ProtoField.new("Snapshot Full Refresh Tcp Group Index", "cme.futures.mdp3.sbe.v1.13.snapshotfullrefreshtcpgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_refresh_top_orders_group_index = ProtoField.new("Snapshot Refresh Top Orders Group Index", "cme.futures.mdp3.sbe.v1.13.snapshotrefreshtopordersgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.trading_sessions_group_index = ProtoField.new("Trading Sessions Group Index", "cme.futures.mdp3.sbe.v1.13.tradingsessionsgroupindex", ftypes.UINT16)
omi_cme_futures_mdp3_sbe_v1_13.fields.underlyings_group_index = ProtoField.new("Underlyings Group Index", "cme.futures.mdp3.sbe.v1.13.underlyingsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cme Futures Mdp3 Sbe 1.13 Element Dissection Options
show.admin_login = true
show.admin_logout = true
show.binary_packet_header = true
show.broken_dates_group = true
show.broken_dates_groups = true
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

-- Register Cme Futures Mdp3 Sbe 1.13 Show Options
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_admin_login = Pref.bool("Show Admin Login", show.admin_login, "Parse and add Admin Login to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_admin_logout = Pref.bool("Show Admin Logout", show.admin_logout, "Parse and add Admin Logout to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_broken_dates_group = Pref.bool("Show Broken Dates Group", show.broken_dates_group, "Parse and add Broken Dates Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_broken_dates_groups = Pref.bool("Show Broken Dates Groups", show.broken_dates_groups, "Parse and add Broken Dates Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_channel_reset = Pref.bool("Show Channel Reset", show.channel_reset, "Parse and add Channel Reset to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_channel_reset_group = Pref.bool("Show Channel Reset Group", show.channel_reset_group, "Parse and add Channel Reset Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_channel_reset_groups = Pref.bool("Show Channel Reset Groups", show.channel_reset_groups, "Parse and add Channel Reset Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_collateral_market_value = Pref.bool("Show Collateral Market Value", show.collateral_market_value, "Parse and add Collateral Market Value to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_collateral_market_value_group = Pref.bool("Show Collateral Market Value Group", show.collateral_market_value_group, "Parse and add Collateral Market Value Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_collateral_market_value_groups = Pref.bool("Show Collateral Market Value Groups", show.collateral_market_value_groups, "Parse and add Collateral Market Value Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_events_group = Pref.bool("Show Events Group", show.events_group, "Parse and add Events Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_events_groups = Pref.bool("Show Events Groups", show.events_groups, "Parse and add Events Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_group_size_8_byte = Pref.bool("Show Group Size 8 Byte", show.group_size_8_byte, "Parse and add Group Size 8 Byte to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_inst_attrib_group = Pref.bool("Show Inst Attrib Group", show.inst_attrib_group, "Parse and add Inst Attrib Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_inst_attrib_groups = Pref.bool("Show Inst Attrib Groups", show.inst_attrib_groups, "Parse and add Inst Attrib Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_inst_attrib_value = Pref.bool("Show Inst Attrib Value", show.inst_attrib_value, "Parse and add Inst Attrib Value to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_lot_type_rules_group = Pref.bool("Show Lot Type Rules Group", show.lot_type_rules_group, "Parse and add Lot Type Rules Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_lot_type_rules_groups = Pref.bool("Show Lot Type Rules Groups", show.lot_type_rules_groups, "Parse and add Lot Type Rules Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_feed_types_group = Pref.bool("Show M D Feed Types Group", show.m_d_feed_types_group, "Parse and add M D Feed Types Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_feed_types_groups = Pref.bool("Show M D Feed Types Groups", show.m_d_feed_types_groups, "Parse and add M D Feed Types Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_group = Pref.bool("Show M D Incremental Refresh Book Group", show.m_d_incremental_refresh_book_group, "Parse and add M D Incremental Refresh Book Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_groups = Pref.bool("Show M D Incremental Refresh Book Groups", show.m_d_incremental_refresh_book_groups, "Parse and add M D Incremental Refresh Book Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_group = Pref.bool("Show M D Incremental Refresh Book Long Qty Group", show.m_d_incremental_refresh_book_long_qty_group, "Parse and add M D Incremental Refresh Book Long Qty Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_groups = Pref.bool("Show M D Incremental Refresh Book Long Qty Groups", show.m_d_incremental_refresh_book_long_qty_groups, "Parse and add M D Incremental Refresh Book Long Qty Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_order_group = Pref.bool("Show M D Incremental Refresh Book Long Qty Order Group", show.m_d_incremental_refresh_book_long_qty_order_group, "Parse and add M D Incremental Refresh Book Long Qty Order Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_order_groups = Pref.bool("Show M D Incremental Refresh Book Long Qty Order Groups", show.m_d_incremental_refresh_book_long_qty_order_groups, "Parse and add M D Incremental Refresh Book Long Qty Order Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_order_group = Pref.bool("Show M D Incremental Refresh Book Order Group", show.m_d_incremental_refresh_book_order_group, "Parse and add M D Incremental Refresh Book Order Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_order_groups = Pref.bool("Show M D Incremental Refresh Book Order Groups", show.m_d_incremental_refresh_book_order_groups, "Parse and add M D Incremental Refresh Book Order Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_daily_statistics_group = Pref.bool("Show M D Incremental Refresh Daily Statistics Group", show.m_d_incremental_refresh_daily_statistics_group, "Parse and add M D Incremental Refresh Daily Statistics Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_daily_statistics_groups = Pref.bool("Show M D Incremental Refresh Daily Statistics Groups", show.m_d_incremental_refresh_daily_statistics_groups, "Parse and add M D Incremental Refresh Daily Statistics Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_limits_banding_group = Pref.bool("Show M D Incremental Refresh Limits Banding Group", show.m_d_incremental_refresh_limits_banding_group, "Parse and add M D Incremental Refresh Limits Banding Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_limits_banding_groups = Pref.bool("Show M D Incremental Refresh Limits Banding Groups", show.m_d_incremental_refresh_limits_banding_groups, "Parse and add M D Incremental Refresh Limits Banding Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_order_book_group = Pref.bool("Show M D Incremental Refresh Order Book Group", show.m_d_incremental_refresh_order_book_group, "Parse and add M D Incremental Refresh Order Book Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_order_book_groups = Pref.bool("Show M D Incremental Refresh Order Book Groups", show.m_d_incremental_refresh_order_book_groups, "Parse and add M D Incremental Refresh Order Book Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_group = Pref.bool("Show M D Incremental Refresh Session Statistics Group", show.m_d_incremental_refresh_session_statistics_group, "Parse and add M D Incremental Refresh Session Statistics Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_groups = Pref.bool("Show M D Incremental Refresh Session Statistics Groups", show.m_d_incremental_refresh_session_statistics_groups, "Parse and add M D Incremental Refresh Session Statistics Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_group = Pref.bool("Show M D Incremental Refresh Session Statistics Long Qty Group", show.m_d_incremental_refresh_session_statistics_long_qty_group, "Parse and add M D Incremental Refresh Session Statistics Long Qty Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_groups = Pref.bool("Show M D Incremental Refresh Session Statistics Long Qty Groups", show.m_d_incremental_refresh_session_statistics_long_qty_groups, "Parse and add M D Incremental Refresh Session Statistics Long Qty Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_group = Pref.bool("Show M D Incremental Refresh Trade Summary Group", show.m_d_incremental_refresh_trade_summary_group, "Parse and add M D Incremental Refresh Trade Summary Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_groups = Pref.bool("Show M D Incremental Refresh Trade Summary Groups", show.m_d_incremental_refresh_trade_summary_groups, "Parse and add M D Incremental Refresh Trade Summary Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_group = Pref.bool("Show M D Incremental Refresh Trade Summary Long Qty Group", show.m_d_incremental_refresh_trade_summary_long_qty_group, "Parse and add M D Incremental Refresh Trade Summary Long Qty Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_groups = Pref.bool("Show M D Incremental Refresh Trade Summary Long Qty Groups", show.m_d_incremental_refresh_trade_summary_long_qty_groups, "Parse and add M D Incremental Refresh Trade Summary Long Qty Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_group = Pref.bool("Show M D Incremental Refresh Trade Summary Long Qty Order Group", show.m_d_incremental_refresh_trade_summary_long_qty_order_group, "Parse and add M D Incremental Refresh Trade Summary Long Qty Order Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_groups = Pref.bool("Show M D Incremental Refresh Trade Summary Long Qty Order Groups", show.m_d_incremental_refresh_trade_summary_long_qty_order_groups, "Parse and add M D Incremental Refresh Trade Summary Long Qty Order Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_order_group = Pref.bool("Show M D Incremental Refresh Trade Summary Order Group", show.m_d_incremental_refresh_trade_summary_order_group, "Parse and add M D Incremental Refresh Trade Summary Order Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_order_groups = Pref.bool("Show M D Incremental Refresh Trade Summary Order Groups", show.m_d_incremental_refresh_trade_summary_order_groups, "Parse and add M D Incremental Refresh Trade Summary Order Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_group = Pref.bool("Show M D Incremental Refresh Volume Group", show.m_d_incremental_refresh_volume_group, "Parse and add M D Incremental Refresh Volume Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_groups = Pref.bool("Show M D Incremental Refresh Volume Groups", show.m_d_incremental_refresh_volume_groups, "Parse and add M D Incremental Refresh Volume Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_long_qty_group = Pref.bool("Show M D Incremental Refresh Volume Long Qty Group", show.m_d_incremental_refresh_volume_long_qty_group, "Parse and add M D Incremental Refresh Volume Long Qty Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_long_qty_groups = Pref.bool("Show M D Incremental Refresh Volume Long Qty Groups", show.m_d_incremental_refresh_volume_long_qty_groups, "Parse and add M D Incremental Refresh Volume Long Qty Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_instrument_definition_spread_leg_group = Pref.bool("Show M D Instrument Definition Spread Leg Group", show.m_d_instrument_definition_spread_leg_group, "Parse and add M D Instrument Definition Spread Leg Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_instrument_definition_spread_leg_groups = Pref.bool("Show M D Instrument Definition Spread Leg Groups", show.m_d_instrument_definition_spread_leg_groups, "Parse and add M D Instrument Definition Spread Leg Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_match_event_indicator = Pref.bool("Show Match Event Indicator", show.match_event_indicator, "Parse and add Match Event Indicator to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_book = Pref.bool("Show Md Incremental Refresh Book", show.md_incremental_refresh_book, "Parse and add Md Incremental Refresh Book to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_book_long_qty = Pref.bool("Show Md Incremental Refresh Book Long Qty", show.md_incremental_refresh_book_long_qty, "Parse and add Md Incremental Refresh Book Long Qty to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_daily_statistics = Pref.bool("Show Md Incremental Refresh Daily Statistics", show.md_incremental_refresh_daily_statistics, "Parse and add Md Incremental Refresh Daily Statistics to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_limits_banding = Pref.bool("Show Md Incremental Refresh Limits Banding", show.md_incremental_refresh_limits_banding, "Parse and add Md Incremental Refresh Limits Banding to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_order_book = Pref.bool("Show Md Incremental Refresh Order Book", show.md_incremental_refresh_order_book, "Parse and add Md Incremental Refresh Order Book to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_session_statistics = Pref.bool("Show Md Incremental Refresh Session Statistics", show.md_incremental_refresh_session_statistics, "Parse and add Md Incremental Refresh Session Statistics to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_session_statistics_long_qty = Pref.bool("Show Md Incremental Refresh Session Statistics Long Qty", show.md_incremental_refresh_session_statistics_long_qty, "Parse and add Md Incremental Refresh Session Statistics Long Qty to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_trade_summary = Pref.bool("Show Md Incremental Refresh Trade Summary", show.md_incremental_refresh_trade_summary, "Parse and add Md Incremental Refresh Trade Summary to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_trade_summary_long_qty = Pref.bool("Show Md Incremental Refresh Trade Summary Long Qty", show.md_incremental_refresh_trade_summary_long_qty, "Parse and add Md Incremental Refresh Trade Summary Long Qty to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_volume = Pref.bool("Show Md Incremental Refresh Volume", show.md_incremental_refresh_volume, "Parse and add Md Incremental Refresh Volume to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_volume_long_qty = Pref.bool("Show Md Incremental Refresh Volume Long Qty", show.md_incremental_refresh_volume_long_qty, "Parse and add Md Incremental Refresh Volume Long Qty to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_fixed_income = Pref.bool("Show Md Instrument Definition Fixed Income", show.md_instrument_definition_fixed_income, "Parse and add Md Instrument Definition Fixed Income to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_future = Pref.bool("Show Md Instrument Definition Future", show.md_instrument_definition_future, "Parse and add Md Instrument Definition Future to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_fx = Pref.bool("Show Md Instrument Definition Fx", show.md_instrument_definition_fx, "Parse and add Md Instrument Definition Fx to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_option = Pref.bool("Show Md Instrument Definition Option", show.md_instrument_definition_option, "Parse and add Md Instrument Definition Option to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_repo = Pref.bool("Show Md Instrument Definition Repo", show.md_instrument_definition_repo, "Parse and add Md Instrument Definition Repo to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_spread = Pref.bool("Show Md Instrument Definition Spread", show.md_instrument_definition_spread, "Parse and add Md Instrument Definition Spread to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_instruments_group = Pref.bool("Show Related Instruments Group", show.related_instruments_group, "Parse and add Related Instruments Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_instruments_groups = Pref.bool("Show Related Instruments Groups", show.related_instruments_groups, "Parse and add Related Instruments Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_sym_group = Pref.bool("Show Related Sym Group", show.related_sym_group, "Parse and add Related Sym Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_sym_groups = Pref.bool("Show Related Sym Groups", show.related_sym_groups, "Parse and add Related Sym Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status = Pref.bool("Show Security Status", show.security_status, "Parse and add Security Status to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status_workup = Pref.bool("Show Security Status Workup", show.security_status_workup, "Parse and add Security Status Workup to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status_workup_order_group = Pref.bool("Show Security Status Workup Order Group", show.security_status_workup_order_group, "Parse and add Security Status Workup Order Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status_workup_order_groups = Pref.bool("Show Security Status Workup Order Groups", show.security_status_workup_order_groups, "Parse and add Security Status Workup Order Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_settl_price_type = Pref.bool("Show Settl Price Type", show.settl_price_type, "Parse and add Settl Price Type to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh = Pref.bool("Show Snapshot Full Refresh", show.snapshot_full_refresh, "Parse and add Snapshot Full Refresh to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_group = Pref.bool("Show Snapshot Full Refresh Group", show.snapshot_full_refresh_group, "Parse and add Snapshot Full Refresh Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_groups = Pref.bool("Show Snapshot Full Refresh Groups", show.snapshot_full_refresh_groups, "Parse and add Snapshot Full Refresh Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_long_qty = Pref.bool("Show Snapshot Full Refresh Long Qty", show.snapshot_full_refresh_long_qty, "Parse and add Snapshot Full Refresh Long Qty to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_long_qty_group = Pref.bool("Show Snapshot Full Refresh Long Qty Group", show.snapshot_full_refresh_long_qty_group, "Parse and add Snapshot Full Refresh Long Qty Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_long_qty_groups = Pref.bool("Show Snapshot Full Refresh Long Qty Groups", show.snapshot_full_refresh_long_qty_groups, "Parse and add Snapshot Full Refresh Long Qty Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_order_book = Pref.bool("Show Snapshot Full Refresh Order Book", show.snapshot_full_refresh_order_book, "Parse and add Snapshot Full Refresh Order Book to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_order_book_group = Pref.bool("Show Snapshot Full Refresh Order Book Group", show.snapshot_full_refresh_order_book_group, "Parse and add Snapshot Full Refresh Order Book Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_order_book_groups = Pref.bool("Show Snapshot Full Refresh Order Book Groups", show.snapshot_full_refresh_order_book_groups, "Parse and add Snapshot Full Refresh Order Book Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tc_p_long_qty_group = Pref.bool("Show Snapshot Full Refresh Tc P Long Qty Group", show.snapshot_full_refresh_tc_p_long_qty_group, "Parse and add Snapshot Full Refresh Tc P Long Qty Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tc_p_long_qty_groups = Pref.bool("Show Snapshot Full Refresh Tc P Long Qty Groups", show.snapshot_full_refresh_tc_p_long_qty_groups, "Parse and add Snapshot Full Refresh Tc P Long Qty Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp = Pref.bool("Show Snapshot Full Refresh Tcp", show.snapshot_full_refresh_tcp, "Parse and add Snapshot Full Refresh Tcp to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp_group = Pref.bool("Show Snapshot Full Refresh Tcp Group", show.snapshot_full_refresh_tcp_group, "Parse and add Snapshot Full Refresh Tcp Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp_groups = Pref.bool("Show Snapshot Full Refresh Tcp Groups", show.snapshot_full_refresh_tcp_groups, "Parse and add Snapshot Full Refresh Tcp Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp_long_qty = Pref.bool("Show Snapshot Full Refresh Tcp Long Qty", show.snapshot_full_refresh_tcp_long_qty, "Parse and add Snapshot Full Refresh Tcp Long Qty to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_refresh_top_orders = Pref.bool("Show Snapshot Refresh Top Orders", show.snapshot_refresh_top_orders, "Parse and add Snapshot Refresh Top Orders to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_refresh_top_orders_group = Pref.bool("Show Snapshot Refresh Top Orders Group", show.snapshot_refresh_top_orders_group, "Parse and add Snapshot Refresh Top Orders Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_refresh_top_orders_groups = Pref.bool("Show Snapshot Refresh Top Orders Groups", show.snapshot_refresh_top_orders_groups, "Parse and add Snapshot Refresh Top Orders Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_trading_sessions_group = Pref.bool("Show Trading Sessions Group", show.trading_sessions_group, "Parse and add Trading Sessions Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_trading_sessions_groups = Pref.bool("Show Trading Sessions Groups", show.trading_sessions_groups, "Parse and add Trading Sessions Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_underlyings_group = Pref.bool("Show Underlyings Group", show.underlyings_group, "Parse and add Underlyings Group to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_underlyings_groups = Pref.bool("Show Underlyings Groups", show.underlyings_groups, "Parse and add Underlyings Groups to protocol tree")
omi_cme_futures_mdp3_sbe_v1_13.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cme_futures_mdp3_sbe_v1_13.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.admin_login ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_admin_login then
    show.admin_login = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_admin_login
    changed = true
  end
  if show.admin_logout ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_admin_logout then
    show.admin_logout = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_admin_logout
    changed = true
  end
  if show.binary_packet_header ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_binary_packet_header then
    show.binary_packet_header = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_binary_packet_header
    changed = true
  end
  if show.broken_dates_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_broken_dates_group then
    show.broken_dates_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_broken_dates_group
    changed = true
  end
  if show.broken_dates_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_broken_dates_groups then
    show.broken_dates_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_broken_dates_groups
    changed = true
  end
  if show.channel_reset ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_channel_reset then
    show.channel_reset = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_channel_reset
    changed = true
  end
  if show.channel_reset_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_channel_reset_group then
    show.channel_reset_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_channel_reset_group
    changed = true
  end
  if show.channel_reset_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_channel_reset_groups then
    show.channel_reset_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_channel_reset_groups
    changed = true
  end
  if show.collateral_market_value ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_collateral_market_value then
    show.collateral_market_value = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_collateral_market_value
    changed = true
  end
  if show.collateral_market_value_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_collateral_market_value_group then
    show.collateral_market_value_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_collateral_market_value_group
    changed = true
  end
  if show.collateral_market_value_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_collateral_market_value_groups then
    show.collateral_market_value_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_collateral_market_value_groups
    changed = true
  end
  if show.events_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_events_group then
    show.events_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_events_group
    changed = true
  end
  if show.events_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_events_groups then
    show.events_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_events_groups
    changed = true
  end
  if show.group_size ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_group_size then
    show.group_size = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_group_size
    changed = true
  end
  if show.group_size_8_byte ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_group_size_8_byte then
    show.group_size_8_byte = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_group_size_8_byte
    changed = true
  end
  if show.inst_attrib_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_inst_attrib_group then
    show.inst_attrib_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_inst_attrib_group
    changed = true
  end
  if show.inst_attrib_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_inst_attrib_groups then
    show.inst_attrib_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_inst_attrib_groups
    changed = true
  end
  if show.inst_attrib_value ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_inst_attrib_value then
    show.inst_attrib_value = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_inst_attrib_value
    changed = true
  end
  if show.lot_type_rules_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_lot_type_rules_group then
    show.lot_type_rules_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_lot_type_rules_group
    changed = true
  end
  if show.lot_type_rules_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_lot_type_rules_groups then
    show.lot_type_rules_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_lot_type_rules_groups
    changed = true
  end
  if show.m_d_feed_types_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_feed_types_group then
    show.m_d_feed_types_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_feed_types_group
    changed = true
  end
  if show.m_d_feed_types_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_feed_types_groups then
    show.m_d_feed_types_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_feed_types_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_group then
    show.m_d_incremental_refresh_book_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_groups then
    show.m_d_incremental_refresh_book_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_long_qty_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_group then
    show.m_d_incremental_refresh_book_long_qty_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_long_qty_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_groups then
    show.m_d_incremental_refresh_book_long_qty_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_long_qty_order_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_order_group then
    show.m_d_incremental_refresh_book_long_qty_order_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_long_qty_order_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_order_groups then
    show.m_d_incremental_refresh_book_long_qty_order_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_long_qty_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_book_order_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_order_group then
    show.m_d_incremental_refresh_book_order_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_book_order_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_order_groups then
    show.m_d_incremental_refresh_book_order_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_book_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_daily_statistics_group then
    show.m_d_incremental_refresh_daily_statistics_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_daily_statistics_group
    changed = true
  end
  if show.m_d_incremental_refresh_daily_statistics_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_daily_statistics_groups then
    show.m_d_incremental_refresh_daily_statistics_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_daily_statistics_groups
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_limits_banding_group then
    show.m_d_incremental_refresh_limits_banding_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_limits_banding_group
    changed = true
  end
  if show.m_d_incremental_refresh_limits_banding_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_limits_banding_groups then
    show.m_d_incremental_refresh_limits_banding_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_limits_banding_groups
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_order_book_group then
    show.m_d_incremental_refresh_order_book_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_order_book_group
    changed = true
  end
  if show.m_d_incremental_refresh_order_book_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_order_book_groups then
    show.m_d_incremental_refresh_order_book_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_order_book_groups
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_group then
    show.m_d_incremental_refresh_session_statistics_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_group
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_groups then
    show.m_d_incremental_refresh_session_statistics_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_groups
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_long_qty_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_group then
    show.m_d_incremental_refresh_session_statistics_long_qty_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_group
    changed = true
  end
  if show.m_d_incremental_refresh_session_statistics_long_qty_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_groups then
    show.m_d_incremental_refresh_session_statistics_long_qty_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_session_statistics_long_qty_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_group then
    show.m_d_incremental_refresh_trade_summary_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_groups then
    show.m_d_incremental_refresh_trade_summary_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_long_qty_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_group then
    show.m_d_incremental_refresh_trade_summary_long_qty_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_long_qty_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_groups then
    show.m_d_incremental_refresh_trade_summary_long_qty_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_long_qty_order_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_group then
    show.m_d_incremental_refresh_trade_summary_long_qty_order_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_long_qty_order_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_groups then
    show.m_d_incremental_refresh_trade_summary_long_qty_order_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_long_qty_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_order_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_order_group then
    show.m_d_incremental_refresh_trade_summary_order_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_order_group
    changed = true
  end
  if show.m_d_incremental_refresh_trade_summary_order_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_order_groups then
    show.m_d_incremental_refresh_trade_summary_order_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_trade_summary_order_groups
    changed = true
  end
  if show.m_d_incremental_refresh_volume_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_group then
    show.m_d_incremental_refresh_volume_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_group
    changed = true
  end
  if show.m_d_incremental_refresh_volume_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_groups then
    show.m_d_incremental_refresh_volume_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_groups
    changed = true
  end
  if show.m_d_incremental_refresh_volume_long_qty_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_long_qty_group then
    show.m_d_incremental_refresh_volume_long_qty_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_long_qty_group
    changed = true
  end
  if show.m_d_incremental_refresh_volume_long_qty_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_long_qty_groups then
    show.m_d_incremental_refresh_volume_long_qty_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_incremental_refresh_volume_long_qty_groups
    changed = true
  end
  if show.m_d_instrument_definition_spread_leg_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_instrument_definition_spread_leg_group then
    show.m_d_instrument_definition_spread_leg_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_instrument_definition_spread_leg_group
    changed = true
  end
  if show.m_d_instrument_definition_spread_leg_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_instrument_definition_spread_leg_groups then
    show.m_d_instrument_definition_spread_leg_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_m_d_instrument_definition_spread_leg_groups
    changed = true
  end
  if show.match_event_indicator ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_match_event_indicator then
    show.match_event_indicator = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_match_event_indicator
    changed = true
  end
  if show.maturity_month_year ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_maturity_month_year then
    show.maturity_month_year = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_maturity_month_year
    changed = true
  end
  if show.md_incremental_refresh_book ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_book then
    show.md_incremental_refresh_book = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_book
    changed = true
  end
  if show.md_incremental_refresh_book_long_qty ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_book_long_qty then
    show.md_incremental_refresh_book_long_qty = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_book_long_qty
    changed = true
  end
  if show.md_incremental_refresh_daily_statistics ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_daily_statistics then
    show.md_incremental_refresh_daily_statistics = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_daily_statistics
    changed = true
  end
  if show.md_incremental_refresh_limits_banding ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_limits_banding then
    show.md_incremental_refresh_limits_banding = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_limits_banding
    changed = true
  end
  if show.md_incremental_refresh_order_book ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_order_book then
    show.md_incremental_refresh_order_book = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_order_book
    changed = true
  end
  if show.md_incremental_refresh_session_statistics ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_session_statistics then
    show.md_incremental_refresh_session_statistics = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_session_statistics
    changed = true
  end
  if show.md_incremental_refresh_session_statistics_long_qty ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_session_statistics_long_qty then
    show.md_incremental_refresh_session_statistics_long_qty = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_session_statistics_long_qty
    changed = true
  end
  if show.md_incremental_refresh_trade_summary ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_trade_summary then
    show.md_incremental_refresh_trade_summary = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_trade_summary
    changed = true
  end
  if show.md_incremental_refresh_trade_summary_long_qty ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_trade_summary_long_qty then
    show.md_incremental_refresh_trade_summary_long_qty = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_trade_summary_long_qty
    changed = true
  end
  if show.md_incremental_refresh_volume ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_volume then
    show.md_incremental_refresh_volume = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_volume
    changed = true
  end
  if show.md_incremental_refresh_volume_long_qty ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_volume_long_qty then
    show.md_incremental_refresh_volume_long_qty = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_incremental_refresh_volume_long_qty
    changed = true
  end
  if show.md_instrument_definition_fixed_income ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_fixed_income then
    show.md_instrument_definition_fixed_income = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_fixed_income
    changed = true
  end
  if show.md_instrument_definition_future ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_future then
    show.md_instrument_definition_future = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_future
    changed = true
  end
  if show.md_instrument_definition_fx ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_fx then
    show.md_instrument_definition_fx = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_fx
    changed = true
  end
  if show.md_instrument_definition_option ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_option then
    show.md_instrument_definition_option = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_option
    changed = true
  end
  if show.md_instrument_definition_repo ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_repo then
    show.md_instrument_definition_repo = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_repo
    changed = true
  end
  if show.md_instrument_definition_spread ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_spread then
    show.md_instrument_definition_spread = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_md_instrument_definition_spread
    changed = true
  end
  if show.message ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_message then
    show.message = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_message_header then
    show.message_header = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_packet then
    show.packet = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_packet
    changed = true
  end
  if show.quote_request ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_quote_request then
    show.quote_request = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_quote_request
    changed = true
  end
  if show.related_instruments_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_instruments_group then
    show.related_instruments_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_instruments_group
    changed = true
  end
  if show.related_instruments_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_instruments_groups then
    show.related_instruments_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_instruments_groups
    changed = true
  end
  if show.related_sym_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_sym_group then
    show.related_sym_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_sym_group
    changed = true
  end
  if show.related_sym_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_sym_groups then
    show.related_sym_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_related_sym_groups
    changed = true
  end
  if show.security_status ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status then
    show.security_status = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status
    changed = true
  end
  if show.security_status_workup ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status_workup then
    show.security_status_workup = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status_workup
    changed = true
  end
  if show.security_status_workup_order_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status_workup_order_group then
    show.security_status_workup_order_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status_workup_order_group
    changed = true
  end
  if show.security_status_workup_order_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status_workup_order_groups then
    show.security_status_workup_order_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_security_status_workup_order_groups
    changed = true
  end
  if show.settl_price_type ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_settl_price_type then
    show.settl_price_type = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_settl_price_type
    changed = true
  end
  if show.snapshot_full_refresh ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh then
    show.snapshot_full_refresh = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh
    changed = true
  end
  if show.snapshot_full_refresh_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_group then
    show.snapshot_full_refresh_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_group
    changed = true
  end
  if show.snapshot_full_refresh_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_groups then
    show.snapshot_full_refresh_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_groups
    changed = true
  end
  if show.snapshot_full_refresh_long_qty ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_long_qty then
    show.snapshot_full_refresh_long_qty = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_long_qty
    changed = true
  end
  if show.snapshot_full_refresh_long_qty_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_long_qty_group then
    show.snapshot_full_refresh_long_qty_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_long_qty_group
    changed = true
  end
  if show.snapshot_full_refresh_long_qty_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_long_qty_groups then
    show.snapshot_full_refresh_long_qty_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_long_qty_groups
    changed = true
  end
  if show.snapshot_full_refresh_order_book ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_order_book then
    show.snapshot_full_refresh_order_book = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_order_book
    changed = true
  end
  if show.snapshot_full_refresh_order_book_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_order_book_group then
    show.snapshot_full_refresh_order_book_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_order_book_group
    changed = true
  end
  if show.snapshot_full_refresh_order_book_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_order_book_groups then
    show.snapshot_full_refresh_order_book_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_order_book_groups
    changed = true
  end
  if show.snapshot_full_refresh_tc_p_long_qty_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tc_p_long_qty_group then
    show.snapshot_full_refresh_tc_p_long_qty_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tc_p_long_qty_group
    changed = true
  end
  if show.snapshot_full_refresh_tc_p_long_qty_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tc_p_long_qty_groups then
    show.snapshot_full_refresh_tc_p_long_qty_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tc_p_long_qty_groups
    changed = true
  end
  if show.snapshot_full_refresh_tcp ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp then
    show.snapshot_full_refresh_tcp = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp
    changed = true
  end
  if show.snapshot_full_refresh_tcp_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp_group then
    show.snapshot_full_refresh_tcp_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp_group
    changed = true
  end
  if show.snapshot_full_refresh_tcp_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp_groups then
    show.snapshot_full_refresh_tcp_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp_groups
    changed = true
  end
  if show.snapshot_full_refresh_tcp_long_qty ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp_long_qty then
    show.snapshot_full_refresh_tcp_long_qty = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_full_refresh_tcp_long_qty
    changed = true
  end
  if show.snapshot_refresh_top_orders ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_refresh_top_orders then
    show.snapshot_refresh_top_orders = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_refresh_top_orders
    changed = true
  end
  if show.snapshot_refresh_top_orders_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_refresh_top_orders_group then
    show.snapshot_refresh_top_orders_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_refresh_top_orders_group
    changed = true
  end
  if show.snapshot_refresh_top_orders_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_refresh_top_orders_groups then
    show.snapshot_refresh_top_orders_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_snapshot_refresh_top_orders_groups
    changed = true
  end
  if show.trading_sessions_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_trading_sessions_group then
    show.trading_sessions_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_trading_sessions_group
    changed = true
  end
  if show.trading_sessions_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_trading_sessions_groups then
    show.trading_sessions_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_trading_sessions_groups
    changed = true
  end
  if show.underlyings_group ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_underlyings_group then
    show.underlyings_group = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_underlyings_group
    changed = true
  end
  if show.underlyings_groups ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_underlyings_groups then
    show.underlyings_groups = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_underlyings_groups
    changed = true
  end
  if show.payload ~= omi_cme_futures_mdp3_sbe_v1_13.prefs.show_payload then
    show.payload = omi_cme_futures_mdp3_sbe_v1_13.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Futures Mdp3 Sbe 1.13
-----------------------------------------------------------------------

-- Md Entry Type
cme_futures_mdp3_sbe_v1_13.md_entry_type_ = {}

-- Size: Md Entry Type
cme_futures_mdp3_sbe_v1_13.md_entry_type_.size = 1

-- Display: Md Entry Type
cme_futures_mdp3_sbe_v1_13.md_entry_type_.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.md_entry_type_.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_entry_type_.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_13.md_entry_type_.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_type_, range, value, display)

  return offset + length, value
end

-- Open Close Settl Flag
cme_futures_mdp3_sbe_v1_13.open_close_settl_flag = {}

-- Size: Open Close Settl Flag
cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.size = 1

-- Display: Open Close Settl Flag
cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Md Price Level u Int 8 Null
cme_futures_mdp3_sbe_v1_13.md_price_level_u_int_8_null = {}

-- Size: Md Price Level u Int 8 Null
cme_futures_mdp3_sbe_v1_13.md_price_level_u_int_8_null.size = 1

-- Display: Md Price Level u Int 8 Null
cme_futures_mdp3_sbe_v1_13.md_price_level_u_int_8_null.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Md Price Level u Int 8 Null: No Value"
  end

  return "Md Price Level u Int 8 Null: "..value
end

-- Dissect: Md Price Level u Int 8 Null
cme_futures_mdp3_sbe_v1_13.md_price_level_u_int_8_null.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_price_level_u_int_8_null.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.md_price_level_u_int_8_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_price_level_u_int_8_null, range, value, display)

  return offset + length, value
end

-- Number Of Orders Optional
cme_futures_mdp3_sbe_v1_13.number_of_orders_optional = {}

-- Size: Number Of Orders Optional
cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.size = 4

-- Display: Number Of Orders Optional
cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Number Of Orders Optional: No Value"
  end

  return "Number Of Orders Optional: "..value
end

-- Dissect: Number Of Orders Optional
cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.number_of_orders_optional, range, value, display)

  return offset + length, value
end

-- Md Entry Size u Int 64 Null
cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null = {}

-- Size: Md Entry Size u Int 64 Null
cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.size = 8

-- Display: Md Entry Size u Int 64 Null
cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Entry Size u Int 64 Null: No Value"
  end

  return "Md Entry Size u Int 64 Null: "..value
end

-- Dissect: Md Entry Size u Int 64 Null
cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_size_u_int_64_null, range, value, display)

  return offset + length, value
end

-- Md Entry Px Optional
cme_futures_mdp3_sbe_v1_13.md_entry_px_optional = {}

-- Size: Md Entry Px Optional
cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.size = 8

-- Display: Md Entry Px Optional
cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Md Entry Px Optional: No Value"
  end

  return "Md Entry Px Optional: "..value
end

-- Translate: Md Entry Px Optional
cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Md Entry Px Optional
cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_px_optional, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh Long Qty Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_group = {}

-- Size: Snapshot Full Refresh Long Qty Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.size + 
  cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_price_level_u_int_8_null.size + 
  cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_.size

-- Display: Snapshot Full Refresh Long Qty Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Long Qty Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_group.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_long_qty_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Long Qty Group Index
  if snapshot_full_refresh_long_qty_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_long_qty_group_index, snapshot_full_refresh_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size u Int 64 Null: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_u_int_64_null = cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.dissect(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.dissect(buffer, index, packet, parent)

  -- Md Price Level u Int 8 Null: 1 Byte Unsigned Fixed Width Integer Nullable
  index, md_price_level_u_int_8_null = cme_futures_mdp3_sbe_v1_13.md_price_level_u_int_8_null.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 20 values
  index, md_entry_type_ = cme_futures_mdp3_sbe_v1_13.md_entry_type_.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Long Qty Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_group.dissect = function(buffer, offset, packet, parent, snapshot_full_refresh_long_qty_group_index)
  if show.snapshot_full_refresh_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_long_qty_group_index)
  end
end

-- Num In Group
cme_futures_mdp3_sbe_v1_13.num_in_group = {}

-- Size: Num In Group
cme_futures_mdp3_sbe_v1_13.num_in_group.size = 1

-- Display: Num In Group
cme_futures_mdp3_sbe_v1_13.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
cme_futures_mdp3_sbe_v1_13.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length
cme_futures_mdp3_sbe_v1_13.block_length = {}

-- Size: Block Length
cme_futures_mdp3_sbe_v1_13.block_length.size = 2

-- Display: Block Length
cme_futures_mdp3_sbe_v1_13.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_futures_mdp3_sbe_v1_13.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.block_length, range, value, display)

  return offset + length, value
end

-- Group Size
cme_futures_mdp3_sbe_v1_13.group_size = {}

-- Size: Group Size
cme_futures_mdp3_sbe_v1_13.group_size.size =
  cme_futures_mdp3_sbe_v1_13.block_length.size + 
  cme_futures_mdp3_sbe_v1_13.num_in_group.size

-- Display: Group Size
cme_futures_mdp3_sbe_v1_13.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_futures_mdp3_sbe_v1_13.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_mdp3_sbe_v1_13.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = cme_futures_mdp3_sbe_v1_13.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_futures_mdp3_sbe_v1_13.group_size.dissect = function(buffer, offset, packet, parent)
  if show.group_size then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.group_size, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.group_size.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Full Refresh Long Qty Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_groups = {}

-- Calculate size of: Snapshot Full Refresh Long Qty Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local snapshot_full_refresh_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_long_qty_group_count * 23

  return index
end

-- Display: Snapshot Full Refresh Long Qty Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Long Qty Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Long Qty Group
  for snapshot_full_refresh_long_qty_group_index = 1, num_in_group do
    index, snapshot_full_refresh_long_qty_group = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_group.dissect(buffer, index, packet, parent, snapshot_full_refresh_long_qty_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Long Qty Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_groups.fields(buffer, offset, packet, parent)
end

-- Max Price Variation
cme_futures_mdp3_sbe_v1_13.max_price_variation = {}

-- Size: Max Price Variation
cme_futures_mdp3_sbe_v1_13.max_price_variation.size = 8

-- Display: Max Price Variation
cme_futures_mdp3_sbe_v1_13.max_price_variation.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Max Price Variation: No Value"
  end

  return "Max Price Variation: "..value
end

-- Translate: Max Price Variation
cme_futures_mdp3_sbe_v1_13.max_price_variation.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Max Price Variation
cme_futures_mdp3_sbe_v1_13.max_price_variation.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.max_price_variation.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.max_price_variation.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.max_price_variation.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.max_price_variation, range, value, display)

  return offset + length, value
end

-- Low Limit Price
cme_futures_mdp3_sbe_v1_13.low_limit_price = {}

-- Size: Low Limit Price
cme_futures_mdp3_sbe_v1_13.low_limit_price.size = 8

-- Display: Low Limit Price
cme_futures_mdp3_sbe_v1_13.low_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
cme_futures_mdp3_sbe_v1_13.low_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Low Limit Price
cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.low_limit_price.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.low_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- High Limit Price
cme_futures_mdp3_sbe_v1_13.high_limit_price = {}

-- Size: High Limit Price
cme_futures_mdp3_sbe_v1_13.high_limit_price.size = 8

-- Display: High Limit Price
cme_futures_mdp3_sbe_v1_13.high_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Translate: High Limit Price
cme_futures_mdp3_sbe_v1_13.high_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: High Limit Price
cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.high_limit_price.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.high_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Md Security Trading Status
cme_futures_mdp3_sbe_v1_13.md_security_trading_status = {}

-- Size: Md Security Trading Status
cme_futures_mdp3_sbe_v1_13.md_security_trading_status.size = 1

-- Display: Md Security Trading Status
cme_futures_mdp3_sbe_v1_13.md_security_trading_status.display = function(value)
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
    return "Md Security Trading Status: unknown Or Invalid (20)"
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
cme_futures_mdp3_sbe_v1_13.md_security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.md_security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_security_trading_status, range, value, display)

  return offset + length, value
end

-- Trade Date
cme_futures_mdp3_sbe_v1_13.trade_date = {}

-- Size: Trade Date
cme_futures_mdp3_sbe_v1_13.trade_date.size = 2

-- Display: Trade Date
cme_futures_mdp3_sbe_v1_13.trade_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_futures_mdp3_sbe_v1_13.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Last Update Time
cme_futures_mdp3_sbe_v1_13.last_update_time = {}

-- Size: Last Update Time
cme_futures_mdp3_sbe_v1_13.last_update_time.size = 8

-- Display: Last Update Time
cme_futures_mdp3_sbe_v1_13.last_update_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Last Update Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Update Time
cme_futures_mdp3_sbe_v1_13.last_update_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.last_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.last_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Transact Time
cme_futures_mdp3_sbe_v1_13.transact_time = {}

-- Size: Transact Time
cme_futures_mdp3_sbe_v1_13.transact_time.size = 8

-- Display: Transact Time
cme_futures_mdp3_sbe_v1_13.transact_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
cme_futures_mdp3_sbe_v1_13.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Rpt Seq
cme_futures_mdp3_sbe_v1_13.rpt_seq = {}

-- Size: Rpt Seq
cme_futures_mdp3_sbe_v1_13.rpt_seq.size = 4

-- Display: Rpt Seq
cme_futures_mdp3_sbe_v1_13.rpt_seq.display = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.rpt_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.rpt_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Security Id
cme_futures_mdp3_sbe_v1_13.security_id = {}

-- Size: Security Id
cme_futures_mdp3_sbe_v1_13.security_id.size = 4

-- Display: Security Id
cme_futures_mdp3_sbe_v1_13.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cme_futures_mdp3_sbe_v1_13.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_id, range, value, display)

  return offset + length, value
end

-- Tot Num Reports
cme_futures_mdp3_sbe_v1_13.tot_num_reports = {}

-- Size: Tot Num Reports
cme_futures_mdp3_sbe_v1_13.tot_num_reports.size = 4

-- Display: Tot Num Reports
cme_futures_mdp3_sbe_v1_13.tot_num_reports.display = function(value)
  return "Tot Num Reports: "..value
end

-- Dissect: Tot Num Reports
cme_futures_mdp3_sbe_v1_13.tot_num_reports.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.tot_num_reports.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.tot_num_reports.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.tot_num_reports, range, value, display)

  return offset + length, value
end

-- Last Msg Seq Num Processed
cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed = {}

-- Size: Last Msg Seq Num Processed
cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed.size = 4

-- Display: Last Msg Seq Num Processed
cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed.display = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh Long Qty
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty = {}

-- Calculate size of: Snapshot Full Refresh Long Qty
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed.size

  index = index + cme_futures_mdp3_sbe_v1_13.tot_num_reports.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.rpt_seq.size

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.trade_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_13.high_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.low_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_price_variation.size

  index = index + cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Long Qty
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Long Qty
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = cme_futures_mdp3_sbe_v1_13.tot_num_reports.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_13.last_update_time.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_13.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_13.max_price_variation.dissect(buffer, index, packet, parent)

  -- Snapshot Full Refresh Long Qty Groups: Struct of 2 fields
  index, snapshot_full_refresh_long_qty_groups = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Long Qty
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_long_qty then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty.fields(buffer, offset, packet, parent)
end

-- Snapshot Full Refresh Tc P Long Qty Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_group = {}

-- Size: Snapshot Full Refresh Tc P Long Qty Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.size + 
  cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_price_level_u_int_8_null.size + 
  cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_.size

-- Display: Snapshot Full Refresh Tc P Long Qty Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tc P Long Qty Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_group.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_tc_p_long_qty_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Tc P Long Qty Group Index
  if snapshot_full_refresh_tc_p_long_qty_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tc_p_long_qty_group_index, snapshot_full_refresh_tc_p_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size u Int 64 Null: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_u_int_64_null = cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.dissect(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.dissect(buffer, index, packet, parent)

  -- Md Price Level u Int 8 Null: 1 Byte Unsigned Fixed Width Integer Nullable
  index, md_price_level_u_int_8_null = cme_futures_mdp3_sbe_v1_13.md_price_level_u_int_8_null.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 20 values
  index, md_entry_type_ = cme_futures_mdp3_sbe_v1_13.md_entry_type_.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Tc P Long Qty Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_group.dissect = function(buffer, offset, packet, parent, snapshot_full_refresh_tc_p_long_qty_group_index)
  if show.snapshot_full_refresh_tc_p_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tc_p_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_tc_p_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_tc_p_long_qty_group_index)
  end
end

-- Snapshot Full Refresh Tc P Long Qty Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_groups = {}

-- Calculate size of: Snapshot Full Refresh Tc P Long Qty Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local snapshot_full_refresh_tc_p_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_tc_p_long_qty_group_count * 23

  return index
end

-- Display: Snapshot Full Refresh Tc P Long Qty Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tc P Long Qty Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Tc P Long Qty Group
  for snapshot_full_refresh_tc_p_long_qty_group_index = 1, num_in_group do
    index, snapshot_full_refresh_tc_p_long_qty_group = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_group.dissect(buffer, index, packet, parent, snapshot_full_refresh_tc_p_long_qty_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Tc P Long Qty Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_tc_p_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tc_p_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_groups.fields(buffer, offset, packet, parent)
end

-- Match Event Indicator
cme_futures_mdp3_sbe_v1_13.match_event_indicator = {}

-- Size: Match Event Indicator
cme_futures_mdp3_sbe_v1_13.match_event_indicator.size = 1

-- Display: Match Event Indicator
cme_futures_mdp3_sbe_v1_13.match_event_indicator.display = function(buffer, packet, parent)
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
cme_futures_mdp3_sbe_v1_13.match_event_indicator.bits = function(buffer, offset, packet, parent)

  -- End Of Event: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.end_of_event, buffer(offset, 1))

  -- Reserved: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.reserved, buffer(offset, 1))

  -- Recovery Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.recovery_msg, buffer(offset, 1))

  -- Last Implied Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.last_implied_msg, buffer(offset, 1))

  -- Last Stats Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.last_stats_msg, buffer(offset, 1))

  -- Last Quote Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.last_quote_msg, buffer(offset, 1))

  -- Last Volume Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.last_volume_msg, buffer(offset, 1))

  -- Last Trade Msg: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.last_trade_msg, buffer(offset, 1))
end

-- Dissect: Match Event Indicator
cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_13.match_event_indicator.display(range, packet, parent)
  local element = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.match_event_indicator, range, display)

  if show.match_event_indicator then
    cme_futures_mdp3_sbe_v1_13.match_event_indicator.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Snapshot Full Refresh Tcp Long Qty
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_long_qty = {}

-- Calculate size of: Snapshot Full Refresh Tcp Long Qty
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_long_qty.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.high_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.low_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_price_variation.size

  index = index + cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Tcp Long Qty
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_long_qty.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tcp Long Qty
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_long_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_13.max_price_variation.dissect(buffer, index, packet, parent)

  -- Snapshot Full Refresh Tc P Long Qty Groups: Struct of 2 fields
  index, snapshot_full_refresh_tc_p_long_qty_groups = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tc_p_long_qty_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Tcp Long Qty
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_long_qty.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_tcp_long_qty then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_long_qty.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_long_qty.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tcp_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_long_qty.fields(buffer, offset, packet, parent)
end

-- Padding 5
cme_futures_mdp3_sbe_v1_13.padding_5 = {}

-- Size: Padding 5
cme_futures_mdp3_sbe_v1_13.padding_5.size = 5

-- Display: Padding 5
cme_futures_mdp3_sbe_v1_13.padding_5.display = function(value)
  return "Padding 5: "..value
end

-- Dissect: Padding 5
cme_futures_mdp3_sbe_v1_13.padding_5.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.padding_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_13.padding_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.padding_5, range, value, display)

  return offset + length, value
end

-- Md Entry Type Statistics
cme_futures_mdp3_sbe_v1_13.md_entry_type_statistics = {}

-- Size: Md Entry Type Statistics
cme_futures_mdp3_sbe_v1_13.md_entry_type_statistics.size = 1

-- Display: Md Entry Type Statistics
cme_futures_mdp3_sbe_v1_13.md_entry_type_statistics.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.md_entry_type_statistics.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_entry_type_statistics.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_13.md_entry_type_statistics.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_type_statistics, range, value, display)

  return offset + length, value
end

-- Md Update Action
cme_futures_mdp3_sbe_v1_13.md_update_action = {}

-- Size: Md Update Action
cme_futures_mdp3_sbe_v1_13.md_update_action.size = 1

-- Display: Md Update Action
cme_futures_mdp3_sbe_v1_13.md_update_action.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.md_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.md_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Md Entry Px
cme_futures_mdp3_sbe_v1_13.md_entry_px = {}

-- Size: Md Entry Px
cme_futures_mdp3_sbe_v1_13.md_entry_px.size = 8

-- Display: Md Entry Px
cme_futures_mdp3_sbe_v1_13.md_entry_px.display = function(value)
  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
cme_futures_mdp3_sbe_v1_13.md_entry_px.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Md Entry Px
cme_futures_mdp3_sbe_v1_13.md_entry_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_entry_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.md_entry_px.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.md_entry_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Session Statistics Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_group = {}

-- Size: M D Incremental Refresh Session Statistics Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.size + 
  cme_futures_mdp3_sbe_v1_13.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_statistics.size + 
  cme_futures_mdp3_sbe_v1_13.padding_5.size

-- Display: M D Incremental Refresh Session Statistics Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_long_qty_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Session Statistics Long Qty Group Index
  if m_d_incremental_refresh_session_statistics_long_qty_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_long_qty_group_index, m_d_incremental_refresh_session_statistics_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_13.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size u Int 64 Null: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_u_int_64_null = cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_13.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Statistics: 1 Byte Ascii String Enum with 6 values
  index, md_entry_type_statistics = cme_futures_mdp3_sbe_v1_13.md_entry_type_statistics.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_futures_mdp3_sbe_v1_13.padding_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_long_qty_group_index)
  if show.m_d_incremental_refresh_session_statistics_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_long_qty_group_index)
  end
end

-- M D Incremental Refresh Session Statistics Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_groups = {}

-- Calculate size of: M D Incremental Refresh Session Statistics Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_session_statistics_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_session_statistics_long_qty_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Session Statistics Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Session Statistics Long Qty Group
  for m_d_incremental_refresh_session_statistics_long_qty_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_session_statistics_long_qty_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_session_statistics_long_qty_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_session_statistics_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_groups.fields(buffer, offset, packet, parent)
end

-- Padding 2
cme_futures_mdp3_sbe_v1_13.padding_2 = {}

-- Size: Padding 2
cme_futures_mdp3_sbe_v1_13.padding_2.size = 2

-- Display: Padding 2
cme_futures_mdp3_sbe_v1_13.padding_2.display = function(value)
  return "Padding 2: "..value
end

-- Dissect: Padding 2
cme_futures_mdp3_sbe_v1_13.padding_2.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_13.padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.padding_2, range, value, display)

  return offset + length, value
end

-- Md Incremental Refresh Session Statistics Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics_long_qty = {}

-- Calculate size of: Md Incremental Refresh Session Statistics Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics_long_qty.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Session Statistics Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics_long_qty.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Session Statistics Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics_long_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Session Statistics Long Qty Groups: Struct of 2 fields
  index, m_d_incremental_refresh_session_statistics_long_qty_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_long_qty_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Session Statistics Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics_long_qty.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_session_statistics_long_qty then
    local length = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics_long_qty.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics_long_qty.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_session_statistics_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics_long_qty.fields(buffer, offset, packet, parent)
end

-- Padding 7
cme_futures_mdp3_sbe_v1_13.padding_7 = {}

-- Size: Padding 7
cme_futures_mdp3_sbe_v1_13.padding_7.size = 7

-- Display: Padding 7
cme_futures_mdp3_sbe_v1_13.padding_7.display = function(value)
  return "Padding 7: "..value
end

-- Dissect: Padding 7
cme_futures_mdp3_sbe_v1_13.padding_7.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.padding_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_13.padding_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.padding_7, range, value, display)

  return offset + length, value
end

-- Md Entry Size u Int 64
cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64 = {}

-- Size: Md Entry Size u Int 64
cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64.size = 8

-- Display: Md Entry Size u Int 64
cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64.display = function(value)
  return "Md Entry Size u Int 64: "..value
end

-- Dissect: Md Entry Size u Int 64
cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_size_u_int_64, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Volume Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_group = {}

-- Size: M D Incremental Refresh Volume Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_13.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.padding_7.size

-- Display: M D Incremental Refresh Volume Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_volume_long_qty_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Volume Long Qty Group Index
  if m_d_incremental_refresh_volume_long_qty_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_long_qty_group_index, m_d_incremental_refresh_volume_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Size u Int 64: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_size_u_int_64 = cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_13.md_update_action.dissect(buffer, index, packet, parent)

  -- Padding 7: 7 Byte
  index, padding_7 = cme_futures_mdp3_sbe_v1_13.padding_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Volume Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_volume_long_qty_group_index)
  if show.m_d_incremental_refresh_volume_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_volume_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_volume_long_qty_group_index)
  end
end

-- M D Incremental Refresh Volume Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_groups = {}

-- Calculate size of: M D Incremental Refresh Volume Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_volume_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_volume_long_qty_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Volume Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Volume Long Qty Group
  for m_d_incremental_refresh_volume_long_qty_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_volume_long_qty_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_volume_long_qty_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Volume Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_volume_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Volume Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume_long_qty = {}

-- Calculate size of: Md Incremental Refresh Volume Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume_long_qty.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Volume Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume_long_qty.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Volume Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume_long_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Volume Long Qty Groups: Struct of 2 fields
  index, m_d_incremental_refresh_volume_long_qty_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_long_qty_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Volume Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume_long_qty.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_volume_long_qty then
    local length = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume_long_qty.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume_long_qty.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_volume_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume_long_qty.fields(buffer, offset, packet, parent)
end

-- Padding 4
cme_futures_mdp3_sbe_v1_13.padding_4 = {}

-- Size: Padding 4
cme_futures_mdp3_sbe_v1_13.padding_4.size = 4

-- Display: Padding 4
cme_futures_mdp3_sbe_v1_13.padding_4.display = function(value)
  return "Padding 4: "..value
end

-- Dissect: Padding 4
cme_futures_mdp3_sbe_v1_13.padding_4.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.padding_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_13.padding_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.padding_4, range, value, display)

  return offset + length, value
end

-- Last Qty
cme_futures_mdp3_sbe_v1_13.last_qty = {}

-- Size: Last Qty
cme_futures_mdp3_sbe_v1_13.last_qty.size = 4

-- Display: Last Qty
cme_futures_mdp3_sbe_v1_13.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
cme_futures_mdp3_sbe_v1_13.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Order Id
cme_futures_mdp3_sbe_v1_13.order_id = {}

-- Size: Order Id
cme_futures_mdp3_sbe_v1_13.order_id.size = 8

-- Display: Order Id
cme_futures_mdp3_sbe_v1_13.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cme_futures_mdp3_sbe_v1_13.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.order_id, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Trade Summary Long Qty Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_group = {}

-- Size: M D Incremental Refresh Trade Summary Long Qty Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_group.size =
  cme_futures_mdp3_sbe_v1_13.order_id.size + 
  cme_futures_mdp3_sbe_v1_13.last_qty.size + 
  cme_futures_mdp3_sbe_v1_13.padding_4.size

-- Display: M D Incremental Refresh Trade Summary Long Qty Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Long Qty Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary Long Qty Order Group Index
  if m_d_incremental_refresh_trade_summary_long_qty_order_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_order_group_index, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = cme_futures_mdp3_sbe_v1_13.last_qty.dissect(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index, padding_4 = cme_futures_mdp3_sbe_v1_13.padding_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Long Qty Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
  if show.m_d_incremental_refresh_trade_summary_long_qty_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
  end
end

-- Group Size 8 Byte
cme_futures_mdp3_sbe_v1_13.group_size_8_byte = {}

-- Size: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_13.group_size_8_byte.size =
  cme_futures_mdp3_sbe_v1_13.block_length.size + 
  cme_futures_mdp3_sbe_v1_13.padding_5.size + 
  cme_futures_mdp3_sbe_v1_13.num_in_group.size

-- Display: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_13.group_size_8_byte.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_13.group_size_8_byte.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_mdp3_sbe_v1_13.block_length.dissect(buffer, index, packet, parent)

  -- Padding 5: 5 Byte
  index, padding_5 = cme_futures_mdp3_sbe_v1_13.padding_5.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = cme_futures_mdp3_sbe_v1_13.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size 8 Byte
cme_futures_mdp3_sbe_v1_13.group_size_8_byte.dissect = function(buffer, offset, packet, parent)
  if show.group_size_8_byte then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.group_size_8_byte, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.group_size_8_byte.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.group_size_8_byte.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.group_size_8_byte.fields(buffer, offset, packet, parent)
  end
end

-- M D Incremental Refresh Trade Summary Long Qty Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_groups = {}

-- Calculate size of: M D Incremental Refresh Trade Summary Long Qty Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size_8_byte.size

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_long_qty_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_long_qty_order_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Trade Summary Long Qty Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Long Qty Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_13.group_size_8_byte.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary Long Qty Order Group
  for m_d_incremental_refresh_trade_summary_long_qty_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_long_qty_order_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Long Qty Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_long_qty_order_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_groups.fields(buffer, offset, packet, parent)
end

-- Padding 6
cme_futures_mdp3_sbe_v1_13.padding_6 = {}

-- Size: Padding 6
cme_futures_mdp3_sbe_v1_13.padding_6.size = 6

-- Display: Padding 6
cme_futures_mdp3_sbe_v1_13.padding_6.display = function(value)
  return "Padding 6: "..value
end

-- Dissect: Padding 6
cme_futures_mdp3_sbe_v1_13.padding_6.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.padding_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_13.padding_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.padding_6, range, value, display)

  return offset + length, value
end

-- Aggressor Side
cme_futures_mdp3_sbe_v1_13.aggressor_side = {}

-- Size: Aggressor Side
cme_futures_mdp3_sbe_v1_13.aggressor_side.size = 1

-- Display: Aggressor Side
cme_futures_mdp3_sbe_v1_13.aggressor_side.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Md Trade Entry I D u Int 32
cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32 = {}

-- Size: Md Trade Entry I D u Int 32
cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32.size = 4

-- Display: Md Trade Entry I D u Int 32
cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32.display = function(value)
  return "Md Trade Entry I D u Int 32: "..value
end

-- Dissect: Md Trade Entry I D u Int 32
cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_trade_entry_i_d_u_int_32, range, value, display)

  return offset + length, value
end

-- Number Of Orders
cme_futures_mdp3_sbe_v1_13.number_of_orders = {}

-- Size: Number Of Orders
cme_futures_mdp3_sbe_v1_13.number_of_orders.size = 4

-- Display: Number Of Orders
cme_futures_mdp3_sbe_v1_13.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
cme_futures_mdp3_sbe_v1_13.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Trade Summary Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_group = {}

-- Size: M D Incremental Refresh Trade Summary Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_13.number_of_orders.size + 
  cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32.size + 
  cme_futures_mdp3_sbe_v1_13.aggressor_side.size + 
  cme_futures_mdp3_sbe_v1_13.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.padding_6.size

-- Display: M D Incremental Refresh Trade Summary Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary Long Qty Group Index
  if m_d_incremental_refresh_trade_summary_long_qty_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_group_index, m_d_incremental_refresh_trade_summary_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_13.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size u Int 64: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_size_u_int_64 = cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index, number_of_orders = cme_futures_mdp3_sbe_v1_13.number_of_orders.dissect(buffer, index, packet, parent)

  -- Md Trade Entry I D u Int 32: 4 Byte Unsigned Fixed Width Integer
  index, md_trade_entry_i_d_u_int_32 = cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_mdp3_sbe_v1_13.aggressor_side.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_13.md_update_action.dissect(buffer, index, packet, parent)

  -- Padding 6: 6 Byte
  index, padding_6 = cme_futures_mdp3_sbe_v1_13.padding_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_group_index)
  if show.m_d_incremental_refresh_trade_summary_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_group_index)
  end
end

-- M D Incremental Refresh Trade Summary Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_groups = {}

-- Calculate size of: M D Incremental Refresh Trade Summary Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_long_qty_group_count * 40

  return index
end

-- Display: M D Incremental Refresh Trade Summary Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary Long Qty Group
  for m_d_incremental_refresh_trade_summary_long_qty_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_long_qty_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_long_qty_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Trade Summary Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary_long_qty = {}

-- Calculate size of: Md Incremental Refresh Trade Summary Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary_long_qty.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Summary Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary_long_qty.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Summary Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary_long_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary Long Qty Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_long_qty_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_groups.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary Long Qty Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_long_qty_order_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_long_qty_order_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Summary Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary_long_qty.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_summary_long_qty then
    local length = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary_long_qty.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary_long_qty.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_trade_summary_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary_long_qty.fields(buffer, offset, packet, parent)
end

-- Order Update Action
cme_futures_mdp3_sbe_v1_13.order_update_action = {}

-- Size: Order Update Action
cme_futures_mdp3_sbe_v1_13.order_update_action.size = 1

-- Display: Order Update Action
cme_futures_mdp3_sbe_v1_13.order_update_action.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.order_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.order_update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.order_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.order_update_action, range, value, display)

  return offset + length, value
end

-- Reference Id
cme_futures_mdp3_sbe_v1_13.reference_id = {}

-- Size: Reference Id
cme_futures_mdp3_sbe_v1_13.reference_id.size = 1

-- Display: Reference Id
cme_futures_mdp3_sbe_v1_13.reference_id.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Reference Id: No Value"
  end

  return "Reference Id: "..value
end

-- Dissect: Reference Id
cme_futures_mdp3_sbe_v1_13.reference_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.reference_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.reference_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.reference_id, range, value, display)

  return offset + length, value
end

-- Md Display Qty Optional
cme_futures_mdp3_sbe_v1_13.md_display_qty_optional = {}

-- Size: Md Display Qty Optional
cme_futures_mdp3_sbe_v1_13.md_display_qty_optional.size = 4

-- Display: Md Display Qty Optional
cme_futures_mdp3_sbe_v1_13.md_display_qty_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Display Qty Optional: No Value"
  end

  return "Md Display Qty Optional: "..value
end

-- Dissect: Md Display Qty Optional
cme_futures_mdp3_sbe_v1_13.md_display_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_display_qty_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.md_display_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_display_qty_optional, range, value, display)

  return offset + length, value
end

-- Md Order Priority Optional
cme_futures_mdp3_sbe_v1_13.md_order_priority_optional = {}

-- Size: Md Order Priority Optional
cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.size = 8

-- Display: Md Order Priority Optional
cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Md Order Priority Optional: No Value"
  end

  return "Md Order Priority Optional: "..value
end

-- Dissect: Md Order Priority Optional
cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_order_priority_optional, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Book Long Qty Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_group = {}

-- Size: M D Incremental Refresh Book Long Qty Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_group.size =
  cme_futures_mdp3_sbe_v1_13.order_id.size + 
  cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_display_qty_optional.size + 
  cme_futures_mdp3_sbe_v1_13.reference_id.size + 
  cme_futures_mdp3_sbe_v1_13.order_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.padding_2.size

-- Display: M D Incremental Refresh Book Long Qty Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Long Qty Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book Long Qty Order Group Index
  if m_d_incremental_refresh_book_long_qty_order_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_order_group_index, m_d_incremental_refresh_book_long_qty_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- Md Order Priority Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority_optional = cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.dissect(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = cme_futures_mdp3_sbe_v1_13.md_display_qty_optional.dissect(buffer, index, packet, parent)

  -- Reference Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, reference_id = cme_futures_mdp3_sbe_v1_13.reference_id.dissect(buffer, index, packet, parent)

  -- Order Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_update_action = cme_futures_mdp3_sbe_v1_13.order_update_action.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book Long Qty Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_order_group_index)
  if show.m_d_incremental_refresh_book_long_qty_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_order_group_index)
  end
end

-- M D Incremental Refresh Book Long Qty Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_groups = {}

-- Calculate size of: M D Incremental Refresh Book Long Qty Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size_8_byte.size

  -- Calculate field size from count
  local m_d_incremental_refresh_book_long_qty_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_long_qty_order_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Book Long Qty Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Long Qty Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_13.group_size_8_byte.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book Long Qty Order Group
  for m_d_incremental_refresh_book_long_qty_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_long_qty_order_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_book_long_qty_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book Long Qty Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_long_qty_order_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_groups.fields(buffer, offset, packet, parent)
end

-- Padding 1
cme_futures_mdp3_sbe_v1_13.padding_1 = {}

-- Size: Padding 1
cme_futures_mdp3_sbe_v1_13.padding_1.size = 1

-- Display: Padding 1
cme_futures_mdp3_sbe_v1_13.padding_1.display = function(value)
  return "Padding 1: "..value
end

-- Dissect: Padding 1
cme_futures_mdp3_sbe_v1_13.padding_1.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_13.padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.padding_1, range, value, display)

  return offset + length, value
end

-- Md Entry Type Book
cme_futures_mdp3_sbe_v1_13.md_entry_type_book = {}

-- Size: Md Entry Type Book
cme_futures_mdp3_sbe_v1_13.md_entry_type_book.size = 1

-- Display: Md Entry Type Book
cme_futures_mdp3_sbe_v1_13.md_entry_type_book.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.md_entry_type_book.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_entry_type_book.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_13.md_entry_type_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_type_book, range, value, display)

  return offset + length, value
end

-- Md Price Level
cme_futures_mdp3_sbe_v1_13.md_price_level = {}

-- Size: Md Price Level
cme_futures_mdp3_sbe_v1_13.md_price_level.size = 1

-- Display: Md Price Level
cme_futures_mdp3_sbe_v1_13.md_price_level.display = function(value)
  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
cme_futures_mdp3_sbe_v1_13.md_price_level.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_price_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.md_price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Book Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_group = {}

-- Size: M D Incremental Refresh Book Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_price_level.size + 
  cme_futures_mdp3_sbe_v1_13.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_book.size + 
  cme_futures_mdp3_sbe_v1_13.padding_1.size

-- Display: M D Incremental Refresh Book Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book Long Qty Group Index
  if m_d_incremental_refresh_book_long_qty_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_group_index, m_d_incremental_refresh_book_long_qty_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size u Int 64 Null: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size_u_int_64_null = cme_futures_mdp3_sbe_v1_13.md_entry_size_u_int_64_null.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.dissect(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = cme_futures_mdp3_sbe_v1_13.md_price_level.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_13.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 7 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_13.md_entry_type_book.dissect(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = cme_futures_mdp3_sbe_v1_13.padding_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book Long Qty Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_group_index)
  if show.m_d_incremental_refresh_book_long_qty_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_long_qty_group_index)
  end
end

-- M D Incremental Refresh Book Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_groups = {}

-- Calculate size of: M D Incremental Refresh Book Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_book_long_qty_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_long_qty_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Book Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book Long Qty Group
  for m_d_incremental_refresh_book_long_qty_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_long_qty_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_book_long_qty_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book Long Qty Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_long_qty_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_long_qty_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Book Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book_long_qty = {}

-- Calculate size of: Md Incremental Refresh Book Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book_long_qty.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Book Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book_long_qty.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Book Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book_long_qty.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Book Long Qty Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_long_qty_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_groups.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Book Long Qty Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_long_qty_order_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_long_qty_order_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Book Long Qty
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book_long_qty.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_book_long_qty then
    local length = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book_long_qty.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book_long_qty.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_book_long_qty, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book_long_qty.fields(buffer, offset, packet, parent)
end

-- Security Alt Id
cme_futures_mdp3_sbe_v1_13.security_alt_id = {}

-- Size: Security Alt Id
cme_futures_mdp3_sbe_v1_13.security_alt_id.size = 12

-- Display: Security Alt Id
cme_futures_mdp3_sbe_v1_13.security_alt_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id: No Value"
  end

  return "Security Alt Id: "..value
end

-- Dissect: Security Alt Id
cme_futures_mdp3_sbe_v1_13.security_alt_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.security_alt_id.size
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

  local display = cme_futures_mdp3_sbe_v1_13.security_alt_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_alt_id, range, value, display)

  return offset + length, value
end

-- Maturity Date
cme_futures_mdp3_sbe_v1_13.maturity_date = {}

-- Size: Maturity Date
cme_futures_mdp3_sbe_v1_13.maturity_date.size = 2

-- Display: Maturity Date
cme_futures_mdp3_sbe_v1_13.maturity_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cme_futures_mdp3_sbe_v1_13.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Settl Date
cme_futures_mdp3_sbe_v1_13.settl_date = {}

-- Size: Settl Date
cme_futures_mdp3_sbe_v1_13.settl_date.size = 2

-- Display: Settl Date
cme_futures_mdp3_sbe_v1_13.settl_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Settl Date: No Value"
  end

  return "Settl Date: "..value
end

-- Dissect: Settl Date
cme_futures_mdp3_sbe_v1_13.settl_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.settl_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.settl_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Trading Sessions Group
cme_futures_mdp3_sbe_v1_13.trading_sessions_group = {}

-- Size: Trading Sessions Group
cme_futures_mdp3_sbe_v1_13.trading_sessions_group.size =
  cme_futures_mdp3_sbe_v1_13.trade_date.size + 
  cme_futures_mdp3_sbe_v1_13.settl_date.size + 
  cme_futures_mdp3_sbe_v1_13.maturity_date.size + 
  cme_futures_mdp3_sbe_v1_13.security_alt_id.size

-- Display: Trading Sessions Group
cme_futures_mdp3_sbe_v1_13.trading_sessions_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Sessions Group
cme_futures_mdp3_sbe_v1_13.trading_sessions_group.fields = function(buffer, offset, packet, parent, trading_sessions_group_index)
  local index = offset

  -- Implicit Trading Sessions Group Index
  if trading_sessions_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.trading_sessions_group_index, trading_sessions_group_index)
    iteration:set_generated()
  end

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Settl Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settl_date = cme_futures_mdp3_sbe_v1_13.settl_date.dissect(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_mdp3_sbe_v1_13.maturity_date.dissect(buffer, index, packet, parent)

  -- Security Alt Id: 12 Byte Ascii String
  index, security_alt_id = cme_futures_mdp3_sbe_v1_13.security_alt_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Sessions Group
cme_futures_mdp3_sbe_v1_13.trading_sessions_group.dissect = function(buffer, offset, packet, parent, trading_sessions_group_index)
  if show.trading_sessions_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.trading_sessions_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.trading_sessions_group.fields(buffer, offset, packet, parent, trading_sessions_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.trading_sessions_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.trading_sessions_group.fields(buffer, offset, packet, parent, trading_sessions_group_index)
  end
end

-- Trading Sessions Groups
cme_futures_mdp3_sbe_v1_13.trading_sessions_groups = {}

-- Calculate size of: Trading Sessions Groups
cme_futures_mdp3_sbe_v1_13.trading_sessions_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local trading_sessions_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + trading_sessions_group_count * 18

  return index
end

-- Display: Trading Sessions Groups
cme_futures_mdp3_sbe_v1_13.trading_sessions_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Sessions Groups
cme_futures_mdp3_sbe_v1_13.trading_sessions_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Trading Sessions Group
  for trading_sessions_group_index = 1, num_in_group do
    index, trading_sessions_group = cme_futures_mdp3_sbe_v1_13.trading_sessions_group.dissect(buffer, index, packet, parent, trading_sessions_group_index)
  end

  return index
end

-- Dissect: Trading Sessions Groups
cme_futures_mdp3_sbe_v1_13.trading_sessions_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trading_sessions_groups then
    local length = cme_futures_mdp3_sbe_v1_13.trading_sessions_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.trading_sessions_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.trading_sessions_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.trading_sessions_groups.fields(buffer, offset, packet, parent)
end

-- Min Lot Size Decimal Qty
cme_futures_mdp3_sbe_v1_13.min_lot_size_decimal_qty = {}

-- Size: Min Lot Size Decimal Qty
cme_futures_mdp3_sbe_v1_13.min_lot_size_decimal_qty.size = 4

-- Display: Min Lot Size Decimal Qty
cme_futures_mdp3_sbe_v1_13.min_lot_size_decimal_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Min Lot Size Decimal Qty: No Value"
  end

  return "Min Lot Size Decimal Qty: "..value
end

-- Translate: Min Lot Size Decimal Qty
cme_futures_mdp3_sbe_v1_13.min_lot_size_decimal_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Min Lot Size Decimal Qty
cme_futures_mdp3_sbe_v1_13.min_lot_size_decimal_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.min_lot_size_decimal_qty.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cme_futures_mdp3_sbe_v1_13.min_lot_size_decimal_qty.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.min_lot_size_decimal_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.min_lot_size_decimal_qty, range, value, display)

  return offset + length, value
end

-- Lot Type
cme_futures_mdp3_sbe_v1_13.lot_type = {}

-- Size: Lot Type
cme_futures_mdp3_sbe_v1_13.lot_type.size = 1

-- Display: Lot Type
cme_futures_mdp3_sbe_v1_13.lot_type.display = function(value)
  return "Lot Type: "..value
end

-- Dissect: Lot Type
cme_futures_mdp3_sbe_v1_13.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.lot_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Lot Type Rules Group
cme_futures_mdp3_sbe_v1_13.lot_type_rules_group = {}

-- Size: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_13.lot_type_rules_group.size =
  cme_futures_mdp3_sbe_v1_13.lot_type.size + 
  cme_futures_mdp3_sbe_v1_13.min_lot_size_decimal_qty.size

-- Display: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_13.lot_type_rules_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_13.lot_type_rules_group.fields = function(buffer, offset, packet, parent, lot_type_rules_group_index)
  local index = offset

  -- Implicit Lot Type Rules Group Index
  if lot_type_rules_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.lot_type_rules_group_index, lot_type_rules_group_index)
    iteration:set_generated()
  end

  -- Lot Type: 1 Byte Signed Fixed Width Integer
  index, lot_type = cme_futures_mdp3_sbe_v1_13.lot_type.dissect(buffer, index, packet, parent)

  -- Min Lot Size Decimal Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, min_lot_size_decimal_qty = cme_futures_mdp3_sbe_v1_13.min_lot_size_decimal_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Lot Type Rules Group
cme_futures_mdp3_sbe_v1_13.lot_type_rules_group.dissect = function(buffer, offset, packet, parent, lot_type_rules_group_index)
  if show.lot_type_rules_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.lot_type_rules_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.lot_type_rules_group.fields(buffer, offset, packet, parent, lot_type_rules_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.lot_type_rules_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.lot_type_rules_group.fields(buffer, offset, packet, parent, lot_type_rules_group_index)
  end
end

-- Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups = {}

-- Calculate size of: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local lot_type_rules_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + lot_type_rules_group_count * 5

  return index
end

-- Display: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Lot Type Rules Group
  for lot_type_rules_group_index = 1, num_in_group do
    index, lot_type_rules_group = cme_futures_mdp3_sbe_v1_13.lot_type_rules_group.dissect(buffer, index, packet, parent, lot_type_rules_group_index)
  end

  return index
end

-- Dissect: Lot Type Rules Groups
cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.lot_type_rules_groups then
    local length = cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.lot_type_rules_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.fields(buffer, offset, packet, parent)
end

-- Inst Attrib Value
cme_futures_mdp3_sbe_v1_13.inst_attrib_value = {}

-- Size: Inst Attrib Value
cme_futures_mdp3_sbe_v1_13.inst_attrib_value.size = 4

-- Display: Inst Attrib Value
cme_futures_mdp3_sbe_v1_13.inst_attrib_value.display = function(buffer, packet, parent)
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
cme_futures_mdp3_sbe_v1_13.inst_attrib_value.bits = function(buffer, offset, packet, parent)

  -- Otc Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.otc_eligible, buffer(offset, 4))

  -- Efr Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.efr_eligible, buffer(offset, 4))

  -- Efs Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.efs_eligible, buffer(offset, 4))

  -- Ebf Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.ebf_eligible, buffer(offset, 4))

  -- Efp Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.efp_eligible, buffer(offset, 4))

  -- Block Trade Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.block_trade_eligible, buffer(offset, 4))

  -- Order Cross Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.order_cross_eligible, buffer(offset, 4))

  -- Electronic Match Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.electronic_match_eligible, buffer(offset, 4))

  -- Decaying Product Eligibility: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.decaying_product_eligibility, buffer(offset, 4))

  -- Zero Price Outright Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.zero_price_outright_eligible, buffer(offset, 4))

  -- Rfq Cross Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.rfq_cross_eligible, buffer(offset, 4))

  -- Volatility Quoted Option: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.volatility_quoted_option, buffer(offset, 4))

  -- Is Fractional: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.is_fractional, buffer(offset, 4))

  -- Negative Price Outright Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.negative_price_outright_eligible, buffer(offset, 4))

  -- Negative Strike Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.negative_strike_eligible, buffer(offset, 4))

  -- ILink Indicative Mass Quoting Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.ilink_indicative_mass_quoting_eligible, buffer(offset, 4))

  -- Is Aon Instrument: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.is_aon_instrument, buffer(offset, 4))

  -- Inverted Book: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.inverted_book, buffer(offset, 4))

  -- Variable Cab Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.variable_cab_eligible, buffer(offset, 4))

  -- Triangulation Eligible: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.triangulation_eligible, buffer(offset, 4))

  -- Implied Matching Eligibility: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.implied_matching_eligibility, buffer(offset, 4))

  -- Gt Orders Eligibility: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.gt_orders_eligibility, buffer(offset, 4))

  -- Daily Product Eligibility: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.daily_product_eligibility, buffer(offset, 4))

  -- Variable Product Eligibility: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.variable_product_eligibility, buffer(offset, 4))

  -- Reserved 8: 8 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.reserved_8, buffer(offset, 4))
end

-- Dissect: Inst Attrib Value
cme_futures_mdp3_sbe_v1_13.inst_attrib_value.dissect = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_13.inst_attrib_value.display(range, packet, parent)
  local element = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.inst_attrib_value, range, display)

  if show.inst_attrib_value then
    cme_futures_mdp3_sbe_v1_13.inst_attrib_value.bits(buffer, offset, packet, element)
  end

  return offset + 4, range
end

-- Inst Attrib Group
cme_futures_mdp3_sbe_v1_13.inst_attrib_group = {}

-- Size: Inst Attrib Group
cme_futures_mdp3_sbe_v1_13.inst_attrib_group.size =
  cme_futures_mdp3_sbe_v1_13.inst_attrib_value.size

-- Display: Inst Attrib Group
cme_futures_mdp3_sbe_v1_13.inst_attrib_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inst Attrib Group
cme_futures_mdp3_sbe_v1_13.inst_attrib_group.fields = function(buffer, offset, packet, parent, inst_attrib_group_index)
  local index = offset

  -- Implicit Inst Attrib Group Index
  if inst_attrib_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.inst_attrib_group_index, inst_attrib_group_index)
    iteration:set_generated()
  end

  -- Inst Attrib Value: Struct of 25 fields
  index, inst_attrib_value = cme_futures_mdp3_sbe_v1_13.inst_attrib_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inst Attrib Group
cme_futures_mdp3_sbe_v1_13.inst_attrib_group.dissect = function(buffer, offset, packet, parent, inst_attrib_group_index)
  if show.inst_attrib_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.inst_attrib_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.inst_attrib_group.fields(buffer, offset, packet, parent, inst_attrib_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.inst_attrib_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.inst_attrib_group.fields(buffer, offset, packet, parent, inst_attrib_group_index)
  end
end

-- Inst Attrib Groups
cme_futures_mdp3_sbe_v1_13.inst_attrib_groups = {}

-- Calculate size of: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local inst_attrib_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + inst_attrib_group_count * 4

  return index
end

-- Display: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Inst Attrib Group
  for inst_attrib_group_index = 1, num_in_group do
    index, inst_attrib_group = cme_futures_mdp3_sbe_v1_13.inst_attrib_group.dissect(buffer, index, packet, parent, inst_attrib_group_index)
  end

  return index
end

-- Dissect: Inst Attrib Groups
cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.inst_attrib_groups then
    local length = cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.inst_attrib_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.fields(buffer, offset, packet, parent)
end

-- Market Depth
cme_futures_mdp3_sbe_v1_13.market_depth = {}

-- Size: Market Depth
cme_futures_mdp3_sbe_v1_13.market_depth.size = 1

-- Display: Market Depth
cme_futures_mdp3_sbe_v1_13.market_depth.display = function(value)
  return "Market Depth: "..value
end

-- Dissect: Market Depth
cme_futures_mdp3_sbe_v1_13.market_depth.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.market_depth.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.market_depth, range, value, display)

  return offset + length, value
end

-- Md Feed Type
cme_futures_mdp3_sbe_v1_13.md_feed_type = {}

-- Size: Md Feed Type
cme_futures_mdp3_sbe_v1_13.md_feed_type.size = 3

-- Display: Md Feed Type
cme_futures_mdp3_sbe_v1_13.md_feed_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Feed Type: No Value"
  end

  return "Md Feed Type: "..value
end

-- Dissect: Md Feed Type
cme_futures_mdp3_sbe_v1_13.md_feed_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_feed_type.size
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

  local display = cme_futures_mdp3_sbe_v1_13.md_feed_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_feed_type, range, value, display)

  return offset + length, value
end

-- M D Feed Types Group
cme_futures_mdp3_sbe_v1_13.m_d_feed_types_group = {}

-- Size: M D Feed Types Group
cme_futures_mdp3_sbe_v1_13.m_d_feed_types_group.size =
  cme_futures_mdp3_sbe_v1_13.md_feed_type.size + 
  cme_futures_mdp3_sbe_v1_13.market_depth.size

-- Display: M D Feed Types Group
cme_futures_mdp3_sbe_v1_13.m_d_feed_types_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Feed Types Group
cme_futures_mdp3_sbe_v1_13.m_d_feed_types_group.fields = function(buffer, offset, packet, parent, m_d_feed_types_group_index)
  local index = offset

  -- Implicit M D Feed Types Group Index
  if m_d_feed_types_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_feed_types_group_index, m_d_feed_types_group_index)
    iteration:set_generated()
  end

  -- Md Feed Type: 3 Byte Ascii String
  index, md_feed_type = cme_futures_mdp3_sbe_v1_13.md_feed_type.dissect(buffer, index, packet, parent)

  -- Market Depth: 1 Byte Signed Fixed Width Integer
  index, market_depth = cme_futures_mdp3_sbe_v1_13.market_depth.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Feed Types Group
cme_futures_mdp3_sbe_v1_13.m_d_feed_types_group.dissect = function(buffer, offset, packet, parent, m_d_feed_types_group_index)
  if show.m_d_feed_types_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_feed_types_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_feed_types_group.fields(buffer, offset, packet, parent, m_d_feed_types_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_feed_types_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_feed_types_group.fields(buffer, offset, packet, parent, m_d_feed_types_group_index)
  end
end

-- M D Feed Types Groups
cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups = {}

-- Calculate size of: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_feed_types_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_feed_types_group_count * 4

  return index
end

-- Display: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Feed Types Group
  for m_d_feed_types_group_index = 1, num_in_group do
    index, m_d_feed_types_group = cme_futures_mdp3_sbe_v1_13.m_d_feed_types_group.dissect(buffer, index, packet, parent, m_d_feed_types_group_index)
  end

  return index
end

-- Dissect: M D Feed Types Groups
cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_feed_types_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_feed_types_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.fields(buffer, offset, packet, parent)
end

-- Event Time
cme_futures_mdp3_sbe_v1_13.event_time = {}

-- Size: Event Time
cme_futures_mdp3_sbe_v1_13.event_time.size = 8

-- Display: Event Time
cme_futures_mdp3_sbe_v1_13.event_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Event Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Event Time
cme_futures_mdp3_sbe_v1_13.event_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.event_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.event_time, range, value, display)

  return offset + length, value
end

-- Event Type
cme_futures_mdp3_sbe_v1_13.event_type = {}

-- Size: Event Type
cme_futures_mdp3_sbe_v1_13.event_type.size = 1

-- Display: Event Type
cme_futures_mdp3_sbe_v1_13.event_type.display = function(value)
  if value == 5 then
    return "Event Type: Activation (5)"
  end
  if value == 7 then
    return "Event Type: Last Eligible Trade Date (7)"
  end

  return "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
cme_futures_mdp3_sbe_v1_13.event_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.event_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.event_type, range, value, display)

  return offset + length, value
end

-- Events Group
cme_futures_mdp3_sbe_v1_13.events_group = {}

-- Size: Events Group
cme_futures_mdp3_sbe_v1_13.events_group.size =
  cme_futures_mdp3_sbe_v1_13.event_type.size + 
  cme_futures_mdp3_sbe_v1_13.event_time.size

-- Display: Events Group
cme_futures_mdp3_sbe_v1_13.events_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events Group
cme_futures_mdp3_sbe_v1_13.events_group.fields = function(buffer, offset, packet, parent, events_group_index)
  local index = offset

  -- Implicit Events Group Index
  if events_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.events_group_index, events_group_index)
    iteration:set_generated()
  end

  -- Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, event_type = cme_futures_mdp3_sbe_v1_13.event_type.dissect(buffer, index, packet, parent)

  -- Event Time: 8 Byte Unsigned Fixed Width Integer
  index, event_time = cme_futures_mdp3_sbe_v1_13.event_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Events Group
cme_futures_mdp3_sbe_v1_13.events_group.dissect = function(buffer, offset, packet, parent, events_group_index)
  if show.events_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.events_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.events_group.fields(buffer, offset, packet, parent, events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.events_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.events_group.fields(buffer, offset, packet, parent, events_group_index)
  end
end

-- Events Groups
cme_futures_mdp3_sbe_v1_13.events_groups = {}

-- Calculate size of: Events Groups
cme_futures_mdp3_sbe_v1_13.events_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local events_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + events_group_count * 9

  return index
end

-- Display: Events Groups
cme_futures_mdp3_sbe_v1_13.events_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Events Groups
cme_futures_mdp3_sbe_v1_13.events_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Events Group
  for events_group_index = 1, num_in_group do
    index, events_group = cme_futures_mdp3_sbe_v1_13.events_group.dissect(buffer, index, packet, parent, events_group_index)
  end

  return index
end

-- Dissect: Events Groups
cme_futures_mdp3_sbe_v1_13.events_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.events_groups then
    local length = cme_futures_mdp3_sbe_v1_13.events_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.events_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.events_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.events_groups.fields(buffer, offset, packet, parent)
end

-- Max Bid Ask Constraint
cme_futures_mdp3_sbe_v1_13.max_bid_ask_constraint = {}

-- Size: Max Bid Ask Constraint
cme_futures_mdp3_sbe_v1_13.max_bid_ask_constraint.size = 8

-- Display: Max Bid Ask Constraint
cme_futures_mdp3_sbe_v1_13.max_bid_ask_constraint.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Max Bid Ask Constraint: No Value"
  end

  return "Max Bid Ask Constraint: "..value
end

-- Translate: Max Bid Ask Constraint
cme_futures_mdp3_sbe_v1_13.max_bid_ask_constraint.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Max Bid Ask Constraint
cme_futures_mdp3_sbe_v1_13.max_bid_ask_constraint.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.max_bid_ask_constraint.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.max_bid_ask_constraint.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.max_bid_ask_constraint.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.max_bid_ask_constraint, range, value, display)

  return offset + length, value
end

-- Alt Price Increment Constraint
cme_futures_mdp3_sbe_v1_13.alt_price_increment_constraint = {}

-- Size: Alt Price Increment Constraint
cme_futures_mdp3_sbe_v1_13.alt_price_increment_constraint.size = 8

-- Display: Alt Price Increment Constraint
cme_futures_mdp3_sbe_v1_13.alt_price_increment_constraint.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Alt Price Increment Constraint: No Value"
  end

  return "Alt Price Increment Constraint: "..value
end

-- Translate: Alt Price Increment Constraint
cme_futures_mdp3_sbe_v1_13.alt_price_increment_constraint.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Alt Price Increment Constraint
cme_futures_mdp3_sbe_v1_13.alt_price_increment_constraint.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.alt_price_increment_constraint.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.alt_price_increment_constraint.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.alt_price_increment_constraint.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.alt_price_increment_constraint, range, value, display)

  return offset + length, value
end

-- Alt Min Quote Life
cme_futures_mdp3_sbe_v1_13.alt_min_quote_life = {}

-- Size: Alt Min Quote Life
cme_futures_mdp3_sbe_v1_13.alt_min_quote_life.size = 4

-- Display: Alt Min Quote Life
cme_futures_mdp3_sbe_v1_13.alt_min_quote_life.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Alt Min Quote Life: No Value"
  end

  return "Alt Min Quote Life: "..value
end

-- Dissect: Alt Min Quote Life
cme_futures_mdp3_sbe_v1_13.alt_min_quote_life.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.alt_min_quote_life.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.alt_min_quote_life.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.alt_min_quote_life, range, value, display)

  return offset + length, value
end

-- Alt Min Price Increment
cme_futures_mdp3_sbe_v1_13.alt_min_price_increment = {}

-- Size: Alt Min Price Increment
cme_futures_mdp3_sbe_v1_13.alt_min_price_increment.size = 8

-- Display: Alt Min Price Increment
cme_futures_mdp3_sbe_v1_13.alt_min_price_increment.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Alt Min Price Increment: No Value"
  end

  return "Alt Min Price Increment: "..value
end

-- Translate: Alt Min Price Increment
cme_futures_mdp3_sbe_v1_13.alt_min_price_increment.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Alt Min Price Increment
cme_futures_mdp3_sbe_v1_13.alt_min_price_increment.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.alt_min_price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.alt_min_price_increment.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.alt_min_price_increment.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.alt_min_price_increment, range, value, display)

  return offset + length, value
end

-- Settlement Locale
cme_futures_mdp3_sbe_v1_13.settlement_locale = {}

-- Size: Settlement Locale
cme_futures_mdp3_sbe_v1_13.settlement_locale.size = 8

-- Display: Settlement Locale
cme_futures_mdp3_sbe_v1_13.settlement_locale.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settlement Locale: No Value"
  end

  return "Settlement Locale: "..value
end

-- Dissect: Settlement Locale
cme_futures_mdp3_sbe_v1_13.settlement_locale.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.settlement_locale.size
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

  local display = cme_futures_mdp3_sbe_v1_13.settlement_locale.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.settlement_locale, range, value, display)

  return offset + length, value
end

-- Week
cme_futures_mdp3_sbe_v1_13.week = {}

-- Size: Week
cme_futures_mdp3_sbe_v1_13.week.size = 1

-- Display: Week
cme_futures_mdp3_sbe_v1_13.week.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value"
  end

  return "Week: "..value
end

-- Dissect: Week
cme_futures_mdp3_sbe_v1_13.week.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.week.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.week.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.week, range, value, display)

  return offset + length, value
end

-- Day
cme_futures_mdp3_sbe_v1_13.day = {}

-- Size: Day
cme_futures_mdp3_sbe_v1_13.day.size = 1

-- Display: Day
cme_futures_mdp3_sbe_v1_13.day.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value"
  end

  return "Day: "..value
end

-- Dissect: Day
cme_futures_mdp3_sbe_v1_13.day.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.day.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.day, range, value, display)

  return offset + length, value
end

-- Month
cme_futures_mdp3_sbe_v1_13.month = {}

-- Size: Month
cme_futures_mdp3_sbe_v1_13.month.size = 1

-- Display: Month
cme_futures_mdp3_sbe_v1_13.month.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value"
  end

  return "Month: "..value
end

-- Dissect: Month
cme_futures_mdp3_sbe_v1_13.month.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.month.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.month, range, value, display)

  return offset + length, value
end

-- Year
cme_futures_mdp3_sbe_v1_13.year = {}

-- Size: Year
cme_futures_mdp3_sbe_v1_13.year.size = 2

-- Display: Year
cme_futures_mdp3_sbe_v1_13.year.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value"
  end

  return "Year: "..value
end

-- Dissect: Year
cme_futures_mdp3_sbe_v1_13.year.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.year.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.year, range, value, display)

  return offset + length, value
end

-- Maturity Month Year
cme_futures_mdp3_sbe_v1_13.maturity_month_year = {}

-- Size: Maturity Month Year
cme_futures_mdp3_sbe_v1_13.maturity_month_year.size =
  cme_futures_mdp3_sbe_v1_13.year.size + 
  cme_futures_mdp3_sbe_v1_13.month.size + 
  cme_futures_mdp3_sbe_v1_13.day.size + 
  cme_futures_mdp3_sbe_v1_13.week.size

-- Display: Maturity Month Year
cme_futures_mdp3_sbe_v1_13.maturity_month_year.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maturity Month Year
cme_futures_mdp3_sbe_v1_13.maturity_month_year.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = cme_futures_mdp3_sbe_v1_13.year.dissect(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = cme_futures_mdp3_sbe_v1_13.month.dissect(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = cme_futures_mdp3_sbe_v1_13.day.dissect(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = cme_futures_mdp3_sbe_v1_13.week.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
cme_futures_mdp3_sbe_v1_13.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  if show.maturity_month_year then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.maturity_month_year, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.maturity_month_year.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.maturity_month_year.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.maturity_month_year.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Guid
cme_futures_mdp3_sbe_v1_13.instrument_guid = {}

-- Size: Instrument Guid
cme_futures_mdp3_sbe_v1_13.instrument_guid.size = 8

-- Display: Instrument Guid
cme_futures_mdp3_sbe_v1_13.instrument_guid.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Instrument Guid: No Value"
  end

  return "Instrument Guid: "..value
end

-- Dissect: Instrument Guid
cme_futures_mdp3_sbe_v1_13.instrument_guid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.instrument_guid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.instrument_guid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.instrument_guid, range, value, display)

  return offset + length, value
end

-- Max Price Discretion Offset
cme_futures_mdp3_sbe_v1_13.max_price_discretion_offset = {}

-- Size: Max Price Discretion Offset
cme_futures_mdp3_sbe_v1_13.max_price_discretion_offset.size = 8

-- Display: Max Price Discretion Offset
cme_futures_mdp3_sbe_v1_13.max_price_discretion_offset.display = function(value)
  return "Max Price Discretion Offset: "..value
end

-- Translate: Max Price Discretion Offset
cme_futures_mdp3_sbe_v1_13.max_price_discretion_offset.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Max Price Discretion Offset
cme_futures_mdp3_sbe_v1_13.max_price_discretion_offset.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.max_price_discretion_offset.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.max_price_discretion_offset.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.max_price_discretion_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.max_price_discretion_offset, range, value, display)

  return offset + length, value
end

-- Min Quote Life
cme_futures_mdp3_sbe_v1_13.min_quote_life = {}

-- Size: Min Quote Life
cme_futures_mdp3_sbe_v1_13.min_quote_life.size = 4

-- Display: Min Quote Life
cme_futures_mdp3_sbe_v1_13.min_quote_life.display = function(value)
  return "Min Quote Life: "..value
end

-- Dissect: Min Quote Life
cme_futures_mdp3_sbe_v1_13.min_quote_life.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.min_quote_life.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.min_quote_life.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.min_quote_life, range, value, display)

  return offset + length, value
end

-- Fix Rate Local Time Zone
cme_futures_mdp3_sbe_v1_13.fix_rate_local_time_zone = {}

-- Size: Fix Rate Local Time Zone
cme_futures_mdp3_sbe_v1_13.fix_rate_local_time_zone.size = 20

-- Display: Fix Rate Local Time Zone
cme_futures_mdp3_sbe_v1_13.fix_rate_local_time_zone.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Rate Local Time Zone: No Value"
  end

  return "Fix Rate Local Time Zone: "..value
end

-- Dissect: Fix Rate Local Time Zone
cme_futures_mdp3_sbe_v1_13.fix_rate_local_time_zone.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.fix_rate_local_time_zone.size
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

  local display = cme_futures_mdp3_sbe_v1_13.fix_rate_local_time_zone.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.fix_rate_local_time_zone, range, value, display)

  return offset + length, value
end

-- Fix Rate Local Time
cme_futures_mdp3_sbe_v1_13.fix_rate_local_time = {}

-- Size: Fix Rate Local Time
cme_futures_mdp3_sbe_v1_13.fix_rate_local_time.size = 8

-- Display: Fix Rate Local Time
cme_futures_mdp3_sbe_v1_13.fix_rate_local_time.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Rate Local Time: No Value"
  end

  return "Fix Rate Local Time: "..value
end

-- Dissect: Fix Rate Local Time
cme_futures_mdp3_sbe_v1_13.fix_rate_local_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.fix_rate_local_time.size
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

  local display = cme_futures_mdp3_sbe_v1_13.fix_rate_local_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.fix_rate_local_time, range, value, display)

  return offset + length, value
end

-- Rate Source
cme_futures_mdp3_sbe_v1_13.rate_source = {}

-- Size: Rate Source
cme_futures_mdp3_sbe_v1_13.rate_source.size = 12

-- Display: Rate Source
cme_futures_mdp3_sbe_v1_13.rate_source.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Rate Source: No Value"
  end

  return "Rate Source: "..value
end

-- Dissect: Rate Source
cme_futures_mdp3_sbe_v1_13.rate_source.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.rate_source.size
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

  local display = cme_futures_mdp3_sbe_v1_13.rate_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.rate_source, range, value, display)

  return offset + length, value
end

-- Fx Benchmark Rate Fix
cme_futures_mdp3_sbe_v1_13.fx_benchmark_rate_fix = {}

-- Size: Fx Benchmark Rate Fix
cme_futures_mdp3_sbe_v1_13.fx_benchmark_rate_fix.size = 20

-- Display: Fx Benchmark Rate Fix
cme_futures_mdp3_sbe_v1_13.fx_benchmark_rate_fix.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fx Benchmark Rate Fix: No Value"
  end

  return "Fx Benchmark Rate Fix: "..value
end

-- Dissect: Fx Benchmark Rate Fix
cme_futures_mdp3_sbe_v1_13.fx_benchmark_rate_fix.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.fx_benchmark_rate_fix.size
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

  local display = cme_futures_mdp3_sbe_v1_13.fx_benchmark_rate_fix.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.fx_benchmark_rate_fix, range, value, display)

  return offset + length, value
end

-- Intervening Days
cme_futures_mdp3_sbe_v1_13.intervening_days = {}

-- Size: Intervening Days
cme_futures_mdp3_sbe_v1_13.intervening_days.size = 2

-- Display: Intervening Days
cme_futures_mdp3_sbe_v1_13.intervening_days.display = function(value)
  return "Intervening Days: "..value
end

-- Dissect: Intervening Days
cme_futures_mdp3_sbe_v1_13.intervening_days.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.intervening_days.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.intervening_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.intervening_days, range, value, display)

  return offset + length, value
end

-- Settl Type
cme_futures_mdp3_sbe_v1_13.settl_type = {}

-- Size: Settl Type
cme_futures_mdp3_sbe_v1_13.settl_type.size = 3

-- Display: Settl Type
cme_futures_mdp3_sbe_v1_13.settl_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settl Type: No Value"
  end

  return "Settl Type: "..value
end

-- Dissect: Settl Type
cme_futures_mdp3_sbe_v1_13.settl_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.settl_type.size
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

  local display = cme_futures_mdp3_sbe_v1_13.settl_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.settl_type, range, value, display)

  return offset + length, value
end

-- Fx Currency Symbol
cme_futures_mdp3_sbe_v1_13.fx_currency_symbol = {}

-- Size: Fx Currency Symbol
cme_futures_mdp3_sbe_v1_13.fx_currency_symbol.size = 7

-- Display: Fx Currency Symbol
cme_futures_mdp3_sbe_v1_13.fx_currency_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fx Currency Symbol: No Value"
  end

  return "Fx Currency Symbol: "..value
end

-- Dissect: Fx Currency Symbol
cme_futures_mdp3_sbe_v1_13.fx_currency_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.fx_currency_symbol.size
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

  local display = cme_futures_mdp3_sbe_v1_13.fx_currency_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.fx_currency_symbol, range, value, display)

  return offset + length, value
end

-- Financial Instrument Full Name
cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name = {}

-- Size: Financial Instrument Full Name
cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.size = 35

-- Display: Financial Instrument Full Name
cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Financial Instrument Full Name: No Value"
  end

  return "Financial Instrument Full Name: "..value
end

-- Dissect: Financial Instrument Full Name
cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.size
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

  local display = cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.financial_instrument_full_name, range, value, display)

  return offset + length, value
end

-- User Defined Instrument
cme_futures_mdp3_sbe_v1_13.user_defined_instrument = {}

-- Size: User Defined Instrument
cme_futures_mdp3_sbe_v1_13.user_defined_instrument.size = 1

-- Display: User Defined Instrument
cme_futures_mdp3_sbe_v1_13.user_defined_instrument.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Defined Instrument: No Value"
  end

  return "User Defined Instrument: "..value
end

-- Dissect: User Defined Instrument
cme_futures_mdp3_sbe_v1_13.user_defined_instrument.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.user_defined_instrument.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_13.user_defined_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.user_defined_instrument, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Qty
cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty = {}

-- Size: Unit Of Measure Qty
cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.size = 8

-- Display: Unit Of Measure Qty
cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Unit Of Measure Qty: No Value"
  end

  return "Unit Of Measure Qty: "..value
end

-- Translate: Unit Of Measure Qty
cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Unit Of Measure Qty
cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.unit_of_measure_qty, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
cme_futures_mdp3_sbe_v1_13.unit_of_measure = {}

-- Size: Unit Of Measure
cme_futures_mdp3_sbe_v1_13.unit_of_measure.size = 30

-- Display: Unit Of Measure
cme_futures_mdp3_sbe_v1_13.unit_of_measure.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure: No Value"
  end

  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
cme_futures_mdp3_sbe_v1_13.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.unit_of_measure.size
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

  local display = cme_futures_mdp3_sbe_v1_13.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Price Precision
cme_futures_mdp3_sbe_v1_13.price_precision = {}

-- Size: Price Precision
cme_futures_mdp3_sbe_v1_13.price_precision.size = 1

-- Display: Price Precision
cme_futures_mdp3_sbe_v1_13.price_precision.display = function(value)
  return "Price Precision: "..value
end

-- Dissect: Price Precision
cme_futures_mdp3_sbe_v1_13.price_precision.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.price_precision.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.price_precision.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.price_precision, range, value, display)

  return offset + length, value
end

-- Display Factor
cme_futures_mdp3_sbe_v1_13.display_factor = {}

-- Size: Display Factor
cme_futures_mdp3_sbe_v1_13.display_factor.size = 8

-- Display: Display Factor
cme_futures_mdp3_sbe_v1_13.display_factor.display = function(value)
  return "Display Factor: "..value
end

-- Translate: Display Factor
cme_futures_mdp3_sbe_v1_13.display_factor.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Display Factor
cme_futures_mdp3_sbe_v1_13.display_factor.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.display_factor.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.display_factor.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.display_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.display_factor, range, value, display)

  return offset + length, value
end

-- Min Price Increment
cme_futures_mdp3_sbe_v1_13.min_price_increment = {}

-- Size: Min Price Increment
cme_futures_mdp3_sbe_v1_13.min_price_increment.size = 8

-- Display: Min Price Increment
cme_futures_mdp3_sbe_v1_13.min_price_increment.display = function(value)
  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
cme_futures_mdp3_sbe_v1_13.min_price_increment.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Min Price Increment
cme_futures_mdp3_sbe_v1_13.min_price_increment.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.min_price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.min_price_increment.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.min_price_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Max Trade Vol
cme_futures_mdp3_sbe_v1_13.max_trade_vol = {}

-- Size: Max Trade Vol
cme_futures_mdp3_sbe_v1_13.max_trade_vol.size = 4

-- Display: Max Trade Vol
cme_futures_mdp3_sbe_v1_13.max_trade_vol.display = function(value)
  return "Max Trade Vol: "..value
end

-- Dissect: Max Trade Vol
cme_futures_mdp3_sbe_v1_13.max_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.max_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.max_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.max_trade_vol, range, value, display)

  return offset + length, value
end

-- Min Trade Vol
cme_futures_mdp3_sbe_v1_13.min_trade_vol = {}

-- Size: Min Trade Vol
cme_futures_mdp3_sbe_v1_13.min_trade_vol.size = 4

-- Display: Min Trade Vol
cme_futures_mdp3_sbe_v1_13.min_trade_vol.display = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
cme_futures_mdp3_sbe_v1_13.min_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.min_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.min_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Match Algorithm
cme_futures_mdp3_sbe_v1_13.match_algorithm = {}

-- Size: Match Algorithm
cme_futures_mdp3_sbe_v1_13.match_algorithm.size = 1

-- Display: Match Algorithm
cme_futures_mdp3_sbe_v1_13.match_algorithm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Match Algorithm: No Value"
  end

  return "Match Algorithm: "..value
end

-- Dissect: Match Algorithm
cme_futures_mdp3_sbe_v1_13.match_algorithm.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.match_algorithm.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_13.match_algorithm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.match_algorithm, range, value, display)

  return offset + length, value
end

-- Price Quote Currency
cme_futures_mdp3_sbe_v1_13.price_quote_currency = {}

-- Size: Price Quote Currency
cme_futures_mdp3_sbe_v1_13.price_quote_currency.size = 3

-- Display: Price Quote Currency
cme_futures_mdp3_sbe_v1_13.price_quote_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Price Quote Currency: No Value"
  end

  return "Price Quote Currency: "..value
end

-- Dissect: Price Quote Currency
cme_futures_mdp3_sbe_v1_13.price_quote_currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.price_quote_currency.size
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

  local display = cme_futures_mdp3_sbe_v1_13.price_quote_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.price_quote_currency, range, value, display)

  return offset + length, value
end

-- Settl Currency
cme_futures_mdp3_sbe_v1_13.settl_currency = {}

-- Size: Settl Currency
cme_futures_mdp3_sbe_v1_13.settl_currency.size = 3

-- Display: Settl Currency
cme_futures_mdp3_sbe_v1_13.settl_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settl Currency: No Value"
  end

  return "Settl Currency: "..value
end

-- Dissect: Settl Currency
cme_futures_mdp3_sbe_v1_13.settl_currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.settl_currency.size
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

  local display = cme_futures_mdp3_sbe_v1_13.settl_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.settl_currency, range, value, display)

  return offset + length, value
end

-- Currency
cme_futures_mdp3_sbe_v1_13.currency = {}

-- Size: Currency
cme_futures_mdp3_sbe_v1_13.currency.size = 3

-- Display: Currency
cme_futures_mdp3_sbe_v1_13.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
cme_futures_mdp3_sbe_v1_13.currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.currency.size
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

  local display = cme_futures_mdp3_sbe_v1_13.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.currency, range, value, display)

  return offset + length, value
end

-- Cfi Code
cme_futures_mdp3_sbe_v1_13.cfi_code = {}

-- Size: Cfi Code
cme_futures_mdp3_sbe_v1_13.cfi_code.size = 6

-- Display: Cfi Code
cme_futures_mdp3_sbe_v1_13.cfi_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
cme_futures_mdp3_sbe_v1_13.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.cfi_code.size
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

  local display = cme_futures_mdp3_sbe_v1_13.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Security Type
cme_futures_mdp3_sbe_v1_13.security_type = {}

-- Size: Security Type
cme_futures_mdp3_sbe_v1_13.security_type.size = 6

-- Display: Security Type
cme_futures_mdp3_sbe_v1_13.security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
cme_futures_mdp3_sbe_v1_13.security_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.security_type.size
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

  local display = cme_futures_mdp3_sbe_v1_13.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_type, range, value, display)

  return offset + length, value
end

-- Symbol
cme_futures_mdp3_sbe_v1_13.symbol = {}

-- Size: Symbol
cme_futures_mdp3_sbe_v1_13.symbol.size = 20

-- Display: Symbol
cme_futures_mdp3_sbe_v1_13.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_futures_mdp3_sbe_v1_13.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.symbol.size
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

  local display = cme_futures_mdp3_sbe_v1_13.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.symbol, range, value, display)

  return offset + length, value
end

-- Asset
cme_futures_mdp3_sbe_v1_13.asset = {}

-- Size: Asset
cme_futures_mdp3_sbe_v1_13.asset.size = 6

-- Display: Asset
cme_futures_mdp3_sbe_v1_13.asset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Asset: No Value"
  end

  return "Asset: "..value
end

-- Dissect: Asset
cme_futures_mdp3_sbe_v1_13.asset.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.asset.size
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

  local display = cme_futures_mdp3_sbe_v1_13.asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.asset, range, value, display)

  return offset + length, value
end

-- Security Group
cme_futures_mdp3_sbe_v1_13.security_group = {}

-- Size: Security Group
cme_futures_mdp3_sbe_v1_13.security_group.size = 6

-- Display: Security Group
cme_futures_mdp3_sbe_v1_13.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
cme_futures_mdp3_sbe_v1_13.security_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.security_group.size
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

  local display = cme_futures_mdp3_sbe_v1_13.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Exchange
cme_futures_mdp3_sbe_v1_13.security_exchange = {}

-- Size: Security Exchange
cme_futures_mdp3_sbe_v1_13.security_exchange.size = 4

-- Display: Security Exchange
cme_futures_mdp3_sbe_v1_13.security_exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
cme_futures_mdp3_sbe_v1_13.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.security_exchange.size
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

  local display = cme_futures_mdp3_sbe_v1_13.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Underlying Product
cme_futures_mdp3_sbe_v1_13.underlying_product = {}

-- Size: Underlying Product
cme_futures_mdp3_sbe_v1_13.underlying_product.size = 1

-- Display: Underlying Product
cme_futures_mdp3_sbe_v1_13.underlying_product.display = function(value)
  return "Underlying Product: "..value
end

-- Dissect: Underlying Product
cme_futures_mdp3_sbe_v1_13.underlying_product.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.underlying_product.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.underlying_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_product, range, value, display)

  return offset + length, value
end

-- Market Segment Id
cme_futures_mdp3_sbe_v1_13.market_segment_id = {}

-- Size: Market Segment Id
cme_futures_mdp3_sbe_v1_13.market_segment_id.size = 1

-- Display: Market Segment Id
cme_futures_mdp3_sbe_v1_13.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
cme_futures_mdp3_sbe_v1_13.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Appl Id
cme_futures_mdp3_sbe_v1_13.appl_id = {}

-- Size: Appl Id
cme_futures_mdp3_sbe_v1_13.appl_id.size = 2

-- Display: Appl Id
cme_futures_mdp3_sbe_v1_13.appl_id.display = function(value)
  return "Appl Id: "..value
end

-- Dissect: Appl Id
cme_futures_mdp3_sbe_v1_13.appl_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.appl_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.appl_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Security Update Action
cme_futures_mdp3_sbe_v1_13.security_update_action = {}

-- Size: Security Update Action
cme_futures_mdp3_sbe_v1_13.security_update_action.size = 1

-- Display: Security Update Action
cme_futures_mdp3_sbe_v1_13.security_update_action.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.security_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.security_update_action.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_13.security_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_update_action, range, value, display)

  return offset + length, value
end

-- Tot Num Reports Optional
cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional = {}

-- Size: Tot Num Reports Optional
cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.size = 4

-- Display: Tot Num Reports Optional
cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Tot Num Reports Optional: No Value"
  end

  return "Tot Num Reports Optional: "..value
end

-- Dissect: Tot Num Reports Optional
cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.tot_num_reports_optional, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Fx
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fx = {}

-- Calculate size of: Md Instrument Definition Fx
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fx.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_13.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_13.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.underlying_product.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_13.asset.size

  index = index + cme_futures_mdp3_sbe_v1_13.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_13.currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.settl_currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.price_quote_currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_price_increment.size

  index = index + cme_futures_mdp3_sbe_v1_13.display_factor.size

  index = index + cme_futures_mdp3_sbe_v1_13.price_precision.size

  index = index + cme_futures_mdp3_sbe_v1_13.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.size

  index = index + cme_futures_mdp3_sbe_v1_13.high_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.low_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_price_variation.size

  index = index + cme_futures_mdp3_sbe_v1_13.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.size

  index = index + cme_futures_mdp3_sbe_v1_13.fx_currency_symbol.size

  index = index + cme_futures_mdp3_sbe_v1_13.settl_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.intervening_days.size

  index = index + cme_futures_mdp3_sbe_v1_13.fx_benchmark_rate_fix.size

  index = index + cme_futures_mdp3_sbe_v1_13.rate_source.size

  index = index + cme_futures_mdp3_sbe_v1_13.fix_rate_local_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.fix_rate_local_time_zone.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_quote_life.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_price_discretion_offset.size

  index = index + cme_futures_mdp3_sbe_v1_13.instrument_guid.size

  index = index + cme_futures_mdp3_sbe_v1_13.maturity_month_year.size

  index = index + cme_futures_mdp3_sbe_v1_13.settlement_locale.size

  index = index + cme_futures_mdp3_sbe_v1_13.alt_min_price_increment.size

  index = index + cme_futures_mdp3_sbe_v1_13.alt_min_quote_life.size

  index = index + cme_futures_mdp3_sbe_v1_13.alt_price_increment_constraint.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_bid_ask_constraint.size

  index = index + cme_futures_mdp3_sbe_v1_13.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.trading_sessions_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Fx
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fx.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Fx
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fx.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_13.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_13.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_13.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_13.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_13.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_13.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_13.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_13.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_13.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_13.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_13.cfi_code.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_13.currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_13.settl_currency.dissect(buffer, index, packet, parent)

  -- Price Quote Currency: 3 Byte Ascii String
  index, price_quote_currency = cme_futures_mdp3_sbe_v1_13.price_quote_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_13.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_13.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_13.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index, min_price_increment = cme_futures_mdp3_sbe_v1_13.min_price_increment.dissect(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_13.display_factor.dissect(buffer, index, packet, parent)

  -- Price Precision: 1 Byte Unsigned Fixed Width Integer
  index, price_precision = cme_futures_mdp3_sbe_v1_13.price_precision.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_13.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty = cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_13.max_price_variation.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_13.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.dissect(buffer, index, packet, parent)

  -- Fx Currency Symbol: 7 Byte Ascii String
  index, fx_currency_symbol = cme_futures_mdp3_sbe_v1_13.fx_currency_symbol.dissect(buffer, index, packet, parent)

  -- Settl Type: 3 Byte Ascii String
  index, settl_type = cme_futures_mdp3_sbe_v1_13.settl_type.dissect(buffer, index, packet, parent)

  -- Intervening Days: 2 Byte Unsigned Fixed Width Integer
  index, intervening_days = cme_futures_mdp3_sbe_v1_13.intervening_days.dissect(buffer, index, packet, parent)

  -- Fx Benchmark Rate Fix: 20 Byte Ascii String
  index, fx_benchmark_rate_fix = cme_futures_mdp3_sbe_v1_13.fx_benchmark_rate_fix.dissect(buffer, index, packet, parent)

  -- Rate Source: 12 Byte Ascii String
  index, rate_source = cme_futures_mdp3_sbe_v1_13.rate_source.dissect(buffer, index, packet, parent)

  -- Fix Rate Local Time: 8 Byte Ascii String
  index, fix_rate_local_time = cme_futures_mdp3_sbe_v1_13.fix_rate_local_time.dissect(buffer, index, packet, parent)

  -- Fix Rate Local Time Zone: 20 Byte Ascii String
  index, fix_rate_local_time_zone = cme_futures_mdp3_sbe_v1_13.fix_rate_local_time_zone.dissect(buffer, index, packet, parent)

  -- Min Quote Life: 4 Byte Unsigned Fixed Width Integer
  index, min_quote_life = cme_futures_mdp3_sbe_v1_13.min_quote_life.dissect(buffer, index, packet, parent)

  -- Max Price Discretion Offset: 8 Byte Signed Fixed Width Integer
  index, max_price_discretion_offset = cme_futures_mdp3_sbe_v1_13.max_price_discretion_offset.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_13.instrument_guid.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_13.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Settlement Locale: 8 Byte Ascii String
  index, settlement_locale = cme_futures_mdp3_sbe_v1_13.settlement_locale.dissect(buffer, index, packet, parent)

  -- Alt Min Price Increment: 8 Byte Signed Fixed Width Integer Nullable
  index, alt_min_price_increment = cme_futures_mdp3_sbe_v1_13.alt_min_price_increment.dissect(buffer, index, packet, parent)

  -- Alt Min Quote Life: 4 Byte Unsigned Fixed Width Integer Nullable
  index, alt_min_quote_life = cme_futures_mdp3_sbe_v1_13.alt_min_quote_life.dissect(buffer, index, packet, parent)

  -- Alt Price Increment Constraint: 8 Byte Signed Fixed Width Integer Nullable
  index, alt_price_increment_constraint = cme_futures_mdp3_sbe_v1_13.alt_price_increment_constraint.dissect(buffer, index, packet, parent)

  -- Max Bid Ask Constraint: 8 Byte Signed Fixed Width Integer Nullable
  index, max_bid_ask_constraint = cme_futures_mdp3_sbe_v1_13.max_bid_ask_constraint.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_13.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  -- Trading Sessions Groups: Struct of 2 fields
  index, trading_sessions_groups = cme_futures_mdp3_sbe_v1_13.trading_sessions_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Fx
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fx.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_fx then
    local length = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fx.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fx.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_fx, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fx.fields(buffer, offset, packet, parent)
end

-- Md Stream Id
cme_futures_mdp3_sbe_v1_13.md_stream_id = {}

-- Size: Md Stream Id
cme_futures_mdp3_sbe_v1_13.md_stream_id.size = 1

-- Display: Md Stream Id
cme_futures_mdp3_sbe_v1_13.md_stream_id.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.md_stream_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_stream_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.md_stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_stream_id, range, value, display)

  return offset + length, value
end

-- Underlying Instrument Guid
cme_futures_mdp3_sbe_v1_13.underlying_instrument_guid = {}

-- Size: Underlying Instrument Guid
cme_futures_mdp3_sbe_v1_13.underlying_instrument_guid.size = 8

-- Display: Underlying Instrument Guid
cme_futures_mdp3_sbe_v1_13.underlying_instrument_guid.display = function(value)
  return "Underlying Instrument Guid: "..value
end

-- Dissect: Underlying Instrument Guid
cme_futures_mdp3_sbe_v1_13.underlying_instrument_guid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.underlying_instrument_guid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.underlying_instrument_guid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_instrument_guid, range, value, display)

  return offset + length, value
end

-- Dirty Price
cme_futures_mdp3_sbe_v1_13.dirty_price = {}

-- Size: Dirty Price
cme_futures_mdp3_sbe_v1_13.dirty_price.size = 8

-- Display: Dirty Price
cme_futures_mdp3_sbe_v1_13.dirty_price.display = function(value)
  return "Dirty Price: "..value
end

-- Translate: Dirty Price
cme_futures_mdp3_sbe_v1_13.dirty_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Dirty Price
cme_futures_mdp3_sbe_v1_13.dirty_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.dirty_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.dirty_price.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.dirty_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.dirty_price, range, value, display)

  return offset + length, value
end

-- Collateral Market Price
cme_futures_mdp3_sbe_v1_13.collateral_market_price = {}

-- Size: Collateral Market Price
cme_futures_mdp3_sbe_v1_13.collateral_market_price.size = 8

-- Display: Collateral Market Price
cme_futures_mdp3_sbe_v1_13.collateral_market_price.display = function(value)
  return "Collateral Market Price: "..value
end

-- Translate: Collateral Market Price
cme_futures_mdp3_sbe_v1_13.collateral_market_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Collateral Market Price
cme_futures_mdp3_sbe_v1_13.collateral_market_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.collateral_market_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.collateral_market_price.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.collateral_market_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.collateral_market_price, range, value, display)

  return offset + length, value
end

-- Underlying Security Alt Id Source
cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id_source = {}

-- Size: Underlying Security Alt Id Source
cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id_source.size = 1

-- Display: Underlying Security Alt Id Source
cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id_source.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id_source.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id_source.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Underlying Security Alt Id
cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id = {}

-- Size: Underlying Security Alt Id
cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id.size = 12

-- Display: Underlying Security Alt Id
cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Security Alt Id: No Value"
  end

  return "Underlying Security Alt Id: "..value
end

-- Dissect: Underlying Security Alt Id
cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id.size
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

  local display = cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_security_alt_id, range, value, display)

  return offset + length, value
end

-- Collateral Market Value Group
cme_futures_mdp3_sbe_v1_13.collateral_market_value_group = {}

-- Size: Collateral Market Value Group
cme_futures_mdp3_sbe_v1_13.collateral_market_value_group.size =
  cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id.size + 
  cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id_source.size + 
  cme_futures_mdp3_sbe_v1_13.collateral_market_price.size + 
  cme_futures_mdp3_sbe_v1_13.dirty_price.size + 
  cme_futures_mdp3_sbe_v1_13.underlying_instrument_guid.size + 
  cme_futures_mdp3_sbe_v1_13.md_stream_id.size + 
  cme_futures_mdp3_sbe_v1_13.padding_2.size

-- Display: Collateral Market Value Group
cme_futures_mdp3_sbe_v1_13.collateral_market_value_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collateral Market Value Group
cme_futures_mdp3_sbe_v1_13.collateral_market_value_group.fields = function(buffer, offset, packet, parent, collateral_market_value_group_index)
  local index = offset

  -- Implicit Collateral Market Value Group Index
  if collateral_market_value_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.collateral_market_value_group_index, collateral_market_value_group_index)
    iteration:set_generated()
  end

  -- Underlying Security Alt Id: 12 Byte Ascii String
  index, underlying_security_alt_id = cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id.dissect(buffer, index, packet, parent)

  -- Underlying Security Alt Id Source: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, underlying_security_alt_id_source = cme_futures_mdp3_sbe_v1_13.underlying_security_alt_id_source.dissect(buffer, index, packet, parent)

  -- Collateral Market Price: 8 Byte Signed Fixed Width Integer
  index, collateral_market_price = cme_futures_mdp3_sbe_v1_13.collateral_market_price.dissect(buffer, index, packet, parent)

  -- Dirty Price: 8 Byte Signed Fixed Width Integer
  index, dirty_price = cme_futures_mdp3_sbe_v1_13.dirty_price.dissect(buffer, index, packet, parent)

  -- Underlying Instrument Guid: 8 Byte Unsigned Fixed Width Integer
  index, underlying_instrument_guid = cme_futures_mdp3_sbe_v1_13.underlying_instrument_guid.dissect(buffer, index, packet, parent)

  -- Md Stream Id: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, md_stream_id = cme_futures_mdp3_sbe_v1_13.md_stream_id.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collateral Market Value Group
cme_futures_mdp3_sbe_v1_13.collateral_market_value_group.dissect = function(buffer, offset, packet, parent, collateral_market_value_group_index)
  if show.collateral_market_value_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.collateral_market_value_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.collateral_market_value_group.fields(buffer, offset, packet, parent, collateral_market_value_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.collateral_market_value_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.collateral_market_value_group.fields(buffer, offset, packet, parent, collateral_market_value_group_index)
  end
end

-- Collateral Market Value Groups
cme_futures_mdp3_sbe_v1_13.collateral_market_value_groups = {}

-- Calculate size of: Collateral Market Value Groups
cme_futures_mdp3_sbe_v1_13.collateral_market_value_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local collateral_market_value_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + collateral_market_value_group_count * 40

  return index
end

-- Display: Collateral Market Value Groups
cme_futures_mdp3_sbe_v1_13.collateral_market_value_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collateral Market Value Groups
cme_futures_mdp3_sbe_v1_13.collateral_market_value_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Collateral Market Value Group
  for collateral_market_value_group_index = 1, num_in_group do
    index, collateral_market_value_group = cme_futures_mdp3_sbe_v1_13.collateral_market_value_group.dissect(buffer, index, packet, parent, collateral_market_value_group_index)
  end

  return index
end

-- Dissect: Collateral Market Value Groups
cme_futures_mdp3_sbe_v1_13.collateral_market_value_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.collateral_market_value_groups then
    local length = cme_futures_mdp3_sbe_v1_13.collateral_market_value_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.collateral_market_value_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.collateral_market_value_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.collateral_market_value_groups.fields(buffer, offset, packet, parent)
end

-- Collateral Market Value
cme_futures_mdp3_sbe_v1_13.collateral_market_value = {}

-- Calculate size of: Collateral Market Value
cme_futures_mdp3_sbe_v1_13.collateral_market_value.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.collateral_market_value_groups.size(buffer, offset + index)

  return index
end

-- Display: Collateral Market Value
cme_futures_mdp3_sbe_v1_13.collateral_market_value.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collateral Market Value
cme_futures_mdp3_sbe_v1_13.collateral_market_value.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- Collateral Market Value Groups: Struct of 2 fields
  index, collateral_market_value_groups = cme_futures_mdp3_sbe_v1_13.collateral_market_value_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collateral Market Value
cme_futures_mdp3_sbe_v1_13.collateral_market_value.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.collateral_market_value then
    local length = cme_futures_mdp3_sbe_v1_13.collateral_market_value.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.collateral_market_value.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.collateral_market_value, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.collateral_market_value.fields(buffer, offset, packet, parent)
end

-- Settl Price Type
cme_futures_mdp3_sbe_v1_13.settl_price_type = {}

-- Size: Settl Price Type
cme_futures_mdp3_sbe_v1_13.settl_price_type.size = 1

-- Display: Settl Price Type
cme_futures_mdp3_sbe_v1_13.settl_price_type.display = function(buffer, packet, parent)
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
cme_futures_mdp3_sbe_v1_13.settl_price_type.bits = function(buffer, offset, packet, parent)

  -- Null Value: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.null_value, buffer(offset, 1))

  -- Reserved Bits: 3 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.reserved_bits, buffer(offset, 1))

  -- Intraday: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.intraday, buffer(offset, 1))

  -- Rounded: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.rounded, buffer(offset, 1))

  -- Actual: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.actual, buffer(offset, 1))

  -- Final Daily: 1 Bit
  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.final_daily, buffer(offset, 1))
end

-- Dissect: Settl Price Type
cme_futures_mdp3_sbe_v1_13.settl_price_type.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_13.settl_price_type.display(range, packet, parent)
  local element = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.settl_price_type, range, display)

  if show.settl_price_type then
    cme_futures_mdp3_sbe_v1_13.settl_price_type.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Trading Reference Date
cme_futures_mdp3_sbe_v1_13.trading_reference_date = {}

-- Size: Trading Reference Date
cme_futures_mdp3_sbe_v1_13.trading_reference_date.size = 2

-- Display: Trading Reference Date
cme_futures_mdp3_sbe_v1_13.trading_reference_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trading Reference Date: No Value"
  end

  return "Trading Reference Date: "..value
end

-- Dissect: Trading Reference Date
cme_futures_mdp3_sbe_v1_13.trading_reference_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.trading_reference_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.trading_reference_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.trading_reference_date, range, value, display)

  return offset + length, value
end

-- Md Price Level Optional
cme_futures_mdp3_sbe_v1_13.md_price_level_optional = {}

-- Size: Md Price Level Optional
cme_futures_mdp3_sbe_v1_13.md_price_level_optional.size = 1

-- Display: Md Price Level Optional
cme_futures_mdp3_sbe_v1_13.md_price_level_optional.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Md Price Level Optional: No Value"
  end

  return "Md Price Level Optional: "..value
end

-- Dissect: Md Price Level Optional
cme_futures_mdp3_sbe_v1_13.md_price_level_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_price_level_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.md_price_level_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_price_level_optional, range, value, display)

  return offset + length, value
end

-- Tradeable Size
cme_futures_mdp3_sbe_v1_13.tradeable_size = {}

-- Size: Tradeable Size
cme_futures_mdp3_sbe_v1_13.tradeable_size.size = 4

-- Display: Tradeable Size
cme_futures_mdp3_sbe_v1_13.tradeable_size.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Tradeable Size: No Value"
  end

  return "Tradeable Size: "..value
end

-- Dissect: Tradeable Size
cme_futures_mdp3_sbe_v1_13.tradeable_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.tradeable_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.tradeable_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.tradeable_size, range, value, display)

  return offset + length, value
end

-- Md Entry Size Optional
cme_futures_mdp3_sbe_v1_13.md_entry_size_optional = {}

-- Size: Md Entry Size Optional
cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.size = 4

-- Display: Md Entry Size Optional
cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Md Entry Size Optional: No Value"
  end

  return "Md Entry Size Optional: "..value
end

-- Dissect: Md Entry Size Optional
cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_size_optional, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh Tcp Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_group = {}

-- Size: Snapshot Full Refresh Tcp Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_13.tradeable_size.size + 
  cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_price_level_optional.size + 
  cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_.size + 
  cme_futures_mdp3_sbe_v1_13.trading_reference_date.size + 
  cme_futures_mdp3_sbe_v1_13.settl_price_type.size

-- Display: Snapshot Full Refresh Tcp Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tcp Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_group.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_tcp_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Tcp Group Index
  if snapshot_full_refresh_tcp_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tcp_group_index, snapshot_full_refresh_tcp_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Tradeable Size: 4 Byte Signed Fixed Width Integer Nullable
  index, tradeable_size = cme_futures_mdp3_sbe_v1_13.tradeable_size.dissect(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.dissect(buffer, index, packet, parent)

  -- Md Price Level Optional: 1 Byte Signed Fixed Width Integer Nullable
  index, md_price_level_optional = cme_futures_mdp3_sbe_v1_13.md_price_level_optional.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 20 values
  index, md_entry_type_ = cme_futures_mdp3_sbe_v1_13.md_entry_type_.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_13.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_13.settl_price_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Tcp Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_group.dissect = function(buffer, offset, packet, parent, snapshot_full_refresh_tcp_group_index)
  if show.snapshot_full_refresh_tcp_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tcp_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_tcp_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_tcp_group_index)
  end
end

-- Snapshot Full Refresh Tcp Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_groups = {}

-- Calculate size of: Snapshot Full Refresh Tcp Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local snapshot_full_refresh_tcp_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_tcp_group_count * 26

  return index
end

-- Display: Snapshot Full Refresh Tcp Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tcp Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Tcp Group
  for snapshot_full_refresh_tcp_group_index = 1, num_in_group do
    index, snapshot_full_refresh_tcp_group = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_group.dissect(buffer, index, packet, parent, snapshot_full_refresh_tcp_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Tcp Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_tcp_groups then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tcp_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_groups.fields(buffer, offset, packet, parent)
end

-- Snapshot Full Refresh Tcp
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp = {}

-- Calculate size of: Snapshot Full Refresh Tcp
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.high_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.low_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_price_variation.size

  index = index + cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Tcp
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Tcp
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_13.max_price_variation.dissect(buffer, index, packet, parent)

  -- Snapshot Full Refresh Tcp Groups: Struct of 2 fields
  index, snapshot_full_refresh_tcp_groups = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Tcp
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_tcp then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_tcp, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp.fields(buffer, offset, packet, parent)
end

-- Aggressor Indicator
cme_futures_mdp3_sbe_v1_13.aggressor_indicator = {}

-- Size: Aggressor Indicator
cme_futures_mdp3_sbe_v1_13.aggressor_indicator.size = 1

-- Display: Aggressor Indicator
cme_futures_mdp3_sbe_v1_13.aggressor_indicator.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.aggressor_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.aggressor_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.aggressor_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Side
cme_futures_mdp3_sbe_v1_13.side = {}

-- Size: Side
cme_futures_mdp3_sbe_v1_13.side.size = 1

-- Display: Side
cme_futures_mdp3_sbe_v1_13.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cme_futures_mdp3_sbe_v1_13.side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.side, range, value, display)

  return offset + length, value
end

-- Security Status Workup Order Group
cme_futures_mdp3_sbe_v1_13.security_status_workup_order_group = {}

-- Size: Security Status Workup Order Group
cme_futures_mdp3_sbe_v1_13.security_status_workup_order_group.size =
  cme_futures_mdp3_sbe_v1_13.order_id.size + 
  cme_futures_mdp3_sbe_v1_13.side.size + 
  cme_futures_mdp3_sbe_v1_13.aggressor_indicator.size

-- Display: Security Status Workup Order Group
cme_futures_mdp3_sbe_v1_13.security_status_workup_order_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Workup Order Group
cme_futures_mdp3_sbe_v1_13.security_status_workup_order_group.fields = function(buffer, offset, packet, parent, security_status_workup_order_group_index)
  local index = offset

  -- Implicit Security Status Workup Order Group Index
  if security_status_workup_order_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_status_workup_order_group_index, security_status_workup_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_mdp3_sbe_v1_13.side.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_indicator = cme_futures_mdp3_sbe_v1_13.aggressor_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Workup Order Group
cme_futures_mdp3_sbe_v1_13.security_status_workup_order_group.dissect = function(buffer, offset, packet, parent, security_status_workup_order_group_index)
  if show.security_status_workup_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_status_workup_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.security_status_workup_order_group.fields(buffer, offset, packet, parent, security_status_workup_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.security_status_workup_order_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.security_status_workup_order_group.fields(buffer, offset, packet, parent, security_status_workup_order_group_index)
  end
end

-- Security Status Workup Order Groups
cme_futures_mdp3_sbe_v1_13.security_status_workup_order_groups = {}

-- Calculate size of: Security Status Workup Order Groups
cme_futures_mdp3_sbe_v1_13.security_status_workup_order_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local security_status_workup_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_status_workup_order_group_count * 10

  return index
end

-- Display: Security Status Workup Order Groups
cme_futures_mdp3_sbe_v1_13.security_status_workup_order_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Workup Order Groups
cme_futures_mdp3_sbe_v1_13.security_status_workup_order_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Security Status Workup Order Group
  for security_status_workup_order_group_index = 1, num_in_group do
    index, security_status_workup_order_group = cme_futures_mdp3_sbe_v1_13.security_status_workup_order_group.dissect(buffer, index, packet, parent, security_status_workup_order_group_index)
  end

  return index
end

-- Dissect: Security Status Workup Order Groups
cme_futures_mdp3_sbe_v1_13.security_status_workup_order_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_status_workup_order_groups then
    local length = cme_futures_mdp3_sbe_v1_13.security_status_workup_order_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.security_status_workup_order_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_status_workup_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.security_status_workup_order_groups.fields(buffer, offset, packet, parent)
end

-- Security Trading Event
cme_futures_mdp3_sbe_v1_13.security_trading_event = {}

-- Size: Security Trading Event
cme_futures_mdp3_sbe_v1_13.security_trading_event.size = 1

-- Display: Security Trading Event
cme_futures_mdp3_sbe_v1_13.security_trading_event.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.security_trading_event.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.security_trading_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.security_trading_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Halt Reason
cme_futures_mdp3_sbe_v1_13.halt_reason = {}

-- Size: Halt Reason
cme_futures_mdp3_sbe_v1_13.halt_reason.size = 1

-- Display: Halt Reason
cme_futures_mdp3_sbe_v1_13.halt_reason.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.halt_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Workup Trading Status
cme_futures_mdp3_sbe_v1_13.workup_trading_status = {}

-- Size: Workup Trading Status
cme_futures_mdp3_sbe_v1_13.workup_trading_status.size = 1

-- Display: Workup Trading Status
cme_futures_mdp3_sbe_v1_13.workup_trading_status.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.workup_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.workup_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.workup_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.workup_trading_status, range, value, display)

  return offset + length, value
end

-- Trade Link Id
cme_futures_mdp3_sbe_v1_13.trade_link_id = {}

-- Size: Trade Link Id
cme_futures_mdp3_sbe_v1_13.trade_link_id.size = 4

-- Display: Trade Link Id
cme_futures_mdp3_sbe_v1_13.trade_link_id.display = function(value)
  return "Trade Link Id: "..value
end

-- Dissect: Trade Link Id
cme_futures_mdp3_sbe_v1_13.trade_link_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.trade_link_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.trade_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.trade_link_id, range, value, display)

  return offset + length, value
end

-- Security Status Workup
cme_futures_mdp3_sbe_v1_13.security_status_workup = {}

-- Calculate size of: Security Status Workup
cme_futures_mdp3_sbe_v1_13.security_status_workup.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.trade_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.trade_link_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.workup_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_13.halt_reason.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_trading_event.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_status_workup_order_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Status Workup
cme_futures_mdp3_sbe_v1_13.security_status_workup.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Workup
cme_futures_mdp3_sbe_v1_13.security_status_workup.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Link Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_link_id = cme_futures_mdp3_sbe_v1_13.trade_link_id.dissect(buffer, index, packet, parent)

  -- Workup Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, workup_trading_status = cme_futures_mdp3_sbe_v1_13.workup_trading_status.dissect(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, halt_reason = cme_futures_mdp3_sbe_v1_13.halt_reason.dissect(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, security_trading_event = cme_futures_mdp3_sbe_v1_13.security_trading_event.dissect(buffer, index, packet, parent)

  -- Security Status Workup Order Groups: Struct of 2 fields
  index, security_status_workup_order_groups = cme_futures_mdp3_sbe_v1_13.security_status_workup_order_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Workup
cme_futures_mdp3_sbe_v1_13.security_status_workup.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_status_workup then
    local length = cme_futures_mdp3_sbe_v1_13.security_status_workup.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.security_status_workup.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_status_workup, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.security_status_workup.fields(buffer, offset, packet, parent)
end

-- Md Display Qty
cme_futures_mdp3_sbe_v1_13.md_display_qty = {}

-- Size: Md Display Qty
cme_futures_mdp3_sbe_v1_13.md_display_qty.size = 4

-- Display: Md Display Qty
cme_futures_mdp3_sbe_v1_13.md_display_qty.display = function(value)
  return "Md Display Qty: "..value
end

-- Dissect: Md Display Qty
cme_futures_mdp3_sbe_v1_13.md_display_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_display_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.md_display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_display_qty, range, value, display)

  return offset + length, value
end

-- Md Order Priority
cme_futures_mdp3_sbe_v1_13.md_order_priority = {}

-- Size: Md Order Priority
cme_futures_mdp3_sbe_v1_13.md_order_priority.size = 8

-- Display: Md Order Priority
cme_futures_mdp3_sbe_v1_13.md_order_priority.display = function(value)
  return "Md Order Priority: "..value
end

-- Dissect: Md Order Priority
cme_futures_mdp3_sbe_v1_13.md_order_priority.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_order_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.md_order_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_order_priority, range, value, display)

  return offset + length, value
end

-- Snapshot Refresh Top Orders Group
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_group = {}

-- Size: Snapshot Refresh Top Orders Group
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_group.size =
  cme_futures_mdp3_sbe_v1_13.order_id.size + 
  cme_futures_mdp3_sbe_v1_13.md_order_priority.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_13.md_display_qty.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_book.size

-- Display: Snapshot Refresh Top Orders Group
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Refresh Top Orders Group
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_group.fields = function(buffer, offset, packet, parent, snapshot_refresh_top_orders_group_index)
  local index = offset

  -- Implicit Snapshot Refresh Top Orders Group Index
  if snapshot_refresh_top_orders_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_refresh_top_orders_group_index, snapshot_refresh_top_orders_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- Md Order Priority: 8 Byte Unsigned Fixed Width Integer
  index, md_order_priority = cme_futures_mdp3_sbe_v1_13.md_order_priority.dissect(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_13.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Display Qty: 4 Byte Signed Fixed Width Integer
  index, md_display_qty = cme_futures_mdp3_sbe_v1_13.md_display_qty.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 7 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_13.md_entry_type_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Refresh Top Orders Group
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_group.dissect = function(buffer, offset, packet, parent, snapshot_refresh_top_orders_group_index)
  if show.snapshot_refresh_top_orders_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_refresh_top_orders_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_group.fields(buffer, offset, packet, parent, snapshot_refresh_top_orders_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_group.fields(buffer, offset, packet, parent, snapshot_refresh_top_orders_group_index)
  end
end

-- Snapshot Refresh Top Orders Groups
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_groups = {}

-- Calculate size of: Snapshot Refresh Top Orders Groups
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local snapshot_refresh_top_orders_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_refresh_top_orders_group_count * 29

  return index
end

-- Display: Snapshot Refresh Top Orders Groups
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Refresh Top Orders Groups
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Refresh Top Orders Group
  for snapshot_refresh_top_orders_group_index = 1, num_in_group do
    index, snapshot_refresh_top_orders_group = cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_group.dissect(buffer, index, packet, parent, snapshot_refresh_top_orders_group_index)
  end

  return index
end

-- Dissect: Snapshot Refresh Top Orders Groups
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_refresh_top_orders_groups then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_refresh_top_orders_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_groups.fields(buffer, offset, packet, parent)
end

-- Snapshot Refresh Top Orders
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders = {}

-- Calculate size of: Snapshot Refresh Top Orders
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Refresh Top Orders
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Refresh Top Orders
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Snapshot Refresh Top Orders Groups: Struct of 2 fields
  index, snapshot_refresh_top_orders_groups = cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Refresh Top Orders
cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_refresh_top_orders then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_refresh_top_orders, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders.fields(buffer, offset, packet, parent)
end

-- Broken Date End
cme_futures_mdp3_sbe_v1_13.broken_date_end = {}

-- Size: Broken Date End
cme_futures_mdp3_sbe_v1_13.broken_date_end.size = 2

-- Display: Broken Date End
cme_futures_mdp3_sbe_v1_13.broken_date_end.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Broken Date End: No Value"
  end

  return "Broken Date End: "..value
end

-- Dissect: Broken Date End
cme_futures_mdp3_sbe_v1_13.broken_date_end.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.broken_date_end.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.broken_date_end.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.broken_date_end, range, value, display)

  return offset + length, value
end

-- Broken Date Start
cme_futures_mdp3_sbe_v1_13.broken_date_start = {}

-- Size: Broken Date Start
cme_futures_mdp3_sbe_v1_13.broken_date_start.size = 2

-- Display: Broken Date Start
cme_futures_mdp3_sbe_v1_13.broken_date_start.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Broken Date Start: No Value"
  end

  return "Broken Date Start: "..value
end

-- Dissect: Broken Date Start
cme_futures_mdp3_sbe_v1_13.broken_date_start.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.broken_date_start.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.broken_date_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.broken_date_start, range, value, display)

  return offset + length, value
end

-- Broken Date Security Id
cme_futures_mdp3_sbe_v1_13.broken_date_security_id = {}

-- Size: Broken Date Security Id
cme_futures_mdp3_sbe_v1_13.broken_date_security_id.size = 4

-- Display: Broken Date Security Id
cme_futures_mdp3_sbe_v1_13.broken_date_security_id.display = function(value)
  return "Broken Date Security Id: "..value
end

-- Dissect: Broken Date Security Id
cme_futures_mdp3_sbe_v1_13.broken_date_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.broken_date_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.broken_date_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.broken_date_security_id, range, value, display)

  return offset + length, value
end

-- Broken Date Guid
cme_futures_mdp3_sbe_v1_13.broken_date_guid = {}

-- Size: Broken Date Guid
cme_futures_mdp3_sbe_v1_13.broken_date_guid.size = 8

-- Display: Broken Date Guid
cme_futures_mdp3_sbe_v1_13.broken_date_guid.display = function(value)
  return "Broken Date Guid: "..value
end

-- Dissect: Broken Date Guid
cme_futures_mdp3_sbe_v1_13.broken_date_guid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.broken_date_guid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.broken_date_guid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.broken_date_guid, range, value, display)

  return offset + length, value
end

-- Broken Dates Group
cme_futures_mdp3_sbe_v1_13.broken_dates_group = {}

-- Size: Broken Dates Group
cme_futures_mdp3_sbe_v1_13.broken_dates_group.size =
  cme_futures_mdp3_sbe_v1_13.broken_date_guid.size + 
  cme_futures_mdp3_sbe_v1_13.broken_date_security_id.size + 
  cme_futures_mdp3_sbe_v1_13.broken_date_start.size + 
  cme_futures_mdp3_sbe_v1_13.broken_date_end.size

-- Display: Broken Dates Group
cme_futures_mdp3_sbe_v1_13.broken_dates_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Dates Group
cme_futures_mdp3_sbe_v1_13.broken_dates_group.fields = function(buffer, offset, packet, parent, broken_dates_group_index)
  local index = offset

  -- Implicit Broken Dates Group Index
  if broken_dates_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.broken_dates_group_index, broken_dates_group_index)
    iteration:set_generated()
  end

  -- Broken Date Guid: 8 Byte Unsigned Fixed Width Integer
  index, broken_date_guid = cme_futures_mdp3_sbe_v1_13.broken_date_guid.dissect(buffer, index, packet, parent)

  -- Broken Date Security Id: 4 Byte Signed Fixed Width Integer
  index, broken_date_security_id = cme_futures_mdp3_sbe_v1_13.broken_date_security_id.dissect(buffer, index, packet, parent)

  -- Broken Date Start: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broken_date_start = cme_futures_mdp3_sbe_v1_13.broken_date_start.dissect(buffer, index, packet, parent)

  -- Broken Date End: 2 Byte Unsigned Fixed Width Integer Nullable
  index, broken_date_end = cme_futures_mdp3_sbe_v1_13.broken_date_end.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Dates Group
cme_futures_mdp3_sbe_v1_13.broken_dates_group.dissect = function(buffer, offset, packet, parent, broken_dates_group_index)
  if show.broken_dates_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.broken_dates_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.broken_dates_group.fields(buffer, offset, packet, parent, broken_dates_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.broken_dates_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.broken_dates_group.fields(buffer, offset, packet, parent, broken_dates_group_index)
  end
end

-- Broken Dates Groups
cme_futures_mdp3_sbe_v1_13.broken_dates_groups = {}

-- Calculate size of: Broken Dates Groups
cme_futures_mdp3_sbe_v1_13.broken_dates_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local broken_dates_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + broken_dates_group_count * 16

  return index
end

-- Display: Broken Dates Groups
cme_futures_mdp3_sbe_v1_13.broken_dates_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Dates Groups
cme_futures_mdp3_sbe_v1_13.broken_dates_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Broken Dates Group
  for broken_dates_group_index = 1, num_in_group do
    index, broken_dates_group = cme_futures_mdp3_sbe_v1_13.broken_dates_group.dissect(buffer, index, packet, parent, broken_dates_group_index)
  end

  return index
end

-- Dissect: Broken Dates Groups
cme_futures_mdp3_sbe_v1_13.broken_dates_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.broken_dates_groups then
    local length = cme_futures_mdp3_sbe_v1_13.broken_dates_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.broken_dates_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.broken_dates_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.broken_dates_groups.fields(buffer, offset, packet, parent)
end

-- Related Symbol
cme_futures_mdp3_sbe_v1_13.related_symbol = {}

-- Size: Related Symbol
cme_futures_mdp3_sbe_v1_13.related_symbol.size = 20

-- Display: Related Symbol
cme_futures_mdp3_sbe_v1_13.related_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Related Symbol: No Value"
  end

  return "Related Symbol: "..value
end

-- Dissect: Related Symbol
cme_futures_mdp3_sbe_v1_13.related_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.related_symbol.size
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

  local display = cme_futures_mdp3_sbe_v1_13.related_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.related_symbol, range, value, display)

  return offset + length, value
end

-- Related Security Id
cme_futures_mdp3_sbe_v1_13.related_security_id = {}

-- Size: Related Security Id
cme_futures_mdp3_sbe_v1_13.related_security_id.size = 4

-- Display: Related Security Id
cme_futures_mdp3_sbe_v1_13.related_security_id.display = function(value)
  return "Related Security Id: "..value
end

-- Dissect: Related Security Id
cme_futures_mdp3_sbe_v1_13.related_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.related_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.related_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.related_security_id, range, value, display)

  return offset + length, value
end

-- Related Instruments Group
cme_futures_mdp3_sbe_v1_13.related_instruments_group = {}

-- Size: Related Instruments Group
cme_futures_mdp3_sbe_v1_13.related_instruments_group.size =
  cme_futures_mdp3_sbe_v1_13.related_security_id.size + 
  cme_futures_mdp3_sbe_v1_13.related_symbol.size

-- Display: Related Instruments Group
cme_futures_mdp3_sbe_v1_13.related_instruments_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Instruments Group
cme_futures_mdp3_sbe_v1_13.related_instruments_group.fields = function(buffer, offset, packet, parent, related_instruments_group_index)
  local index = offset

  -- Implicit Related Instruments Group Index
  if related_instruments_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.related_instruments_group_index, related_instruments_group_index)
    iteration:set_generated()
  end

  -- Related Security Id: 4 Byte Signed Fixed Width Integer
  index, related_security_id = cme_futures_mdp3_sbe_v1_13.related_security_id.dissect(buffer, index, packet, parent)

  -- Related Symbol: 20 Byte Ascii String
  index, related_symbol = cme_futures_mdp3_sbe_v1_13.related_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Instruments Group
cme_futures_mdp3_sbe_v1_13.related_instruments_group.dissect = function(buffer, offset, packet, parent, related_instruments_group_index)
  if show.related_instruments_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.related_instruments_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.related_instruments_group.fields(buffer, offset, packet, parent, related_instruments_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.related_instruments_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.related_instruments_group.fields(buffer, offset, packet, parent, related_instruments_group_index)
  end
end

-- Related Instruments Groups
cme_futures_mdp3_sbe_v1_13.related_instruments_groups = {}

-- Calculate size of: Related Instruments Groups
cme_futures_mdp3_sbe_v1_13.related_instruments_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local related_instruments_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_instruments_group_count * 24

  return index
end

-- Display: Related Instruments Groups
cme_futures_mdp3_sbe_v1_13.related_instruments_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Instruments Groups
cme_futures_mdp3_sbe_v1_13.related_instruments_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Related Instruments Group
  for related_instruments_group_index = 1, num_in_group do
    index, related_instruments_group = cme_futures_mdp3_sbe_v1_13.related_instruments_group.dissect(buffer, index, packet, parent, related_instruments_group_index)
  end

  return index
end

-- Dissect: Related Instruments Groups
cme_futures_mdp3_sbe_v1_13.related_instruments_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.related_instruments_groups then
    local length = cme_futures_mdp3_sbe_v1_13.related_instruments_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.related_instruments_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.related_instruments_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.related_instruments_groups.fields(buffer, offset, packet, parent)
end

-- Underlying Symbol
cme_futures_mdp3_sbe_v1_13.underlying_symbol = {}

-- Size: Underlying Symbol
cme_futures_mdp3_sbe_v1_13.underlying_symbol.size = 20

-- Display: Underlying Symbol
cme_futures_mdp3_sbe_v1_13.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
cme_futures_mdp3_sbe_v1_13.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.underlying_symbol.size
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

  local display = cme_futures_mdp3_sbe_v1_13.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Underlying Security Id
cme_futures_mdp3_sbe_v1_13.underlying_security_id = {}

-- Size: Underlying Security Id
cme_futures_mdp3_sbe_v1_13.underlying_security_id.size = 4

-- Display: Underlying Security Id
cme_futures_mdp3_sbe_v1_13.underlying_security_id.display = function(value)
  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
cme_futures_mdp3_sbe_v1_13.underlying_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.underlying_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.underlying_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_security_id, range, value, display)

  return offset + length, value
end

-- Underlyings Group
cme_futures_mdp3_sbe_v1_13.underlyings_group = {}

-- Size: Underlyings Group
cme_futures_mdp3_sbe_v1_13.underlyings_group.size =
  cme_futures_mdp3_sbe_v1_13.underlying_security_id.size + 
  cme_futures_mdp3_sbe_v1_13.underlying_symbol.size

-- Display: Underlyings Group
cme_futures_mdp3_sbe_v1_13.underlyings_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlyings Group
cme_futures_mdp3_sbe_v1_13.underlyings_group.fields = function(buffer, offset, packet, parent, underlyings_group_index)
  local index = offset

  -- Implicit Underlyings Group Index
  if underlyings_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.underlyings_group_index, underlyings_group_index)
    iteration:set_generated()
  end

  -- Underlying Security Id: 4 Byte Signed Fixed Width Integer
  index, underlying_security_id = cme_futures_mdp3_sbe_v1_13.underlying_security_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 20 Byte Ascii String
  index, underlying_symbol = cme_futures_mdp3_sbe_v1_13.underlying_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlyings Group
cme_futures_mdp3_sbe_v1_13.underlyings_group.dissect = function(buffer, offset, packet, parent, underlyings_group_index)
  if show.underlyings_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.underlyings_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.underlyings_group.fields(buffer, offset, packet, parent, underlyings_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.underlyings_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.underlyings_group.fields(buffer, offset, packet, parent, underlyings_group_index)
  end
end

-- Underlyings Groups
cme_futures_mdp3_sbe_v1_13.underlyings_groups = {}

-- Calculate size of: Underlyings Groups
cme_futures_mdp3_sbe_v1_13.underlyings_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local underlyings_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + underlyings_group_count * 24

  return index
end

-- Display: Underlyings Groups
cme_futures_mdp3_sbe_v1_13.underlyings_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlyings Groups
cme_futures_mdp3_sbe_v1_13.underlyings_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Underlyings Group
  for underlyings_group_index = 1, num_in_group do
    index, underlyings_group = cme_futures_mdp3_sbe_v1_13.underlyings_group.dissect(buffer, index, packet, parent, underlyings_group_index)
  end

  return index
end

-- Dissect: Underlyings Groups
cme_futures_mdp3_sbe_v1_13.underlyings_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlyings_groups then
    local length = cme_futures_mdp3_sbe_v1_13.underlyings_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.underlyings_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.underlyings_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.underlyings_groups.fields(buffer, offset, packet, parent)
end

-- Broken Date Term Type
cme_futures_mdp3_sbe_v1_13.broken_date_term_type = {}

-- Size: Broken Date Term Type
cme_futures_mdp3_sbe_v1_13.broken_date_term_type.size = 1

-- Display: Broken Date Term Type
cme_futures_mdp3_sbe_v1_13.broken_date_term_type.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Broken Date Term Type: No Value"
  end

  return "Broken Date Term Type: "..value
end

-- Dissect: Broken Date Term Type
cme_futures_mdp3_sbe_v1_13.broken_date_term_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.broken_date_term_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.broken_date_term_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.broken_date_term_type, range, value, display)

  return offset + length, value
end

-- Term Code
cme_futures_mdp3_sbe_v1_13.term_code = {}

-- Size: Term Code
cme_futures_mdp3_sbe_v1_13.term_code.size = 20

-- Display: Term Code
cme_futures_mdp3_sbe_v1_13.term_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Term Code: No Value"
  end

  return "Term Code: "..value
end

-- Dissect: Term Code
cme_futures_mdp3_sbe_v1_13.term_code.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.term_code.size
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

  local display = cme_futures_mdp3_sbe_v1_13.term_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.term_code, range, value, display)

  return offset + length, value
end

-- Market Set
cme_futures_mdp3_sbe_v1_13.market_set = {}

-- Size: Market Set
cme_futures_mdp3_sbe_v1_13.market_set.size = 6

-- Display: Market Set
cme_futures_mdp3_sbe_v1_13.market_set.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Set: No Value"
  end

  return "Market Set: "..value
end

-- Dissect: Market Set
cme_futures_mdp3_sbe_v1_13.market_set.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.market_set.size
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

  local display = cme_futures_mdp3_sbe_v1_13.market_set.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.market_set, range, value, display)

  return offset + length, value
end

-- Risk Set
cme_futures_mdp3_sbe_v1_13.risk_set = {}

-- Size: Risk Set
cme_futures_mdp3_sbe_v1_13.risk_set.size = 6

-- Display: Risk Set
cme_futures_mdp3_sbe_v1_13.risk_set.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Risk Set: No Value"
  end

  return "Risk Set: "..value
end

-- Dissect: Risk Set
cme_futures_mdp3_sbe_v1_13.risk_set.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.risk_set.size
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

  local display = cme_futures_mdp3_sbe_v1_13.risk_set.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.risk_set, range, value, display)

  return offset + length, value
end

-- Price Quote Method
cme_futures_mdp3_sbe_v1_13.price_quote_method = {}

-- Size: Price Quote Method
cme_futures_mdp3_sbe_v1_13.price_quote_method.size = 5

-- Display: Price Quote Method
cme_futures_mdp3_sbe_v1_13.price_quote_method.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Price Quote Method: No Value"
  end

  return "Price Quote Method: "..value
end

-- Dissect: Price Quote Method
cme_futures_mdp3_sbe_v1_13.price_quote_method.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.price_quote_method.size
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

  local display = cme_futures_mdp3_sbe_v1_13.price_quote_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.price_quote_method, range, value, display)

  return offset + length, value
end

-- Max No Of Substitutions
cme_futures_mdp3_sbe_v1_13.max_no_of_substitutions = {}

-- Size: Max No Of Substitutions
cme_futures_mdp3_sbe_v1_13.max_no_of_substitutions.size = 1

-- Display: Max No Of Substitutions
cme_futures_mdp3_sbe_v1_13.max_no_of_substitutions.display = function(value)
  return "Max No Of Substitutions: "..value
end

-- Dissect: Max No Of Substitutions
cme_futures_mdp3_sbe_v1_13.max_no_of_substitutions.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.max_no_of_substitutions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.max_no_of_substitutions.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.max_no_of_substitutions, range, value, display)

  return offset + length, value
end

-- Money Or Par
cme_futures_mdp3_sbe_v1_13.money_or_par = {}

-- Size: Money Or Par
cme_futures_mdp3_sbe_v1_13.money_or_par.size = 1

-- Display: Money Or Par
cme_futures_mdp3_sbe_v1_13.money_or_par.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.money_or_par.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.money_or_par.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.money_or_par.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.money_or_par, range, value, display)

  return offset + length, value
end

-- Repo Sub Type
cme_futures_mdp3_sbe_v1_13.repo_sub_type = {}

-- Size: Repo Sub Type
cme_futures_mdp3_sbe_v1_13.repo_sub_type.size = 1

-- Display: Repo Sub Type
cme_futures_mdp3_sbe_v1_13.repo_sub_type.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.repo_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.repo_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.repo_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.repo_sub_type, range, value, display)

  return offset + length, value
end

-- Termination Type
cme_futures_mdp3_sbe_v1_13.termination_type = {}

-- Size: Termination Type
cme_futures_mdp3_sbe_v1_13.termination_type.size = 8

-- Display: Termination Type
cme_futures_mdp3_sbe_v1_13.termination_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Termination Type: No Value"
  end

  return "Termination Type: "..value
end

-- Dissect: Termination Type
cme_futures_mdp3_sbe_v1_13.termination_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.termination_type.size
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

  local display = cme_futures_mdp3_sbe_v1_13.termination_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.termination_type, range, value, display)

  return offset + length, value
end

-- End Date
cme_futures_mdp3_sbe_v1_13.end_date = {}

-- Size: End Date
cme_futures_mdp3_sbe_v1_13.end_date.size = 2

-- Display: End Date
cme_futures_mdp3_sbe_v1_13.end_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "End Date: No Value"
  end

  return "End Date: "..value
end

-- Dissect: End Date
cme_futures_mdp3_sbe_v1_13.end_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.end_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.end_date, range, value, display)

  return offset + length, value
end

-- Start Date
cme_futures_mdp3_sbe_v1_13.start_date = {}

-- Size: Start Date
cme_futures_mdp3_sbe_v1_13.start_date.size = 2

-- Display: Start Date
cme_futures_mdp3_sbe_v1_13.start_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Start Date: No Value"
  end

  return "Start Date: "..value
end

-- Dissect: Start Date
cme_futures_mdp3_sbe_v1_13.start_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.start_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.start_date, range, value, display)

  return offset + length, value
end

-- Party Role Clearing Org
cme_futures_mdp3_sbe_v1_13.party_role_clearing_org = {}

-- Size: Party Role Clearing Org
cme_futures_mdp3_sbe_v1_13.party_role_clearing_org.size = 5

-- Display: Party Role Clearing Org
cme_futures_mdp3_sbe_v1_13.party_role_clearing_org.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Role Clearing Org: No Value"
  end

  return "Party Role Clearing Org: "..value
end

-- Dissect: Party Role Clearing Org
cme_futures_mdp3_sbe_v1_13.party_role_clearing_org.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.party_role_clearing_org.size
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

  local display = cme_futures_mdp3_sbe_v1_13.party_role_clearing_org.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.party_role_clearing_org, range, value, display)

  return offset + length, value
end

-- Trading Reference Price
cme_futures_mdp3_sbe_v1_13.trading_reference_price = {}

-- Size: Trading Reference Price
cme_futures_mdp3_sbe_v1_13.trading_reference_price.size = 8

-- Display: Trading Reference Price
cme_futures_mdp3_sbe_v1_13.trading_reference_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Trading Reference Price: No Value"
  end

  return "Trading Reference Price: "..value
end

-- Translate: Trading Reference Price
cme_futures_mdp3_sbe_v1_13.trading_reference_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Trading Reference Price
cme_futures_mdp3_sbe_v1_13.trading_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.trading_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.trading_reference_price.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.trading_reference_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.trading_reference_price, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Repo
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_repo = {}

-- Calculate size of: Md Instrument Definition Repo
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_repo.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_13.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_13.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.underlying_product.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_13.asset.size

  index = index + cme_futures_mdp3_sbe_v1_13.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_13.currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.settl_currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_price_increment.size

  index = index + cme_futures_mdp3_sbe_v1_13.display_factor.size

  index = index + cme_futures_mdp3_sbe_v1_13.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.size

  index = index + cme_futures_mdp3_sbe_v1_13.trading_reference_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.trading_reference_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.high_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.low_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_price_variation.size

  index = index + cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.size

  index = index + cme_futures_mdp3_sbe_v1_13.party_role_clearing_org.size

  index = index + cme_futures_mdp3_sbe_v1_13.start_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.end_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.termination_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.repo_sub_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.money_or_par.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_no_of_substitutions.size

  index = index + cme_futures_mdp3_sbe_v1_13.price_quote_method.size

  index = index + cme_futures_mdp3_sbe_v1_13.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_13.risk_set.size

  index = index + cme_futures_mdp3_sbe_v1_13.market_set.size

  index = index + cme_futures_mdp3_sbe_v1_13.instrument_guid.size

  index = index + cme_futures_mdp3_sbe_v1_13.term_code.size

  index = index + cme_futures_mdp3_sbe_v1_13.broken_date_term_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.underlyings_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.related_instruments_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.broken_dates_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Repo
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_repo.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Repo
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_repo.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_13.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_13.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_13.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_13.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_13.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_13.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_13.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_13.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_13.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_13.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_13.cfi_code.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_13.currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_13.settl_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_13.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_13.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_13.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index, min_price_increment = cme_futures_mdp3_sbe_v1_13.min_price_increment.dissect(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_13.display_factor.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_13.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty = cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.dissect(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = cme_futures_mdp3_sbe_v1_13.trading_reference_price.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_13.trading_reference_date.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_13.max_price_variation.dissect(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.dissect(buffer, index, packet, parent)

  -- Party Role Clearing Org: 5 Byte Ascii String
  index, party_role_clearing_org = cme_futures_mdp3_sbe_v1_13.party_role_clearing_org.dissect(buffer, index, packet, parent)

  -- Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, start_date = cme_futures_mdp3_sbe_v1_13.start_date.dissect(buffer, index, packet, parent)

  -- End Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, end_date = cme_futures_mdp3_sbe_v1_13.end_date.dissect(buffer, index, packet, parent)

  -- Termination Type: 8 Byte Ascii String
  index, termination_type = cme_futures_mdp3_sbe_v1_13.termination_type.dissect(buffer, index, packet, parent)

  -- Repo Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, repo_sub_type = cme_futures_mdp3_sbe_v1_13.repo_sub_type.dissect(buffer, index, packet, parent)

  -- Money Or Par: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, money_or_par = cme_futures_mdp3_sbe_v1_13.money_or_par.dissect(buffer, index, packet, parent)

  -- Max No Of Substitutions: 1 Byte Unsigned Fixed Width Integer
  index, max_no_of_substitutions = cme_futures_mdp3_sbe_v1_13.max_no_of_substitutions.dissect(buffer, index, packet, parent)

  -- Price Quote Method: 5 Byte Ascii String
  index, price_quote_method = cme_futures_mdp3_sbe_v1_13.price_quote_method.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_13.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Risk Set: 6 Byte Ascii String
  index, risk_set = cme_futures_mdp3_sbe_v1_13.risk_set.dissect(buffer, index, packet, parent)

  -- Market Set: 6 Byte Ascii String
  index, market_set = cme_futures_mdp3_sbe_v1_13.market_set.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_13.instrument_guid.dissect(buffer, index, packet, parent)

  -- Term Code: 20 Byte Ascii String
  index, term_code = cme_futures_mdp3_sbe_v1_13.term_code.dissect(buffer, index, packet, parent)

  -- Broken Date Term Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, broken_date_term_type = cme_futures_mdp3_sbe_v1_13.broken_date_term_type.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_13.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  -- Underlyings Groups: Struct of 2 fields
  index, underlyings_groups = cme_futures_mdp3_sbe_v1_13.underlyings_groups.dissect(buffer, index, packet, parent)

  -- Related Instruments Groups: Struct of 2 fields
  index, related_instruments_groups = cme_futures_mdp3_sbe_v1_13.related_instruments_groups.dissect(buffer, index, packet, parent)

  -- Broken Dates Groups: Struct of 2 fields
  index, broken_dates_groups = cme_futures_mdp3_sbe_v1_13.broken_dates_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Repo
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_repo.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_repo then
    local length = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_repo.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_repo.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_repo, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_repo.fields(buffer, offset, packet, parent)
end

-- Security Alt Id Source
cme_futures_mdp3_sbe_v1_13.security_alt_id_source = {}

-- Size: Security Alt Id Source
cme_futures_mdp3_sbe_v1_13.security_alt_id_source.size = 1

-- Display: Security Alt Id Source
cme_futures_mdp3_sbe_v1_13.security_alt_id_source.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.security_alt_id_source.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.security_alt_id_source.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.security_alt_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Issuer
cme_futures_mdp3_sbe_v1_13.issuer = {}

-- Size: Issuer
cme_futures_mdp3_sbe_v1_13.issuer.size = 25

-- Display: Issuer
cme_futures_mdp3_sbe_v1_13.issuer.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Issuer: No Value"
  end

  return "Issuer: "..value
end

-- Dissect: Issuer
cme_futures_mdp3_sbe_v1_13.issuer.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.issuer.size
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

  local display = cme_futures_mdp3_sbe_v1_13.issuer.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.issuer, range, value, display)

  return offset + length, value
end

-- Country Of Issue
cme_futures_mdp3_sbe_v1_13.country_of_issue = {}

-- Size: Country Of Issue
cme_futures_mdp3_sbe_v1_13.country_of_issue.size = 2

-- Display: Country Of Issue
cme_futures_mdp3_sbe_v1_13.country_of_issue.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Country Of Issue: No Value"
  end

  return "Country Of Issue: "..value
end

-- Dissect: Country Of Issue
cme_futures_mdp3_sbe_v1_13.country_of_issue.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.country_of_issue.size
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

  local display = cme_futures_mdp3_sbe_v1_13.country_of_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.country_of_issue, range, value, display)

  return offset + length, value
end

-- Coupon Day Count
cme_futures_mdp3_sbe_v1_13.coupon_day_count = {}

-- Size: Coupon Day Count
cme_futures_mdp3_sbe_v1_13.coupon_day_count.size = 20

-- Display: Coupon Day Count
cme_futures_mdp3_sbe_v1_13.coupon_day_count.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Coupon Day Count: No Value"
  end

  return "Coupon Day Count: "..value
end

-- Dissect: Coupon Day Count
cme_futures_mdp3_sbe_v1_13.coupon_day_count.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.coupon_day_count.size
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

  local display = cme_futures_mdp3_sbe_v1_13.coupon_day_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.coupon_day_count, range, value, display)

  return offset + length, value
end

-- Coupon Frequency Period
cme_futures_mdp3_sbe_v1_13.coupon_frequency_period = {}

-- Size: Coupon Frequency Period
cme_futures_mdp3_sbe_v1_13.coupon_frequency_period.size = 2

-- Display: Coupon Frequency Period
cme_futures_mdp3_sbe_v1_13.coupon_frequency_period.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Coupon Frequency Period: No Value"
  end

  return "Coupon Frequency Period: "..value
end

-- Dissect: Coupon Frequency Period
cme_futures_mdp3_sbe_v1_13.coupon_frequency_period.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.coupon_frequency_period.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.coupon_frequency_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.coupon_frequency_period, range, value, display)

  return offset + length, value
end

-- Coupon Frequency Unit
cme_futures_mdp3_sbe_v1_13.coupon_frequency_unit = {}

-- Size: Coupon Frequency Unit
cme_futures_mdp3_sbe_v1_13.coupon_frequency_unit.size = 3

-- Display: Coupon Frequency Unit
cme_futures_mdp3_sbe_v1_13.coupon_frequency_unit.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Coupon Frequency Unit: No Value"
  end

  return "Coupon Frequency Unit: "..value
end

-- Dissect: Coupon Frequency Unit
cme_futures_mdp3_sbe_v1_13.coupon_frequency_unit.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.coupon_frequency_unit.size
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

  local display = cme_futures_mdp3_sbe_v1_13.coupon_frequency_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.coupon_frequency_unit, range, value, display)

  return offset + length, value
end

-- Par Value
cme_futures_mdp3_sbe_v1_13.par_value = {}

-- Size: Par Value
cme_futures_mdp3_sbe_v1_13.par_value.size = 8

-- Display: Par Value
cme_futures_mdp3_sbe_v1_13.par_value.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Par Value: No Value"
  end

  return "Par Value: "..value
end

-- Translate: Par Value
cme_futures_mdp3_sbe_v1_13.par_value.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Par Value
cme_futures_mdp3_sbe_v1_13.par_value.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.par_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.par_value.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.par_value.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.par_value, range, value, display)

  return offset + length, value
end

-- Coupon Rate
cme_futures_mdp3_sbe_v1_13.coupon_rate = {}

-- Size: Coupon Rate
cme_futures_mdp3_sbe_v1_13.coupon_rate.size = 8

-- Display: Coupon Rate
cme_futures_mdp3_sbe_v1_13.coupon_rate.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Coupon Rate: No Value"
  end

  return "Coupon Rate: "..value
end

-- Translate: Coupon Rate
cme_futures_mdp3_sbe_v1_13.coupon_rate.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Coupon Rate
cme_futures_mdp3_sbe_v1_13.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.coupon_rate.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.coupon_rate.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.coupon_rate.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Dated Date
cme_futures_mdp3_sbe_v1_13.dated_date = {}

-- Size: Dated Date
cme_futures_mdp3_sbe_v1_13.dated_date.size = 2

-- Display: Dated Date
cme_futures_mdp3_sbe_v1_13.dated_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Dated Date: No Value"
  end

  return "Dated Date: "..value
end

-- Dissect: Dated Date
cme_futures_mdp3_sbe_v1_13.dated_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.dated_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.dated_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.dated_date, range, value, display)

  return offset + length, value
end

-- Issue Date
cme_futures_mdp3_sbe_v1_13.issue_date = {}

-- Size: Issue Date
cme_futures_mdp3_sbe_v1_13.issue_date.size = 2

-- Display: Issue Date
cme_futures_mdp3_sbe_v1_13.issue_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Issue Date: No Value"
  end

  return "Issue Date: "..value
end

-- Dissect: Issue Date
cme_futures_mdp3_sbe_v1_13.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.issue_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Min Price Increment Amount
cme_futures_mdp3_sbe_v1_13.min_price_increment_amount = {}

-- Size: Min Price Increment Amount
cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.size = 8

-- Display: Min Price Increment Amount
cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Amount: No Value"
  end

  return "Min Price Increment Amount: "..value
end

-- Translate: Min Price Increment Amount
cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Min Price Increment Amount
cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.min_price_increment_amount, range, value, display)

  return offset + length, value
end

-- Price Display Format
cme_futures_mdp3_sbe_v1_13.price_display_format = {}

-- Size: Price Display Format
cme_futures_mdp3_sbe_v1_13.price_display_format.size = 1

-- Display: Price Display Format
cme_futures_mdp3_sbe_v1_13.price_display_format.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Display Format: No Value"
  end

  return "Price Display Format: "..value
end

-- Dissect: Price Display Format
cme_futures_mdp3_sbe_v1_13.price_display_format.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.price_display_format.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.price_display_format.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.price_display_format, range, value, display)

  return offset + length, value
end

-- Sub Fraction
cme_futures_mdp3_sbe_v1_13.sub_fraction = {}

-- Size: Sub Fraction
cme_futures_mdp3_sbe_v1_13.sub_fraction.size = 1

-- Display: Sub Fraction
cme_futures_mdp3_sbe_v1_13.sub_fraction.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Sub Fraction: No Value"
  end

  return "Sub Fraction: "..value
end

-- Dissect: Sub Fraction
cme_futures_mdp3_sbe_v1_13.sub_fraction.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.sub_fraction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.sub_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.sub_fraction, range, value, display)

  return offset + length, value
end

-- Main Fraction
cme_futures_mdp3_sbe_v1_13.main_fraction = {}

-- Size: Main Fraction
cme_futures_mdp3_sbe_v1_13.main_fraction.size = 1

-- Display: Main Fraction
cme_futures_mdp3_sbe_v1_13.main_fraction.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Main Fraction: No Value"
  end

  return "Main Fraction: "..value
end

-- Dissect: Main Fraction
cme_futures_mdp3_sbe_v1_13.main_fraction.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.main_fraction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.main_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.main_fraction, range, value, display)

  return offset + length, value
end

-- Min Price Increment Optional
cme_futures_mdp3_sbe_v1_13.min_price_increment_optional = {}

-- Size: Min Price Increment Optional
cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.size = 8

-- Display: Min Price Increment Optional
cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Optional: No Value"
  end

  return "Min Price Increment Optional: "..value
end

-- Translate: Min Price Increment Optional
cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Min Price Increment Optional
cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.min_price_increment_optional, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Fixed Income
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fixed_income = {}

-- Calculate size of: Md Instrument Definition Fixed Income
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fixed_income.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_13.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_13.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.underlying_product.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_13.asset.size

  index = index + cme_futures_mdp3_sbe_v1_13.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_13.currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.settl_currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.size

  index = index + cme_futures_mdp3_sbe_v1_13.display_factor.size

  index = index + cme_futures_mdp3_sbe_v1_13.main_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_13.sub_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_13.price_display_format.size

  index = index + cme_futures_mdp3_sbe_v1_13.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.size

  index = index + cme_futures_mdp3_sbe_v1_13.trading_reference_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.trading_reference_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.high_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.low_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_price_variation.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.size

  index = index + cme_futures_mdp3_sbe_v1_13.issue_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.dated_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.maturity_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.coupon_rate.size

  index = index + cme_futures_mdp3_sbe_v1_13.par_value.size

  index = index + cme_futures_mdp3_sbe_v1_13.coupon_frequency_unit.size

  index = index + cme_futures_mdp3_sbe_v1_13.coupon_frequency_period.size

  index = index + cme_futures_mdp3_sbe_v1_13.coupon_day_count.size

  index = index + cme_futures_mdp3_sbe_v1_13.country_of_issue.size

  index = index + cme_futures_mdp3_sbe_v1_13.issuer.size

  index = index + cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_alt_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_alt_id_source.size

  index = index + cme_futures_mdp3_sbe_v1_13.price_quote_method.size

  index = index + cme_futures_mdp3_sbe_v1_13.party_role_clearing_org.size

  index = index + cme_futures_mdp3_sbe_v1_13.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_13.risk_set.size

  index = index + cme_futures_mdp3_sbe_v1_13.market_set.size

  index = index + cme_futures_mdp3_sbe_v1_13.instrument_guid.size

  index = index + cme_futures_mdp3_sbe_v1_13.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Fixed Income
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fixed_income.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Fixed Income
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fixed_income.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_13.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_13.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_13.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_13.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_13.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_13.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_13.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_13.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_13.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_13.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_13.cfi_code.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_13.currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_13.settl_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_13.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_13.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_13.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_optional = cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.dissect(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_13.display_factor.dissect(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_13.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_13.sub_fraction.dissect(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_13.price_display_format.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_13.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty = cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.dissect(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = cme_futures_mdp3_sbe_v1_13.trading_reference_price.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_13.trading_reference_date.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_13.max_price_variation.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount = cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.dissect(buffer, index, packet, parent)

  -- Issue Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, issue_date = cme_futures_mdp3_sbe_v1_13.issue_date.dissect(buffer, index, packet, parent)

  -- Dated Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, dated_date = cme_futures_mdp3_sbe_v1_13.dated_date.dissect(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = cme_futures_mdp3_sbe_v1_13.maturity_date.dissect(buffer, index, packet, parent)

  -- Coupon Rate: 8 Byte Signed Fixed Width Integer Nullable
  index, coupon_rate = cme_futures_mdp3_sbe_v1_13.coupon_rate.dissect(buffer, index, packet, parent)

  -- Par Value: 8 Byte Signed Fixed Width Integer Nullable
  index, par_value = cme_futures_mdp3_sbe_v1_13.par_value.dissect(buffer, index, packet, parent)

  -- Coupon Frequency Unit: 3 Byte Ascii String
  index, coupon_frequency_unit = cme_futures_mdp3_sbe_v1_13.coupon_frequency_unit.dissect(buffer, index, packet, parent)

  -- Coupon Frequency Period: 2 Byte Unsigned Fixed Width Integer Nullable
  index, coupon_frequency_period = cme_futures_mdp3_sbe_v1_13.coupon_frequency_period.dissect(buffer, index, packet, parent)

  -- Coupon Day Count: 20 Byte Ascii String
  index, coupon_day_count = cme_futures_mdp3_sbe_v1_13.coupon_day_count.dissect(buffer, index, packet, parent)

  -- Country Of Issue: 2 Byte Ascii String
  index, country_of_issue = cme_futures_mdp3_sbe_v1_13.country_of_issue.dissect(buffer, index, packet, parent)

  -- Issuer: 25 Byte Ascii String
  index, issuer = cme_futures_mdp3_sbe_v1_13.issuer.dissect(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.dissect(buffer, index, packet, parent)

  -- Security Alt Id: 12 Byte Ascii String
  index, security_alt_id = cme_futures_mdp3_sbe_v1_13.security_alt_id.dissect(buffer, index, packet, parent)

  -- Security Alt Id Source: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_alt_id_source = cme_futures_mdp3_sbe_v1_13.security_alt_id_source.dissect(buffer, index, packet, parent)

  -- Price Quote Method: 5 Byte Ascii String
  index, price_quote_method = cme_futures_mdp3_sbe_v1_13.price_quote_method.dissect(buffer, index, packet, parent)

  -- Party Role Clearing Org: 5 Byte Ascii String
  index, party_role_clearing_org = cme_futures_mdp3_sbe_v1_13.party_role_clearing_org.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_13.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Risk Set: 6 Byte Ascii String
  index, risk_set = cme_futures_mdp3_sbe_v1_13.risk_set.dissect(buffer, index, packet, parent)

  -- Market Set: 6 Byte Ascii String
  index, market_set = cme_futures_mdp3_sbe_v1_13.market_set.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_13.instrument_guid.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_13.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Fixed Income
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fixed_income.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_fixed_income then
    local length = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fixed_income.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fixed_income.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_fixed_income, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fixed_income.fields(buffer, offset, packet, parent)
end

-- Leg Option Delta
cme_futures_mdp3_sbe_v1_13.leg_option_delta = {}

-- Size: Leg Option Delta
cme_futures_mdp3_sbe_v1_13.leg_option_delta.size = 4

-- Display: Leg Option Delta
cme_futures_mdp3_sbe_v1_13.leg_option_delta.display = function(raw, value)
  -- Check null sentinel value
  if raw == 2147483647 then
    return "Leg Option Delta: No Value"
  end

  return "Leg Option Delta: "..value
end

-- Translate: Leg Option Delta
cme_futures_mdp3_sbe_v1_13.leg_option_delta.translate = function(raw)
  -- Check null sentinel value
  if raw == 2147483647 then
    return 0/0
  end

  return raw/10000
end

-- Dissect: Leg Option Delta
cme_futures_mdp3_sbe_v1_13.leg_option_delta.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.leg_option_delta.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cme_futures_mdp3_sbe_v1_13.leg_option_delta.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.leg_option_delta.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.leg_option_delta, range, value, display)

  return offset + length, value
end

-- Leg Price
cme_futures_mdp3_sbe_v1_13.leg_price = {}

-- Size: Leg Price
cme_futures_mdp3_sbe_v1_13.leg_price.size = 8

-- Display: Leg Price
cme_futures_mdp3_sbe_v1_13.leg_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Translate: Leg Price
cme_futures_mdp3_sbe_v1_13.leg_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Leg Price
cme_futures_mdp3_sbe_v1_13.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.leg_price.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.leg_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
cme_futures_mdp3_sbe_v1_13.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
cme_futures_mdp3_sbe_v1_13.leg_ratio_qty.size = 1

-- Display: Leg Ratio Qty
cme_futures_mdp3_sbe_v1_13.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cme_futures_mdp3_sbe_v1_13.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Side
cme_futures_mdp3_sbe_v1_13.leg_side = {}

-- Size: Leg Side
cme_futures_mdp3_sbe_v1_13.leg_side.size = 1

-- Display: Leg Side
cme_futures_mdp3_sbe_v1_13.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy Side (1)"
  end
  if value == 2 then
    return "Leg Side: Sell Side (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
cme_futures_mdp3_sbe_v1_13.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Security Id
cme_futures_mdp3_sbe_v1_13.leg_security_id = {}

-- Size: Leg Security Id
cme_futures_mdp3_sbe_v1_13.leg_security_id.size = 4

-- Display: Leg Security Id
cme_futures_mdp3_sbe_v1_13.leg_security_id.display = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
cme_futures_mdp3_sbe_v1_13.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- M D Instrument Definition Spread Leg Group
cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_group = {}

-- Size: M D Instrument Definition Spread Leg Group
cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_group.size =
  cme_futures_mdp3_sbe_v1_13.leg_security_id.size + 
  cme_futures_mdp3_sbe_v1_13.leg_side.size + 
  cme_futures_mdp3_sbe_v1_13.leg_ratio_qty.size + 
  cme_futures_mdp3_sbe_v1_13.leg_price.size + 
  cme_futures_mdp3_sbe_v1_13.leg_option_delta.size

-- Display: M D Instrument Definition Spread Leg Group
cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread Leg Group
cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_group.fields = function(buffer, offset, packet, parent, m_d_instrument_definition_spread_leg_group_index)
  local index = offset

  -- Implicit M D Instrument Definition Spread Leg Group Index
  if m_d_instrument_definition_spread_leg_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_instrument_definition_spread_leg_group_index, m_d_instrument_definition_spread_leg_group_index)
    iteration:set_generated()
  end

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = cme_futures_mdp3_sbe_v1_13.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = cme_futures_mdp3_sbe_v1_13.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 1 Byte Signed Fixed Width Integer
  index, leg_ratio_qty = cme_futures_mdp3_sbe_v1_13.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price = cme_futures_mdp3_sbe_v1_13.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Option Delta: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_option_delta = cme_futures_mdp3_sbe_v1_13.leg_option_delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Instrument Definition Spread Leg Group
cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_group.dissect = function(buffer, offset, packet, parent, m_d_instrument_definition_spread_leg_group_index)
  if show.m_d_instrument_definition_spread_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_instrument_definition_spread_leg_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_group.fields(buffer, offset, packet, parent, m_d_instrument_definition_spread_leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_group.fields(buffer, offset, packet, parent, m_d_instrument_definition_spread_leg_group_index)
  end
end

-- M D Instrument Definition Spread Leg Groups
cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_groups = {}

-- Calculate size of: M D Instrument Definition Spread Leg Groups
cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_instrument_definition_spread_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_instrument_definition_spread_leg_group_count * 18

  return index
end

-- Display: M D Instrument Definition Spread Leg Groups
cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Instrument Definition Spread Leg Groups
cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Instrument Definition Spread Leg Group
  for m_d_instrument_definition_spread_leg_group_index = 1, num_in_group do
    index, m_d_instrument_definition_spread_leg_group = cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_group.dissect(buffer, index, packet, parent, m_d_instrument_definition_spread_leg_group_index)
  end

  return index
end

-- Dissect: M D Instrument Definition Spread Leg Groups
cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_instrument_definition_spread_leg_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_instrument_definition_spread_leg_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_groups.fields(buffer, offset, packet, parent)
end

-- Cleared Volume
cme_futures_mdp3_sbe_v1_13.cleared_volume = {}

-- Size: Cleared Volume
cme_futures_mdp3_sbe_v1_13.cleared_volume.size = 4

-- Display: Cleared Volume
cme_futures_mdp3_sbe_v1_13.cleared_volume.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Cleared Volume: No Value"
  end

  return "Cleared Volume: "..value
end

-- Dissect: Cleared Volume
cme_futures_mdp3_sbe_v1_13.cleared_volume.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.cleared_volume.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.cleared_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.cleared_volume, range, value, display)

  return offset + length, value
end

-- Open Interest Qty
cme_futures_mdp3_sbe_v1_13.open_interest_qty = {}

-- Size: Open Interest Qty
cme_futures_mdp3_sbe_v1_13.open_interest_qty.size = 4

-- Display: Open Interest Qty
cme_futures_mdp3_sbe_v1_13.open_interest_qty.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Open Interest Qty: No Value"
  end

  return "Open Interest Qty: "..value
end

-- Dissect: Open Interest Qty
cme_futures_mdp3_sbe_v1_13.open_interest_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.open_interest_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.open_interest_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.open_interest_qty, range, value, display)

  return offset + length, value
end

-- Tick Rule
cme_futures_mdp3_sbe_v1_13.tick_rule = {}

-- Size: Tick Rule
cme_futures_mdp3_sbe_v1_13.tick_rule.size = 1

-- Display: Tick Rule
cme_futures_mdp3_sbe_v1_13.tick_rule.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Tick Rule: No Value"
  end

  return "Tick Rule: "..value
end

-- Dissect: Tick Rule
cme_futures_mdp3_sbe_v1_13.tick_rule.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.tick_rule.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.tick_rule.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.tick_rule, range, value, display)

  return offset + length, value
end

-- Price Ratio
cme_futures_mdp3_sbe_v1_13.price_ratio = {}

-- Size: Price Ratio
cme_futures_mdp3_sbe_v1_13.price_ratio.size = 8

-- Display: Price Ratio
cme_futures_mdp3_sbe_v1_13.price_ratio.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Price Ratio: No Value"
  end

  return "Price Ratio: "..value
end

-- Translate: Price Ratio
cme_futures_mdp3_sbe_v1_13.price_ratio.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Price Ratio
cme_futures_mdp3_sbe_v1_13.price_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.price_ratio.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.price_ratio.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.price_ratio.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.price_ratio, range, value, display)

  return offset + length, value
end

-- Security Sub Type
cme_futures_mdp3_sbe_v1_13.security_sub_type = {}

-- Size: Security Sub Type
cme_futures_mdp3_sbe_v1_13.security_sub_type.size = 5

-- Display: Security Sub Type
cme_futures_mdp3_sbe_v1_13.security_sub_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
cme_futures_mdp3_sbe_v1_13.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.security_sub_type.size
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

  local display = cme_futures_mdp3_sbe_v1_13.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Underlying Product Optional
cme_futures_mdp3_sbe_v1_13.underlying_product_optional = {}

-- Size: Underlying Product Optional
cme_futures_mdp3_sbe_v1_13.underlying_product_optional.size = 1

-- Display: Underlying Product Optional
cme_futures_mdp3_sbe_v1_13.underlying_product_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Underlying Product Optional: No Value"
  end

  return "Underlying Product Optional: "..value
end

-- Dissect: Underlying Product Optional
cme_futures_mdp3_sbe_v1_13.underlying_product_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.underlying_product_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.underlying_product_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.underlying_product_optional, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_spread = {}

-- Calculate size of: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_spread.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_13.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_13.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.underlying_product_optional.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_13.asset.size

  index = index + cme_futures_mdp3_sbe_v1_13.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_13.maturity_month_year.size

  index = index + cme_futures_mdp3_sbe_v1_13.currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_sub_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.size

  index = index + cme_futures_mdp3_sbe_v1_13.display_factor.size

  index = index + cme_futures_mdp3_sbe_v1_13.price_display_format.size

  index = index + cme_futures_mdp3_sbe_v1_13.price_ratio.size

  index = index + cme_futures_mdp3_sbe_v1_13.tick_rule.size

  index = index + cme_futures_mdp3_sbe_v1_13.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_13.trading_reference_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.settl_price_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.open_interest_qty.size

  index = index + cme_futures_mdp3_sbe_v1_13.cleared_volume.size

  index = index + cme_futures_mdp3_sbe_v1_13.high_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.low_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_price_variation.size

  index = index + cme_futures_mdp3_sbe_v1_13.main_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_13.sub_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_13.trading_reference_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.price_quote_method.size

  index = index + cme_futures_mdp3_sbe_v1_13.risk_set.size

  index = index + cme_futures_mdp3_sbe_v1_13.market_set.size

  index = index + cme_futures_mdp3_sbe_v1_13.instrument_guid.size

  index = index + cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.size

  index = index + cme_futures_mdp3_sbe_v1_13.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_spread.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_spread.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_13.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_13.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_13.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_13.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_13.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_product_optional = cme_futures_mdp3_sbe_v1_13.underlying_product_optional.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_13.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_13.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_13.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_13.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_13.cfi_code.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_13.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_13.currency.dissect(buffer, index, packet, parent)

  -- Security Sub Type: 5 Byte Ascii String
  index, security_sub_type = cme_futures_mdp3_sbe_v1_13.security_sub_type.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_13.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_13.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_13.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_13.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_optional = cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.dissect(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_13.display_factor.dissect(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_13.price_display_format.dissect(buffer, index, packet, parent)

  -- Price Ratio: 8 Byte Signed Fixed Width Integer Nullable
  index, price_ratio = cme_futures_mdp3_sbe_v1_13.price_ratio.dissect(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = cme_futures_mdp3_sbe_v1_13.tick_rule.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_13.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = cme_futures_mdp3_sbe_v1_13.trading_reference_price.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_13.settl_price_type.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_13.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_13.cleared_volume.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_13.max_price_variation.dissect(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_13.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_13.sub_fraction.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_13.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Price Quote Method: 5 Byte Ascii String
  index, price_quote_method = cme_futures_mdp3_sbe_v1_13.price_quote_method.dissect(buffer, index, packet, parent)

  -- Risk Set: 6 Byte Ascii String
  index, risk_set = cme_futures_mdp3_sbe_v1_13.risk_set.dissect(buffer, index, packet, parent)

  -- Market Set: 6 Byte Ascii String
  index, market_set = cme_futures_mdp3_sbe_v1_13.market_set.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_13.instrument_guid.dissect(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_mdp3_sbe_v1_13.financial_instrument_full_name.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_13.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  -- M D Instrument Definition Spread Leg Groups: Struct of 2 fields
  index, m_d_instrument_definition_spread_leg_groups = cme_futures_mdp3_sbe_v1_13.m_d_instrument_definition_spread_leg_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Spread
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_spread.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_spread then
    local length = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_spread.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_spread.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_spread, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_spread.fields(buffer, offset, packet, parent)
end

-- Min Cab Price
cme_futures_mdp3_sbe_v1_13.min_cab_price = {}

-- Size: Min Cab Price
cme_futures_mdp3_sbe_v1_13.min_cab_price.size = 8

-- Display: Min Cab Price
cme_futures_mdp3_sbe_v1_13.min_cab_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Cab Price: No Value"
  end

  return "Min Cab Price: "..value
end

-- Translate: Min Cab Price
cme_futures_mdp3_sbe_v1_13.min_cab_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Min Cab Price
cme_futures_mdp3_sbe_v1_13.min_cab_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.min_cab_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.min_cab_price.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.min_cab_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.min_cab_price, range, value, display)

  return offset + length, value
end

-- Strike Currency
cme_futures_mdp3_sbe_v1_13.strike_currency = {}

-- Size: Strike Currency
cme_futures_mdp3_sbe_v1_13.strike_currency.size = 3

-- Display: Strike Currency
cme_futures_mdp3_sbe_v1_13.strike_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Currency: No Value"
  end

  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
cme_futures_mdp3_sbe_v1_13.strike_currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.strike_currency.size
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

  local display = cme_futures_mdp3_sbe_v1_13.strike_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Strike Price
cme_futures_mdp3_sbe_v1_13.strike_price = {}

-- Size: Strike Price
cme_futures_mdp3_sbe_v1_13.strike_price.size = 8

-- Display: Strike Price
cme_futures_mdp3_sbe_v1_13.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
cme_futures_mdp3_sbe_v1_13.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Strike Price
cme_futures_mdp3_sbe_v1_13.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_mdp3_sbe_v1_13.strike_price.translate(raw)
  local display = cme_futures_mdp3_sbe_v1_13.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Put Or Call
cme_futures_mdp3_sbe_v1_13.put_or_call = {}

-- Size: Put Or Call
cme_futures_mdp3_sbe_v1_13.put_or_call.size = 1

-- Display: Put Or Call
cme_futures_mdp3_sbe_v1_13.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
cme_futures_mdp3_sbe_v1_13.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_option = {}

-- Calculate size of: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_option.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_13.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_13.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.underlying_product.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_13.asset.size

  index = index + cme_futures_mdp3_sbe_v1_13.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_13.put_or_call.size

  index = index + cme_futures_mdp3_sbe_v1_13.maturity_month_year.size

  index = index + cme_futures_mdp3_sbe_v1_13.currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.strike_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.strike_currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.settl_currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_cab_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.size

  index = index + cme_futures_mdp3_sbe_v1_13.display_factor.size

  index = index + cme_futures_mdp3_sbe_v1_13.tick_rule.size

  index = index + cme_futures_mdp3_sbe_v1_13.main_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_13.sub_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_13.price_display_format.size

  index = index + cme_futures_mdp3_sbe_v1_13.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.size

  index = index + cme_futures_mdp3_sbe_v1_13.trading_reference_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.settl_price_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.cleared_volume.size

  index = index + cme_futures_mdp3_sbe_v1_13.open_interest_qty.size

  index = index + cme_futures_mdp3_sbe_v1_13.low_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.high_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_13.trading_reference_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.instrument_guid.size

  index = index + cme_futures_mdp3_sbe_v1_13.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.underlyings_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.related_instruments_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_option.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_option.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_13.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_13.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_13.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_13.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_13.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_13.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_13.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_13.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_13.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_13.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_13.cfi_code.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = cme_futures_mdp3_sbe_v1_13.put_or_call.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_13.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_13.currency.dissect(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = cme_futures_mdp3_sbe_v1_13.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String
  index, strike_currency = cme_futures_mdp3_sbe_v1_13.strike_currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_13.settl_currency.dissect(buffer, index, packet, parent)

  -- Min Cab Price: 8 Byte Signed Fixed Width Integer Nullable
  index, min_cab_price = cme_futures_mdp3_sbe_v1_13.min_cab_price.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_13.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_13.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_13.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_optional = cme_futures_mdp3_sbe_v1_13.min_price_increment_optional.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount = cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.dissect(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_13.display_factor.dissect(buffer, index, packet, parent)

  -- Tick Rule: 1 Byte Signed Fixed Width Integer Nullable
  index, tick_rule = cme_futures_mdp3_sbe_v1_13.tick_rule.dissect(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_13.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_13.sub_fraction.dissect(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_13.price_display_format.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_13.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty = cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.dissect(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = cme_futures_mdp3_sbe_v1_13.trading_reference_price.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_13.settl_price_type.dissect(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_13.cleared_volume.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_13.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_13.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_13.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_13.instrument_guid.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_13.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  -- Underlyings Groups: Struct of 2 fields
  index, underlyings_groups = cme_futures_mdp3_sbe_v1_13.underlyings_groups.dissect(buffer, index, packet, parent)

  -- Related Instruments Groups: Struct of 2 fields
  index, related_instruments_groups = cme_futures_mdp3_sbe_v1_13.related_instruments_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Option
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_option.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_option then
    local length = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_option.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_option.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_option, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_option.fields(buffer, offset, packet, parent)
end

-- Flow Schedule Type
cme_futures_mdp3_sbe_v1_13.flow_schedule_type = {}

-- Size: Flow Schedule Type
cme_futures_mdp3_sbe_v1_13.flow_schedule_type.size = 1

-- Display: Flow Schedule Type
cme_futures_mdp3_sbe_v1_13.flow_schedule_type.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Flow Schedule Type: No Value"
  end

  return "Flow Schedule Type: "..value
end

-- Dissect: Flow Schedule Type
cme_futures_mdp3_sbe_v1_13.flow_schedule_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.flow_schedule_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.flow_schedule_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.flow_schedule_type, range, value, display)

  return offset + length, value
end

-- Contract Multiplier Unit
cme_futures_mdp3_sbe_v1_13.contract_multiplier_unit = {}

-- Size: Contract Multiplier Unit
cme_futures_mdp3_sbe_v1_13.contract_multiplier_unit.size = 1

-- Display: Contract Multiplier Unit
cme_futures_mdp3_sbe_v1_13.contract_multiplier_unit.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Contract Multiplier Unit: No Value"
  end

  return "Contract Multiplier Unit: "..value
end

-- Dissect: Contract Multiplier Unit
cme_futures_mdp3_sbe_v1_13.contract_multiplier_unit.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.contract_multiplier_unit.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.contract_multiplier_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.contract_multiplier_unit, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
cme_futures_mdp3_sbe_v1_13.contract_multiplier = {}

-- Size: Contract Multiplier
cme_futures_mdp3_sbe_v1_13.contract_multiplier.size = 4

-- Display: Contract Multiplier
cme_futures_mdp3_sbe_v1_13.contract_multiplier.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
cme_futures_mdp3_sbe_v1_13.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Original Contract Size
cme_futures_mdp3_sbe_v1_13.original_contract_size = {}

-- Size: Original Contract Size
cme_futures_mdp3_sbe_v1_13.original_contract_size.size = 4

-- Display: Original Contract Size
cme_futures_mdp3_sbe_v1_13.original_contract_size.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Original Contract Size: No Value"
  end

  return "Original Contract Size: "..value
end

-- Dissect: Original Contract Size
cme_futures_mdp3_sbe_v1_13.original_contract_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.original_contract_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.original_contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.original_contract_size, range, value, display)

  return offset + length, value
end

-- Decay Start Date
cme_futures_mdp3_sbe_v1_13.decay_start_date = {}

-- Size: Decay Start Date
cme_futures_mdp3_sbe_v1_13.decay_start_date.size = 2

-- Display: Decay Start Date
cme_futures_mdp3_sbe_v1_13.decay_start_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Decay Start Date: No Value"
  end

  return "Decay Start Date: "..value
end

-- Dissect: Decay Start Date
cme_futures_mdp3_sbe_v1_13.decay_start_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.decay_start_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.decay_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.decay_start_date, range, value, display)

  return offset + length, value
end

-- Decay Quantity
cme_futures_mdp3_sbe_v1_13.decay_quantity = {}

-- Size: Decay Quantity
cme_futures_mdp3_sbe_v1_13.decay_quantity.size = 4

-- Display: Decay Quantity
cme_futures_mdp3_sbe_v1_13.decay_quantity.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Decay Quantity: No Value"
  end

  return "Decay Quantity: "..value
end

-- Dissect: Decay Quantity
cme_futures_mdp3_sbe_v1_13.decay_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.decay_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.decay_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.decay_quantity, range, value, display)

  return offset + length, value
end

-- Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_future = {}

-- Calculate size of: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_future.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_update_action.size

  index = index + cme_futures_mdp3_sbe_v1_13.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_13.appl_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.market_segment_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.underlying_product.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_exchange.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_group.size

  index = index + cme_futures_mdp3_sbe_v1_13.asset.size

  index = index + cme_futures_mdp3_sbe_v1_13.symbol.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.cfi_code.size

  index = index + cme_futures_mdp3_sbe_v1_13.maturity_month_year.size

  index = index + cme_futures_mdp3_sbe_v1_13.currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.settl_currency.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_algorithm.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_trade_vol.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_price_increment.size

  index = index + cme_futures_mdp3_sbe_v1_13.display_factor.size

  index = index + cme_futures_mdp3_sbe_v1_13.main_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_13.sub_fraction.size

  index = index + cme_futures_mdp3_sbe_v1_13.price_display_format.size

  index = index + cme_futures_mdp3_sbe_v1_13.unit_of_measure.size

  index = index + cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.size

  index = index + cme_futures_mdp3_sbe_v1_13.trading_reference_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.settl_price_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.open_interest_qty.size

  index = index + cme_futures_mdp3_sbe_v1_13.cleared_volume.size

  index = index + cme_futures_mdp3_sbe_v1_13.high_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.low_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_price_variation.size

  index = index + cme_futures_mdp3_sbe_v1_13.decay_quantity.size

  index = index + cme_futures_mdp3_sbe_v1_13.decay_start_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.original_contract_size.size

  index = index + cme_futures_mdp3_sbe_v1_13.contract_multiplier.size

  index = index + cme_futures_mdp3_sbe_v1_13.contract_multiplier_unit.size

  index = index + cme_futures_mdp3_sbe_v1_13.flow_schedule_type.size

  index = index + cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.size

  index = index + cme_futures_mdp3_sbe_v1_13.user_defined_instrument.size

  index = index + cme_futures_mdp3_sbe_v1_13.trading_reference_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.instrument_guid.size

  index = index + cme_futures_mdp3_sbe_v1_13.events_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_future.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_future.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Tot Num Reports Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, tot_num_reports_optional = cme_futures_mdp3_sbe_v1_13.tot_num_reports_optional.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = cme_futures_mdp3_sbe_v1_13.security_update_action.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_13.last_update_time.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_13.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_13.appl_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = cme_futures_mdp3_sbe_v1_13.market_segment_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: 1 Byte Unsigned Fixed Width Integer
  index, underlying_product = cme_futures_mdp3_sbe_v1_13.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = cme_futures_mdp3_sbe_v1_13.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_13.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_13.asset.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_mdp3_sbe_v1_13.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = cme_futures_mdp3_sbe_v1_13.cfi_code.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_mdp3_sbe_v1_13.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_mdp3_sbe_v1_13.currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = cme_futures_mdp3_sbe_v1_13.settl_currency.dissect(buffer, index, packet, parent)

  -- Match Algorithm: 1 Byte Ascii String
  index, match_algorithm = cme_futures_mdp3_sbe_v1_13.match_algorithm.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, min_trade_vol = cme_futures_mdp3_sbe_v1_13.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 4 Byte Unsigned Fixed Width Integer
  index, max_trade_vol = cme_futures_mdp3_sbe_v1_13.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer
  index, min_price_increment = cme_futures_mdp3_sbe_v1_13.min_price_increment.dissect(buffer, index, packet, parent)

  -- Display Factor: 8 Byte Signed Fixed Width Integer
  index, display_factor = cme_futures_mdp3_sbe_v1_13.display_factor.dissect(buffer, index, packet, parent)

  -- Main Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, main_fraction = cme_futures_mdp3_sbe_v1_13.main_fraction.dissect(buffer, index, packet, parent)

  -- Sub Fraction: 1 Byte Unsigned Fixed Width Integer Nullable
  index, sub_fraction = cme_futures_mdp3_sbe_v1_13.sub_fraction.dissect(buffer, index, packet, parent)

  -- Price Display Format: 1 Byte Unsigned Fixed Width Integer Nullable
  index, price_display_format = cme_futures_mdp3_sbe_v1_13.price_display_format.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index, unit_of_measure = cme_futures_mdp3_sbe_v1_13.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, unit_of_measure_qty = cme_futures_mdp3_sbe_v1_13.unit_of_measure_qty.dissect(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = cme_futures_mdp3_sbe_v1_13.trading_reference_price.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_13.settl_price_type.dissect(buffer, index, packet, parent)

  -- Open Interest Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, open_interest_qty = cme_futures_mdp3_sbe_v1_13.open_interest_qty.dissect(buffer, index, packet, parent)

  -- Cleared Volume: 4 Byte Signed Fixed Width Integer Nullable
  index, cleared_volume = cme_futures_mdp3_sbe_v1_13.cleared_volume.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_13.max_price_variation.dissect(buffer, index, packet, parent)

  -- Decay Quantity: 4 Byte Signed Fixed Width Integer Nullable
  index, decay_quantity = cme_futures_mdp3_sbe_v1_13.decay_quantity.dissect(buffer, index, packet, parent)

  -- Decay Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, decay_start_date = cme_futures_mdp3_sbe_v1_13.decay_start_date.dissect(buffer, index, packet, parent)

  -- Original Contract Size: 4 Byte Signed Fixed Width Integer Nullable
  index, original_contract_size = cme_futures_mdp3_sbe_v1_13.original_contract_size.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: 4 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier = cme_futures_mdp3_sbe_v1_13.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Contract Multiplier Unit: 1 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier_unit = cme_futures_mdp3_sbe_v1_13.contract_multiplier_unit.dissect(buffer, index, packet, parent)

  -- Flow Schedule Type: 1 Byte Signed Fixed Width Integer Nullable
  index, flow_schedule_type = cme_futures_mdp3_sbe_v1_13.flow_schedule_type.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment_amount = cme_futures_mdp3_sbe_v1_13.min_price_increment_amount.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: 1 Byte Ascii String
  index, user_defined_instrument = cme_futures_mdp3_sbe_v1_13.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_13.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Instrument Guid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, instrument_guid = cme_futures_mdp3_sbe_v1_13.instrument_guid.dissect(buffer, index, packet, parent)

  -- Events Groups: Struct of 2 fields
  index, events_groups = cme_futures_mdp3_sbe_v1_13.events_groups.dissect(buffer, index, packet, parent)

  -- M D Feed Types Groups: Struct of 2 fields
  index, m_d_feed_types_groups = cme_futures_mdp3_sbe_v1_13.m_d_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Inst Attrib Groups: Struct of 2 fields
  index, inst_attrib_groups = cme_futures_mdp3_sbe_v1_13.inst_attrib_groups.dissect(buffer, index, packet, parent)

  -- Lot Type Rules Groups: Struct of 2 fields
  index, lot_type_rules_groups = cme_futures_mdp3_sbe_v1_13.lot_type_rules_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Definition Future
cme_futures_mdp3_sbe_v1_13.md_instrument_definition_future.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_instrument_definition_future then
    local length = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_future.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_instrument_definition_future.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_instrument_definition_future, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_future.fields(buffer, offset, packet, parent)
end

-- Snapshot Full Refresh Order Book Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_group = {}

-- Size: Snapshot Full Refresh Order Book Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_group.size =
  cme_futures_mdp3_sbe_v1_13.order_id.size + 
  cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_13.md_display_qty.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_book.size

-- Display: Snapshot Full Refresh Order Book Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_group.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_order_book_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Order Book Group Index
  if snapshot_full_refresh_order_book_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_order_book_group_index, snapshot_full_refresh_order_book_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- Md Order Priority Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority_optional = cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_13.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Display Qty: 4 Byte Signed Fixed Width Integer
  index, md_display_qty = cme_futures_mdp3_sbe_v1_13.md_display_qty.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 7 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_13.md_entry_type_book.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_group.dissect = function(buffer, offset, packet, parent, snapshot_full_refresh_order_book_group_index)
  if show.snapshot_full_refresh_order_book_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_order_book_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_order_book_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_order_book_group_index)
  end
end

-- Snapshot Full Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_groups = {}

-- Calculate size of: Snapshot Full Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local snapshot_full_refresh_order_book_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_order_book_group_count * 29

  return index
end

-- Display: Snapshot Full Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Order Book Group
  for snapshot_full_refresh_order_book_group_index = 1, num_in_group do
    index, snapshot_full_refresh_order_book_group = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_group.dissect(buffer, index, packet, parent, snapshot_full_refresh_order_book_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book_groups then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_order_book_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_groups.fields(buffer, offset, packet, parent)
end

-- Current Chunk
cme_futures_mdp3_sbe_v1_13.current_chunk = {}

-- Size: Current Chunk
cme_futures_mdp3_sbe_v1_13.current_chunk.size = 4

-- Display: Current Chunk
cme_futures_mdp3_sbe_v1_13.current_chunk.display = function(value)
  return "Current Chunk: "..value
end

-- Dissect: Current Chunk
cme_futures_mdp3_sbe_v1_13.current_chunk.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.current_chunk.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.current_chunk.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.current_chunk, range, value, display)

  return offset + length, value
end

-- No Chunks
cme_futures_mdp3_sbe_v1_13.no_chunks = {}

-- Size: No Chunks
cme_futures_mdp3_sbe_v1_13.no_chunks.size = 4

-- Display: No Chunks
cme_futures_mdp3_sbe_v1_13.no_chunks.display = function(value)
  return "No Chunks: "..value
end

-- Dissect: No Chunks
cme_futures_mdp3_sbe_v1_13.no_chunks.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.no_chunks.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.no_chunks.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.no_chunks, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book = {}

-- Calculate size of: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed.size

  index = index + cme_futures_mdp3_sbe_v1_13.tot_num_reports.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.no_chunks.size

  index = index + cme_futures_mdp3_sbe_v1_13.current_chunk.size

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = cme_futures_mdp3_sbe_v1_13.tot_num_reports.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- No Chunks: 4 Byte Unsigned Fixed Width Integer
  index, no_chunks = cme_futures_mdp3_sbe_v1_13.no_chunks.dissect(buffer, index, packet, parent)

  -- Current Chunk: 4 Byte Unsigned Fixed Width Integer
  index, current_chunk = cme_futures_mdp3_sbe_v1_13.current_chunk.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Snapshot Full Refresh Order Book Groups: Struct of 2 fields
  index, snapshot_full_refresh_order_book_groups = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Order Book
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_order_book then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_order_book, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book.fields(buffer, offset, packet, parent)
end

-- Snapshot Full Refresh Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_group = {}

-- Size: Snapshot Full Refresh Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_price_level_optional.size + 
  cme_futures_mdp3_sbe_v1_13.trading_reference_date.size + 
  cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.size + 
  cme_futures_mdp3_sbe_v1_13.settl_price_type.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_.size

-- Display: Snapshot Full Refresh Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_group.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Group Index
  if snapshot_full_refresh_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_group_index, snapshot_full_refresh_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.dissect(buffer, index, packet, parent)

  -- Md Price Level Optional: 1 Byte Signed Fixed Width Integer Nullable
  index, md_price_level_optional = cme_futures_mdp3_sbe_v1_13.md_price_level_optional.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_13.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_13.settl_price_type.dissect(buffer, index, packet, parent)

  -- Md Entry Type : 1 Byte Ascii String Enum with 20 values
  index, md_entry_type_ = cme_futures_mdp3_sbe_v1_13.md_entry_type_.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Group
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_group.dissect = function(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
  if show.snapshot_full_refresh_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_group_index)
  end
end

-- Snapshot Full Refresh Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_groups = {}

-- Calculate size of: Snapshot Full Refresh Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local snapshot_full_refresh_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_group_count * 22

  return index
end

-- Display: Snapshot Full Refresh Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Group
  for snapshot_full_refresh_group_index = 1, num_in_group do
    index, snapshot_full_refresh_group = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_group.dissect(buffer, index, packet, parent, snapshot_full_refresh_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Groups
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_groups then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_groups.fields(buffer, offset, packet, parent)
end

-- Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh = {}

-- Calculate size of: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed.size

  index = index + cme_futures_mdp3_sbe_v1_13.tot_num_reports.size

  index = index + cme_futures_mdp3_sbe_v1_13.security_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.rpt_seq.size

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.last_update_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.trade_date.size

  index = index + cme_futures_mdp3_sbe_v1_13.md_security_trading_status.size

  index = index + cme_futures_mdp3_sbe_v1_13.high_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.low_limit_price.size

  index = index + cme_futures_mdp3_sbe_v1_13.max_price_variation.size

  index = index + cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = cme_futures_mdp3_sbe_v1_13.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = cme_futures_mdp3_sbe_v1_13.tot_num_reports.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer
  index, last_update_time = cme_futures_mdp3_sbe_v1_13.last_update_time.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Md Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, md_security_trading_status = cme_futures_mdp3_sbe_v1_13.md_security_trading_status.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_13.max_price_variation.dissect(buffer, index, packet, parent)

  -- Snapshot Full Refresh Groups: Struct of 2 fields
  index, snapshot_full_refresh_groups = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh
cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh then
    local length = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.snapshot_full_refresh, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Session Statistics Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_group = {}

-- Size: M D Incremental Refresh Session Statistics Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.size + 
  cme_futures_mdp3_sbe_v1_13.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_statistics.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_13.padding_1.size

-- Display: M D Incremental Refresh Session Statistics Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Session Statistics Group Index
  if m_d_incremental_refresh_session_statistics_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_group_index, m_d_incremental_refresh_session_statistics_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_13.md_entry_px.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, open_close_settl_flag = cme_futures_mdp3_sbe_v1_13.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_13.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Statistics: 1 Byte Ascii String Enum with 6 values
  index, md_entry_type_statistics = cme_futures_mdp3_sbe_v1_13.md_entry_type_statistics.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = cme_futures_mdp3_sbe_v1_13.padding_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_group_index)
  if show.m_d_incremental_refresh_session_statistics_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_session_statistics_group_index)
  end
end

-- M D Incremental Refresh Session Statistics Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_groups = {}

-- Calculate size of: M D Incremental Refresh Session Statistics Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_session_statistics_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_session_statistics_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Session Statistics Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Session Statistics Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Session Statistics Group
  for m_d_incremental_refresh_session_statistics_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_session_statistics_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_session_statistics_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Session Statistics Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_session_statistics_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_session_statistics_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics = {}

-- Calculate size of: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Session Statistics Groups: Struct of 2 fields
  index, m_d_incremental_refresh_session_statistics_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_session_statistics_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Session Statistics
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_session_statistics then
    local length = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_session_statistics, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Limits Banding Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_group = {}

-- Size: M D Incremental Refresh Limits Banding Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_group.size =
  cme_futures_mdp3_sbe_v1_13.high_limit_price.size + 
  cme_futures_mdp3_sbe_v1_13.low_limit_price.size + 
  cme_futures_mdp3_sbe_v1_13.max_price_variation.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.rpt_seq.size

-- Display: M D Incremental Refresh Limits Banding Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Limits Banding Group Index
  if m_d_incremental_refresh_limits_banding_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_limits_banding_group_index, m_d_incremental_refresh_limits_banding_group_index)
    iteration:set_generated()
  end

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = cme_futures_mdp3_sbe_v1_13.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = cme_futures_mdp3_sbe_v1_13.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: 8 Byte Signed Fixed Width Integer Nullable
  index, max_price_variation = cme_futures_mdp3_sbe_v1_13.max_price_variation.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_group_index)
  if show.m_d_incremental_refresh_limits_banding_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_limits_banding_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_limits_banding_group_index)
  end
end

-- M D Incremental Refresh Limits Banding Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_groups = {}

-- Calculate size of: M D Incremental Refresh Limits Banding Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_limits_banding_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_limits_banding_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Limits Banding Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Limits Banding Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Limits Banding Group
  for m_d_incremental_refresh_limits_banding_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_limits_banding_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_limits_banding_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Limits Banding Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_limits_banding_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_limits_banding_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_limits_banding = {}

-- Calculate size of: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_limits_banding.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_limits_banding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_limits_banding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Limits Banding Groups: Struct of 2 fields
  index, m_d_incremental_refresh_limits_banding_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_limits_banding_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Limits Banding
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_limits_banding.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_limits_banding then
    local length = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_limits_banding.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_limits_banding.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_limits_banding, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_limits_banding.fields(buffer, offset, packet, parent)
end

-- Md Entry Type Daily Statistics
cme_futures_mdp3_sbe_v1_13.md_entry_type_daily_statistics = {}

-- Size: Md Entry Type Daily Statistics
cme_futures_mdp3_sbe_v1_13.md_entry_type_daily_statistics.size = 1

-- Display: Md Entry Type Daily Statistics
cme_futures_mdp3_sbe_v1_13.md_entry_type_daily_statistics.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.md_entry_type_daily_statistics.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_entry_type_daily_statistics.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_mdp3_sbe_v1_13.md_entry_type_daily_statistics.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_type_daily_statistics, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Daily Statistics Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_group = {}

-- Size: M D Incremental Refresh Daily Statistics Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_13.trading_reference_date.size + 
  cme_futures_mdp3_sbe_v1_13.settl_price_type.size + 
  cme_futures_mdp3_sbe_v1_13.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_daily_statistics.size + 
  cme_futures_mdp3_sbe_v1_13.padding_7.size

-- Display: M D Incremental Refresh Daily Statistics Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Daily Statistics Group Index
  if m_d_incremental_refresh_daily_statistics_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_daily_statistics_group_index, m_d_incremental_refresh_daily_statistics_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  -- Trading Reference Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trading_reference_date = cme_futures_mdp3_sbe_v1_13.trading_reference_date.dissect(buffer, index, packet, parent)

  -- Settl Price Type: Struct of 6 fields
  index, settl_price_type = cme_futures_mdp3_sbe_v1_13.settl_price_type.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_13.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Daily Statistics: 1 Byte Ascii String Enum with 4 values
  index, md_entry_type_daily_statistics = cme_futures_mdp3_sbe_v1_13.md_entry_type_daily_statistics.dissect(buffer, index, packet, parent)

  -- Padding 7: 7 Byte
  index, padding_7 = cme_futures_mdp3_sbe_v1_13.padding_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_group_index)
  if show.m_d_incremental_refresh_daily_statistics_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_daily_statistics_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_daily_statistics_group_index)
  end
end

-- M D Incremental Refresh Daily Statistics Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_groups = {}

-- Calculate size of: M D Incremental Refresh Daily Statistics Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_daily_statistics_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_daily_statistics_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Daily Statistics Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Daily Statistics Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Daily Statistics Group
  for m_d_incremental_refresh_daily_statistics_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_daily_statistics_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_daily_statistics_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Daily Statistics Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_daily_statistics_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_daily_statistics_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_daily_statistics = {}

-- Calculate size of: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_daily_statistics.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_daily_statistics.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_daily_statistics.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Daily Statistics Groups: Struct of 2 fields
  index, m_d_incremental_refresh_daily_statistics_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_daily_statistics_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Daily Statistics
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_daily_statistics.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_daily_statistics then
    local length = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_daily_statistics.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_daily_statistics.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_daily_statistics, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_daily_statistics.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Trade Summary Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_group = {}

-- Size: M D Incremental Refresh Trade Summary Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_group.size =
  cme_futures_mdp3_sbe_v1_13.order_id.size + 
  cme_futures_mdp3_sbe_v1_13.last_qty.size + 
  cme_futures_mdp3_sbe_v1_13.padding_4.size

-- Display: M D Incremental Refresh Trade Summary Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary Order Group Index
  if m_d_incremental_refresh_trade_summary_order_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_order_group_index, m_d_incremental_refresh_trade_summary_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = cme_futures_mdp3_sbe_v1_13.last_qty.dissect(buffer, index, packet, parent)

  -- Padding 4: 4 Byte
  index, padding_4 = cme_futures_mdp3_sbe_v1_13.padding_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_order_group_index)
  if show.m_d_incremental_refresh_trade_summary_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_order_group_index)
  end
end

-- M D Incremental Refresh Trade Summary Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_groups = {}

-- Calculate size of: M D Incremental Refresh Trade Summary Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size_8_byte.size

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_order_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Trade Summary Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_13.group_size_8_byte.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary Order Group
  for m_d_incremental_refresh_trade_summary_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_order_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_order_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_groups.fields(buffer, offset, packet, parent)
end

-- Md Trade Entry I D u Int 32 Null
cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32_null = {}

-- Size: Md Trade Entry I D u Int 32 Null
cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32_null.size = 4

-- Display: Md Trade Entry I D u Int 32 Null
cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32_null.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Md Trade Entry I D u Int 32 Null: No Value"
  end

  return "Md Trade Entry I D u Int 32 Null: "..value
end

-- Dissect: Md Trade Entry I D u Int 32 Null
cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32_null.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32_null.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_trade_entry_i_d_u_int_32_null, range, value, display)

  return offset + length, value
end

-- Md Entry Size
cme_futures_mdp3_sbe_v1_13.md_entry_size = {}

-- Size: Md Entry Size
cme_futures_mdp3_sbe_v1_13.md_entry_size.size = 4

-- Display: Md Entry Size
cme_futures_mdp3_sbe_v1_13.md_entry_size.display = function(value)
  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cme_futures_mdp3_sbe_v1_13.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.md_entry_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Trade Summary Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_group = {}

-- Size: M D Incremental Refresh Trade Summary Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_px.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_size.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_13.number_of_orders.size + 
  cme_futures_mdp3_sbe_v1_13.aggressor_side.size + 
  cme_futures_mdp3_sbe_v1_13.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32_null.size + 
  cme_futures_mdp3_sbe_v1_13.padding_2.size

-- Display: M D Incremental Refresh Trade Summary Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Trade Summary Group Index
  if m_d_incremental_refresh_trade_summary_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_group_index, m_d_incremental_refresh_trade_summary_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px: 8 Byte Signed Fixed Width Integer
  index, md_entry_px = cme_futures_mdp3_sbe_v1_13.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = cme_futures_mdp3_sbe_v1_13.md_entry_size.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  -- Number Of Orders: 4 Byte Signed Fixed Width Integer
  index, number_of_orders = cme_futures_mdp3_sbe_v1_13.number_of_orders.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, aggressor_side = cme_futures_mdp3_sbe_v1_13.aggressor_side.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_13.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Trade Entry I D u Int 32 Null: 4 Byte Unsigned Fixed Width Integer Nullable
  index, md_trade_entry_i_d_u_int_32_null = cme_futures_mdp3_sbe_v1_13.md_trade_entry_i_d_u_int_32_null.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_group_index)
  if show.m_d_incremental_refresh_trade_summary_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_trade_summary_group_index)
  end
end

-- M D Incremental Refresh Trade Summary Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_groups = {}

-- Calculate size of: M D Incremental Refresh Trade Summary Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_trade_summary_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_trade_summary_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Trade Summary Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Trade Summary Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Trade Summary Group
  for m_d_incremental_refresh_trade_summary_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_trade_summary_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_trade_summary_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Trade Summary Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_trade_summary_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_trade_summary_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary = {}

-- Calculate size of: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_groups.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Trade Summary Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_trade_summary_order_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_trade_summary_order_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Trade Summary
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_trade_summary then
    local length = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_trade_summary, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary.fields(buffer, offset, packet, parent)
end

-- Order Id Optional
cme_futures_mdp3_sbe_v1_13.order_id_optional = {}

-- Size: Order Id Optional
cme_futures_mdp3_sbe_v1_13.order_id_optional.size = 8

-- Display: Order Id Optional
cme_futures_mdp3_sbe_v1_13.order_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
cme_futures_mdp3_sbe_v1_13.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- M D Incremental Refresh Order Book Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_group = {}

-- Size: M D Incremental Refresh Order Book Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_group.size =
  cme_futures_mdp3_sbe_v1_13.order_id_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_display_qty_optional.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_book.size + 
  cme_futures_mdp3_sbe_v1_13.padding_6.size

-- Display: M D Incremental Refresh Order Book Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Order Book Group Index
  if m_d_incremental_refresh_order_book_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_order_book_group_index, m_d_incremental_refresh_order_book_group_index)
    iteration:set_generated()
  end

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = cme_futures_mdp3_sbe_v1_13.order_id_optional.dissect(buffer, index, packet, parent)

  -- Md Order Priority Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority_optional = cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = cme_futures_mdp3_sbe_v1_13.md_display_qty_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_13.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 7 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_13.md_entry_type_book.dissect(buffer, index, packet, parent)

  -- Padding 6: 6 Byte
  index, padding_6 = cme_futures_mdp3_sbe_v1_13.padding_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Order Book Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_group_index)
  if show.m_d_incremental_refresh_order_book_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_order_book_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_order_book_group_index)
  end
end

-- M D Incremental Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_groups = {}

-- Calculate size of: M D Incremental Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_order_book_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_order_book_group_count * 40

  return index
end

-- Display: M D Incremental Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Order Book Group
  for m_d_incremental_refresh_order_book_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_order_book_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_order_book_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Order Book Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_order_book_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_order_book_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_order_book = {}

-- Calculate size of: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_order_book.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_order_book.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_order_book.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Order Book Groups: Struct of 2 fields
  index, m_d_incremental_refresh_order_book_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_order_book_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Order Book
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_order_book.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_order_book then
    local length = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_order_book.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_order_book.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_order_book, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_order_book.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Book Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_group = {}

-- Size: M D Incremental Refresh Book Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_group.size =
  cme_futures_mdp3_sbe_v1_13.order_id.size + 
  cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_display_qty_optional.size + 
  cme_futures_mdp3_sbe_v1_13.reference_id.size + 
  cme_futures_mdp3_sbe_v1_13.order_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.padding_2.size

-- Display: M D Incremental Refresh Book Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_order_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book Order Group Index
  if m_d_incremental_refresh_book_order_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_order_group_index, m_d_incremental_refresh_book_order_group_index)
    iteration:set_generated()
  end

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_mdp3_sbe_v1_13.order_id.dissect(buffer, index, packet, parent)

  -- Md Order Priority Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_order_priority_optional = cme_futures_mdp3_sbe_v1_13.md_order_priority_optional.dissect(buffer, index, packet, parent)

  -- Md Display Qty Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_display_qty_optional = cme_futures_mdp3_sbe_v1_13.md_display_qty_optional.dissect(buffer, index, packet, parent)

  -- Reference Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, reference_id = cme_futures_mdp3_sbe_v1_13.reference_id.dissect(buffer, index, packet, parent)

  -- Order Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_update_action = cme_futures_mdp3_sbe_v1_13.order_update_action.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book Order Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_order_group_index)
  if show.m_d_incremental_refresh_book_order_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_order_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_order_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_order_group_index)
  end
end

-- M D Incremental Refresh Book Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_groups = {}

-- Calculate size of: M D Incremental Refresh Book Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size_8_byte.size

  -- Calculate field size from count
  local m_d_incremental_refresh_book_order_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_order_group_count * 24

  return index
end

-- Display: M D Incremental Refresh Book Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 8 Byte: Struct of 3 fields
  index, group_size_8_byte = cme_futures_mdp3_sbe_v1_13.group_size_8_byte.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book Order Group
  for m_d_incremental_refresh_book_order_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_order_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_book_order_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book Order Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_order_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_order_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_groups.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Book Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_group = {}

-- Size: M D Incremental Refresh Book Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.size + 
  cme_futures_mdp3_sbe_v1_13.md_price_level.size + 
  cme_futures_mdp3_sbe_v1_13.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.md_entry_type_book.size + 
  cme_futures_mdp3_sbe_v1_13.tradeable_size.size + 
  cme_futures_mdp3_sbe_v1_13.padding_1.size

-- Display: M D Incremental Refresh Book Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Book Group Index
  if m_d_incremental_refresh_book_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_group_index, m_d_incremental_refresh_book_group_index)
    iteration:set_generated()
  end

  -- Md Entry Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_px_optional = cme_futures_mdp3_sbe_v1_13.md_entry_px_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, md_entry_size_optional = cme_futures_mdp3_sbe_v1_13.md_entry_size_optional.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  -- Number Of Orders Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, number_of_orders_optional = cme_futures_mdp3_sbe_v1_13.number_of_orders_optional.dissect(buffer, index, packet, parent)

  -- Md Price Level: 1 Byte Unsigned Fixed Width Integer
  index, md_price_level = cme_futures_mdp3_sbe_v1_13.md_price_level.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_13.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type Book: 1 Byte Ascii String Enum with 7 values
  index, md_entry_type_book = cme_futures_mdp3_sbe_v1_13.md_entry_type_book.dissect(buffer, index, packet, parent)

  -- Tradeable Size: 4 Byte Signed Fixed Width Integer Nullable
  index, tradeable_size = cme_futures_mdp3_sbe_v1_13.tradeable_size.dissect(buffer, index, packet, parent)

  -- Padding 1: 1 Byte
  index, padding_1 = cme_futures_mdp3_sbe_v1_13.padding_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Book Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_book_group_index)
  if show.m_d_incremental_refresh_book_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_book_group_index)
  end
end

-- M D Incremental Refresh Book Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_groups = {}

-- Calculate size of: M D Incremental Refresh Book Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_book_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_book_group_count * 32

  return index
end

-- Display: M D Incremental Refresh Book Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Book Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Book Group
  for m_d_incremental_refresh_book_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_book_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_book_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Book Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_book_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_book_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book = {}

-- Calculate size of: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_groups.size(buffer, offset + index)

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Book Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_groups.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Book Order Groups: Struct of 2 fields
  index, m_d_incremental_refresh_book_order_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_book_order_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Book
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_book then
    local length = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_book, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book.fields(buffer, offset, packet, parent)
end

-- Side Optional
cme_futures_mdp3_sbe_v1_13.side_optional = {}

-- Size: Side Optional
cme_futures_mdp3_sbe_v1_13.side_optional.size = 1

-- Display: Side Optional
cme_futures_mdp3_sbe_v1_13.side_optional.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Side Optional: No Value"
  end

  return "Side Optional: "..value
end

-- Dissect: Side Optional
cme_futures_mdp3_sbe_v1_13.side_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.side_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Quote Type
cme_futures_mdp3_sbe_v1_13.quote_type = {}

-- Size: Quote Type
cme_futures_mdp3_sbe_v1_13.quote_type.size = 1

-- Display: Quote Type
cme_futures_mdp3_sbe_v1_13.quote_type.display = function(value)
  return "Quote Type: "..value
end

-- Dissect: Quote Type
cme_futures_mdp3_sbe_v1_13.quote_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.quote_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.quote_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.quote_type, range, value, display)

  return offset + length, value
end

-- Order Qty
cme_futures_mdp3_sbe_v1_13.order_qty = {}

-- Size: Order Qty
cme_futures_mdp3_sbe_v1_13.order_qty.size = 4

-- Display: Order Qty
cme_futures_mdp3_sbe_v1_13.order_qty.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Dissect: Order Qty
cme_futures_mdp3_sbe_v1_13.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Related Sym Group
cme_futures_mdp3_sbe_v1_13.related_sym_group = {}

-- Size: Related Sym Group
cme_futures_mdp3_sbe_v1_13.related_sym_group.size =
  cme_futures_mdp3_sbe_v1_13.symbol.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.order_qty.size + 
  cme_futures_mdp3_sbe_v1_13.quote_type.size + 
  cme_futures_mdp3_sbe_v1_13.side_optional.size + 
  cme_futures_mdp3_sbe_v1_13.padding_2.size

-- Display: Related Sym Group
cme_futures_mdp3_sbe_v1_13.related_sym_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Group
cme_futures_mdp3_sbe_v1_13.related_sym_group.fields = function(buffer, offset, packet, parent, related_sym_group_index)
  local index = offset

  -- Implicit Related Sym Group Index
  if related_sym_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.related_sym_group_index, related_sym_group_index)
    iteration:set_generated()
  end

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_mdp3_sbe_v1_13.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, order_qty = cme_futures_mdp3_sbe_v1_13.order_qty.dissect(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Signed Fixed Width Integer
  index, quote_type = cme_futures_mdp3_sbe_v1_13.quote_type.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Signed Fixed Width Integer Nullable
  index, side_optional = cme_futures_mdp3_sbe_v1_13.side_optional.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
cme_futures_mdp3_sbe_v1_13.related_sym_group.dissect = function(buffer, offset, packet, parent, related_sym_group_index)
  if show.related_sym_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.related_sym_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.related_sym_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
  end
end

-- Related Sym Groups
cme_futures_mdp3_sbe_v1_13.related_sym_groups = {}

-- Calculate size of: Related Sym Groups
cme_futures_mdp3_sbe_v1_13.related_sym_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local related_sym_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_sym_group_count * 32

  return index
end

-- Display: Related Sym Groups
cme_futures_mdp3_sbe_v1_13.related_sym_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Groups
cme_futures_mdp3_sbe_v1_13.related_sym_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Related Sym Group
  for related_sym_group_index = 1, num_in_group do
    index, related_sym_group = cme_futures_mdp3_sbe_v1_13.related_sym_group.dissect(buffer, index, packet, parent, related_sym_group_index)
  end

  return index
end

-- Dissect: Related Sym Groups
cme_futures_mdp3_sbe_v1_13.related_sym_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.related_sym_groups then
    local length = cme_futures_mdp3_sbe_v1_13.related_sym_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.related_sym_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.related_sym_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.related_sym_groups.fields(buffer, offset, packet, parent)
end

-- Padding 3
cme_futures_mdp3_sbe_v1_13.padding_3 = {}

-- Size: Padding 3
cme_futures_mdp3_sbe_v1_13.padding_3.size = 3

-- Display: Padding 3
cme_futures_mdp3_sbe_v1_13.padding_3.display = function(value)
  return "Padding 3: "..value
end

-- Dissect: Padding 3
cme_futures_mdp3_sbe_v1_13.padding_3.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_mdp3_sbe_v1_13.padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.padding_3, range, value, display)

  return offset + length, value
end

-- Quote Req Id
cme_futures_mdp3_sbe_v1_13.quote_req_id = {}

-- Size: Quote Req Id
cme_futures_mdp3_sbe_v1_13.quote_req_id.size = 23

-- Display: Quote Req Id
cme_futures_mdp3_sbe_v1_13.quote_req_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Req Id: No Value"
  end

  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
cme_futures_mdp3_sbe_v1_13.quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.quote_req_id.size
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

  local display = cme_futures_mdp3_sbe_v1_13.quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Quote Request
cme_futures_mdp3_sbe_v1_13.quote_request = {}

-- Calculate size of: Quote Request
cme_futures_mdp3_sbe_v1_13.quote_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.quote_req_id.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_3.size

  index = index + cme_futures_mdp3_sbe_v1_13.related_sym_groups.size(buffer, offset + index)

  return index
end

-- Display: Quote Request
cme_futures_mdp3_sbe_v1_13.quote_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request
cme_futures_mdp3_sbe_v1_13.quote_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 23 Byte Ascii String
  index, quote_req_id = cme_futures_mdp3_sbe_v1_13.quote_req_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = cme_futures_mdp3_sbe_v1_13.padding_3.dissect(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = cme_futures_mdp3_sbe_v1_13.related_sym_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
cme_futures_mdp3_sbe_v1_13.quote_request.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_request then
    local length = cme_futures_mdp3_sbe_v1_13.quote_request.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.quote_request.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.quote_request, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.quote_request.fields(buffer, offset, packet, parent)
end

-- M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_group = {}

-- Size: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_group.size =
  cme_futures_mdp3_sbe_v1_13.md_entry_size.size + 
  cme_futures_mdp3_sbe_v1_13.security_id.size + 
  cme_futures_mdp3_sbe_v1_13.rpt_seq.size + 
  cme_futures_mdp3_sbe_v1_13.md_update_action.size + 
  cme_futures_mdp3_sbe_v1_13.padding_3.size

-- Display: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_group.fields = function(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
  local index = offset

  -- Implicit M D Incremental Refresh Volume Group Index
  if m_d_incremental_refresh_volume_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_group_index, m_d_incremental_refresh_volume_group_index)
    iteration:set_generated()
  end

  -- Md Entry Size: 4 Byte Signed Fixed Width Integer
  index, md_entry_size = cme_futures_mdp3_sbe_v1_13.md_entry_size.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_mdp3_sbe_v1_13.security_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = cme_futures_mdp3_sbe_v1_13.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = cme_futures_mdp3_sbe_v1_13.md_update_action.dissect(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = cme_futures_mdp3_sbe_v1_13.padding_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: M D Incremental Refresh Volume Group
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_group.dissect = function(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
  if show.m_d_incremental_refresh_volume_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_group.fields(buffer, offset, packet, parent, m_d_incremental_refresh_volume_group_index)
  end
end

-- M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_groups = {}

-- Calculate size of: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local m_d_incremental_refresh_volume_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + m_d_incremental_refresh_volume_group_count * 16

  return index
end

-- Display: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: M D Incremental Refresh Volume Group
  for m_d_incremental_refresh_volume_group_index = 1, num_in_group do
    index, m_d_incremental_refresh_volume_group = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_group.dissect(buffer, index, packet, parent, m_d_incremental_refresh_volume_group_index)
  end

  return index
end

-- Dissect: M D Incremental Refresh Volume Groups
cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.m_d_incremental_refresh_volume_groups then
    local length = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.m_d_incremental_refresh_volume_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_groups.fields(buffer, offset, packet, parent)
end

-- Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume = {}

-- Calculate size of: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.padding_2.size

  index = index + cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = cme_futures_mdp3_sbe_v1_13.padding_2.dissect(buffer, index, packet, parent)

  -- M D Incremental Refresh Volume Groups: Struct of 2 fields
  index, m_d_incremental_refresh_volume_groups = cme_futures_mdp3_sbe_v1_13.m_d_incremental_refresh_volume_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Volume
cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.md_incremental_refresh_volume then
    local length = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.md_incremental_refresh_volume, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume.fields(buffer, offset, packet, parent)
end

-- Security Trading Status
cme_futures_mdp3_sbe_v1_13.security_trading_status = {}

-- Size: Security Trading Status
cme_futures_mdp3_sbe_v1_13.security_trading_status.size = 1

-- Display: Security Trading Status
cme_futures_mdp3_sbe_v1_13.security_trading_status.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Id Optional
cme_futures_mdp3_sbe_v1_13.security_id_optional = {}

-- Size: Security Id Optional
cme_futures_mdp3_sbe_v1_13.security_id_optional.size = 4

-- Display: Security Id Optional
cme_futures_mdp3_sbe_v1_13.security_id_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Security Id Optional: No Value"
  end

  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
cme_futures_mdp3_sbe_v1_13.security_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.security_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.security_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Security Status
cme_futures_mdp3_sbe_v1_13.security_status = {}

-- Size: Security Status
cme_futures_mdp3_sbe_v1_13.security_status.size =
  cme_futures_mdp3_sbe_v1_13.transact_time.size + 
  cme_futures_mdp3_sbe_v1_13.security_group.size + 
  cme_futures_mdp3_sbe_v1_13.asset.size + 
  cme_futures_mdp3_sbe_v1_13.security_id_optional.size + 
  cme_futures_mdp3_sbe_v1_13.trade_date.size + 
  cme_futures_mdp3_sbe_v1_13.match_event_indicator.size + 
  cme_futures_mdp3_sbe_v1_13.security_trading_status.size + 
  cme_futures_mdp3_sbe_v1_13.halt_reason.size + 
  cme_futures_mdp3_sbe_v1_13.security_trading_event.size

-- Display: Security Status
cme_futures_mdp3_sbe_v1_13.security_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status
cme_futures_mdp3_sbe_v1_13.security_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_mdp3_sbe_v1_13.security_group.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = cme_futures_mdp3_sbe_v1_13.asset.dissect(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = cme_futures_mdp3_sbe_v1_13.security_id_optional.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_mdp3_sbe_v1_13.trade_date.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, security_trading_status = cme_futures_mdp3_sbe_v1_13.security_trading_status.dissect(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, halt_reason = cme_futures_mdp3_sbe_v1_13.halt_reason.dissect(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, security_trading_event = cme_futures_mdp3_sbe_v1_13.security_trading_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status
cme_futures_mdp3_sbe_v1_13.security_status.dissect = function(buffer, offset, packet, parent)
  if show.security_status then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.security_status, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.security_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.security_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.security_status.fields(buffer, offset, packet, parent)
  end
end

-- Text
cme_futures_mdp3_sbe_v1_13.text = {}

-- Size: Text
cme_futures_mdp3_sbe_v1_13.text.size = 180

-- Display: Text
cme_futures_mdp3_sbe_v1_13.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cme_futures_mdp3_sbe_v1_13.text.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.text.size
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

  local display = cme_futures_mdp3_sbe_v1_13.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.text, range, value, display)

  return offset + length, value
end

-- Admin Logout
cme_futures_mdp3_sbe_v1_13.admin_logout = {}

-- Size: Admin Logout
cme_futures_mdp3_sbe_v1_13.admin_logout.size =
  cme_futures_mdp3_sbe_v1_13.text.size

-- Display: Admin Logout
cme_futures_mdp3_sbe_v1_13.admin_logout.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Logout
cme_futures_mdp3_sbe_v1_13.admin_logout.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 180 Byte Ascii String
  index, text = cme_futures_mdp3_sbe_v1_13.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Logout
cme_futures_mdp3_sbe_v1_13.admin_logout.dissect = function(buffer, offset, packet, parent)
  if show.admin_logout then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.admin_logout, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.admin_logout.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.admin_logout.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.admin_logout.fields(buffer, offset, packet, parent)
  end
end

-- Heart Bt Int
cme_futures_mdp3_sbe_v1_13.heart_bt_int = {}

-- Size: Heart Bt Int
cme_futures_mdp3_sbe_v1_13.heart_bt_int.size = 1

-- Display: Heart Bt Int
cme_futures_mdp3_sbe_v1_13.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
cme_futures_mdp3_sbe_v1_13.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_mdp3_sbe_v1_13.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Admin Login
cme_futures_mdp3_sbe_v1_13.admin_login = {}

-- Size: Admin Login
cme_futures_mdp3_sbe_v1_13.admin_login.size =
  cme_futures_mdp3_sbe_v1_13.heart_bt_int.size

-- Display: Admin Login
cme_futures_mdp3_sbe_v1_13.admin_login.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Admin Login
cme_futures_mdp3_sbe_v1_13.admin_login.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heart Bt Int: 1 Byte Signed Fixed Width Integer
  index, heart_bt_int = cme_futures_mdp3_sbe_v1_13.heart_bt_int.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Admin Login
cme_futures_mdp3_sbe_v1_13.admin_login.dissect = function(buffer, offset, packet, parent)
  if show.admin_login then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.admin_login, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.admin_login.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.admin_login.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.admin_login.fields(buffer, offset, packet, parent)
  end
end

-- Channel Reset Group
cme_futures_mdp3_sbe_v1_13.channel_reset_group = {}

-- Size: Channel Reset Group
cme_futures_mdp3_sbe_v1_13.channel_reset_group.size =
  cme_futures_mdp3_sbe_v1_13.appl_id.size

-- Display: Channel Reset Group
cme_futures_mdp3_sbe_v1_13.channel_reset_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset Group
cme_futures_mdp3_sbe_v1_13.channel_reset_group.fields = function(buffer, offset, packet, parent, channel_reset_group_index)
  local index = offset

  -- Implicit Channel Reset Group Index
  if channel_reset_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.channel_reset_group_index, channel_reset_group_index)
    iteration:set_generated()
  end

  -- Appl Id: 2 Byte Signed Fixed Width Integer
  index, appl_id = cme_futures_mdp3_sbe_v1_13.appl_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset Group
cme_futures_mdp3_sbe_v1_13.channel_reset_group.dissect = function(buffer, offset, packet, parent, channel_reset_group_index)
  if show.channel_reset_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.channel_reset_group, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.channel_reset_group.fields(buffer, offset, packet, parent, channel_reset_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.channel_reset_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.channel_reset_group.fields(buffer, offset, packet, parent, channel_reset_group_index)
  end
end

-- Channel Reset Groups
cme_futures_mdp3_sbe_v1_13.channel_reset_groups = {}

-- Calculate size of: Channel Reset Groups
cme_futures_mdp3_sbe_v1_13.channel_reset_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.group_size.size

  -- Calculate field size from count
  local channel_reset_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + channel_reset_group_count * 2

  return index
end

-- Display: Channel Reset Groups
cme_futures_mdp3_sbe_v1_13.channel_reset_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset Groups
cme_futures_mdp3_sbe_v1_13.channel_reset_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_mdp3_sbe_v1_13.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Channel Reset Group
  for channel_reset_group_index = 1, num_in_group do
    index, channel_reset_group = cme_futures_mdp3_sbe_v1_13.channel_reset_group.dissect(buffer, index, packet, parent, channel_reset_group_index)
  end

  return index
end

-- Dissect: Channel Reset Groups
cme_futures_mdp3_sbe_v1_13.channel_reset_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.channel_reset_groups then
    local length = cme_futures_mdp3_sbe_v1_13.channel_reset_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.channel_reset_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.channel_reset_groups, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.channel_reset_groups.fields(buffer, offset, packet, parent)
end

-- Channel Reset
cme_futures_mdp3_sbe_v1_13.channel_reset = {}

-- Calculate size of: Channel Reset
cme_futures_mdp3_sbe_v1_13.channel_reset.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.transact_time.size

  index = index + cme_futures_mdp3_sbe_v1_13.match_event_indicator.size

  index = index + cme_futures_mdp3_sbe_v1_13.channel_reset_groups.size(buffer, offset + index)

  return index
end

-- Display: Channel Reset
cme_futures_mdp3_sbe_v1_13.channel_reset.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset
cme_futures_mdp3_sbe_v1_13.channel_reset.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_mdp3_sbe_v1_13.transact_time.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = cme_futures_mdp3_sbe_v1_13.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Channel Reset Groups: Struct of 2 fields
  index, channel_reset_groups = cme_futures_mdp3_sbe_v1_13.channel_reset_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset
cme_futures_mdp3_sbe_v1_13.channel_reset.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.channel_reset then
    local length = cme_futures_mdp3_sbe_v1_13.channel_reset.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.channel_reset.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.channel_reset, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.channel_reset.fields(buffer, offset, packet, parent)
end

-- Payload
cme_futures_mdp3_sbe_v1_13.payload = {}

-- Size: Payload
cme_futures_mdp3_sbe_v1_13.payload.size = function(buffer, offset, template_id)
  -- Size of Channel Reset
  if template_id == 4 then
    return cme_futures_mdp3_sbe_v1_13.channel_reset.size(buffer, offset)
  end
  -- Size of Admin Heartbeat
  if template_id == 12 then
    return 0
  end
  -- Size of Admin Login
  if template_id == 15 then
    return cme_futures_mdp3_sbe_v1_13.admin_login.size
  end
  -- Size of Admin Logout
  if template_id == 16 then
    return cme_futures_mdp3_sbe_v1_13.admin_logout.size
  end
  -- Size of Security Status
  if template_id == 30 then
    return cme_futures_mdp3_sbe_v1_13.security_status.size
  end
  -- Size of Md Incremental Refresh Volume
  if template_id == 37 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume.size(buffer, offset)
  end
  -- Size of Quote Request
  if template_id == 39 then
    return cme_futures_mdp3_sbe_v1_13.quote_request.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Book
  if template_id == 46 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Order Book
  if template_id == 47 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_order_book.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Summary
  if template_id == 48 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Daily Statistics
  if template_id == 49 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_daily_statistics.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Limits Banding
  if template_id == 50 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_limits_banding.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Session Statistics
  if template_id == 51 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics.size(buffer, offset)
  end
  -- Size of Snapshot Full Refresh
  if template_id == 52 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh.size(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Order Book
  if template_id == 53 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Future
  if template_id == 54 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_future.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Option
  if template_id == 55 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_option.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Spread
  if template_id == 56 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_spread.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Fixed Income
  if template_id == 57 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fixed_income.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Repo
  if template_id == 58 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_repo.size(buffer, offset)
  end
  -- Size of Snapshot Refresh Top Orders
  if template_id == 59 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders.size(buffer, offset)
  end
  -- Size of Security Status Workup
  if template_id == 60 then
    return cme_futures_mdp3_sbe_v1_13.security_status_workup.size(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Tcp
  if template_id == 61 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp.size(buffer, offset)
  end
  -- Size of Collateral Market Value
  if template_id == 62 then
    return cme_futures_mdp3_sbe_v1_13.collateral_market_value.size(buffer, offset)
  end
  -- Size of Md Instrument Definition Fx
  if template_id == 63 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fx.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Book Long Qty
  if template_id == 64 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book_long_qty.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Trade Summary Long Qty
  if template_id == 65 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary_long_qty.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Volume Long Qty
  if template_id == 66 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume_long_qty.size(buffer, offset)
  end
  -- Size of Md Incremental Refresh Session Statistics Long Qty
  if template_id == 67 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics_long_qty.size(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Tcp Long Qty
  if template_id == 68 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_long_qty.size(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Long Qty
  if template_id == 69 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
cme_futures_mdp3_sbe_v1_13.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cme_futures_mdp3_sbe_v1_13.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Channel Reset
  if template_id == 4 then
    return cme_futures_mdp3_sbe_v1_13.channel_reset.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Heartbeat
  if template_id == 12 then
  end
  -- Dissect Admin Login
  if template_id == 15 then
    return cme_futures_mdp3_sbe_v1_13.admin_login.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Admin Logout
  if template_id == 16 then
    return cme_futures_mdp3_sbe_v1_13.admin_logout.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status
  if template_id == 30 then
    return cme_futures_mdp3_sbe_v1_13.security_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Volume
  if template_id == 37 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if template_id == 39 then
    return cme_futures_mdp3_sbe_v1_13.quote_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Book
  if template_id == 46 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Order Book
  if template_id == 47 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_order_book.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Summary
  if template_id == 48 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Daily Statistics
  if template_id == 49 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_daily_statistics.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Limits Banding
  if template_id == 50 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_limits_banding.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Session Statistics
  if template_id == 51 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh
  if template_id == 52 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Order Book
  if template_id == 53 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_order_book.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Future
  if template_id == 54 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_future.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Option
  if template_id == 55 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_option.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Spread
  if template_id == 56 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_spread.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Fixed Income
  if template_id == 57 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fixed_income.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Repo
  if template_id == 58 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_repo.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Refresh Top Orders
  if template_id == 59 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_refresh_top_orders.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Workup
  if template_id == 60 then
    return cme_futures_mdp3_sbe_v1_13.security_status_workup.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Tcp
  if template_id == 61 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Collateral Market Value
  if template_id == 62 then
    return cme_futures_mdp3_sbe_v1_13.collateral_market_value.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Instrument Definition Fx
  if template_id == 63 then
    return cme_futures_mdp3_sbe_v1_13.md_instrument_definition_fx.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Book Long Qty
  if template_id == 64 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_book_long_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Trade Summary Long Qty
  if template_id == 65 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_trade_summary_long_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Volume Long Qty
  if template_id == 66 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_volume_long_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Md Incremental Refresh Session Statistics Long Qty
  if template_id == 67 then
    return cme_futures_mdp3_sbe_v1_13.md_incremental_refresh_session_statistics_long_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Tcp Long Qty
  if template_id == 68 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_tcp_long_qty.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Long Qty
  if template_id == 69 then
    return cme_futures_mdp3_sbe_v1_13.snapshot_full_refresh_long_qty.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cme_futures_mdp3_sbe_v1_13.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cme_futures_mdp3_sbe_v1_13.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cme_futures_mdp3_sbe_v1_13.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cme_futures_mdp3_sbe_v1_13.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.payload, range, display)

  return cme_futures_mdp3_sbe_v1_13.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
cme_futures_mdp3_sbe_v1_13.version = {}

-- Size: Version
cme_futures_mdp3_sbe_v1_13.version.size = 2

-- Display: Version
cme_futures_mdp3_sbe_v1_13.version.display = function(value)
  if value == 13 then
    return "Version: Version"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
cme_futures_mdp3_sbe_v1_13.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_futures_mdp3_sbe_v1_13.schema_id = {}

-- Size: Schema Id
cme_futures_mdp3_sbe_v1_13.schema_id.size = 2

-- Display: Schema Id
cme_futures_mdp3_sbe_v1_13.schema_id.display = function(value)
  if value == 1 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
cme_futures_mdp3_sbe_v1_13.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
cme_futures_mdp3_sbe_v1_13.template_id = {}

-- Size: Template Id
cme_futures_mdp3_sbe_v1_13.template_id.size = 2

-- Display: Template Id
cme_futures_mdp3_sbe_v1_13.template_id.display = function(value)
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
cme_futures_mdp3_sbe_v1_13.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.template_id, range, value, display)

  return offset + length, value
end

-- Message Header
cme_futures_mdp3_sbe_v1_13.message_header = {}

-- Size: Message Header
cme_futures_mdp3_sbe_v1_13.message_header.size =
  cme_futures_mdp3_sbe_v1_13.block_length.size + 
  cme_futures_mdp3_sbe_v1_13.template_id.size + 
  cme_futures_mdp3_sbe_v1_13.schema_id.size + 
  cme_futures_mdp3_sbe_v1_13.version.size

-- Display: Message Header
cme_futures_mdp3_sbe_v1_13.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_futures_mdp3_sbe_v1_13.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_mdp3_sbe_v1_13.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 31 values
  index, template_id = cme_futures_mdp3_sbe_v1_13.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = cme_futures_mdp3_sbe_v1_13.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = cme_futures_mdp3_sbe_v1_13.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_futures_mdp3_sbe_v1_13.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.message_header, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Size
cme_futures_mdp3_sbe_v1_13.message_size = {}

-- Size: Message Size
cme_futures_mdp3_sbe_v1_13.message_size.size = 2

-- Display: Message Size
cme_futures_mdp3_sbe_v1_13.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_futures_mdp3_sbe_v1_13.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message
cme_futures_mdp3_sbe_v1_13.message = {}

-- Calculate size of: Message
cme_futures_mdp3_sbe_v1_13.message.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_mdp3_sbe_v1_13.message_size.size

  index = index + cme_futures_mdp3_sbe_v1_13.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + cme_futures_mdp3_sbe_v1_13.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
cme_futures_mdp3_sbe_v1_13.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_futures_mdp3_sbe_v1_13.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_futures_mdp3_sbe_v1_13.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_futures_mdp3_sbe_v1_13.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 31 branches
  index = cme_futures_mdp3_sbe_v1_13.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_futures_mdp3_sbe_v1_13.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = cme_futures_mdp3_sbe_v1_13.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_mdp3_sbe_v1_13.message.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.message, range, display)
  end

  return cme_futures_mdp3_sbe_v1_13.message.fields(buffer, offset, packet, parent)
end

-- Sending Time
cme_futures_mdp3_sbe_v1_13.sending_time = {}

-- Size: Sending Time
cme_futures_mdp3_sbe_v1_13.sending_time.size = 8

-- Display: Sending Time
cme_futures_mdp3_sbe_v1_13.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
cme_futures_mdp3_sbe_v1_13.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_mdp3_sbe_v1_13.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
cme_futures_mdp3_sbe_v1_13.packet_sequence_number = {}

-- Size: Packet Sequence Number
cme_futures_mdp3_sbe_v1_13.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
cme_futures_mdp3_sbe_v1_13.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
cme_futures_mdp3_sbe_v1_13.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_mdp3_sbe_v1_13.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_mdp3_sbe_v1_13.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Binary Packet Header
cme_futures_mdp3_sbe_v1_13.binary_packet_header = {}

-- Size: Binary Packet Header
cme_futures_mdp3_sbe_v1_13.binary_packet_header.size =
  cme_futures_mdp3_sbe_v1_13.packet_sequence_number.size + 
  cme_futures_mdp3_sbe_v1_13.sending_time.size

-- Display: Binary Packet Header
cme_futures_mdp3_sbe_v1_13.binary_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_futures_mdp3_sbe_v1_13.binary_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = cme_futures_mdp3_sbe_v1_13.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_futures_mdp3_sbe_v1_13.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_futures_mdp3_sbe_v1_13.binary_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.binary_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_mdp3_sbe_v1_13.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_futures_mdp3_sbe_v1_13.binary_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_mdp3_sbe_v1_13.binary_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_mdp3_sbe_v1_13.binary_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cme_futures_mdp3_sbe_v1_13.packet = {}

-- Dissect Packet
cme_futures_mdp3_sbe_v1_13.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_futures_mdp3_sbe_v1_13.binary_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = cme_futures_mdp3_sbe_v1_13.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_futures_mdp3_sbe_v1_13.init()
end

-- Dissector for Cme Futures Mdp3 Sbe 1.13
function omi_cme_futures_mdp3_sbe_v1_13.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cme_futures_mdp3_sbe_v1_13.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_futures_mdp3_sbe_v1_13, buffer(), omi_cme_futures_mdp3_sbe_v1_13.description, "("..buffer:len().." Bytes)")
  return cme_futures_mdp3_sbe_v1_13.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cme_futures_mdp3_sbe_v1_13)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cme_futures_mdp3_sbe_v1_13.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
cme_futures_mdp3_sbe_v1_13.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Version Field
cme_futures_mdp3_sbe_v1_13.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 13 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Futures Mdp3 Sbe 1.13
local function omi_cme_futures_mdp3_sbe_v1_13_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_futures_mdp3_sbe_v1_13.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_futures_mdp3_sbe_v1_13.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not cme_futures_mdp3_sbe_v1_13.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_futures_mdp3_sbe_v1_13
  omi_cme_futures_mdp3_sbe_v1_13.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures Mdp3 Sbe 1.13
omi_cme_futures_mdp3_sbe_v1_13:register_heuristic("udp", omi_cme_futures_mdp3_sbe_v1_13_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 1.13
--   Date: Tuesday, April 11, 2023
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
