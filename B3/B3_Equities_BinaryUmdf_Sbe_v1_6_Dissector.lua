-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- B3 Equities BinaryUmdf Sbe 1.6 Protocol
local b3_equities_binaryumdf_sbe_v1_6 = Proto("B3.Equities.BinaryUmdf.Sbe.v1.6.Lua", "B3 Equities BinaryUmdf Sbe 1.6")

-- Component Tables
local show = {}
local format = {}
local b3_equities_binaryumdf_sbe_v1_6_display = {}
local b3_equities_binaryumdf_sbe_v1_6_dissect = {}
local b3_equities_binaryumdf_sbe_v1_6_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- B3 Equities BinaryUmdf Sbe 1.6 Fields
b3_equities_binaryumdf_sbe_v1_6.fields.aggressor_side = ProtoField.new("Aggressor Side", "b3.equities.binaryumdf.sbe.v1.6.aggressorside", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.aggressor_time = ProtoField.new("Aggressor Time", "b3.equities.binaryumdf.sbe.v1.6.aggressortime", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.asset = ProtoField.new("Asset", "b3.equities.binaryumdf.sbe.v1.6.asset", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.avg_daily_traded_qty = ProtoField.new("Avg Daily Traded Qty", "b3.equities.binaryumdf.sbe.v1.6.avgdailytradedqty", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.block_length = ProtoField.new("Block Length", "b3.equities.binaryumdf.sbe.v1.6.blocklength", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.block_trade = ProtoField.new("Block Trade", "b3.equities.binaryumdf.sbe.v1.6.blocktrade", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x4000)
b3_equities_binaryumdf_sbe_v1_6.fields.cfi_code = ProtoField.new("Cfi Code", "b3.equities.binaryumdf.sbe.v1.6.cficode", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.channel_id = ProtoField.new("Channel Id", "b3.equities.binaryumdf.sbe.v1.6.channelid", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.clearing_house_id = ProtoField.new("Clearing House Id", "b3.equities.binaryumdf.sbe.v1.6.clearinghouseid", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "b3.equities.binaryumdf.sbe.v1.6.contractmultiplier", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.contract_settl_month = ProtoField.new("Contract Settl Month", "b3.equities.binaryumdf.sbe.v1.6.contractsettlmonth", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.corporate_action_event_id = ProtoField.new("Corporate Action Event Id", "b3.equities.binaryumdf.sbe.v1.6.corporateactioneventid", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.country_of_issue = ProtoField.new("Country Of Issue", "b3.equities.binaryumdf.sbe.v1.6.countryofissue", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.crossed = ProtoField.new("Crossed", "b3.equities.binaryumdf.sbe.v1.6.crossed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
b3_equities_binaryumdf_sbe_v1_6.fields.currency = ProtoField.new("Currency", "b3.equities.binaryumdf.sbe.v1.6.currency", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.cxl_qty = ProtoField.new("Cxl Qty", "b3.equities.binaryumdf.sbe.v1.6.cxlqty", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.dated_date = ProtoField.new("Dated Date", "b3.equities.binaryumdf.sbe.v1.6.dateddate", ftypes.INT32)
b3_equities_binaryumdf_sbe_v1_6.fields.day = ProtoField.new("Day", "b3.equities.binaryumdf.sbe.v1.6.day", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.encoding_type = ProtoField.new("Encoding Type", "b3.equities.binaryumdf.sbe.v1.6.encodingtype", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.end_date = ProtoField.new("End Date", "b3.equities.binaryumdf.sbe.v1.6.enddate", ftypes.INT32)
b3_equities_binaryumdf_sbe_v1_6.fields.end_of_event = ProtoField.new("End Of Event", "b3.equities.binaryumdf.sbe.v1.6.endofevent", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
b3_equities_binaryumdf_sbe_v1_6.fields.entering_firm = ProtoField.new("Entering Firm", "b3.equities.binaryumdf.sbe.v1.6.enteringfirm", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.exercise_style = ProtoField.new("Exercise Style", "b3.equities.binaryumdf.sbe.v1.6.exercisestyle", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.fill_qty = ProtoField.new("Fill Qty", "b3.equities.binaryumdf.sbe.v1.6.fillqty", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.governance_indicator = ProtoField.new("Governance Indicator", "b3.equities.binaryumdf.sbe.v1.6.governanceindicator", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "b3.equities.binaryumdf.sbe.v1.6.groupsizeencoding", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.headline = ProtoField.new("Headline", "b3.equities.binaryumdf.sbe.v1.6.headline", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.headline_data = ProtoField.new("Headline Data", "b3.equities.binaryumdf.sbe.v1.6.headlinedata", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.headline_length = ProtoField.new("Headline Length", "b3.equities.binaryumdf.sbe.v1.6.headlinelength", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.high_limit_price = ProtoField.new("High Limit Price", "b3.equities.binaryumdf.sbe.v1.6.highlimitprice", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_condition = ProtoField.new("Imbalance Condition", "b3.equities.binaryumdf.sbe.v1.6.imbalancecondition", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_more_buyers = ProtoField.new("Imbalance More Buyers", "b3.equities.binaryumdf.sbe.v1.6.imbalancemorebuyers", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_more_sellers = ProtoField.new("Imbalance More Sellers", "b3.equities.binaryumdf.sbe.v1.6.imbalancemoresellers", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
b3_equities_binaryumdf_sbe_v1_6.fields.index_pct = ProtoField.new("Index Pct", "b3.equities.binaryumdf.sbe.v1.6.indexpct", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.index_theoretical_qty = ProtoField.new("Index Theoretical Qty", "b3.equities.binaryumdf.sbe.v1.6.indextheoreticalqty", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.instr_attrib_type = ProtoField.new("Instr Attrib Type", "b3.equities.binaryumdf.sbe.v1.6.instrattribtype", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.instr_attrib_value = ProtoField.new("Instr Attrib Value", "b3.equities.binaryumdf.sbe.v1.6.instrattribvalue", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.isin_number = ProtoField.new("Isin Number", "b3.equities.binaryumdf.sbe.v1.6.isinnumber", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.issue_date = ProtoField.new("Issue Date", "b3.equities.binaryumdf.sbe.v1.6.issuedate", ftypes.INT32)
b3_equities_binaryumdf_sbe_v1_6.fields.language_code = ProtoField.new("Language Code", "b3.equities.binaryumdf.sbe.v1.6.languagecode", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.last_fragment = ProtoField.new("Last Fragment", "b3.equities.binaryumdf.sbe.v1.6.lastfragment", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.last_implied_msg = ProtoField.new("Last Implied Msg", "b3.equities.binaryumdf.sbe.v1.6.lastimpliedmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
b3_equities_binaryumdf_sbe_v1_6.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "b3.equities.binaryumdf.sbe.v1.6.lastmsgseqnumprocessed", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.last_px = ProtoField.new("Last Px", "b3.equities.binaryumdf.sbe.v1.6.lastpx", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.last_quote_msg = ProtoField.new("Last Quote Msg", "b3.equities.binaryumdf.sbe.v1.6.lastquotemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
b3_equities_binaryumdf_sbe_v1_6.fields.last_rpt_seq = ProtoField.new("Last Rpt Seq", "b3.equities.binaryumdf.sbe.v1.6.lastrptseq", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.last_stats_msg = ProtoField.new("Last Stats Msg", "b3.equities.binaryumdf.sbe.v1.6.laststatsmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_at_the_same_price = ProtoField.new("Last Trade At The Same Price", "b3.equities.binaryumdf.sbe.v1.6.lasttradeatthesameprice", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_date = ProtoField.new("Last Trade Date", "b3.equities.binaryumdf.sbe.v1.6.lasttradedate", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_msg = ProtoField.new("Last Trade Msg", "b3.equities.binaryumdf.sbe.v1.6.lasttrademsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
b3_equities_binaryumdf_sbe_v1_6.fields.last_volume_msg = ProtoField.new("Last Volume Msg", "b3.equities.binaryumdf.sbe.v1.6.lastvolumemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
b3_equities_binaryumdf_sbe_v1_6.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "b3.equities.binaryumdf.sbe.v1.6.legratioqty", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.leg_security_id = ProtoField.new("Leg Security Id", "b3.equities.binaryumdf.sbe.v1.6.legsecurityid", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.leg_security_type = ProtoField.new("Leg Security Type", "b3.equities.binaryumdf.sbe.v1.6.legsecuritytype", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.leg_side = ProtoField.new("Leg Side", "b3.equities.binaryumdf.sbe.v1.6.legside", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.leg_symbol = ProtoField.new("Leg Symbol", "b3.equities.binaryumdf.sbe.v1.6.legsymbol", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.lot_type = ProtoField.new("Lot Type", "b3.equities.binaryumdf.sbe.v1.6.lottype", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.low_limit_price = ProtoField.new("Low Limit Price", "b3.equities.binaryumdf.sbe.v1.6.lowlimitprice", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.market_segment_id = ProtoField.new("Market Segment Id", "b3.equities.binaryumdf.sbe.v1.6.marketsegmentid", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "b3.equities.binaryumdf.sbe.v1.6.matcheventindicator", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.maturity_date = ProtoField.new("Maturity Date", "b3.equities.binaryumdf.sbe.v1.6.maturitydate", ftypes.INT32)
b3_equities_binaryumdf_sbe_v1_6.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "b3.equities.binaryumdf.sbe.v1.6.maturitymonthyear", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.max_order_qty = ProtoField.new("Max Order Qty", "b3.equities.binaryumdf.sbe.v1.6.maxorderqty", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "b3.equities.binaryumdf.sbe.v1.6.maxtradevol", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.md_corporate_offset_price_optional = ProtoField.new("Md Corporate Offset Price Optional", "b3.equities.binaryumdf.sbe.v1.6.mdcorporateoffsetpriceoptional", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.md_corporate_price = ProtoField.new("Md Corporate Price", "b3.equities.binaryumdf.sbe.v1.6.mdcorporateprice", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_buyer = ProtoField.new("Md Entry Buyer", "b3.equities.binaryumdf.sbe.v1.6.mdentrybuyer", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_interest_rate = ProtoField.new("Md Entry Interest Rate", "b3.equities.binaryumdf.sbe.v1.6.mdentryinterestrate", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_position_no = ProtoField.new("Md Entry Position No", "b3.equities.binaryumdf.sbe.v1.6.mdentrypositionno", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_seller = ProtoField.new("Md Entry Seller", "b3.equities.binaryumdf.sbe.v1.6.mdentryseller", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_size_quantity = ProtoField.new("Md Entry Size Quantity", "b3.equities.binaryumdf.sbe.v1.6.mdentrysizequantity", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_size_quantity_optional = ProtoField.new("Md Entry Size Quantity Optional", "b3.equities.binaryumdf.sbe.v1.6.mdentrysizequantityoptional", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_timestamp = ProtoField.new("Md Entry Timestamp", "b3.equities.binaryumdf.sbe.v1.6.mdentrytimestamp", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_type = ProtoField.new("Md Entry Type", "b3.equities.binaryumdf.sbe.v1.6.mdentrytype", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.md_future_price = ProtoField.new("Md Future Price", "b3.equities.binaryumdf.sbe.v1.6.mdfutureprice", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.md_insert_timestamp = ProtoField.new("Md Insert Timestamp", "b3.equities.binaryumdf.sbe.v1.6.mdinserttimestamp", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.md_update_action = ProtoField.new("Md Update Action", "b3.equities.binaryumdf.sbe.v1.6.mdupdateaction", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.message = ProtoField.new("Message", "b3.equities.binaryumdf.sbe.v1.6.message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.message_header = ProtoField.new("Message Header", "b3.equities.binaryumdf.sbe.v1.6.messageheader", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.message_length = ProtoField.new("Message Length", "b3.equities.binaryumdf.sbe.v1.6.messagelength", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.min_cross_qty = ProtoField.new("Min Cross Qty", "b3.equities.binaryumdf.sbe.v1.6.mincrossqty", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.min_lot_size = ProtoField.new("Min Lot Size", "b3.equities.binaryumdf.sbe.v1.6.minlotsize", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.min_order_qty = ProtoField.new("Min Order Qty", "b3.equities.binaryumdf.sbe.v1.6.minorderqty", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.min_price_increment = ProtoField.new("Min Price Increment", "b3.equities.binaryumdf.sbe.v1.6.minpriceincrement", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "b3.equities.binaryumdf.sbe.v1.6.mintradevol", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.month = ProtoField.new("Month", "b3.equities.binaryumdf.sbe.v1.6.month", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.multi_leg_model = ProtoField.new("Multi Leg Model", "b3.equities.binaryumdf.sbe.v1.6.multilegmodel", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.multi_leg_price_method = ProtoField.new("Multi Leg Price Method", "b3.equities.binaryumdf.sbe.v1.6.multilegpricemethod", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "b3.equities.binaryumdf.sbe.v1.6.netchgprevday", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.news_id = ProtoField.new("News Id", "b3.equities.binaryumdf.sbe.v1.6.newsid", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.news_source = ProtoField.new("News Source", "b3.equities.binaryumdf.sbe.v1.6.newssource", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.next_seq_no = ProtoField.new("Next Seq No", "b3.equities.binaryumdf.sbe.v1.6.nextseqno", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.no_instr_attribs_group = ProtoField.new("No Instr Attribs Group", "b3.equities.binaryumdf.sbe.v1.6.noinstrattribsgroup", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.no_instr_attribs_groups = ProtoField.new("No Instr Attribs Groups", "b3.equities.binaryumdf.sbe.v1.6.noinstrattribsgroups", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.no_legs_group = ProtoField.new("No Legs Group", "b3.equities.binaryumdf.sbe.v1.6.nolegsgroup", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.no_legs_groups = ProtoField.new("No Legs Groups", "b3.equities.binaryumdf.sbe.v1.6.nolegsgroups", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.no_m_d_entries_group = ProtoField.new("No M D Entries Group", "b3.equities.binaryumdf.sbe.v1.6.nomdentriesgroup", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.no_m_d_entries_groups = ProtoField.new("No M D Entries Groups", "b3.equities.binaryumdf.sbe.v1.6.nomdentriesgroups", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.no_shares_issued = ProtoField.new("No Shares Issued", "b3.equities.binaryumdf.sbe.v1.6.nosharesissued", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.no_underlyings_group = ProtoField.new("No Underlyings Group", "b3.equities.binaryumdf.sbe.v1.6.nounderlyingsgroup", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.no_underlyings_groups = ProtoField.new("No Underlyings Groups", "b3.equities.binaryumdf.sbe.v1.6.nounderlyingsgroups", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.num_in_group = ProtoField.new("Num In Group", "b3.equities.binaryumdf.sbe.v1.6.numingroup", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.number_of_trades = ProtoField.new("Number Of Trades", "b3.equities.binaryumdf.sbe.v1.6.numberoftrades", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.offset_1_padding_3 = ProtoField.new("Offset 1 Padding 3", "b3.equities.binaryumdf.sbe.v1.6.offset1padding3", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.offset_10_padding_2 = ProtoField.new("Offset 10 Padding 2", "b3.equities.binaryumdf.sbe.v1.6.offset10padding2", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.offset_11_padding_1 = ProtoField.new("Offset 11 Padding 1", "b3.equities.binaryumdf.sbe.v1.6.offset11padding1", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.offset_14_padding_2 = ProtoField.new("Offset 14 Padding 2", "b3.equities.binaryumdf.sbe.v1.6.offset14padding2", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.offset_26_padding_2 = ProtoField.new("Offset 26 Padding 2", "b3.equities.binaryumdf.sbe.v1.6.offset26padding2", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.offset_3_padding_5 = ProtoField.new("Offset 3 Padding 5", "b3.equities.binaryumdf.sbe.v1.6.offset3padding5", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.offset_34_padding_2 = ProtoField.new("Offset 34 Padding 2", "b3.equities.binaryumdf.sbe.v1.6.offset34padding2", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.offset_43_padding_1 = ProtoField.new("Offset 43 Padding 1", "b3.equities.binaryumdf.sbe.v1.6.offset43padding1", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.offset_8_padding_2 = ProtoField.new("Offset 8 Padding 2", "b3.equities.binaryumdf.sbe.v1.6.offset8padding2", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.offset_9_padding_1 = ProtoField.new("Offset 9 Padding 1", "b3.equities.binaryumdf.sbe.v1.6.offset9padding1", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.offset_9_padding_3 = ProtoField.new("Offset 9 Padding 3", "b3.equities.binaryumdf.sbe.v1.6.offset9padding3", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "b3.equities.binaryumdf.sbe.v1.6.openclosesettlflag", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.opening_price = ProtoField.new("Opening Price", "b3.equities.binaryumdf.sbe.v1.6.openingprice", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
b3_equities_binaryumdf_sbe_v1_6.fields.orig_time = ProtoField.new("Orig Time", "b3.equities.binaryumdf.sbe.v1.6.origtime", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.out_of_sequence = ProtoField.new("Out Of Sequence", "b3.equities.binaryumdf.sbe.v1.6.outofsequence", ftypes.UINT16, nil, base.DEC, 0x0038)
b3_equities_binaryumdf_sbe_v1_6.fields.packet = ProtoField.new("Packet", "b3.equities.binaryumdf.sbe.v1.6.packet", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.packet_header = ProtoField.new("Packet Header", "b3.equities.binaryumdf.sbe.v1.6.packetheader", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.padding_2 = ProtoField.new("Padding 2", "b3.equities.binaryumdf.sbe.v1.6.padding2", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.padding_3 = ProtoField.new("Padding 3", "b3.equities.binaryumdf.sbe.v1.6.padding3", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.part_count = ProtoField.new("Part Count", "b3.equities.binaryumdf.sbe.v1.6.partcount", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.part_number = ProtoField.new("Part Number", "b3.equities.binaryumdf.sbe.v1.6.partnumber", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.payload = ProtoField.new("Payload", "b3.equities.binaryumdf.sbe.v1.6.payload", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.price_band_midpoint_price_type = ProtoField.new("Price Band Midpoint Price Type", "b3.equities.binaryumdf.sbe.v1.6.pricebandmidpointpricetype", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.price_band_type = ProtoField.new("Price Band Type", "b3.equities.binaryumdf.sbe.v1.6.pricebandtype", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.price_divisor = ProtoField.new("Price Divisor", "b3.equities.binaryumdf.sbe.v1.6.pricedivisor", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.price_limit_type = ProtoField.new("Price Limit Type", "b3.equities.binaryumdf.sbe.v1.6.pricelimittype", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.price_type = ProtoField.new("Price Type", "b3.equities.binaryumdf.sbe.v1.6.pricetype", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.product = ProtoField.new("Product", "b3.equities.binaryumdf.sbe.v1.6.product", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.put_or_call = ProtoField.new("Put Or Call", "b3.equities.binaryumdf.sbe.v1.6.putorcall", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.recovery_msg = ProtoField.new("Recovery Msg", "b3.equities.binaryumdf.sbe.v1.6.recoverymsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
b3_equities_binaryumdf_sbe_v1_6.fields.regular_trade = ProtoField.new("Regular Trade", "b3.equities.binaryumdf.sbe.v1.6.regulartrade", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x2000)
b3_equities_binaryumdf_sbe_v1_6.fields.reserved = ProtoField.new("Reserved", "b3.equities.binaryumdf.sbe.v1.6.reserved", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.reserved_1 = ProtoField.new("Reserved 1", "b3.equities.binaryumdf.sbe.v1.6.reserved1", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x8000)
b3_equities_binaryumdf_sbe_v1_6.fields.reserved_6 = ProtoField.new("Reserved 6", "b3.equities.binaryumdf.sbe.v1.6.reserved6", ftypes.UINT16, nil, base.DEC, 0xFC00)
b3_equities_binaryumdf_sbe_v1_6.fields.reserved_8 = ProtoField.new("Reserved 8", "b3.equities.binaryumdf.sbe.v1.6.reserved8", ftypes.UINT16, nil, base.DEC, 0x00FF)
b3_equities_binaryumdf_sbe_v1_6.fields.rpt_seq = ProtoField.new("Rpt Seq", "b3.equities.binaryumdf.sbe.v1.6.rptseq", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.schema_id = ProtoField.new("Schema Id", "b3.equities.binaryumdf.sbe.v1.6.schemaid", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "b3.equities.binaryumdf.sbe.v1.6.secondaryorderid", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.security_desc = ProtoField.new("Security Desc", "b3.equities.binaryumdf.sbe.v1.6.securitydesc", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.security_desc_data = ProtoField.new("Security Desc Data", "b3.equities.binaryumdf.sbe.v1.6.securitydescdata", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.security_desc_length = ProtoField.new("Security Desc Length", "b3.equities.binaryumdf.sbe.v1.6.securitydesclength", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.security_exchange = ProtoField.new("Security Exchange", "b3.equities.binaryumdf.sbe.v1.6.securityexchange", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.security_group = ProtoField.new("Security Group", "b3.equities.binaryumdf.sbe.v1.6.securitygroup", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.security_id = ProtoField.new("Security Id", "b3.equities.binaryumdf.sbe.v1.6.securityid", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.security_id_optional = ProtoField.new("Security Id Optional", "b3.equities.binaryumdf.sbe.v1.6.securityidoptional", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.security_id_source = ProtoField.new("Security Id Source", "b3.equities.binaryumdf.sbe.v1.6.securityidsource", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.security_match_type = ProtoField.new("Security Match Type", "b3.equities.binaryumdf.sbe.v1.6.securitymatchtype", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.security_strategy_type = ProtoField.new("Security Strategy Type", "b3.equities.binaryumdf.sbe.v1.6.securitystrategytype", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.security_sub_type = ProtoField.new("Security Sub Type", "b3.equities.binaryumdf.sbe.v1.6.securitysubtype", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.security_trading_event = ProtoField.new("Security Trading Event", "b3.equities.binaryumdf.sbe.v1.6.securitytradingevent", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.security_trading_status = ProtoField.new("Security Trading Status", "b3.equities.binaryumdf.sbe.v1.6.securitytradingstatus", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.security_type = ProtoField.new("Security Type", "b3.equities.binaryumdf.sbe.v1.6.securitytype", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.security_update_action = ProtoField.new("Security Update Action", "b3.equities.binaryumdf.sbe.v1.6.securityupdateaction", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.security_validity_timestamp = ProtoField.new("Security Validity Timestamp", "b3.equities.binaryumdf.sbe.v1.6.securityvaliditytimestamp", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.seller_days = ProtoField.new("Seller Days", "b3.equities.binaryumdf.sbe.v1.6.sellerdays", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.sending_time = ProtoField.new("Sending Time", "b3.equities.binaryumdf.sbe.v1.6.sendingtime", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.sequence_number = ProtoField.new("Sequence Number", "b3.equities.binaryumdf.sbe.v1.6.sequencenumber", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.sequence_version = ProtoField.new("Sequence Version", "b3.equities.binaryumdf.sbe.v1.6.sequenceversion", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.settl_currency = ProtoField.new("Settl Currency", "b3.equities.binaryumdf.sbe.v1.6.settlcurrency", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.settl_date = ProtoField.new("Settl Date", "b3.equities.binaryumdf.sbe.v1.6.settldate", ftypes.INT32)
b3_equities_binaryumdf_sbe_v1_6.fields.settl_type = ProtoField.new("Settl Type", "b3.equities.binaryumdf.sbe.v1.6.settltype", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.start_date = ProtoField.new("Start Date", "b3.equities.binaryumdf.sbe.v1.6.startdate", ftypes.INT32)
b3_equities_binaryumdf_sbe_v1_6.fields.strike_currency = ProtoField.new("Strike Currency", "b3.equities.binaryumdf.sbe.v1.6.strikecurrency", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.strike_price = ProtoField.new("Strike Price", "b3.equities.binaryumdf.sbe.v1.6.strikeprice", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.symbol = ProtoField.new("Symbol", "b3.equities.binaryumdf.sbe.v1.6.symbol", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.template_id = ProtoField.new("Template Id", "b3.equities.binaryumdf.sbe.v1.6.templateid", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.text = ProtoField.new("Text", "b3.equities.binaryumdf.sbe.v1.6.text", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.text_data = ProtoField.new("Text Data", "b3.equities.binaryumdf.sbe.v1.6.textdata", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.text_length = ProtoField.new("Text Length", "b3.equities.binaryumdf.sbe.v1.6.textlength", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.tick_size_denominator = ProtoField.new("Tick Size Denominator", "b3.equities.binaryumdf.sbe.v1.6.ticksizedenominator", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.tot_no_related_sym = ProtoField.new("Tot No Related Sym", "b3.equities.binaryumdf.sbe.v1.6.totnorelatedsym", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_bids = ProtoField.new("Tot Num Bids", "b3.equities.binaryumdf.sbe.v1.6.totnumbids", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_offers = ProtoField.new("Tot Num Offers", "b3.equities.binaryumdf.sbe.v1.6.totnumoffers", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "b3.equities.binaryumdf.sbe.v1.6.totnumreports", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_stats = ProtoField.new("Tot Num Stats", "b3.equities.binaryumdf.sbe.v1.6.totnumstats", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.total_text_length = ProtoField.new("Total Text Length", "b3.equities.binaryumdf.sbe.v1.6.totaltextlength", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.trad_ses_open_time = ProtoField.new("Trad Ses Open Time", "b3.equities.binaryumdf.sbe.v1.6.tradsesopentime", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.trade_condition = ProtoField.new("Trade Condition", "b3.equities.binaryumdf.sbe.v1.6.tradecondition", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.trade_date = ProtoField.new("Trade Date", "b3.equities.binaryumdf.sbe.v1.6.tradedate", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.trade_id = ProtoField.new("Trade Id", "b3.equities.binaryumdf.sbe.v1.6.tradeid", ftypes.UINT32)
b3_equities_binaryumdf_sbe_v1_6.fields.trade_on_behalf = ProtoField.new("Trade On Behalf", "b3.equities.binaryumdf.sbe.v1.6.tradeonbehalf", ftypes.UINT16, nil, base.DEC, 0x1FC0)
b3_equities_binaryumdf_sbe_v1_6.fields.trade_volume = ProtoField.new("Trade Volume", "b3.equities.binaryumdf.sbe.v1.6.tradevolume", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.traded_hidden_qty = ProtoField.new("Traded Hidden Qty", "b3.equities.binaryumdf.sbe.v1.6.tradedhiddenqty", ftypes.INT64)
b3_equities_binaryumdf_sbe_v1_6.fields.trading_reference_price = ProtoField.new("Trading Reference Price", "b3.equities.binaryumdf.sbe.v1.6.tradingreferenceprice", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.trading_session_id = ProtoField.new("Trading Session Id", "b3.equities.binaryumdf.sbe.v1.6.tradingsessionid", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "b3.equities.binaryumdf.sbe.v1.6.tradingsessionsubid", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.transact_time = ProtoField.new("Transact Time", "b3.equities.binaryumdf.sbe.v1.6.transacttime", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.trd_sub_type = ProtoField.new("Trd Sub Type", "b3.equities.binaryumdf.sbe.v1.6.trdsubtype", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "b3.equities.binaryumdf.sbe.v1.6.underlyingsecurityid", ftypes.UINT64)
b3_equities_binaryumdf_sbe_v1_6.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "b3.equities.binaryumdf.sbe.v1.6.underlyingsymbol", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.unused = ProtoField.new("Unused", "b3.equities.binaryumdf.sbe.v1.6.unused", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
b3_equities_binaryumdf_sbe_v1_6.fields.url_link = ProtoField.new("Url Link", "b3.equities.binaryumdf.sbe.v1.6.urllink", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.url_link_data = ProtoField.new("Url Link Data", "b3.equities.binaryumdf.sbe.v1.6.urllinkdata", ftypes.BYTES)
b3_equities_binaryumdf_sbe_v1_6.fields.url_link_length = ProtoField.new("Url Link Length", "b3.equities.binaryumdf.sbe.v1.6.urllinklength", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.version = ProtoField.new("Version", "b3.equities.binaryumdf.sbe.v1.6.version", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.vwap_px = ProtoField.new("Vwap Px", "b3.equities.binaryumdf.sbe.v1.6.vwappx", ftypes.DOUBLE)
b3_equities_binaryumdf_sbe_v1_6.fields.week = ProtoField.new("Week", "b3.equities.binaryumdf.sbe.v1.6.week", ftypes.UINT8)
b3_equities_binaryumdf_sbe_v1_6.fields.year = ProtoField.new("Year", "b3.equities.binaryumdf.sbe.v1.6.year", ftypes.UINT16)

-- B3 Equities BinaryUmdf Sbe 1.6 messages
b3_equities_binaryumdf_sbe_v1_6.fields.auction_imbalance_19_message = ProtoField.new("Auction Imbalance 19 Message", "b3.equities.binaryumdf.sbe.v1.6.auctionimbalance19message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.channel_reset_11_message = ProtoField.new("Channel Reset 11 Message", "b3.equities.binaryumdf.sbe.v1.6.channelreset11message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.closing_price_17_message = ProtoField.new("Closing Price 17 Message", "b3.equities.binaryumdf.sbe.v1.6.closingprice17message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.delete_order_mb_o_51_message = ProtoField.new("Delete Order Mb O 51 Message", "b3.equities.binaryumdf.sbe.v1.6.deleteordermbo51message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.empty_book_9_message = ProtoField.new("Empty Book 9 Message", "b3.equities.binaryumdf.sbe.v1.6.emptybook9message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.execution_statistics_56_message = ProtoField.new("Execution Statistics 56 Message", "b3.equities.binaryumdf.sbe.v1.6.executionstatistics56message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.execution_summary_55_message = ProtoField.new("Execution Summary 55 Message", "b3.equities.binaryumdf.sbe.v1.6.executionsummary55message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.forward_trade_54_message = ProtoField.new("Forward Trade 54 Message", "b3.equities.binaryumdf.sbe.v1.6.forwardtrade54message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.high_price_24_message = ProtoField.new("High Price 24 Message", "b3.equities.binaryumdf.sbe.v1.6.highprice24message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_price_27_message = ProtoField.new("Last Trade Price 27 Message", "b3.equities.binaryumdf.sbe.v1.6.lasttradeprice27message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.low_price_25_message = ProtoField.new("Low Price 25 Message", "b3.equities.binaryumdf.sbe.v1.6.lowprice25message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.mass_delete_orders_mb_o_52_message = ProtoField.new("Mass Delete Orders Mb O 52 Message", "b3.equities.binaryumdf.sbe.v1.6.massdeleteordersmbo52message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.news_5_message = ProtoField.new("News 5 Message", "b3.equities.binaryumdf.sbe.v1.6.news5message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.opening_price_15_message = ProtoField.new("Opening Price 15 Message", "b3.equities.binaryumdf.sbe.v1.6.openingprice15message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.order_mb_o_50_message = ProtoField.new("Order Mb O 50 Message", "b3.equities.binaryumdf.sbe.v1.6.ordermbo50message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.price_band_20_message = ProtoField.new("Price Band 20 Message", "b3.equities.binaryumdf.sbe.v1.6.priceband20message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.quantity_band_21_message = ProtoField.new("Quantity Band 21 Message", "b3.equities.binaryumdf.sbe.v1.6.quantityband21message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.security_definition_4_message = ProtoField.new("Security Definition 4 Message", "b3.equities.binaryumdf.sbe.v1.6.securitydefinition4message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.security_group_phase_10_message = ProtoField.new("Security Group Phase 10 Message", "b3.equities.binaryumdf.sbe.v1.6.securitygroupphase10message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.security_status_3_message = ProtoField.new("Security Status 3 Message", "b3.equities.binaryumdf.sbe.v1.6.securitystatus3message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.sequence_2_message = ProtoField.new("Sequence 2 Message", "b3.equities.binaryumdf.sbe.v1.6.sequence2message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_header_30_message = ProtoField.new("Snapshot Full Refresh Header 30 Message", "b3.equities.binaryumdf.sbe.v1.6.snapshotfullrefreshheader30message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_orders_mb_o_71_message = ProtoField.new("Snapshot Full Refresh Orders Mb O 71 Message", "b3.equities.binaryumdf.sbe.v1.6.snapshotfullrefreshordersmbo71message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.theoretical_opening_price_16_message = ProtoField.new("Theoretical Opening Price 16 Message", "b3.equities.binaryumdf.sbe.v1.6.theoreticalopeningprice16message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.trade_53_message = ProtoField.new("Trade 53 Message", "b3.equities.binaryumdf.sbe.v1.6.trade53message", ftypes.STRING)
b3_equities_binaryumdf_sbe_v1_6.fields.trade_bust_57_message = ProtoField.new("Trade Bust 57 Message", "b3.equities.binaryumdf.sbe.v1.6.tradebust57message", ftypes.STRING)

-- B3 Equities BinaryUmdf Sbe 1.6 generated fields
b3_equities_binaryumdf_sbe_v1_6.fields.no_instr_attribs_group_index = ProtoField.new("No Instr Attribs Group Index", "b3.equities.binaryumdf.sbe.v1.6.noinstrattribsgroupindex", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.no_legs_group_index = ProtoField.new("No Legs Group Index", "b3.equities.binaryumdf.sbe.v1.6.nolegsgroupindex", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.no_m_d_entries_group_index = ProtoField.new("No M D Entries Group Index", "b3.equities.binaryumdf.sbe.v1.6.nomdentriesgroupindex", ftypes.UINT16)
b3_equities_binaryumdf_sbe_v1_6.fields.no_underlyings_group_index = ProtoField.new("No Underlyings Group Index", "b3.equities.binaryumdf.sbe.v1.6.nounderlyingsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- B3 Equities BinaryUmdf Sbe 1.6 Element Dissection Options
show.auction_imbalance_19_message = true
show.channel_reset_11_message = true
show.closing_price_17_message = true
show.contract_settl_month = true
show.delete_order_mb_o_51_message = true
show.empty_book_9_message = true
show.execution_statistics_56_message = true
show.execution_summary_55_message = true
show.forward_trade_54_message = true
show.group_size_encoding = true
show.headline = true
show.high_price_24_message = true
show.imbalance_condition = true
show.last_trade_price_27_message = true
show.low_price_25_message = true
show.mass_delete_orders_mb_o_52_message = true
show.match_event_indicator = true
show.maturity_month_year = true
show.message = true
show.message_header = true
show.news_5_message = true
show.no_instr_attribs_group = true
show.no_instr_attribs_groups = true
show.no_legs_group = true
show.no_legs_groups = true
show.no_m_d_entries_group = true
show.no_m_d_entries_groups = true
show.no_underlyings_group = true
show.no_underlyings_groups = true
show.opening_price_15_message = true
show.order_mb_o_50_message = true
show.packet = true
show.packet_header = true
show.price_band_20_message = true
show.quantity_band_21_message = true
show.security_definition_4_message = true
show.security_desc = true
show.security_group_phase_10_message = true
show.security_status_3_message = true
show.sequence_2_message = true
show.snapshot_full_refresh_header_30_message = true
show.snapshot_full_refresh_orders_mb_o_71_message = true
show.text = true
show.theoretical_opening_price_16_message = true
show.trade_53_message = true
show.trade_bust_57_message = true
show.trade_condition = true
show.url_link = true
show.payload = false

-- Register B3 Equities BinaryUmdf Sbe 1.6 Show Options
b3_equities_binaryumdf_sbe_v1_6.prefs.show_auction_imbalance_19_message = Pref.bool("Show Auction Imbalance 19 Message", show.auction_imbalance_19_message, "Parse and add Auction Imbalance 19 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_channel_reset_11_message = Pref.bool("Show Channel Reset 11 Message", show.channel_reset_11_message, "Parse and add Channel Reset 11 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_closing_price_17_message = Pref.bool("Show Closing Price 17 Message", show.closing_price_17_message, "Parse and add Closing Price 17 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_contract_settl_month = Pref.bool("Show Contract Settl Month", show.contract_settl_month, "Parse and add Contract Settl Month to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_delete_order_mb_o_51_message = Pref.bool("Show Delete Order Mb O 51 Message", show.delete_order_mb_o_51_message, "Parse and add Delete Order Mb O 51 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_empty_book_9_message = Pref.bool("Show Empty Book 9 Message", show.empty_book_9_message, "Parse and add Empty Book 9 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_statistics_56_message = Pref.bool("Show Execution Statistics 56 Message", show.execution_statistics_56_message, "Parse and add Execution Statistics 56 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_summary_55_message = Pref.bool("Show Execution Summary 55 Message", show.execution_summary_55_message, "Parse and add Execution Summary 55 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_forward_trade_54_message = Pref.bool("Show Forward Trade 54 Message", show.forward_trade_54_message, "Parse and add Forward Trade 54 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_headline = Pref.bool("Show Headline", show.headline, "Parse and add Headline to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_high_price_24_message = Pref.bool("Show High Price 24 Message", show.high_price_24_message, "Parse and add High Price 24 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_imbalance_condition = Pref.bool("Show Imbalance Condition", show.imbalance_condition, "Parse and add Imbalance Condition to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_last_trade_price_27_message = Pref.bool("Show Last Trade Price 27 Message", show.last_trade_price_27_message, "Parse and add Last Trade Price 27 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_low_price_25_message = Pref.bool("Show Low Price 25 Message", show.low_price_25_message, "Parse and add Low Price 25 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_mass_delete_orders_mb_o_52_message = Pref.bool("Show Mass Delete Orders Mb O 52 Message", show.mass_delete_orders_mb_o_52_message, "Parse and add Mass Delete Orders Mb O 52 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_match_event_indicator = Pref.bool("Show Match Event Indicator", show.match_event_indicator, "Parse and add Match Event Indicator to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_news_5_message = Pref.bool("Show News 5 Message", show.news_5_message, "Parse and add News 5 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_instr_attribs_group = Pref.bool("Show No Instr Attribs Group", show.no_instr_attribs_group, "Parse and add No Instr Attribs Group to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_instr_attribs_groups = Pref.bool("Show No Instr Attribs Groups", show.no_instr_attribs_groups, "Parse and add No Instr Attribs Groups to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_legs_group = Pref.bool("Show No Legs Group", show.no_legs_group, "Parse and add No Legs Group to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_legs_groups = Pref.bool("Show No Legs Groups", show.no_legs_groups, "Parse and add No Legs Groups to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_m_d_entries_group = Pref.bool("Show No M D Entries Group", show.no_m_d_entries_group, "Parse and add No M D Entries Group to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_m_d_entries_groups = Pref.bool("Show No M D Entries Groups", show.no_m_d_entries_groups, "Parse and add No M D Entries Groups to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_underlyings_group = Pref.bool("Show No Underlyings Group", show.no_underlyings_group, "Parse and add No Underlyings Group to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_underlyings_groups = Pref.bool("Show No Underlyings Groups", show.no_underlyings_groups, "Parse and add No Underlyings Groups to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_opening_price_15_message = Pref.bool("Show Opening Price 15 Message", show.opening_price_15_message, "Parse and add Opening Price 15 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_order_mb_o_50_message = Pref.bool("Show Order Mb O 50 Message", show.order_mb_o_50_message, "Parse and add Order Mb O 50 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_price_band_20_message = Pref.bool("Show Price Band 20 Message", show.price_band_20_message, "Parse and add Price Band 20 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_quantity_band_21_message = Pref.bool("Show Quantity Band 21 Message", show.quantity_band_21_message, "Parse and add Quantity Band 21 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_definition_4_message = Pref.bool("Show Security Definition 4 Message", show.security_definition_4_message, "Parse and add Security Definition 4 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_desc = Pref.bool("Show Security Desc", show.security_desc, "Parse and add Security Desc to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_group_phase_10_message = Pref.bool("Show Security Group Phase 10 Message", show.security_group_phase_10_message, "Parse and add Security Group Phase 10 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_status_3_message = Pref.bool("Show Security Status 3 Message", show.security_status_3_message, "Parse and add Security Status 3 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_sequence_2_message = Pref.bool("Show Sequence 2 Message", show.sequence_2_message, "Parse and add Sequence 2 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_header_30_message = Pref.bool("Show Snapshot Full Refresh Header 30 Message", show.snapshot_full_refresh_header_30_message, "Parse and add Snapshot Full Refresh Header 30 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message = Pref.bool("Show Snapshot Full Refresh Orders Mb O 71 Message", show.snapshot_full_refresh_orders_mb_o_71_message, "Parse and add Snapshot Full Refresh Orders Mb O 71 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_text = Pref.bool("Show Text", show.text, "Parse and add Text to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_theoretical_opening_price_16_message = Pref.bool("Show Theoretical Opening Price 16 Message", show.theoretical_opening_price_16_message, "Parse and add Theoretical Opening Price 16 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_53_message = Pref.bool("Show Trade 53 Message", show.trade_53_message, "Parse and add Trade 53 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_bust_57_message = Pref.bool("Show Trade Bust 57 Message", show.trade_bust_57_message, "Parse and add Trade Bust 57 Message to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_condition = Pref.bool("Show Trade Condition", show.trade_condition, "Parse and add Trade Condition to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_url_link = Pref.bool("Show Url Link", show.url_link, "Parse and add Url Link to protocol tree")
b3_equities_binaryumdf_sbe_v1_6.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function b3_equities_binaryumdf_sbe_v1_6.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_imbalance_19_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_auction_imbalance_19_message then
    show.auction_imbalance_19_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_auction_imbalance_19_message
    changed = true
  end
  if show.channel_reset_11_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_channel_reset_11_message then
    show.channel_reset_11_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_channel_reset_11_message
    changed = true
  end
  if show.closing_price_17_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_closing_price_17_message then
    show.closing_price_17_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_closing_price_17_message
    changed = true
  end
  if show.contract_settl_month ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_contract_settl_month then
    show.contract_settl_month = b3_equities_binaryumdf_sbe_v1_6.prefs.show_contract_settl_month
    changed = true
  end
  if show.delete_order_mb_o_51_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_delete_order_mb_o_51_message then
    show.delete_order_mb_o_51_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_delete_order_mb_o_51_message
    changed = true
  end
  if show.empty_book_9_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_empty_book_9_message then
    show.empty_book_9_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_empty_book_9_message
    changed = true
  end
  if show.execution_statistics_56_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_statistics_56_message then
    show.execution_statistics_56_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_statistics_56_message
    changed = true
  end
  if show.execution_summary_55_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_summary_55_message then
    show.execution_summary_55_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_summary_55_message
    changed = true
  end
  if show.forward_trade_54_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_forward_trade_54_message then
    show.forward_trade_54_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_forward_trade_54_message
    changed = true
  end
  if show.group_size_encoding ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_group_size_encoding then
    show.group_size_encoding = b3_equities_binaryumdf_sbe_v1_6.prefs.show_group_size_encoding
    changed = true
  end
  if show.headline ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_headline then
    show.headline = b3_equities_binaryumdf_sbe_v1_6.prefs.show_headline
    changed = true
  end
  if show.high_price_24_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_high_price_24_message then
    show.high_price_24_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_high_price_24_message
    changed = true
  end
  if show.imbalance_condition ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_imbalance_condition then
    show.imbalance_condition = b3_equities_binaryumdf_sbe_v1_6.prefs.show_imbalance_condition
    changed = true
  end
  if show.last_trade_price_27_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_last_trade_price_27_message then
    show.last_trade_price_27_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_last_trade_price_27_message
    changed = true
  end
  if show.low_price_25_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_low_price_25_message then
    show.low_price_25_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_low_price_25_message
    changed = true
  end
  if show.mass_delete_orders_mb_o_52_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_mass_delete_orders_mb_o_52_message then
    show.mass_delete_orders_mb_o_52_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_mass_delete_orders_mb_o_52_message
    changed = true
  end
  if show.match_event_indicator ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_match_event_indicator then
    show.match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.prefs.show_match_event_indicator
    changed = true
  end
  if show.maturity_month_year ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_maturity_month_year then
    show.maturity_month_year = b3_equities_binaryumdf_sbe_v1_6.prefs.show_maturity_month_year
    changed = true
  end
  if show.message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_message then
    show.message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_message
    changed = true
  end
  if show.message_header ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_message_header then
    show.message_header = b3_equities_binaryumdf_sbe_v1_6.prefs.show_message_header
    changed = true
  end
  if show.news_5_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_news_5_message then
    show.news_5_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_news_5_message
    changed = true
  end
  if show.no_instr_attribs_group ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_instr_attribs_group then
    show.no_instr_attribs_group = b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_instr_attribs_group
    changed = true
  end
  if show.no_instr_attribs_groups ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_instr_attribs_groups then
    show.no_instr_attribs_groups = b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_instr_attribs_groups
    changed = true
  end
  if show.no_legs_group ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_legs_group then
    show.no_legs_group = b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_legs_group
    changed = true
  end
  if show.no_legs_groups ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_legs_groups then
    show.no_legs_groups = b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_legs_groups
    changed = true
  end
  if show.no_m_d_entries_group ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_m_d_entries_group then
    show.no_m_d_entries_group = b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_m_d_entries_group
    changed = true
  end
  if show.no_m_d_entries_groups ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_m_d_entries_groups then
    show.no_m_d_entries_groups = b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_m_d_entries_groups
    changed = true
  end
  if show.no_underlyings_group ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_underlyings_group then
    show.no_underlyings_group = b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_underlyings_group
    changed = true
  end
  if show.no_underlyings_groups ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_underlyings_groups then
    show.no_underlyings_groups = b3_equities_binaryumdf_sbe_v1_6.prefs.show_no_underlyings_groups
    changed = true
  end
  if show.opening_price_15_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_opening_price_15_message then
    show.opening_price_15_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_opening_price_15_message
    changed = true
  end
  if show.order_mb_o_50_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_order_mb_o_50_message then
    show.order_mb_o_50_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_order_mb_o_50_message
    changed = true
  end
  if show.packet ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet then
    show.packet = b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet_header then
    show.packet_header = b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet_header
    changed = true
  end
  if show.price_band_20_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_price_band_20_message then
    show.price_band_20_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_price_band_20_message
    changed = true
  end
  if show.quantity_band_21_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_quantity_band_21_message then
    show.quantity_band_21_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_quantity_band_21_message
    changed = true
  end
  if show.security_definition_4_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_definition_4_message then
    show.security_definition_4_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_definition_4_message
    changed = true
  end
  if show.security_desc ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_desc then
    show.security_desc = b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_desc
    changed = true
  end
  if show.security_group_phase_10_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_group_phase_10_message then
    show.security_group_phase_10_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_group_phase_10_message
    changed = true
  end
  if show.security_status_3_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_status_3_message then
    show.security_status_3_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_status_3_message
    changed = true
  end
  if show.sequence_2_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_sequence_2_message then
    show.sequence_2_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_sequence_2_message
    changed = true
  end
  if show.snapshot_full_refresh_header_30_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_header_30_message then
    show.snapshot_full_refresh_header_30_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_header_30_message
    changed = true
  end
  if show.snapshot_full_refresh_orders_mb_o_71_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message then
    show.snapshot_full_refresh_orders_mb_o_71_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message
    changed = true
  end
  if show.text ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_text then
    show.text = b3_equities_binaryumdf_sbe_v1_6.prefs.show_text
    changed = true
  end
  if show.theoretical_opening_price_16_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_theoretical_opening_price_16_message then
    show.theoretical_opening_price_16_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_theoretical_opening_price_16_message
    changed = true
  end
  if show.trade_53_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_53_message then
    show.trade_53_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_53_message
    changed = true
  end
  if show.trade_bust_57_message ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_bust_57_message then
    show.trade_bust_57_message = b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_bust_57_message
    changed = true
  end
  if show.trade_condition ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_condition then
    show.trade_condition = b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_condition
    changed = true
  end
  if show.url_link ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_url_link then
    show.url_link = b3_equities_binaryumdf_sbe_v1_6.prefs.show_url_link
    changed = true
  end
  if show.payload ~= b3_equities_binaryumdf_sbe_v1_6.prefs.show_payload then
    show.payload = b3_equities_binaryumdf_sbe_v1_6.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect B3 Equities BinaryUmdf Sbe 1.6
-----------------------------------------------------------------------

-- Size: Md Entry Type
b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_type = 1

-- Display: Md Entry Type
b3_equities_binaryumdf_sbe_v1_6_display.md_entry_type = function(value)
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
  if value == "3" then
    return "Md Entry Type: Index Value (3)"
  end
  if value == "4" then
    return "Md Entry Type: Opening Price (4)"
  end
  if value == "5" then
    return "Md Entry Type: Closing Price (5)"
  end
  if value == "6" then
    return "Md Entry Type: Settlement Price (6)"
  end
  if value == "7" then
    return "Md Entry Type: Session High Price (7)"
  end
  if value == "8" then
    return "Md Entry Type: Session Low Price (8)"
  end
  if value == "9" then
    return "Md Entry Type: Execution Statistics (9)"
  end
  if value == "A" then
    return "Md Entry Type: Imbalance (A)"
  end
  if value == "B" then
    return "Md Entry Type: Trade Volume (B)"
  end
  if value == "C" then
    return "Md Entry Type: Open Interest (C)"
  end
  if value == "J" then
    return "Md Entry Type: Empty Book (J)"
  end
  if value == "c" then
    return "Md Entry Type: Security Trading State Phase (c)"
  end
  if value == "g" then
    return "Md Entry Type: Price Band (g)"
  end
  if value == "h" then
    return "Md Entry Type: Quantity Band (h)"
  end
  if value == "D" then
    return "Md Entry Type: Composite Underlying Price (D)"
  end
  if value == "s" then
    return "Md Entry Type: Execution Summary (s)"
  end
  if value == "v" then
    return "Md Entry Type: Volatility Price (v)"
  end
  if value == "u" then
    return "Md Entry Type: Trade Bust (u)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Size: Secondary Order Id
b3_equities_binaryumdf_sbe_v1_6_size_of.secondary_order_id = 8

-- Display: Secondary Order Id
b3_equities_binaryumdf_sbe_v1_6_display.secondary_order_id = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
b3_equities_binaryumdf_sbe_v1_6_dissect.secondary_order_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.secondary_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.secondary_order_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Size: Md Insert Timestamp
b3_equities_binaryumdf_sbe_v1_6_size_of.md_insert_timestamp = 8

-- Display: Md Insert Timestamp
b3_equities_binaryumdf_sbe_v1_6_display.md_insert_timestamp = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Md Insert Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Md Insert Timestamp
b3_equities_binaryumdf_sbe_v1_6_dissect.md_insert_timestamp = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_insert_timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_insert_timestamp(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_insert_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Entering Firm
b3_equities_binaryumdf_sbe_v1_6_size_of.entering_firm = 4

-- Display: Entering Firm
b3_equities_binaryumdf_sbe_v1_6_display.entering_firm = function(value)
  return "Entering Firm: "..value
end

-- Dissect: Entering Firm
b3_equities_binaryumdf_sbe_v1_6_dissect.entering_firm = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.entering_firm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.entering_firm(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.entering_firm, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Position No
b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_position_no = 4

-- Display: Md Entry Position No
b3_equities_binaryumdf_sbe_v1_6_display.md_entry_position_no = function(value)
  return "Md Entry Position No: "..value
end

-- Dissect: Md Entry Position No
b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_position_no = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_position_no
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_entry_position_no(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_position_no, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Size Quantity
b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity = 8

-- Display: Md Entry Size Quantity
b3_equities_binaryumdf_sbe_v1_6_display.md_entry_size_quantity = function(value)
  return "Md Entry Size Quantity: "..value
end

-- Dissect: Md Entry Size Quantity
b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_size_quantity = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_entry_size_quantity(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_size_quantity, range, value, display)

  return offset + length, value
end

-- Size: Md Corporate Offset Price Optional
b3_equities_binaryumdf_sbe_v1_6_size_of.md_corporate_offset_price_optional = 8

-- Display: Md Corporate Offset Price Optional
b3_equities_binaryumdf_sbe_v1_6_display.md_corporate_offset_price_optional = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Md Corporate Offset Price Optional: No Value"
  end

  return "Md Corporate Offset Price Optional: "..value
end

-- Translate: Md Corporate Offset Price Optional
translate.md_corporate_offset_price_optional = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Md Corporate Offset Price Optional
b3_equities_binaryumdf_sbe_v1_6_dissect.md_corporate_offset_price_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_corporate_offset_price_optional
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.md_corporate_offset_price_optional(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_corporate_offset_price_optional(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_corporate_offset_price_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: No M D Entries Group
b3_equities_binaryumdf_sbe_v1_6_size_of.no_m_d_entries_group = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_corporate_offset_price_optional

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_position_no

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.entering_firm

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_insert_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.secondary_order_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_type

  return index
end

-- Display: No M D Entries Group
b3_equities_binaryumdf_sbe_v1_6_display.no_m_d_entries_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No M D Entries Group
b3_equities_binaryumdf_sbe_v1_6_dissect.no_m_d_entries_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Corporate Offset Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_corporate_offset_price_optional = b3_equities_binaryumdf_sbe_v1_6_dissect.md_corporate_offset_price_optional(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_size_quantity(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_position_no = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_position_no(buffer, index, packet, parent)

  -- Entering Firm: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm = b3_equities_binaryumdf_sbe_v1_6_dissect.entering_firm(buffer, index, packet, parent)

  -- Md Insert Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_insert_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_insert_timestamp(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryumdf_sbe_v1_6_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 21 values
  index, md_entry_type = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_type(buffer, index, packet, parent)

  return index
end

-- Dissect: No M D Entries Group
b3_equities_binaryumdf_sbe_v1_6_dissect.no_m_d_entries_group = function(buffer, offset, packet, parent)
  if show.no_m_d_entries_group then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_m_d_entries_group, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.no_m_d_entries_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.no_m_d_entries_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.no_m_d_entries_group_fields(buffer, offset, packet, element)
  end
end

-- Size: Num In Group
b3_equities_binaryumdf_sbe_v1_6_size_of.num_in_group = 1

-- Display: Num In Group
b3_equities_binaryumdf_sbe_v1_6_display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
b3_equities_binaryumdf_sbe_v1_6_dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.num_in_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: Block Length
b3_equities_binaryumdf_sbe_v1_6_size_of.block_length = 2

-- Display: Block Length
b3_equities_binaryumdf_sbe_v1_6_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
b3_equities_binaryumdf_sbe_v1_6_dissect.block_length = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.block_length(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size Encoding
b3_equities_binaryumdf_sbe_v1_6_size_of.group_size_encoding = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.block_length

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.num_in_group

  return index
end

-- Display: Group Size Encoding
b3_equities_binaryumdf_sbe_v1_6_display.group_size_encoding = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
b3_equities_binaryumdf_sbe_v1_6_dissect.group_size_encoding_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = b3_equities_binaryumdf_sbe_v1_6_dissect.block_length(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = b3_equities_binaryumdf_sbe_v1_6_dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
b3_equities_binaryumdf_sbe_v1_6_dissect.group_size_encoding = function(buffer, offset, packet, parent)
  if show.group_size_encoding then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.group_size_encoding, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.group_size_encoding_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.group_size_encoding(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.group_size_encoding_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: No M D Entries Groups
b3_equities_binaryumdf_sbe_v1_6_size_of.no_m_d_entries_groups = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local no_m_d_entries_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + no_m_d_entries_group_count * 41

  return index
end

-- Display: No M D Entries Groups
b3_equities_binaryumdf_sbe_v1_6_display.no_m_d_entries_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No M D Entries Groups
b3_equities_binaryumdf_sbe_v1_6_dissect.no_m_d_entries_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryumdf_sbe_v1_6_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: No M D Entries Group
  for no_m_d_entries_group_index = 1, num_in_group do
    index, no_m_d_entries_group = b3_equities_binaryumdf_sbe_v1_6_dissect.no_m_d_entries_group(buffer, index, packet, parent)

    if no_m_d_entries_group ~= nil then
      local iteration = no_m_d_entries_group:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_m_d_entries_group_index, no_m_d_entries_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: No M D Entries Groups
b3_equities_binaryumdf_sbe_v1_6_dissect.no_m_d_entries_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.no_m_d_entries_groups then
    local length = b3_equities_binaryumdf_sbe_v1_6_size_of.no_m_d_entries_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.no_m_d_entries_groups(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_m_d_entries_groups, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6_dissect.no_m_d_entries_groups_fields(buffer, offset, packet, parent)
end

-- Size: Security Id
b3_equities_binaryumdf_sbe_v1_6_size_of.security_id = 8

-- Display: Security Id
b3_equities_binaryumdf_sbe_v1_6_display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
b3_equities_binaryumdf_sbe_v1_6_dissect.security_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh Orders Mb O 71 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.snapshot_full_refresh_orders_mb_o_71_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.no_m_d_entries_groups(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Orders Mb O 71 Message
b3_equities_binaryumdf_sbe_v1_6_display.snapshot_full_refresh_orders_mb_o_71_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Orders Mb O 71 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.snapshot_full_refresh_orders_mb_o_71_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- No M D Entries Groups: Struct of 2 fields
  index, no_m_d_entries_groups = b3_equities_binaryumdf_sbe_v1_6_dissect.no_m_d_entries_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Orders Mb O 71 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.snapshot_full_refresh_orders_mb_o_71_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_orders_mb_o_71_message then
    local length = b3_equities_binaryumdf_sbe_v1_6_size_of.snapshot_full_refresh_orders_mb_o_71_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.snapshot_full_refresh_orders_mb_o_71_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_orders_mb_o_71_message, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6_dissect.snapshot_full_refresh_orders_mb_o_71_message_fields(buffer, offset, packet, parent)
end

-- Size: Rpt Seq
b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq = 4

-- Display: Rpt Seq
b3_equities_binaryumdf_sbe_v1_6_display.rpt_seq = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.rpt_seq(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Timestamp
b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp = 8

-- Display: Md Entry Timestamp
b3_equities_binaryumdf_sbe_v1_6_display.md_entry_timestamp = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Md Entry Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Md Entry Timestamp
b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_entry_timestamp(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Offset 34 Padding 2
b3_equities_binaryumdf_sbe_v1_6_size_of.offset_34_padding_2 = 2

-- Display: Offset 34 Padding 2
b3_equities_binaryumdf_sbe_v1_6_display.offset_34_padding_2 = function(value)
  return "Offset 34 Padding 2: "..value
end

-- Dissect: Offset 34 Padding 2
b3_equities_binaryumdf_sbe_v1_6_dissect.offset_34_padding_2 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.offset_34_padding_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.offset_34_padding_2(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.offset_34_padding_2, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date = 2

-- Display: Trade Date
b3_equities_binaryumdf_sbe_v1_6_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
b3_equities_binaryumdf_sbe_v1_6_size_of.trade_id = 4

-- Display: Trade Id
b3_equities_binaryumdf_sbe_v1_6_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
b3_equities_binaryumdf_sbe_v1_6_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Md Future Price
b3_equities_binaryumdf_sbe_v1_6_size_of.md_future_price = 8

-- Display: Md Future Price
b3_equities_binaryumdf_sbe_v1_6_display.md_future_price = function(value)
  return "Md Future Price: "..value
end

-- Translate: Md Future Price
translate.md_future_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Md Future Price
b3_equities_binaryumdf_sbe_v1_6_dissect.md_future_price = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_future_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.md_future_price(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_future_price(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_future_price, range, value, display)

  return offset + length, value
end

-- Size: Offset 10 Padding 2
b3_equities_binaryumdf_sbe_v1_6_size_of.offset_10_padding_2 = 2

-- Display: Offset 10 Padding 2
b3_equities_binaryumdf_sbe_v1_6_display.offset_10_padding_2 = function(value)
  return "Offset 10 Padding 2: "..value
end

-- Dissect: Offset 10 Padding 2
b3_equities_binaryumdf_sbe_v1_6_dissect.offset_10_padding_2 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.offset_10_padding_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.offset_10_padding_2(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.offset_10_padding_2, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Id
b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_id = 1

-- Display: Trading Session Id
b3_equities_binaryumdf_sbe_v1_6_display.trading_session_id = function(value)
  if value == 1 then
    return "Trading Session Id: Regular Trading Session (1)"
  end
  if value == 6 then
    return "Trading Session Id: Non Regular Trading Session (6)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
b3_equities_binaryumdf_sbe_v1_6_dissect.trading_session_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.trading_session_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Size: Match Event Indicator
b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator = 1

-- Display: Match Event Indicator
b3_equities_binaryumdf_sbe_v1_6_display.match_event_indicator = function(buffer, packet, parent)
  local display = ""

  -- Is End Of Event flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."End Of Event|"
  end
  -- Is Unused flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Unused|"
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
b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator_bits = function(buffer, offset, packet, parent)

  -- End Of Event: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.end_of_event, buffer(offset, 1))

  -- Unused: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.unused, buffer(offset, 1))

  -- Recovery Msg: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.recovery_msg, buffer(offset, 1))

  -- Last Implied Msg: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_implied_msg, buffer(offset, 1))

  -- Last Stats Msg: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_stats_msg, buffer(offset, 1))

  -- Last Quote Msg: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_quote_msg, buffer(offset, 1))

  -- Last Volume Msg: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_volume_msg, buffer(offset, 1))

  -- Last Trade Msg: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_msg, buffer(offset, 1))
end

-- Dissect: Match Event Indicator
b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.match_event_indicator(range, packet, parent)
  local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.match_event_indicator, range, display)

  if show.match_event_indicator then
    b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Trade Bust 57 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.trade_bust_57_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_10_padding_2

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_future_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_34_padding_2

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Trade Bust 57 Message
b3_equities_binaryumdf_sbe_v1_6_display.trade_bust_57_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust 57 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.trade_bust_57_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trading_session_id(buffer, index, packet, parent)

  -- Offset 10 Padding 2: 2 Byte
  index, offset_10_padding_2 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_10_padding_2(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6_dissect.md_future_price(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_size_quantity(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Offset 34 Padding 2: 2 Byte
  index, offset_34_padding_2 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_34_padding_2(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust 57 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.trade_bust_57_message = function(buffer, offset, packet, parent)
  if show.trade_bust_57_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trade_bust_57_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_bust_57_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.trade_bust_57_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.trade_bust_57_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Number Of Trades
b3_equities_binaryumdf_sbe_v1_6_size_of.number_of_trades = 4

-- Display: Number Of Trades
b3_equities_binaryumdf_sbe_v1_6_display.number_of_trades = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
b3_equities_binaryumdf_sbe_v1_6_dissect.number_of_trades = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.number_of_trades
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.number_of_trades(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Size: Net Chg Prev Day
b3_equities_binaryumdf_sbe_v1_6_size_of.net_chg_prev_day = 8

-- Display: Net Chg Prev Day
b3_equities_binaryumdf_sbe_v1_6_display.net_chg_prev_day = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Net Chg Prev Day: No Value"
  end

  return "Net Chg Prev Day: "..value
end

-- Translate: Net Chg Prev Day
translate.net_chg_prev_day = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Net Chg Prev Day
b3_equities_binaryumdf_sbe_v1_6_dissect.net_chg_prev_day = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.net_chg_prev_day
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.net_chg_prev_day(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.net_chg_prev_day(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.net_chg_prev_day, range, value, display)

  return offset + length, value
end

-- Size: Vwap Px
b3_equities_binaryumdf_sbe_v1_6_size_of.vwap_px = 8

-- Display: Vwap Px
b3_equities_binaryumdf_sbe_v1_6_display.vwap_px = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Vwap Px: No Value"
  end

  return "Vwap Px: "..value
end

-- Translate: Vwap Px
translate.vwap_px = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Vwap Px
b3_equities_binaryumdf_sbe_v1_6_dissect.vwap_px = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.vwap_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.vwap_px(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.vwap_px(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.vwap_px, range, value, display)

  return offset + length, value
end

-- Size: Trade Volume
b3_equities_binaryumdf_sbe_v1_6_size_of.trade_volume = 8

-- Display: Trade Volume
b3_equities_binaryumdf_sbe_v1_6_display.trade_volume = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
b3_equities_binaryumdf_sbe_v1_6_dissect.trade_volume = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.trade_volume
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.trade_volume(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Statistics 56 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.execution_statistics_56_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_volume

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.vwap_px

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.net_chg_prev_day

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.number_of_trades

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Execution Statistics 56 Message
b3_equities_binaryumdf_sbe_v1_6_display.execution_statistics_56_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Statistics 56 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.execution_statistics_56_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trading_session_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Trade Volume: 8 Byte Signed Fixed Width Integer
  index, trade_volume = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_volume(buffer, index, packet, parent)

  -- Vwap Px: 8 Byte Signed Fixed Width Integer Nullable
  index, vwap_px = b3_equities_binaryumdf_sbe_v1_6_dissect.vwap_px(buffer, index, packet, parent)

  -- Net Chg Prev Day: 8 Byte Signed Fixed Width Integer Nullable
  index, net_chg_prev_day = b3_equities_binaryumdf_sbe_v1_6_dissect.net_chg_prev_day(buffer, index, packet, parent)

  -- Number Of Trades: 4 Byte Unsigned Fixed Width Integer
  index, number_of_trades = b3_equities_binaryumdf_sbe_v1_6_dissect.number_of_trades(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Statistics 56 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.execution_statistics_56_message = function(buffer, offset, packet, parent)
  if show.execution_statistics_56_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.execution_statistics_56_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.execution_statistics_56_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.execution_statistics_56_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.execution_statistics_56_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Aggressor Time
b3_equities_binaryumdf_sbe_v1_6_size_of.aggressor_time = 8

-- Display: Aggressor Time
b3_equities_binaryumdf_sbe_v1_6_display.aggressor_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Aggressor Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Aggressor Time
b3_equities_binaryumdf_sbe_v1_6_dissect.aggressor_time = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.aggressor_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.aggressor_time(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.aggressor_time, range, value, display)

  return offset + length, value
end

-- Size: Cxl Qty
b3_equities_binaryumdf_sbe_v1_6_size_of.cxl_qty = 8

-- Display: Cxl Qty
b3_equities_binaryumdf_sbe_v1_6_display.cxl_qty = function(value)
  return "Cxl Qty: "..value
end

-- Dissect: Cxl Qty
b3_equities_binaryumdf_sbe_v1_6_dissect.cxl_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.cxl_qty
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.cxl_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.cxl_qty, range, value, display)

  return offset + length, value
end

-- Size: Traded Hidden Qty
b3_equities_binaryumdf_sbe_v1_6_size_of.traded_hidden_qty = 8

-- Display: Traded Hidden Qty
b3_equities_binaryumdf_sbe_v1_6_display.traded_hidden_qty = function(value)
  return "Traded Hidden Qty: "..value
end

-- Dissect: Traded Hidden Qty
b3_equities_binaryumdf_sbe_v1_6_dissect.traded_hidden_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.traded_hidden_qty
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.traded_hidden_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.traded_hidden_qty, range, value, display)

  return offset + length, value
end

-- Size: Fill Qty
b3_equities_binaryumdf_sbe_v1_6_size_of.fill_qty = 8

-- Display: Fill Qty
b3_equities_binaryumdf_sbe_v1_6_display.fill_qty = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
b3_equities_binaryumdf_sbe_v1_6_dissect.fill_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.fill_qty
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.fill_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Size: Last Px
b3_equities_binaryumdf_sbe_v1_6_size_of.last_px = 8

-- Display: Last Px
b3_equities_binaryumdf_sbe_v1_6_display.last_px = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
b3_equities_binaryumdf_sbe_v1_6_dissect.last_px = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.last_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.last_px(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.last_px(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_px, range, value, display)

  return offset + length, value
end

-- Size: Offset 11 Padding 1
b3_equities_binaryumdf_sbe_v1_6_size_of.offset_11_padding_1 = 1

-- Display: Offset 11 Padding 1
b3_equities_binaryumdf_sbe_v1_6_display.offset_11_padding_1 = function(value)
  return "Offset 11 Padding 1: "..value
end

-- Dissect: Offset 11 Padding 1
b3_equities_binaryumdf_sbe_v1_6_dissect.offset_11_padding_1 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.offset_11_padding_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.offset_11_padding_1(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.offset_11_padding_1, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Side
b3_equities_binaryumdf_sbe_v1_6_size_of.aggressor_side = 1

-- Display: Aggressor Side
b3_equities_binaryumdf_sbe_v1_6_display.aggressor_side = function(value)
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
b3_equities_binaryumdf_sbe_v1_6_dissect.aggressor_side = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.aggressor_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Size: Offset 8 Padding 2
b3_equities_binaryumdf_sbe_v1_6_size_of.offset_8_padding_2 = 2

-- Display: Offset 8 Padding 2
b3_equities_binaryumdf_sbe_v1_6_display.offset_8_padding_2 = function(value)
  return "Offset 8 Padding 2: "..value
end

-- Dissect: Offset 8 Padding 2
b3_equities_binaryumdf_sbe_v1_6_dissect.offset_8_padding_2 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.offset_8_padding_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.offset_8_padding_2(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.offset_8_padding_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Summary 55 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.execution_summary_55_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_8_padding_2

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.aggressor_side

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_11_padding_1

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.last_px

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.fill_qty

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.traded_hidden_qty

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.cxl_qty

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.aggressor_time

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  return index
end

-- Display: Execution Summary 55 Message
b3_equities_binaryumdf_sbe_v1_6_display.execution_summary_55_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Summary 55 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.execution_summary_55_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Offset 8 Padding 2: 2 Byte
  index, offset_8_padding_2 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_8_padding_2(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_side = b3_equities_binaryumdf_sbe_v1_6_dissect.aggressor_side(buffer, index, packet, parent)

  -- Offset 11 Padding 1: 1 Byte
  index, offset_11_padding_1 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_11_padding_1(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = b3_equities_binaryumdf_sbe_v1_6_dissect.last_px(buffer, index, packet, parent)

  -- Fill Qty: 8 Byte Signed Fixed Width Integer
  index, fill_qty = b3_equities_binaryumdf_sbe_v1_6_dissect.fill_qty(buffer, index, packet, parent)

  -- Traded Hidden Qty: 8 Byte Signed Fixed Width Integer
  index, traded_hidden_qty = b3_equities_binaryumdf_sbe_v1_6_dissect.traded_hidden_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Signed Fixed Width Integer
  index, cxl_qty = b3_equities_binaryumdf_sbe_v1_6_dissect.cxl_qty(buffer, index, packet, parent)

  -- Aggressor Time: 8 Byte Unsigned Fixed Width Integer
  index, aggressor_time = b3_equities_binaryumdf_sbe_v1_6_dissect.aggressor_time(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Summary 55 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.execution_summary_55_message = function(buffer, offset, packet, parent)
  if show.execution_summary_55_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.execution_summary_55_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.execution_summary_55_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.execution_summary_55_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.execution_summary_55_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Padding 3
b3_equities_binaryumdf_sbe_v1_6_size_of.padding_3 = 3

-- Display: Padding 3
b3_equities_binaryumdf_sbe_v1_6_display.padding_3 = function(value)
  return "Padding 3: "..value
end

-- Dissect: Padding 3
b3_equities_binaryumdf_sbe_v1_6_dissect.padding_3 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.padding_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.padding_3(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.padding_3, range, value, display)

  return offset + length, value
end

-- Size: Trd Sub Type
b3_equities_binaryumdf_sbe_v1_6_size_of.trd_sub_type = 1

-- Display: Trd Sub Type
b3_equities_binaryumdf_sbe_v1_6_display.trd_sub_type = function(value)
  if value == 101 then
    return "Trd Sub Type: Multi Asset Trade (101)"
  end
  if value == 102 then
    return "Trd Sub Type: Leg Trade (102)"
  end
  if value == 103 then
    return "Trd Sub Type: Midpoint Trade (103)"
  end
  if value == 104 then
    return "Trd Sub Type: Block Book Trade (104)"
  end
  if value == 105 then
    return "Trd Sub Type: Rfq Trade (105)"
  end
  if value == 106 then
    return "Trd Sub Type: Rlp Trade (106)"
  end
  if value == 107 then
    return "Trd Sub Type: Tac Trade (107)"
  end
  if value == 108 then
    return "Trd Sub Type: Taa Trade (108)"
  end
  if value == 0 then
    return "Trd Sub Type: No Value"
  end

  return "Trd Sub Type: Unknown("..value..")"
end

-- Dissect: Trd Sub Type
b3_equities_binaryumdf_sbe_v1_6_dissect.trd_sub_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.trd_sub_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.trd_sub_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trd_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Interest Rate
b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_interest_rate = 8

-- Display: Md Entry Interest Rate
b3_equities_binaryumdf_sbe_v1_6_display.md_entry_interest_rate = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x00000000) then
    return "Md Entry Interest Rate: No Value"
  end

  return "Md Entry Interest Rate: "..value
end

-- Translate: Md Entry Interest Rate
translate.md_entry_interest_rate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Md Entry Interest Rate
b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_interest_rate = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_interest_rate
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.md_entry_interest_rate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_entry_interest_rate(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_interest_rate, range, value, display)

  return offset + length, value
end

-- Size: Seller Days
b3_equities_binaryumdf_sbe_v1_6_size_of.seller_days = 2

-- Display: Seller Days
b3_equities_binaryumdf_sbe_v1_6_display.seller_days = function(value)
  return "Seller Days: "..value
end

-- Dissect: Seller Days
b3_equities_binaryumdf_sbe_v1_6_dissect.seller_days = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.seller_days
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.seller_days(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.seller_days, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Seller
b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_seller = 4

-- Display: Md Entry Seller
b3_equities_binaryumdf_sbe_v1_6_display.md_entry_seller = function(value)
  return "Md Entry Seller: "..value
end

-- Dissect: Md Entry Seller
b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_seller = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_seller
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_entry_seller(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_seller, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Buyer
b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_buyer = 4

-- Display: Md Entry Buyer
b3_equities_binaryumdf_sbe_v1_6_display.md_entry_buyer = function(value)
  return "Md Entry Buyer: "..value
end

-- Dissect: Md Entry Buyer
b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_buyer = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_buyer
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_entry_buyer(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_buyer, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition
b3_equities_binaryumdf_sbe_v1_6_size_of.trade_condition = 2

-- Display: Trade Condition
b3_equities_binaryumdf_sbe_v1_6_display.trade_condition = function(buffer, packet, parent)
  local display = ""

  -- Is Reserved 1 flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Reserved 1|"
  end
  -- Is Block Trade flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Block Trade|"
  end
  -- Is Regular Trade flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Regular Trade|"
  end
  -- Is Last Trade At The Same Price flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Last Trade At The Same Price|"
  end
  -- Is Crossed flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Crossed|"
  end
  -- Is Opening Price flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Opening Price|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Condition
b3_equities_binaryumdf_sbe_v1_6_dissect.trade_condition_bits = function(buffer, offset, packet, parent)

  -- Reserved 1: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.reserved_1, buffer(offset, 2))

  -- Block Trade: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.block_trade, buffer(offset, 2))

  -- Regular Trade: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.regular_trade, buffer(offset, 2))

  -- Trade On Behalf: 7 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trade_on_behalf, buffer(offset, 2))

  -- Out Of Sequence: 3 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.out_of_sequence, buffer(offset, 2))

  -- Last Trade At The Same Price: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_at_the_same_price, buffer(offset, 2))

  -- Crossed: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.crossed, buffer(offset, 2))

  -- Opening Price: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.opening_price, buffer(offset, 2))
end

-- Dissect: Trade Condition
b3_equities_binaryumdf_sbe_v1_6_dissect.trade_condition = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.trade_condition(range, packet, parent)
  local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trade_condition, range, display)

  if show.trade_condition then
    b3_equities_binaryumdf_sbe_v1_6_dissect.trade_condition_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Calculate size of: Forward Trade 54 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.forward_trade_54_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_condition

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_future_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_buyer

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_seller

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.seller_days

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_interest_rate

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trd_sub_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.padding_3

  return index
end

-- Display: Forward Trade 54 Message
b3_equities_binaryumdf_sbe_v1_6_display.forward_trade_54_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Forward Trade 54 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.forward_trade_54_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trading_session_id(buffer, index, packet, parent)

  -- Trade Condition: Struct of 8 fields
  index, trade_condition = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_condition(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6_dissect.md_future_price(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_size_quantity(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_id(buffer, index, packet, parent)

  -- Md Entry Buyer: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_buyer = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_buyer(buffer, index, packet, parent)

  -- Md Entry Seller: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_seller = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_seller(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  -- Seller Days: 2 Byte Unsigned Fixed Width Integer
  index, seller_days = b3_equities_binaryumdf_sbe_v1_6_dissect.seller_days(buffer, index, packet, parent)

  -- Md Entry Interest Rate: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_interest_rate = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_interest_rate(buffer, index, packet, parent)

  -- Trd Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trd_sub_type = b3_equities_binaryumdf_sbe_v1_6_dissect.trd_sub_type(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = b3_equities_binaryumdf_sbe_v1_6_dissect.padding_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Forward Trade 54 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.forward_trade_54_message = function(buffer, offset, packet, parent)
  if show.forward_trade_54_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.forward_trade_54_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.forward_trade_54_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.forward_trade_54_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.forward_trade_54_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Offset 43 Padding 1
b3_equities_binaryumdf_sbe_v1_6_size_of.offset_43_padding_1 = 1

-- Display: Offset 43 Padding 1
b3_equities_binaryumdf_sbe_v1_6_display.offset_43_padding_1 = function(value)
  return "Offset 43 Padding 1: "..value
end

-- Dissect: Offset 43 Padding 1
b3_equities_binaryumdf_sbe_v1_6_dissect.offset_43_padding_1 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.offset_43_padding_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.offset_43_padding_1(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.offset_43_padding_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade 53 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.trade_53_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_condition

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_future_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_buyer

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_seller

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trd_sub_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_43_padding_1

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Trade 53 Message
b3_equities_binaryumdf_sbe_v1_6_display.trade_53_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade 53 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.trade_53_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trading_session_id(buffer, index, packet, parent)

  -- Trade Condition: Struct of 8 fields
  index, trade_condition = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_condition(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6_dissect.md_future_price(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_size_quantity(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_id(buffer, index, packet, parent)

  -- Md Entry Buyer: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_buyer = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_buyer(buffer, index, packet, parent)

  -- Md Entry Seller: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_seller = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_seller(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Trd Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trd_sub_type = b3_equities_binaryumdf_sbe_v1_6_dissect.trd_sub_type(buffer, index, packet, parent)

  -- Offset 43 Padding 1: 1 Byte
  index, offset_43_padding_1 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_43_padding_1(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade 53 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.trade_53_message = function(buffer, offset, packet, parent)
  if show.trade_53_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trade_53_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_53_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.trade_53_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.trade_53_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Md Update Action
b3_equities_binaryumdf_sbe_v1_6_size_of.md_update_action = 1

-- Display: Md Update Action
b3_equities_binaryumdf_sbe_v1_6_display.md_update_action = function(value)
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
b3_equities_binaryumdf_sbe_v1_6_dissect.md_update_action = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_update_action
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_update_action(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Delete Orders Mb O 52 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.mass_delete_orders_mb_o_52_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_update_action

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_11_padding_1

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_position_no

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Mass Delete Orders Mb O 52 Message
b3_equities_binaryumdf_sbe_v1_6_display.mass_delete_orders_mb_o_52_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Delete Orders Mb O 52 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.mass_delete_orders_mb_o_52_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6_dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 21 values
  index, md_entry_type = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_type(buffer, index, packet, parent)

  -- Offset 11 Padding 1: 1 Byte
  index, offset_11_padding_1 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_11_padding_1(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_position_no = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_position_no(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Delete Orders Mb O 52 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.mass_delete_orders_mb_o_52_message = function(buffer, offset, packet, parent)
  if show.mass_delete_orders_mb_o_52_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.mass_delete_orders_mb_o_52_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.mass_delete_orders_mb_o_52_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.mass_delete_orders_mb_o_52_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.mass_delete_orders_mb_o_52_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Md Entry Size Quantity Optional
b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity_optional = 8

-- Display: Md Entry Size Quantity Optional
b3_equities_binaryumdf_sbe_v1_6_display.md_entry_size_quantity_optional = function(value)
  return "Md Entry Size Quantity Optional: "..value
end

-- Dissect: Md Entry Size Quantity Optional
b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_size_quantity_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_entry_size_quantity_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_size_quantity_optional, range, value, display)

  return offset + length, value
end

-- Size: Offset 9 Padding 1
b3_equities_binaryumdf_sbe_v1_6_size_of.offset_9_padding_1 = 1

-- Display: Offset 9 Padding 1
b3_equities_binaryumdf_sbe_v1_6_display.offset_9_padding_1 = function(value)
  return "Offset 9 Padding 1: "..value
end

-- Dissect: Offset 9 Padding 1
b3_equities_binaryumdf_sbe_v1_6_dissect.offset_9_padding_1 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.offset_9_padding_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.offset_9_padding_1(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.offset_9_padding_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Delete Order Mb O 51 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.delete_order_mb_o_51_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_9_padding_1

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_11_padding_1

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_position_no

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity_optional

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.secondary_order_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Delete Order Mb O 51 Message
b3_equities_binaryumdf_sbe_v1_6_display.delete_order_mb_o_51_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Mb O 51 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.delete_order_mb_o_51_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Offset 9 Padding 1: 1 Byte
  index, offset_9_padding_1 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_9_padding_1(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 21 values
  index, md_entry_type = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_type(buffer, index, packet, parent)

  -- Offset 11 Padding 1: 1 Byte
  index, offset_11_padding_1 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_11_padding_1(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_position_no = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_position_no(buffer, index, packet, parent)

  -- Md Entry Size Quantity Optional: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity_optional = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_size_quantity_optional(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryumdf_sbe_v1_6_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Mb O 51 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.delete_order_mb_o_51_message = function(buffer, offset, packet, parent)
  if show.delete_order_mb_o_51_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.delete_order_mb_o_51_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.delete_order_mb_o_51_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.delete_order_mb_o_51_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.delete_order_mb_o_51_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Order Mb O 50 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.order_mb_o_50_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_update_action

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_11_padding_1

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_corporate_offset_price_optional

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_position_no

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.entering_firm

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_insert_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.secondary_order_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  return index
end

-- Display: Order Mb O 50 Message
b3_equities_binaryumdf_sbe_v1_6_display.order_mb_o_50_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mb O 50 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.order_mb_o_50_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6_dissect.md_update_action(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 21 values
  index, md_entry_type = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_type(buffer, index, packet, parent)

  -- Offset 11 Padding 1: 1 Byte
  index, offset_11_padding_1 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_11_padding_1(buffer, index, packet, parent)

  -- Md Corporate Offset Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_corporate_offset_price_optional = b3_equities_binaryumdf_sbe_v1_6_dissect.md_corporate_offset_price_optional(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_size_quantity(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_position_no = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_position_no(buffer, index, packet, parent)

  -- Entering Firm: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm = b3_equities_binaryumdf_sbe_v1_6_dissect.entering_firm(buffer, index, packet, parent)

  -- Md Insert Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_insert_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_insert_timestamp(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryumdf_sbe_v1_6_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mb O 50 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.order_mb_o_50_message = function(buffer, offset, packet, parent)
  if show.order_mb_o_50_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.order_mb_o_50_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.order_mb_o_50_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.order_mb_o_50_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.order_mb_o_50_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Last Rpt Seq
b3_equities_binaryumdf_sbe_v1_6_size_of.last_rpt_seq = 4

-- Display: Last Rpt Seq
b3_equities_binaryumdf_sbe_v1_6_display.last_rpt_seq = function(value)
  return "Last Rpt Seq: "..value
end

-- Dissect: Last Rpt Seq
b3_equities_binaryumdf_sbe_v1_6_dissect.last_rpt_seq = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.last_rpt_seq
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.last_rpt_seq(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_rpt_seq, range, value, display)

  return offset + length, value
end

-- Size: Offset 26 Padding 2
b3_equities_binaryumdf_sbe_v1_6_size_of.offset_26_padding_2 = 2

-- Display: Offset 26 Padding 2
b3_equities_binaryumdf_sbe_v1_6_display.offset_26_padding_2 = function(value)
  return "Offset 26 Padding 2: "..value
end

-- Dissect: Offset 26 Padding 2
b3_equities_binaryumdf_sbe_v1_6_dissect.offset_26_padding_2 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.offset_26_padding_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.offset_26_padding_2(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.offset_26_padding_2, range, value, display)

  return offset + length, value
end

-- Size: Tot Num Stats
b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_stats = 2

-- Display: Tot Num Stats
b3_equities_binaryumdf_sbe_v1_6_display.tot_num_stats = function(value)
  return "Tot Num Stats: "..value
end

-- Dissect: Tot Num Stats
b3_equities_binaryumdf_sbe_v1_6_dissect.tot_num_stats = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_stats
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.tot_num_stats(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_stats, range, value, display)

  return offset + length, value
end

-- Size: Tot Num Offers
b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_offers = 4

-- Display: Tot Num Offers
b3_equities_binaryumdf_sbe_v1_6_display.tot_num_offers = function(value)
  return "Tot Num Offers: "..value
end

-- Dissect: Tot Num Offers
b3_equities_binaryumdf_sbe_v1_6_dissect.tot_num_offers = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_offers
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.tot_num_offers(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_offers, range, value, display)

  return offset + length, value
end

-- Size: Tot Num Bids
b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_bids = 4

-- Display: Tot Num Bids
b3_equities_binaryumdf_sbe_v1_6_display.tot_num_bids = function(value)
  return "Tot Num Bids: "..value
end

-- Dissect: Tot Num Bids
b3_equities_binaryumdf_sbe_v1_6_dissect.tot_num_bids = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_bids
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.tot_num_bids(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_bids, range, value, display)

  return offset + length, value
end

-- Size: Tot Num Reports
b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_reports = 4

-- Display: Tot Num Reports
b3_equities_binaryumdf_sbe_v1_6_display.tot_num_reports = function(value)
  return "Tot Num Reports: "..value
end

-- Dissect: Tot Num Reports
b3_equities_binaryumdf_sbe_v1_6_dissect.tot_num_reports = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_reports
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.tot_num_reports(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_reports, range, value, display)

  return offset + length, value
end

-- Size: Last Msg Seq Num Processed
b3_equities_binaryumdf_sbe_v1_6_size_of.last_msg_seq_num_processed = 4

-- Display: Last Msg Seq Num Processed
b3_equities_binaryumdf_sbe_v1_6_display.last_msg_seq_num_processed = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
b3_equities_binaryumdf_sbe_v1_6_dissect.last_msg_seq_num_processed = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.last_msg_seq_num_processed
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.last_msg_seq_num_processed(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Calculate size of: Snapshot Full Refresh Header 30 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.snapshot_full_refresh_header_30_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.last_msg_seq_num_processed

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_reports

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_bids

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_offers

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.tot_num_stats

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_26_padding_2

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.last_rpt_seq

  return index
end

-- Display: Snapshot Full Refresh Header 30 Message
b3_equities_binaryumdf_sbe_v1_6_display.snapshot_full_refresh_header_30_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Header 30 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.snapshot_full_refresh_header_30_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = b3_equities_binaryumdf_sbe_v1_6_dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = b3_equities_binaryumdf_sbe_v1_6_dissect.tot_num_reports(buffer, index, packet, parent)

  -- Tot Num Bids: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_bids = b3_equities_binaryumdf_sbe_v1_6_dissect.tot_num_bids(buffer, index, packet, parent)

  -- Tot Num Offers: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_offers = b3_equities_binaryumdf_sbe_v1_6_dissect.tot_num_offers(buffer, index, packet, parent)

  -- Tot Num Stats: 2 Byte Unsigned Fixed Width Integer
  index, tot_num_stats = b3_equities_binaryumdf_sbe_v1_6_dissect.tot_num_stats(buffer, index, packet, parent)

  -- Offset 26 Padding 2: 2 Byte
  index, offset_26_padding_2 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_26_padding_2(buffer, index, packet, parent)

  -- Last Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, last_rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.last_rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Header 30 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.snapshot_full_refresh_header_30_message = function(buffer, offset, packet, parent)
  if show.snapshot_full_refresh_header_30_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_header_30_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.snapshot_full_refresh_header_30_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.snapshot_full_refresh_header_30_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.snapshot_full_refresh_header_30_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Last Trade Price 27 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.last_trade_price_27_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_condition

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_future_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_buyer

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_seller

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.seller_days

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_interest_rate

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trd_sub_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.padding_3

  return index
end

-- Display: Last Trade Price 27 Message
b3_equities_binaryumdf_sbe_v1_6_display.last_trade_price_27_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Trade Price 27 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.last_trade_price_27_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trading_session_id(buffer, index, packet, parent)

  -- Trade Condition: Struct of 8 fields
  index, trade_condition = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_condition(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6_dissect.md_future_price(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_size_quantity(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_id(buffer, index, packet, parent)

  -- Md Entry Buyer: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_buyer = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_buyer(buffer, index, packet, parent)

  -- Md Entry Seller: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_seller = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_seller(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  -- Seller Days: 2 Byte Unsigned Fixed Width Integer
  index, seller_days = b3_equities_binaryumdf_sbe_v1_6_dissect.seller_days(buffer, index, packet, parent)

  -- Md Entry Interest Rate: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_interest_rate = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_interest_rate(buffer, index, packet, parent)

  -- Trd Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trd_sub_type = b3_equities_binaryumdf_sbe_v1_6_dissect.trd_sub_type(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = b3_equities_binaryumdf_sbe_v1_6_dissect.padding_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Trade Price 27 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.last_trade_price_27_message = function(buffer, offset, packet, parent)
  if show.last_trade_price_27_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_price_27_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.last_trade_price_27_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.last_trade_price_27_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.last_trade_price_27_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Low Price 25 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.low_price_25_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_update_action

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_future_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Low Price 25 Message
b3_equities_binaryumdf_sbe_v1_6_display.low_price_25_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Price 25 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.low_price_25_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6_dissect.md_update_action(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6_dissect.md_future_price(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Price 25 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.low_price_25_message = function(buffer, offset, packet, parent)
  if show.low_price_25_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.low_price_25_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.low_price_25_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.low_price_25_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.low_price_25_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: High Price 24 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.high_price_24_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_update_action

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_future_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: High Price 24 Message
b3_equities_binaryumdf_sbe_v1_6_display.high_price_24_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Price 24 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.high_price_24_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6_dissect.md_update_action(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6_dissect.md_future_price(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: High Price 24 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.high_price_24_message = function(buffer, offset, packet, parent)
  if show.high_price_24_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.high_price_24_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.high_price_24_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.high_price_24_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.high_price_24_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Max Trade Vol
b3_equities_binaryumdf_sbe_v1_6_size_of.max_trade_vol = 8

-- Display: Max Trade Vol
b3_equities_binaryumdf_sbe_v1_6_display.max_trade_vol = function(value)
  return "Max Trade Vol: "..value
end

-- Dissect: Max Trade Vol
b3_equities_binaryumdf_sbe_v1_6_dissect.max_trade_vol = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.max_trade_vol
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.max_trade_vol(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.max_trade_vol, range, value, display)

  return offset + length, value
end

-- Size: Avg Daily Traded Qty
b3_equities_binaryumdf_sbe_v1_6_size_of.avg_daily_traded_qty = 8

-- Display: Avg Daily Traded Qty
b3_equities_binaryumdf_sbe_v1_6_display.avg_daily_traded_qty = function(value)
  return "Avg Daily Traded Qty: "..value
end

-- Dissect: Avg Daily Traded Qty
b3_equities_binaryumdf_sbe_v1_6_dissect.avg_daily_traded_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.avg_daily_traded_qty
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.avg_daily_traded_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.avg_daily_traded_qty, range, value, display)

  return offset + length, value
end

-- Size: Offset 9 Padding 3
b3_equities_binaryumdf_sbe_v1_6_size_of.offset_9_padding_3 = 3

-- Display: Offset 9 Padding 3
b3_equities_binaryumdf_sbe_v1_6_display.offset_9_padding_3 = function(value)
  return "Offset 9 Padding 3: "..value
end

-- Dissect: Offset 9 Padding 3
b3_equities_binaryumdf_sbe_v1_6_dissect.offset_9_padding_3 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.offset_9_padding_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.offset_9_padding_3(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.offset_9_padding_3, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quantity Band 21 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.quantity_band_21_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_9_padding_3

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.avg_daily_traded_qty

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.max_trade_vol

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Quantity Band 21 Message
b3_equities_binaryumdf_sbe_v1_6_display.quantity_band_21_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quantity Band 21 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.quantity_band_21_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Offset 9 Padding 3: 3 Byte
  index, offset_9_padding_3 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_9_padding_3(buffer, index, packet, parent)

  -- Avg Daily Traded Qty: 8 Byte Signed Fixed Width Integer
  index, avg_daily_traded_qty = b3_equities_binaryumdf_sbe_v1_6_dissect.avg_daily_traded_qty(buffer, index, packet, parent)

  -- Max Trade Vol: 8 Byte Signed Fixed Width Integer
  index, max_trade_vol = b3_equities_binaryumdf_sbe_v1_6_dissect.max_trade_vol(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Quantity Band 21 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.quantity_band_21_message = function(buffer, offset, packet, parent)
  if show.quantity_band_21_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.quantity_band_21_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.quantity_band_21_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.quantity_band_21_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.quantity_band_21_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Trading Reference Price
b3_equities_binaryumdf_sbe_v1_6_size_of.trading_reference_price = 8

-- Display: Trading Reference Price
b3_equities_binaryumdf_sbe_v1_6_display.trading_reference_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Trading Reference Price: No Value"
  end

  return "Trading Reference Price: "..value
end

-- Translate: Trading Reference Price
translate.trading_reference_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Trading Reference Price
b3_equities_binaryumdf_sbe_v1_6_dissect.trading_reference_price = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.trading_reference_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.trading_reference_price(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.trading_reference_price(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trading_reference_price, range, value, display)

  return offset + length, value
end

-- Size: High Limit Price
b3_equities_binaryumdf_sbe_v1_6_size_of.high_limit_price = 8

-- Display: High Limit Price
b3_equities_binaryumdf_sbe_v1_6_display.high_limit_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Translate: High Limit Price
translate.high_limit_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: High Limit Price
b3_equities_binaryumdf_sbe_v1_6_dissect.high_limit_price = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.high_limit_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.high_limit_price(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.high_limit_price(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Size: Low Limit Price
b3_equities_binaryumdf_sbe_v1_6_size_of.low_limit_price = 8

-- Display: Low Limit Price
b3_equities_binaryumdf_sbe_v1_6_display.low_limit_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
translate.low_limit_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Low Limit Price
b3_equities_binaryumdf_sbe_v1_6_dissect.low_limit_price = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.low_limit_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.low_limit_price(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.low_limit_price(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Size: Price Band Midpoint Price Type
b3_equities_binaryumdf_sbe_v1_6_size_of.price_band_midpoint_price_type = 1

-- Display: Price Band Midpoint Price Type
b3_equities_binaryumdf_sbe_v1_6_display.price_band_midpoint_price_type = function(value)
  if value == 0 then
    return "Price Band Midpoint Price Type: Last Traded Price (0)"
  end
  if value == 1 then
    return "Price Band Midpoint Price Type: Complementary Last Price (1)"
  end
  if value == 2 then
    return "Price Band Midpoint Price Type: Theoretical Price (2)"
  end
  if value == 255 then
    return "Price Band Midpoint Price Type: No Value"
  end

  return "Price Band Midpoint Price Type: Unknown("..value..")"
end

-- Dissect: Price Band Midpoint Price Type
b3_equities_binaryumdf_sbe_v1_6_dissect.price_band_midpoint_price_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.price_band_midpoint_price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.price_band_midpoint_price_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.price_band_midpoint_price_type, range, value, display)

  return offset + length, value
end

-- Size: Price Limit Type
b3_equities_binaryumdf_sbe_v1_6_size_of.price_limit_type = 1

-- Display: Price Limit Type
b3_equities_binaryumdf_sbe_v1_6_display.price_limit_type = function(value)
  if value == 0 then
    return "Price Limit Type: Price Unit (0)"
  end
  if value == 1 then
    return "Price Limit Type: Ticks (1)"
  end
  if value == 2 then
    return "Price Limit Type: Percentage (2)"
  end
  if value == 255 then
    return "Price Limit Type: No Value"
  end

  return "Price Limit Type: Unknown("..value..")"
end

-- Dissect: Price Limit Type
b3_equities_binaryumdf_sbe_v1_6_dissect.price_limit_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.price_limit_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.price_limit_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.price_limit_type, range, value, display)

  return offset + length, value
end

-- Size: Price Band Type
b3_equities_binaryumdf_sbe_v1_6_size_of.price_band_type = 1

-- Display: Price Band Type
b3_equities_binaryumdf_sbe_v1_6_display.price_band_type = function(value)
  if value == 1 then
    return "Price Band Type: Hard Limit (1)"
  end
  if value == 2 then
    return "Price Band Type: Auction Limits (2)"
  end
  if value == 3 then
    return "Price Band Type: Rejection Band (3)"
  end
  if value == 4 then
    return "Price Band Type: Static Limits (4)"
  end
  if value == 255 then
    return "Price Band Type: No Value"
  end

  return "Price Band Type: Unknown("..value..")"
end

-- Dissect: Price Band Type
b3_equities_binaryumdf_sbe_v1_6_dissect.price_band_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.price_band_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.price_band_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.price_band_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Price Band 20 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.price_band_20_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.price_band_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.price_limit_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.price_band_midpoint_price_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.low_limit_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.high_limit_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trading_reference_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Price Band 20 Message
b3_equities_binaryumdf_sbe_v1_6_display.price_band_20_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Band 20 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.price_band_20_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Price Band Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, price_band_type = b3_equities_binaryumdf_sbe_v1_6_dissect.price_band_type(buffer, index, packet, parent)

  -- Price Limit Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_limit_type = b3_equities_binaryumdf_sbe_v1_6_dissect.price_limit_type(buffer, index, packet, parent)

  -- Price Band Midpoint Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_band_midpoint_price_type = b3_equities_binaryumdf_sbe_v1_6_dissect.price_band_midpoint_price_type(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = b3_equities_binaryumdf_sbe_v1_6_dissect.low_limit_price(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = b3_equities_binaryumdf_sbe_v1_6_dissect.high_limit_price(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = b3_equities_binaryumdf_sbe_v1_6_dissect.trading_reference_price(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Band 20 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.price_band_20_message = function(buffer, offset, packet, parent)
  if show.price_band_20_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.price_band_20_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.price_band_20_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.price_band_20_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.price_band_20_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Imbalance Condition
b3_equities_binaryumdf_sbe_v1_6_size_of.imbalance_condition = 2

-- Display: Imbalance Condition
b3_equities_binaryumdf_sbe_v1_6_display.imbalance_condition = function(buffer, packet, parent)
  local display = ""

  -- Is Imbalance More Sellers flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Imbalance More Sellers|"
  end
  -- Is Imbalance More Buyers flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Imbalance More Buyers|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Imbalance Condition
b3_equities_binaryumdf_sbe_v1_6_dissect.imbalance_condition_bits = function(buffer, offset, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.reserved_6, buffer(offset, 2))

  -- Imbalance More Sellers: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_more_sellers, buffer(offset, 2))

  -- Imbalance More Buyers: 1 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_more_buyers, buffer(offset, 2))

  -- Reserved 8: 8 Bit
  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.reserved_8, buffer(offset, 2))
end

-- Dissect: Imbalance Condition
b3_equities_binaryumdf_sbe_v1_6_dissect.imbalance_condition = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.imbalance_condition(range, packet, parent)
  local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_condition, range, display)

  if show.imbalance_condition then
    b3_equities_binaryumdf_sbe_v1_6_dissect.imbalance_condition_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Calculate size of: Auction Imbalance 19 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.auction_imbalance_19_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_update_action

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.imbalance_condition

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity_optional

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Auction Imbalance 19 Message
b3_equities_binaryumdf_sbe_v1_6_display.auction_imbalance_19_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Imbalance 19 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.auction_imbalance_19_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6_dissect.md_update_action(buffer, index, packet, parent)

  -- Imbalance Condition: Struct of 4 fields
  index, imbalance_condition = b3_equities_binaryumdf_sbe_v1_6_dissect.imbalance_condition(buffer, index, packet, parent)

  -- Md Entry Size Quantity Optional: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity_optional = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_size_quantity_optional(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Imbalance 19 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.auction_imbalance_19_message = function(buffer, offset, packet, parent)
  if show.auction_imbalance_19_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.auction_imbalance_19_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.auction_imbalance_19_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.auction_imbalance_19_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.auction_imbalance_19_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Last Trade Date
b3_equities_binaryumdf_sbe_v1_6_size_of.last_trade_date = 2

-- Display: Last Trade Date
b3_equities_binaryumdf_sbe_v1_6_display.last_trade_date = function(value)
  -- Check if field has value
  if value == 0 then
    return "Last Trade Date: No Value"
  end

  return "Last Trade Date: "..value
end

-- Dissect: Last Trade Date
b3_equities_binaryumdf_sbe_v1_6_dissect.last_trade_date = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.last_trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.last_trade_date(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_date, range, value, display)

  return offset + length, value
end

-- Size: Md Corporate Price
b3_equities_binaryumdf_sbe_v1_6_size_of.md_corporate_price = 8

-- Display: Md Corporate Price
b3_equities_binaryumdf_sbe_v1_6_display.md_corporate_price = function(value)
  return "Md Corporate Price: "..value
end

-- Translate: Md Corporate Price
translate.md_corporate_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Md Corporate Price
b3_equities_binaryumdf_sbe_v1_6_dissect.md_corporate_price = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.md_corporate_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.md_corporate_price(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.md_corporate_price(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.md_corporate_price, range, value, display)

  return offset + length, value
end

-- Size: Open Close Settl Flag
b3_equities_binaryumdf_sbe_v1_6_size_of.open_close_settl_flag = 1

-- Display: Open Close Settl Flag
b3_equities_binaryumdf_sbe_v1_6_display.open_close_settl_flag = function(value)
  if value == 0 then
    return "Open Close Settl Flag: Daily (0)"
  end
  if value == 1 then
    return "Open Close Settl Flag: Session (1)"
  end
  if value == 3 then
    return "Open Close Settl Flag: Expected Entry (3)"
  end
  if value == 4 then
    return "Open Close Settl Flag: Entry From Previous Business Day (4)"
  end
  if value == 5 then
    return "Open Close Settl Flag: Theoretical Price (5)"
  end

  return "Open Close Settl Flag: Unknown("..value..")"
end

-- Dissect: Open Close Settl Flag
b3_equities_binaryumdf_sbe_v1_6_dissect.open_close_settl_flag = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.open_close_settl_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.open_close_settl_flag(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Calculate size of: Closing Price 17 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.closing_price_17_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.open_close_settl_flag

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_10_padding_2

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_corporate_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.last_trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Closing Price 17 Message
b3_equities_binaryumdf_sbe_v1_6_display.closing_price_17_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Price 17 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.closing_price_17_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, open_close_settl_flag = b3_equities_binaryumdf_sbe_v1_6_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Offset 10 Padding 2: 2 Byte
  index, offset_10_padding_2 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_10_padding_2(buffer, index, packet, parent)

  -- Md Corporate Price: 8 Byte Signed Fixed Width Integer
  index, md_corporate_price = b3_equities_binaryumdf_sbe_v1_6_dissect.md_corporate_price(buffer, index, packet, parent)

  -- Last Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, last_trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.last_trade_date(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Price 17 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.closing_price_17_message = function(buffer, offset, packet, parent)
  if show.closing_price_17_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.closing_price_17_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.closing_price_17_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.closing_price_17_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.closing_price_17_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Theoretical Opening Price 16 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.theoretical_opening_price_16_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_update_action

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_corporate_offset_price_optional

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_size_quantity_optional

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Theoretical Opening Price 16 Message
b3_equities_binaryumdf_sbe_v1_6_display.theoretical_opening_price_16_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Theoretical Opening Price 16 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.theoretical_opening_price_16_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6_dissect.md_update_action(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Md Corporate Offset Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_corporate_offset_price_optional = b3_equities_binaryumdf_sbe_v1_6_dissect.md_corporate_offset_price_optional(buffer, index, packet, parent)

  -- Md Entry Size Quantity Optional: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity_optional = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_size_quantity_optional(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Theoretical Opening Price 16 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.theoretical_opening_price_16_message = function(buffer, offset, packet, parent)
  if show.theoretical_opening_price_16_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.theoretical_opening_price_16_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.theoretical_opening_price_16_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.theoretical_opening_price_16_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.theoretical_opening_price_16_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Padding 2
b3_equities_binaryumdf_sbe_v1_6_size_of.padding_2 = 2

-- Display: Padding 2
b3_equities_binaryumdf_sbe_v1_6_display.padding_2 = function(value)
  return "Padding 2: "..value
end

-- Dissect: Padding 2
b3_equities_binaryumdf_sbe_v1_6_dissect.padding_2 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.padding_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.padding_2(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.padding_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Opening Price 15 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.opening_price_15_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_update_action

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.open_close_settl_flag

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_11_padding_1

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_future_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.net_chg_prev_day

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.padding_2

  return index
end

-- Display: Opening Price 15 Message
b3_equities_binaryumdf_sbe_v1_6_display.opening_price_15_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Price 15 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.opening_price_15_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6_dissect.md_update_action(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, open_close_settl_flag = b3_equities_binaryumdf_sbe_v1_6_dissect.open_close_settl_flag(buffer, index, packet, parent)

  -- Offset 11 Padding 1: 1 Byte
  index, offset_11_padding_1 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_11_padding_1(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6_dissect.md_future_price(buffer, index, packet, parent)

  -- Net Chg Prev Day: 8 Byte Signed Fixed Width Integer Nullable
  index, net_chg_prev_day = b3_equities_binaryumdf_sbe_v1_6_dissect.net_chg_prev_day(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = b3_equities_binaryumdf_sbe_v1_6_dissect.padding_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Price 15 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.opening_price_15_message = function(buffer, offset, packet, parent)
  if show.opening_price_15_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.opening_price_15_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.opening_price_15_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.opening_price_15_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.opening_price_15_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Offset 1 Padding 3
b3_equities_binaryumdf_sbe_v1_6_size_of.offset_1_padding_3 = 3

-- Display: Offset 1 Padding 3
b3_equities_binaryumdf_sbe_v1_6_display.offset_1_padding_3 = function(value)
  return "Offset 1 Padding 3: "..value
end

-- Dissect: Offset 1 Padding 3
b3_equities_binaryumdf_sbe_v1_6_dissect.offset_1_padding_3 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.offset_1_padding_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.offset_1_padding_3(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.offset_1_padding_3, range, value, display)

  return offset + length, value
end

-- Calculate size of: Channel Reset 11 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.channel_reset_11_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_1_padding_3

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  return index
end

-- Display: Channel Reset 11 Message
b3_equities_binaryumdf_sbe_v1_6_display.channel_reset_11_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset 11 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.channel_reset_11_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Offset 1 Padding 3: 3 Byte
  index, offset_1_padding_3 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_1_padding_3(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset 11 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.channel_reset_11_message = function(buffer, offset, packet, parent)
  if show.channel_reset_11_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.channel_reset_11_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.channel_reset_11_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.channel_reset_11_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.channel_reset_11_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Empty Book 9 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.empty_book_9_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_9_padding_3

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.md_entry_timestamp

  return index
end

-- Display: Empty Book 9 Message
b3_equities_binaryumdf_sbe_v1_6_display.empty_book_9_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Empty Book 9 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.empty_book_9_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Offset 9 Padding 3: 3 Byte
  index, offset_9_padding_3 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_9_padding_3(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.md_entry_timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Empty Book 9 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.empty_book_9_message = function(buffer, offset, packet, parent)
  if show.empty_book_9_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.empty_book_9_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.empty_book_9_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.empty_book_9_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.empty_book_9_message_fields(buffer, offset, packet, element)
  end
end

-- Display: Url Link Data
b3_equities_binaryumdf_sbe_v1_6_display.url_link_data = function(value)
  return "Url Link Data: "..value
end

-- Dissect runtime sized field: Url Link Data
b3_equities_binaryumdf_sbe_v1_6_dissect.url_link_data = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.url_link_data(value, buffer, offset, packet, parent, size)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.url_link_data, range, value, display)

  return offset + size
end

-- Size: Url Link Length
b3_equities_binaryumdf_sbe_v1_6_size_of.url_link_length = 2

-- Display: Url Link Length
b3_equities_binaryumdf_sbe_v1_6_display.url_link_length = function(value)
  return "Url Link Length: "..value
end

-- Dissect: Url Link Length
b3_equities_binaryumdf_sbe_v1_6_dissect.url_link_length = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.url_link_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.url_link_length(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.url_link_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Url Link
b3_equities_binaryumdf_sbe_v1_6_size_of.url_link = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.url_link_length

  -- Parse runtime size of: Url Link Data
  index = index + buffer(offset + index - 2, 2):le_uint()

  return index
end

-- Display: Url Link
b3_equities_binaryumdf_sbe_v1_6_display.url_link = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Url Link
b3_equities_binaryumdf_sbe_v1_6_dissect.url_link_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Url Link Length: 2 Byte Unsigned Fixed Width Integer
  index, url_link_length = b3_equities_binaryumdf_sbe_v1_6_dissect.url_link_length(buffer, index, packet, parent)

  -- Runtime Size Of: Url Link Data
  index, url_link_data = b3_equities_binaryumdf_sbe_v1_6_dissect.url_link_data(buffer, index, packet, parent, url_link_length)

  return index
end

-- Dissect: Url Link
b3_equities_binaryumdf_sbe_v1_6_dissect.url_link = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.url_link then
    local length = b3_equities_binaryumdf_sbe_v1_6_size_of.url_link(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.url_link(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.url_link, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6_dissect.url_link_fields(buffer, offset, packet, parent)
end

-- Display: Text Data
b3_equities_binaryumdf_sbe_v1_6_display.text_data = function(value)
  return "Text Data: "..value
end

-- Dissect runtime sized field: Text Data
b3_equities_binaryumdf_sbe_v1_6_dissect.text_data = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.text_data(value, buffer, offset, packet, parent, size)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.text_data, range, value, display)

  return offset + size
end

-- Size: Text Length
b3_equities_binaryumdf_sbe_v1_6_size_of.text_length = 2

-- Display: Text Length
b3_equities_binaryumdf_sbe_v1_6_display.text_length = function(value)
  return "Text Length: "..value
end

-- Dissect: Text Length
b3_equities_binaryumdf_sbe_v1_6_dissect.text_length = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.text_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.text_length(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.text_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Text
b3_equities_binaryumdf_sbe_v1_6_size_of.text = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.text_length

  -- Parse runtime size of: Text Data
  index = index + buffer(offset + index - 2, 2):le_uint()

  return index
end

-- Display: Text
b3_equities_binaryumdf_sbe_v1_6_display.text = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Text
b3_equities_binaryumdf_sbe_v1_6_dissect.text_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text Length: 2 Byte Unsigned Fixed Width Integer
  index, text_length = b3_equities_binaryumdf_sbe_v1_6_dissect.text_length(buffer, index, packet, parent)

  -- Runtime Size Of: Text Data
  index, text_data = b3_equities_binaryumdf_sbe_v1_6_dissect.text_data(buffer, index, packet, parent, text_length)

  return index
end

-- Dissect: Text
b3_equities_binaryumdf_sbe_v1_6_dissect.text = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.text then
    local length = b3_equities_binaryumdf_sbe_v1_6_size_of.text(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.text(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.text, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6_dissect.text_fields(buffer, offset, packet, parent)
end

-- Display: Headline Data
b3_equities_binaryumdf_sbe_v1_6_display.headline_data = function(value)
  return "Headline Data: "..value
end

-- Dissect runtime sized field: Headline Data
b3_equities_binaryumdf_sbe_v1_6_dissect.headline_data = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.headline_data(value, buffer, offset, packet, parent, size)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.headline_data, range, value, display)

  return offset + size
end

-- Size: Headline Length
b3_equities_binaryumdf_sbe_v1_6_size_of.headline_length = 2

-- Display: Headline Length
b3_equities_binaryumdf_sbe_v1_6_display.headline_length = function(value)
  return "Headline Length: "..value
end

-- Dissect: Headline Length
b3_equities_binaryumdf_sbe_v1_6_dissect.headline_length = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.headline_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.headline_length(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.headline_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Headline
b3_equities_binaryumdf_sbe_v1_6_size_of.headline = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.headline_length

  -- Parse runtime size of: Headline Data
  index = index + buffer(offset + index - 2, 2):le_uint()

  return index
end

-- Display: Headline
b3_equities_binaryumdf_sbe_v1_6_display.headline = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Headline
b3_equities_binaryumdf_sbe_v1_6_dissect.headline_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Headline Length: 2 Byte Unsigned Fixed Width Integer
  index, headline_length = b3_equities_binaryumdf_sbe_v1_6_dissect.headline_length(buffer, index, packet, parent)

  -- Runtime Size Of: Headline Data
  index, headline_data = b3_equities_binaryumdf_sbe_v1_6_dissect.headline_data(buffer, index, packet, parent, headline_length)

  return index
end

-- Dissect: Headline
b3_equities_binaryumdf_sbe_v1_6_dissect.headline = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.headline then
    local length = b3_equities_binaryumdf_sbe_v1_6_size_of.headline(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.headline(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.headline, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6_dissect.headline_fields(buffer, offset, packet, parent)
end

-- Size: Total Text Length
b3_equities_binaryumdf_sbe_v1_6_size_of.total_text_length = 4

-- Display: Total Text Length
b3_equities_binaryumdf_sbe_v1_6_display.total_text_length = function(value)
  return "Total Text Length: "..value
end

-- Dissect: Total Text Length
b3_equities_binaryumdf_sbe_v1_6_dissect.total_text_length = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.total_text_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.total_text_length(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.total_text_length, range, value, display)

  return offset + length, value
end

-- Size: Orig Time
b3_equities_binaryumdf_sbe_v1_6_size_of.orig_time = 8

-- Display: Orig Time
b3_equities_binaryumdf_sbe_v1_6_display.orig_time = function(value)
  -- Check null sentinel value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Orig Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Orig Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Orig Time
b3_equities_binaryumdf_sbe_v1_6_dissect.orig_time = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.orig_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.orig_time(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Size: News Id
b3_equities_binaryumdf_sbe_v1_6_size_of.news_id = 8

-- Display: News Id
b3_equities_binaryumdf_sbe_v1_6_display.news_id = function(value)
  return "News Id: "..value
end

-- Dissect: News Id
b3_equities_binaryumdf_sbe_v1_6_dissect.news_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.news_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.news_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.news_id, range, value, display)

  return offset + length, value
end

-- Size: Part Number
b3_equities_binaryumdf_sbe_v1_6_size_of.part_number = 2

-- Display: Part Number
b3_equities_binaryumdf_sbe_v1_6_display.part_number = function(value)
  return "Part Number: "..value
end

-- Dissect: Part Number
b3_equities_binaryumdf_sbe_v1_6_dissect.part_number = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.part_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.part_number(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.part_number, range, value, display)

  return offset + length, value
end

-- Size: Part Count
b3_equities_binaryumdf_sbe_v1_6_size_of.part_count = 2

-- Display: Part Count
b3_equities_binaryumdf_sbe_v1_6_display.part_count = function(value)
  return "Part Count: "..value
end

-- Dissect: Part Count
b3_equities_binaryumdf_sbe_v1_6_dissect.part_count = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.part_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.part_count(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.part_count, range, value, display)

  return offset + length, value
end

-- Size: Language Code
b3_equities_binaryumdf_sbe_v1_6_size_of.language_code = 2

-- Display: Language Code
b3_equities_binaryumdf_sbe_v1_6_display.language_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Language Code: No Value"
  end

  return "Language Code: "..value
end

-- Dissect: Language Code
b3_equities_binaryumdf_sbe_v1_6_dissect.language_code = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.language_code
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.language_code(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.language_code, range, value, display)

  return offset + length, value
end

-- Size: News Source
b3_equities_binaryumdf_sbe_v1_6_size_of.news_source = 1

-- Display: News Source
b3_equities_binaryumdf_sbe_v1_6_display.news_source = function(value)
  if value == 0 then
    return "News Source: Other (0)"
  end
  if value == 1 then
    return "News Source: Dcm (1)"
  end
  if value == 2 then
    return "News Source: Bbmnet (2)"
  end
  if value == 3 then
    return "News Source: Market Surveillance (3)"
  end
  if value == 4 then
    return "News Source: Internet (4)"
  end
  if value == 5 then
    return "News Source: Dpr Ve (5)"
  end
  if value == 19 then
    return "News Source: Mkt Ops Fx Agency (19)"
  end
  if value == 20 then
    return "News Source: Mkt Ops Derivatives Agency (20)"
  end
  if value == 11 then
    return "News Source: Over The Counter News Agency (11)"
  end
  if value == 13 then
    return "News Source: Electronic Purchase Exchange (13)"
  end
  if value == 14 then
    return "News Source: Cblc News Agency (14)"
  end
  if value == 15 then
    return "News Source: Bovespa Index Agency (15)"
  end
  if value == 16 then
    return "News Source: Bovespa Institutional Agency (16)"
  end
  if value == 17 then
    return "News Source: Mkt Ops Equities Agency (17)"
  end
  if value == 18 then
    return "News Source: Bovespa Companies Agency (18)"
  end

  return "News Source: Unknown("..value..")"
end

-- Dissect: News Source
b3_equities_binaryumdf_sbe_v1_6_dissect.news_source = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.news_source
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.news_source(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.news_source, range, value, display)

  return offset + length, value
end

-- Size: Security Id Optional
b3_equities_binaryumdf_sbe_v1_6_size_of.security_id_optional = 8

-- Display: Security Id Optional
b3_equities_binaryumdf_sbe_v1_6_display.security_id_optional = function(value)
  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
b3_equities_binaryumdf_sbe_v1_6_dissect.security_id_optional = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_id_optional(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: News 5 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.news_5_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id_optional

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.news_source

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.language_code

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.part_count

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.part_number

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.news_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.orig_time

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.total_text_length

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.headline(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.text(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.url_link(buffer, offset + index)

  return index
end

-- Display: News 5 Message
b3_equities_binaryumdf_sbe_v1_6_display.news_5_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News 5 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.news_5_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, security_id_optional = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id_optional(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- News Source: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, news_source = b3_equities_binaryumdf_sbe_v1_6_dissect.news_source(buffer, index, packet, parent)

  -- Language Code: 2 Byte Ascii String Nullable
  index, language_code = b3_equities_binaryumdf_sbe_v1_6_dissect.language_code(buffer, index, packet, parent)

  -- Part Count: 2 Byte Unsigned Fixed Width Integer
  index, part_count = b3_equities_binaryumdf_sbe_v1_6_dissect.part_count(buffer, index, packet, parent)

  -- Part Number: 2 Byte Unsigned Fixed Width Integer
  index, part_number = b3_equities_binaryumdf_sbe_v1_6_dissect.part_number(buffer, index, packet, parent)

  -- News Id: 8 Byte Unsigned Fixed Width Integer
  index, news_id = b3_equities_binaryumdf_sbe_v1_6_dissect.news_id(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_time = b3_equities_binaryumdf_sbe_v1_6_dissect.orig_time(buffer, index, packet, parent)

  -- Total Text Length: 4 Byte Unsigned Fixed Width Integer
  index, total_text_length = b3_equities_binaryumdf_sbe_v1_6_dissect.total_text_length(buffer, index, packet, parent)

  -- Headline: Struct of 2 fields
  index, headline = b3_equities_binaryumdf_sbe_v1_6_dissect.headline(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryumdf_sbe_v1_6_dissect.text(buffer, index, packet, parent)

  -- Url Link: Struct of 2 fields
  index, url_link = b3_equities_binaryumdf_sbe_v1_6_dissect.url_link(buffer, index, packet, parent)

  return index
end

-- Dissect: News 5 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.news_5_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.news_5_message then
    local length = b3_equities_binaryumdf_sbe_v1_6_size_of.news_5_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.news_5_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.news_5_message, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6_dissect.news_5_message_fields(buffer, offset, packet, parent)
end

-- Display: Security Desc Data
b3_equities_binaryumdf_sbe_v1_6_display.security_desc_data = function(value)
  return "Security Desc Data: "..value
end

-- Dissect runtime sized field: Security Desc Data
b3_equities_binaryumdf_sbe_v1_6_dissect.security_desc_data = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_desc_data(value, buffer, offset, packet, parent, size)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_desc_data, range, value, display)

  return offset + size
end

-- Size: Security Desc Length
b3_equities_binaryumdf_sbe_v1_6_size_of.security_desc_length = 1

-- Display: Security Desc Length
b3_equities_binaryumdf_sbe_v1_6_display.security_desc_length = function(value)
  return "Security Desc Length: "..value
end

-- Dissect: Security Desc Length
b3_equities_binaryumdf_sbe_v1_6_dissect.security_desc_length = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_desc_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_desc_length(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_desc_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Desc
b3_equities_binaryumdf_sbe_v1_6_size_of.security_desc = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_desc_length

  -- Parse runtime size of: Security Desc Data
  index = index + buffer(offset + index - 1, 1):le_uint()

  return index
end

-- Display: Security Desc
b3_equities_binaryumdf_sbe_v1_6_display.security_desc = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Desc
b3_equities_binaryumdf_sbe_v1_6_dissect.security_desc_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Desc Length: 1 Byte Unsigned Fixed Width Integer
  index, security_desc_length = b3_equities_binaryumdf_sbe_v1_6_dissect.security_desc_length(buffer, index, packet, parent)

  -- Runtime Size Of: Security Desc Data
  index, security_desc_data = b3_equities_binaryumdf_sbe_v1_6_dissect.security_desc_data(buffer, index, packet, parent, security_desc_length)

  return index
end

-- Dissect: Security Desc
b3_equities_binaryumdf_sbe_v1_6_dissect.security_desc = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_desc then
    local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_desc(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.security_desc(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_desc, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6_dissect.security_desc_fields(buffer, offset, packet, parent)
end

-- Size: Instr Attrib Value
b3_equities_binaryumdf_sbe_v1_6_size_of.instr_attrib_value = 1

-- Display: Instr Attrib Value
b3_equities_binaryumdf_sbe_v1_6_display.instr_attrib_value = function(value)
  if value == 1 then
    return "Instr Attrib Value: Electronic Match Or Gtd Gtc Eligible (1)"
  end
  if value == 2 then
    return "Instr Attrib Value: Order Cross Eligible (2)"
  end
  if value == 3 then
    return "Instr Attrib Value: Block Trade Eligible (3)"
  end
  if value == 14 then
    return "Instr Attrib Value: Flag Rfq For Cross Eligible (14)"
  end
  if value == 17 then
    return "Instr Attrib Value: Negotiated Quote Eligible (17)"
  end

  return "Instr Attrib Value: Unknown("..value..")"
end

-- Dissect: Instr Attrib Value
b3_equities_binaryumdf_sbe_v1_6_dissect.instr_attrib_value = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.instr_attrib_value
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.instr_attrib_value(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.instr_attrib_value, range, value, display)

  return offset + length, value
end

-- Size: Instr Attrib Type
b3_equities_binaryumdf_sbe_v1_6_size_of.instr_attrib_type = 1

-- Display: Instr Attrib Type
b3_equities_binaryumdf_sbe_v1_6_display.instr_attrib_type = function(value)
  if value == 24 then
    return "Instr Attrib Type: Trade Type Eligibility (24)"
  end
  if value == 34 then
    return "Instr Attrib Type: Gtd Gtc Eligibility (34)"
  end

  return "Instr Attrib Type: Unknown("..value..")"
end

-- Dissect: Instr Attrib Type
b3_equities_binaryumdf_sbe_v1_6_dissect.instr_attrib_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.instr_attrib_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.instr_attrib_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.instr_attrib_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: No Instr Attribs Group
b3_equities_binaryumdf_sbe_v1_6_size_of.no_instr_attribs_group = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.instr_attrib_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.instr_attrib_value

  return index
end

-- Display: No Instr Attribs Group
b3_equities_binaryumdf_sbe_v1_6_display.no_instr_attribs_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Instr Attribs Group
b3_equities_binaryumdf_sbe_v1_6_dissect.no_instr_attribs_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instr Attrib Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, instr_attrib_type = b3_equities_binaryumdf_sbe_v1_6_dissect.instr_attrib_type(buffer, index, packet, parent)

  -- Instr Attrib Value: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, instr_attrib_value = b3_equities_binaryumdf_sbe_v1_6_dissect.instr_attrib_value(buffer, index, packet, parent)

  return index
end

-- Dissect: No Instr Attribs Group
b3_equities_binaryumdf_sbe_v1_6_dissect.no_instr_attribs_group = function(buffer, offset, packet, parent)
  if show.no_instr_attribs_group then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_instr_attribs_group, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.no_instr_attribs_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.no_instr_attribs_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.no_instr_attribs_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: No Instr Attribs Groups
b3_equities_binaryumdf_sbe_v1_6_size_of.no_instr_attribs_groups = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local no_instr_attribs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + no_instr_attribs_group_count * 2

  return index
end

-- Display: No Instr Attribs Groups
b3_equities_binaryumdf_sbe_v1_6_display.no_instr_attribs_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Instr Attribs Groups
b3_equities_binaryumdf_sbe_v1_6_dissect.no_instr_attribs_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryumdf_sbe_v1_6_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: No Instr Attribs Group
  for no_instr_attribs_group_index = 1, num_in_group do
    index, no_instr_attribs_group = b3_equities_binaryumdf_sbe_v1_6_dissect.no_instr_attribs_group(buffer, index, packet, parent)

    if no_instr_attribs_group ~= nil then
      local iteration = no_instr_attribs_group:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_instr_attribs_group_index, no_instr_attribs_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: No Instr Attribs Groups
b3_equities_binaryumdf_sbe_v1_6_dissect.no_instr_attribs_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.no_instr_attribs_groups then
    local length = b3_equities_binaryumdf_sbe_v1_6_size_of.no_instr_attribs_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.no_instr_attribs_groups(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_instr_attribs_groups, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6_dissect.no_instr_attribs_groups_fields(buffer, offset, packet, parent)
end

-- Size: Leg Symbol
b3_equities_binaryumdf_sbe_v1_6_size_of.leg_symbol = 20

-- Display: Leg Symbol
b3_equities_binaryumdf_sbe_v1_6_display.leg_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
b3_equities_binaryumdf_sbe_v1_6_dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.leg_symbol
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg Side
b3_equities_binaryumdf_sbe_v1_6_size_of.leg_side = 1

-- Display: Leg Side
b3_equities_binaryumdf_sbe_v1_6_display.leg_side = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
b3_equities_binaryumdf_sbe_v1_6_dissect.leg_side = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.leg_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.leg_side(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Type
b3_equities_binaryumdf_sbe_v1_6_size_of.leg_security_type = 1

-- Display: Leg Security Type
b3_equities_binaryumdf_sbe_v1_6_display.leg_security_type = function(value)
  if value == 1 then
    return "Leg Security Type: Cash (1)"
  end
  if value == 2 then
    return "Leg Security Type: Corp (2)"
  end
  if value == 3 then
    return "Leg Security Type: Cs (3)"
  end
  if value == 4 then
    return "Leg Security Type: Dterm (4)"
  end
  if value == 5 then
    return "Leg Security Type: Etf (5)"
  end
  if value == 6 then
    return "Leg Security Type: Fopt (6)"
  end
  if value == 7 then
    return "Leg Security Type: Forward (7)"
  end
  if value == 8 then
    return "Leg Security Type: Fut (8)"
  end
  if value == 9 then
    return "Leg Security Type: Index (9)"
  end
  if value == 10 then
    return "Leg Security Type: Indexopt (10)"
  end
  if value == 11 then
    return "Leg Security Type: Mleg (11)"
  end
  if value == 12 then
    return "Leg Security Type: Opt (12)"
  end
  if value == 13 then
    return "Leg Security Type: Optexer (13)"
  end
  if value == 14 then
    return "Leg Security Type: Ps (14)"
  end
  if value == 15 then
    return "Leg Security Type: Secloan (15)"
  end
  if value == 16 then
    return "Leg Security Type: Sopt (16)"
  end
  if value == 17 then
    return "Leg Security Type: Spot (17)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
b3_equities_binaryumdf_sbe_v1_6_dissect.leg_security_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.leg_security_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.leg_security_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
b3_equities_binaryumdf_sbe_v1_6_size_of.leg_ratio_qty = 8

-- Display: Leg Ratio Qty
b3_equities_binaryumdf_sbe_v1_6_display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Translate: Leg Ratio Qty
translate.leg_ratio_qty = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Leg Ratio Qty
b3_equities_binaryumdf_sbe_v1_6_dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.leg_ratio_qty(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Id
b3_equities_binaryumdf_sbe_v1_6_size_of.leg_security_id = 8

-- Display: Leg Security Id
b3_equities_binaryumdf_sbe_v1_6_display.leg_security_id = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
b3_equities_binaryumdf_sbe_v1_6_dissect.leg_security_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.leg_security_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: No Legs Group
b3_equities_binaryumdf_sbe_v1_6_size_of.no_legs_group = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.leg_security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.leg_ratio_qty

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.leg_security_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.leg_side

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.leg_symbol

  return index
end

-- Display: No Legs Group
b3_equities_binaryumdf_sbe_v1_6_display.no_legs_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Legs Group
b3_equities_binaryumdf_sbe_v1_6_dissect.no_legs_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Security Id: 8 Byte Unsigned Fixed Width Integer
  index, leg_security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Ratio Qty: 8 Byte Signed Fixed Width Integer
  index, leg_ratio_qty = b3_equities_binaryumdf_sbe_v1_6_dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, leg_security_type = b3_equities_binaryumdf_sbe_v1_6_dissect.leg_security_type(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = b3_equities_binaryumdf_sbe_v1_6_dissect.leg_side(buffer, index, packet, parent)

  -- Leg Symbol: 20 Byte Ascii String
  index, leg_symbol = b3_equities_binaryumdf_sbe_v1_6_dissect.leg_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: No Legs Group
b3_equities_binaryumdf_sbe_v1_6_dissect.no_legs_group = function(buffer, offset, packet, parent)
  if show.no_legs_group then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_legs_group, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.no_legs_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.no_legs_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.no_legs_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: No Legs Groups
b3_equities_binaryumdf_sbe_v1_6_size_of.no_legs_groups = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local no_legs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + no_legs_group_count * 38

  return index
end

-- Display: No Legs Groups
b3_equities_binaryumdf_sbe_v1_6_display.no_legs_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Legs Groups
b3_equities_binaryumdf_sbe_v1_6_dissect.no_legs_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryumdf_sbe_v1_6_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: No Legs Group
  for no_legs_group_index = 1, num_in_group do
    index, no_legs_group = b3_equities_binaryumdf_sbe_v1_6_dissect.no_legs_group(buffer, index, packet, parent)

    if no_legs_group ~= nil then
      local iteration = no_legs_group:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_legs_group_index, no_legs_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: No Legs Groups
b3_equities_binaryumdf_sbe_v1_6_dissect.no_legs_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.no_legs_groups then
    local length = b3_equities_binaryumdf_sbe_v1_6_size_of.no_legs_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.no_legs_groups(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_legs_groups, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6_dissect.no_legs_groups_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Symbol
b3_equities_binaryumdf_sbe_v1_6_size_of.underlying_symbol = 20

-- Display: Underlying Symbol
b3_equities_binaryumdf_sbe_v1_6_display.underlying_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
b3_equities_binaryumdf_sbe_v1_6_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.underlying_symbol
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Index Theoretical Qty
b3_equities_binaryumdf_sbe_v1_6_size_of.index_theoretical_qty = 8

-- Display: Index Theoretical Qty
b3_equities_binaryumdf_sbe_v1_6_display.index_theoretical_qty = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Index Theoretical Qty: No Value"
  end

  return "Index Theoretical Qty: "..value
end

-- Translate: Index Theoretical Qty
translate.index_theoretical_qty = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Index Theoretical Qty
b3_equities_binaryumdf_sbe_v1_6_dissect.index_theoretical_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.index_theoretical_qty
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.index_theoretical_qty(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.index_theoretical_qty(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.index_theoretical_qty, range, value, display)

  return offset + length, value
end

-- Size: Index Pct
b3_equities_binaryumdf_sbe_v1_6_size_of.index_pct = 8

-- Display: Index Pct
b3_equities_binaryumdf_sbe_v1_6_display.index_pct = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x00000000) then
    return "Index Pct: No Value"
  end

  return "Index Pct: "..value
end

-- Translate: Index Pct
translate.index_pct = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Index Pct
b3_equities_binaryumdf_sbe_v1_6_dissect.index_pct = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.index_pct
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.index_pct(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.index_pct(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.index_pct, range, value, display)

  return offset + length, value
end

-- Size: Underlying Security Id
b3_equities_binaryumdf_sbe_v1_6_size_of.underlying_security_id = 8

-- Display: Underlying Security Id
b3_equities_binaryumdf_sbe_v1_6_display.underlying_security_id = function(value)
  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
b3_equities_binaryumdf_sbe_v1_6_dissect.underlying_security_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.underlying_security_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.underlying_security_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.underlying_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: No Underlyings Group
b3_equities_binaryumdf_sbe_v1_6_size_of.no_underlyings_group = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.underlying_security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.index_pct

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.index_theoretical_qty

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.underlying_symbol

  return index
end

-- Display: No Underlyings Group
b3_equities_binaryumdf_sbe_v1_6_display.no_underlyings_group = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Underlyings Group
b3_equities_binaryumdf_sbe_v1_6_dissect.no_underlyings_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Security Id: 8 Byte Unsigned Fixed Width Integer
  index, underlying_security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.underlying_security_id(buffer, index, packet, parent)

  -- Index Pct: 8 Byte Signed Fixed Width Integer Nullable
  index, index_pct = b3_equities_binaryumdf_sbe_v1_6_dissect.index_pct(buffer, index, packet, parent)

  -- Index Theoretical Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, index_theoretical_qty = b3_equities_binaryumdf_sbe_v1_6_dissect.index_theoretical_qty(buffer, index, packet, parent)

  -- Underlying Symbol: 20 Byte Ascii String
  index, underlying_symbol = b3_equities_binaryumdf_sbe_v1_6_dissect.underlying_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: No Underlyings Group
b3_equities_binaryumdf_sbe_v1_6_dissect.no_underlyings_group = function(buffer, offset, packet, parent)
  if show.no_underlyings_group then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_underlyings_group, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.no_underlyings_group_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.no_underlyings_group(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.no_underlyings_group_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: No Underlyings Groups
b3_equities_binaryumdf_sbe_v1_6_size_of.no_underlyings_groups = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local no_underlyings_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + no_underlyings_group_count * 44

  return index
end

-- Display: No Underlyings Groups
b3_equities_binaryumdf_sbe_v1_6_display.no_underlyings_groups = function(packet, parent, length)
  return ""
end

-- Dissect Fields: No Underlyings Groups
b3_equities_binaryumdf_sbe_v1_6_dissect.no_underlyings_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryumdf_sbe_v1_6_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: No Underlyings Group
  for no_underlyings_group_index = 1, num_in_group do
    index, no_underlyings_group = b3_equities_binaryumdf_sbe_v1_6_dissect.no_underlyings_group(buffer, index, packet, parent)

    if no_underlyings_group ~= nil then
      local iteration = no_underlyings_group:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_underlyings_group_index, no_underlyings_group_index)
      iteration:set_generated()
    end
  end

  return index
end

-- Dissect: No Underlyings Groups
b3_equities_binaryumdf_sbe_v1_6_dissect.no_underlyings_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.no_underlyings_groups then
    local length = b3_equities_binaryumdf_sbe_v1_6_size_of.no_underlyings_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.no_underlyings_groups(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_underlyings_groups, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6_dissect.no_underlyings_groups_fields(buffer, offset, packet, parent)
end

-- Size: Min Cross Qty
b3_equities_binaryumdf_sbe_v1_6_size_of.min_cross_qty = 8

-- Display: Min Cross Qty
b3_equities_binaryumdf_sbe_v1_6_display.min_cross_qty = function(value)
  return "Min Cross Qty: "..value
end

-- Dissect: Min Cross Qty
b3_equities_binaryumdf_sbe_v1_6_dissect.min_cross_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.min_cross_qty
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.min_cross_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.min_cross_qty, range, value, display)

  return offset + length, value
end

-- Size: Multi Leg Price Method
b3_equities_binaryumdf_sbe_v1_6_size_of.multi_leg_price_method = 1

-- Display: Multi Leg Price Method
b3_equities_binaryumdf_sbe_v1_6_display.multi_leg_price_method = function(value)
  if value == 0 then
    return "Multi Leg Price Method: Net Price (0)"
  end
  if value == 1 then
    return "Multi Leg Price Method: Reversed Net Price (1)"
  end
  if value == 2 then
    return "Multi Leg Price Method: Yield Difference (2)"
  end
  if value == 3 then
    return "Multi Leg Price Method: Individual (3)"
  end
  if value == 4 then
    return "Multi Leg Price Method: Contract Weighted Average Price (4)"
  end
  if value == 5 then
    return "Multi Leg Price Method: Multiplied Price (5)"
  end
  if value == 255 then
    return "Multi Leg Price Method: No Value"
  end

  return "Multi Leg Price Method: Unknown("..value..")"
end

-- Dissect: Multi Leg Price Method
b3_equities_binaryumdf_sbe_v1_6_dissect.multi_leg_price_method = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.multi_leg_price_method
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.multi_leg_price_method(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.multi_leg_price_method, range, value, display)

  return offset + length, value
end

-- Size: Multi Leg Model
b3_equities_binaryumdf_sbe_v1_6_size_of.multi_leg_model = 1

-- Display: Multi Leg Model
b3_equities_binaryumdf_sbe_v1_6_display.multi_leg_model = function(value)
  if value == 0 then
    return "Multi Leg Model: Predefined (0)"
  end
  if value == 1 then
    return "Multi Leg Model: User Defined (1)"
  end
  if value == 255 then
    return "Multi Leg Model: No Value"
  end

  return "Multi Leg Model: Unknown("..value..")"
end

-- Dissect: Multi Leg Model
b3_equities_binaryumdf_sbe_v1_6_dissect.multi_leg_model = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.multi_leg_model
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.multi_leg_model(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.multi_leg_model, range, value, display)

  return offset + length, value
end

-- Size: Last Fragment
b3_equities_binaryumdf_sbe_v1_6_size_of.last_fragment = 1

-- Display: Last Fragment
b3_equities_binaryumdf_sbe_v1_6_display.last_fragment = function(value)
  if value == 0 then
    return "Last Fragment: False Value (0)"
  end
  if value == 1 then
    return "Last Fragment: True Value (1)"
  end
  if value == 255 then
    return "Last Fragment: No Value"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
b3_equities_binaryumdf_sbe_v1_6_dissect.last_fragment = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.last_fragment
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.last_fragment(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Size: Security Match Type
b3_equities_binaryumdf_sbe_v1_6_size_of.security_match_type = 1

-- Display: Security Match Type
b3_equities_binaryumdf_sbe_v1_6_display.security_match_type = function(value)
  if value == 8 then
    return "Security Match Type: Issuing Buy Back Auction (8)"
  end
  if value == 255 then
    return "Security Match Type: No Value"
  end

  return "Security Match Type: Unknown("..value..")"
end

-- Dissect: Security Match Type
b3_equities_binaryumdf_sbe_v1_6_dissect.security_match_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_match_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_match_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_match_type, range, value, display)

  return offset + length, value
end

-- Size: Governance Indicator
b3_equities_binaryumdf_sbe_v1_6_size_of.governance_indicator = 1

-- Display: Governance Indicator
b3_equities_binaryumdf_sbe_v1_6_display.governance_indicator = function(value)
  if value == 0 then
    return "Governance Indicator: No (0)"
  end
  if value == 1 then
    return "Governance Indicator: N 1 (1)"
  end
  if value == 2 then
    return "Governance Indicator: N 2 (2)"
  end
  if value == 4 then
    return "Governance Indicator: Nm (4)"
  end
  if value == 5 then
    return "Governance Indicator: Ma (5)"
  end
  if value == 6 then
    return "Governance Indicator: Mb (6)"
  end
  if value == 7 then
    return "Governance Indicator: M 2 (7)"
  end
  if value == 255 then
    return "Governance Indicator: No Value"
  end

  return "Governance Indicator: Unknown("..value..")"
end

-- Dissect: Governance Indicator
b3_equities_binaryumdf_sbe_v1_6_dissect.governance_indicator = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.governance_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.governance_indicator(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.governance_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Segment Id
b3_equities_binaryumdf_sbe_v1_6_size_of.market_segment_id = 1

-- Display: Market Segment Id
b3_equities_binaryumdf_sbe_v1_6_display.market_segment_id = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
b3_equities_binaryumdf_sbe_v1_6_dissect.market_segment_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.market_segment_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Size: Price Type
b3_equities_binaryumdf_sbe_v1_6_size_of.price_type = 1

-- Display: Price Type
b3_equities_binaryumdf_sbe_v1_6_display.price_type = function(value)
  if value == 1 then
    return "Price Type: Percentage (1)"
  end
  if value == 2 then
    return "Price Type: Pu (2)"
  end
  if value == 3 then
    return "Price Type: Fixed Amount (3)"
  end
  if value == 0 then
    return "Price Type: No Value"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
b3_equities_binaryumdf_sbe_v1_6_dissect.price_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.price_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.price_type, range, value, display)

  return offset + length, value
end

-- Size: Put Or Call
b3_equities_binaryumdf_sbe_v1_6_size_of.put_or_call = 1

-- Display: Put Or Call
b3_equities_binaryumdf_sbe_v1_6_display.put_or_call = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end
  if value == 255 then
    return "Put Or Call: No Value"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
b3_equities_binaryumdf_sbe_v1_6_dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.put_or_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Exercise Style
b3_equities_binaryumdf_sbe_v1_6_size_of.exercise_style = 1

-- Display: Exercise Style
b3_equities_binaryumdf_sbe_v1_6_display.exercise_style = function(value)
  if value == 0 then
    return "Exercise Style: European (0)"
  end
  if value == 1 then
    return "Exercise Style: American (1)"
  end
  if value == 255 then
    return "Exercise Style: No Value"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
b3_equities_binaryumdf_sbe_v1_6_dissect.exercise_style = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.exercise_style
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.exercise_style(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Size: Product
b3_equities_binaryumdf_sbe_v1_6_size_of.product = 1

-- Display: Product
b3_equities_binaryumdf_sbe_v1_6_display.product = function(value)
  if value == 2 then
    return "Product: Commodity (2)"
  end
  if value == 3 then
    return "Product: Corporate (3)"
  end
  if value == 4 then
    return "Product: Currency (4)"
  end
  if value == 5 then
    return "Product: Equity (5)"
  end
  if value == 6 then
    return "Product: Government (6)"
  end
  if value == 7 then
    return "Product: Index (7)"
  end
  if value == 15 then
    return "Product: Economic Indicator (15)"
  end
  if value == 16 then
    return "Product: Multileg (16)"
  end

  return "Product: Unknown("..value..")"
end

-- Dissect: Product
b3_equities_binaryumdf_sbe_v1_6_dissect.product = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.product
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.product(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.product, range, value, display)

  return offset + length, value
end

-- Size: Tick Size Denominator
b3_equities_binaryumdf_sbe_v1_6_size_of.tick_size_denominator = 1

-- Display: Tick Size Denominator
b3_equities_binaryumdf_sbe_v1_6_display.tick_size_denominator = function(value)
  -- Check if field has value
  if value == 255 then
    return "Tick Size Denominator: No Value"
  end

  return "Tick Size Denominator: "..value
end

-- Dissect: Tick Size Denominator
b3_equities_binaryumdf_sbe_v1_6_dissect.tick_size_denominator = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.tick_size_denominator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.tick_size_denominator(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.tick_size_denominator, range, value, display)

  return offset + length, value
end

-- Size: Lot Type
b3_equities_binaryumdf_sbe_v1_6_size_of.lot_type = 1

-- Display: Lot Type
b3_equities_binaryumdf_sbe_v1_6_display.lot_type = function(value)
  if value == 1 then
    return "Lot Type: Odd Lot (1)"
  end
  if value == 2 then
    return "Lot Type: Round Lot (2)"
  end
  if value == 3 then
    return "Lot Type: Block Lot (3)"
  end
  if value == 255 then
    return "Lot Type: No Value"
  end

  return "Lot Type: Unknown("..value..")"
end

-- Dissect: Lot Type
b3_equities_binaryumdf_sbe_v1_6_dissect.lot_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.lot_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.lot_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Size: Security Strategy Type
b3_equities_binaryumdf_sbe_v1_6_size_of.security_strategy_type = 3

-- Display: Security Strategy Type
b3_equities_binaryumdf_sbe_v1_6_display.security_strategy_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Strategy Type: No Value"
  end

  return "Security Strategy Type: "..value
end

-- Dissect: Security Strategy Type
b3_equities_binaryumdf_sbe_v1_6_dissect.security_strategy_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_strategy_type
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_strategy_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_strategy_type, range, value, display)

  return offset + length, value
end

-- Size: Settl Currency
b3_equities_binaryumdf_sbe_v1_6_size_of.settl_currency = 3

-- Display: Settl Currency
b3_equities_binaryumdf_sbe_v1_6_display.settl_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settl Currency: No Value"
  end

  return "Settl Currency: "..value
end

-- Dissect: Settl Currency
b3_equities_binaryumdf_sbe_v1_6_dissect.settl_currency = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.settl_currency
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.settl_currency(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.settl_currency, range, value, display)

  return offset + length, value
end

-- Size: Strike Currency
b3_equities_binaryumdf_sbe_v1_6_size_of.strike_currency = 3

-- Display: Strike Currency
b3_equities_binaryumdf_sbe_v1_6_display.strike_currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Currency: No Value"
  end

  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
b3_equities_binaryumdf_sbe_v1_6_dissect.strike_currency = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.strike_currency
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.strike_currency(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Size: Currency
b3_equities_binaryumdf_sbe_v1_6_size_of.currency = 3

-- Display: Currency
b3_equities_binaryumdf_sbe_v1_6_display.currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
b3_equities_binaryumdf_sbe_v1_6_dissect.currency = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.currency
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.currency(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Week
b3_equities_binaryumdf_sbe_v1_6_size_of.week = 1

-- Display: Week
b3_equities_binaryumdf_sbe_v1_6_display.week = function(value)
  return "Week: "..value
end

-- Dissect: Week
b3_equities_binaryumdf_sbe_v1_6_dissect.week = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.week
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.week(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.week, range, value, display)

  return offset + length, value
end

-- Size: Day
b3_equities_binaryumdf_sbe_v1_6_size_of.day = 1

-- Display: Day
b3_equities_binaryumdf_sbe_v1_6_display.day = function(value)
  return "Day: "..value
end

-- Dissect: Day
b3_equities_binaryumdf_sbe_v1_6_dissect.day = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.day
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.day(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.day, range, value, display)

  return offset + length, value
end

-- Size: Month
b3_equities_binaryumdf_sbe_v1_6_size_of.month = 1

-- Display: Month
b3_equities_binaryumdf_sbe_v1_6_display.month = function(value)
  return "Month: "..value
end

-- Dissect: Month
b3_equities_binaryumdf_sbe_v1_6_dissect.month = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.month
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.month(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.month, range, value, display)

  return offset + length, value
end

-- Size: Year
b3_equities_binaryumdf_sbe_v1_6_size_of.year = 2

-- Display: Year
b3_equities_binaryumdf_sbe_v1_6_display.year = function(value)
  return "Year: "..value
end

-- Dissect: Year
b3_equities_binaryumdf_sbe_v1_6_dissect.year = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.year
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.year(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.year, range, value, display)

  return offset + length, value
end

-- Calculate size of: Contract Settl Month
b3_equities_binaryumdf_sbe_v1_6_size_of.contract_settl_month = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.year

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.month

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.day

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.week

  return index
end

-- Display: Contract Settl Month
b3_equities_binaryumdf_sbe_v1_6_display.contract_settl_month = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Settl Month
b3_equities_binaryumdf_sbe_v1_6_dissect.contract_settl_month_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer
  index, year = b3_equities_binaryumdf_sbe_v1_6_dissect.year(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer
  index, month = b3_equities_binaryumdf_sbe_v1_6_dissect.month(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer
  index, day = b3_equities_binaryumdf_sbe_v1_6_dissect.day(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer
  index, week = b3_equities_binaryumdf_sbe_v1_6_dissect.week(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Settl Month
b3_equities_binaryumdf_sbe_v1_6_dissect.contract_settl_month = function(buffer, offset, packet, parent)
  if show.contract_settl_month then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.contract_settl_month, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.contract_settl_month_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.contract_settl_month(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.contract_settl_month_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Maturity Month Year
b3_equities_binaryumdf_sbe_v1_6_size_of.maturity_month_year = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.year

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.month

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.day

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.week

  return index
end

-- Display: Maturity Month Year
b3_equities_binaryumdf_sbe_v1_6_display.maturity_month_year = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maturity Month Year
b3_equities_binaryumdf_sbe_v1_6_dissect.maturity_month_year_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer
  index, year = b3_equities_binaryumdf_sbe_v1_6_dissect.year(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer
  index, month = b3_equities_binaryumdf_sbe_v1_6_dissect.month(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer
  index, day = b3_equities_binaryumdf_sbe_v1_6_dissect.day(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer
  index, week = b3_equities_binaryumdf_sbe_v1_6_dissect.week(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
b3_equities_binaryumdf_sbe_v1_6_dissect.maturity_month_year = function(buffer, offset, packet, parent)
  if show.maturity_month_year then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.maturity_month_year, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.maturity_month_year_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.maturity_month_year(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.maturity_month_year_fields(buffer, offset, packet, element)
  end
end

-- Size: Cfi Code
b3_equities_binaryumdf_sbe_v1_6_size_of.cfi_code = 6

-- Display: Cfi Code
b3_equities_binaryumdf_sbe_v1_6_display.cfi_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
b3_equities_binaryumdf_sbe_v1_6_dissect.cfi_code = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.cfi_code
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.cfi_code(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Size: Asset
b3_equities_binaryumdf_sbe_v1_6_size_of.asset = 6

-- Display: Asset
b3_equities_binaryumdf_sbe_v1_6_display.asset = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Asset: No Value"
  end

  return "Asset: "..value
end

-- Dissect: Asset
b3_equities_binaryumdf_sbe_v1_6_dissect.asset = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.asset
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.asset(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.asset, range, value, display)

  return offset + length, value
end

-- Size: Isin Number
b3_equities_binaryumdf_sbe_v1_6_size_of.isin_number = 12

-- Display: Isin Number
b3_equities_binaryumdf_sbe_v1_6_display.isin_number = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin Number: No Value"
  end

  return "Isin Number: "..value
end

-- Dissect: Isin Number
b3_equities_binaryumdf_sbe_v1_6_dissect.isin_number = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.isin_number
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.isin_number(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.isin_number, range, value, display)

  return offset + length, value
end

-- Size: Dated Date
b3_equities_binaryumdf_sbe_v1_6_size_of.dated_date = 4

-- Display: Dated Date
b3_equities_binaryumdf_sbe_v1_6_display.dated_date = function(value)
  -- Check if field has value
  if value == 0 then
    return "Dated Date: No Value"
  end

  return "Dated Date: "..value
end

-- Dissect: Dated Date
b3_equities_binaryumdf_sbe_v1_6_dissect.dated_date = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.dated_date
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.dated_date(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.dated_date, range, value, display)

  return offset + length, value
end

-- Size: Settl Date
b3_equities_binaryumdf_sbe_v1_6_size_of.settl_date = 4

-- Display: Settl Date
b3_equities_binaryumdf_sbe_v1_6_display.settl_date = function(value)
  -- Check if field has value
  if value == 0 then
    return "Settl Date: No Value"
  end

  return "Settl Date: "..value
end

-- Dissect: Settl Date
b3_equities_binaryumdf_sbe_v1_6_dissect.settl_date = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.settl_date
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.settl_date(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Size: Settl Type
b3_equities_binaryumdf_sbe_v1_6_size_of.settl_type = 2

-- Display: Settl Type
b3_equities_binaryumdf_sbe_v1_6_display.settl_type = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Settl Type: No Value"
  end

  return "Settl Type: "..value
end

-- Dissect: Settl Type
b3_equities_binaryumdf_sbe_v1_6_dissect.settl_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.settl_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.settl_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.settl_type, range, value, display)

  return offset + length, value
end

-- Size: End Date
b3_equities_binaryumdf_sbe_v1_6_size_of.end_date = 4

-- Display: End Date
b3_equities_binaryumdf_sbe_v1_6_display.end_date = function(value)
  -- Check if field has value
  if value == 0 then
    return "End Date: No Value"
  end

  return "End Date: "..value
end

-- Dissect: End Date
b3_equities_binaryumdf_sbe_v1_6_dissect.end_date = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.end_date
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.end_date(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.end_date, range, value, display)

  return offset + length, value
end

-- Size: Start Date
b3_equities_binaryumdf_sbe_v1_6_size_of.start_date = 4

-- Display: Start Date
b3_equities_binaryumdf_sbe_v1_6_display.start_date = function(value)
  -- Check if field has value
  if value == 0 then
    return "Start Date: No Value"
  end

  return "Start Date: "..value
end

-- Dissect: Start Date
b3_equities_binaryumdf_sbe_v1_6_dissect.start_date = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.start_date
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.start_date(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.start_date, range, value, display)

  return offset + length, value
end

-- Size: Country Of Issue
b3_equities_binaryumdf_sbe_v1_6_size_of.country_of_issue = 2

-- Display: Country Of Issue
b3_equities_binaryumdf_sbe_v1_6_display.country_of_issue = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Country Of Issue: No Value"
  end

  return "Country Of Issue: "..value
end

-- Dissect: Country Of Issue
b3_equities_binaryumdf_sbe_v1_6_dissect.country_of_issue = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.country_of_issue
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.country_of_issue(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.country_of_issue, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
b3_equities_binaryumdf_sbe_v1_6_size_of.maturity_date = 4

-- Display: Maturity Date
b3_equities_binaryumdf_sbe_v1_6_display.maturity_date = function(value)
  -- Check if field has value
  if value == 0 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
b3_equities_binaryumdf_sbe_v1_6_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Issue Date
b3_equities_binaryumdf_sbe_v1_6_size_of.issue_date = 4

-- Display: Issue Date
b3_equities_binaryumdf_sbe_v1_6_display.issue_date = function(value)
  return "Issue Date: "..value
end

-- Dissect: Issue Date
b3_equities_binaryumdf_sbe_v1_6_dissect.issue_date = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.issue_date
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.issue_date(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Size: Corporate Action Event Id
b3_equities_binaryumdf_sbe_v1_6_size_of.corporate_action_event_id = 4

-- Display: Corporate Action Event Id
b3_equities_binaryumdf_sbe_v1_6_display.corporate_action_event_id = function(value)
  return "Corporate Action Event Id: "..value
end

-- Dissect: Corporate Action Event Id
b3_equities_binaryumdf_sbe_v1_6_dissect.corporate_action_event_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.corporate_action_event_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.corporate_action_event_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.corporate_action_event_id, range, value, display)

  return offset + length, value
end

-- Size: Min Trade Vol
b3_equities_binaryumdf_sbe_v1_6_size_of.min_trade_vol = 8

-- Display: Min Trade Vol
b3_equities_binaryumdf_sbe_v1_6_display.min_trade_vol = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
b3_equities_binaryumdf_sbe_v1_6_dissect.min_trade_vol = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.min_trade_vol
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.min_trade_vol(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Size: Min Lot Size
b3_equities_binaryumdf_sbe_v1_6_size_of.min_lot_size = 8

-- Display: Min Lot Size
b3_equities_binaryumdf_sbe_v1_6_display.min_lot_size = function(value)
  return "Min Lot Size: "..value
end

-- Dissect: Min Lot Size
b3_equities_binaryumdf_sbe_v1_6_dissect.min_lot_size = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.min_lot_size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.min_lot_size(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.min_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Max Order Qty
b3_equities_binaryumdf_sbe_v1_6_size_of.max_order_qty = 8

-- Display: Max Order Qty
b3_equities_binaryumdf_sbe_v1_6_display.max_order_qty = function(value)
  return "Max Order Qty: "..value
end

-- Dissect: Max Order Qty
b3_equities_binaryumdf_sbe_v1_6_dissect.max_order_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.max_order_qty
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.max_order_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.max_order_qty, range, value, display)

  return offset + length, value
end

-- Size: Min Order Qty
b3_equities_binaryumdf_sbe_v1_6_size_of.min_order_qty = 8

-- Display: Min Order Qty
b3_equities_binaryumdf_sbe_v1_6_display.min_order_qty = function(value)
  return "Min Order Qty: "..value
end

-- Dissect: Min Order Qty
b3_equities_binaryumdf_sbe_v1_6_dissect.min_order_qty = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.min_order_qty
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.min_order_qty(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.min_order_qty, range, value, display)

  return offset + length, value
end

-- Size: Clearing House Id
b3_equities_binaryumdf_sbe_v1_6_size_of.clearing_house_id = 8

-- Display: Clearing House Id
b3_equities_binaryumdf_sbe_v1_6_display.clearing_house_id = function(value)
  return "Clearing House Id: "..value
end

-- Dissect: Clearing House Id
b3_equities_binaryumdf_sbe_v1_6_dissect.clearing_house_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.clearing_house_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.clearing_house_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.clearing_house_id, range, value, display)

  return offset + length, value
end

-- Size: No Shares Issued
b3_equities_binaryumdf_sbe_v1_6_size_of.no_shares_issued = 8

-- Display: No Shares Issued
b3_equities_binaryumdf_sbe_v1_6_display.no_shares_issued = function(value)
  return "No Shares Issued: "..value
end

-- Dissect: No Shares Issued
b3_equities_binaryumdf_sbe_v1_6_dissect.no_shares_issued = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.no_shares_issued
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.no_shares_issued(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.no_shares_issued, range, value, display)

  return offset + length, value
end

-- Size: Security Validity Timestamp
b3_equities_binaryumdf_sbe_v1_6_size_of.security_validity_timestamp = 8

-- Display: Security Validity Timestamp
b3_equities_binaryumdf_sbe_v1_6_display.security_validity_timestamp = function(value)
  return "Security Validity Timestamp: "..value
end

-- Dissect: Security Validity Timestamp
b3_equities_binaryumdf_sbe_v1_6_dissect.security_validity_timestamp = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_validity_timestamp
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_validity_timestamp(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_validity_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Price Divisor
b3_equities_binaryumdf_sbe_v1_6_size_of.price_divisor = 8

-- Display: Price Divisor
b3_equities_binaryumdf_sbe_v1_6_display.price_divisor = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price Divisor: No Value"
  end

  return "Price Divisor: "..value
end

-- Translate: Price Divisor
translate.price_divisor = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price Divisor
b3_equities_binaryumdf_sbe_v1_6_dissect.price_divisor = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.price_divisor
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_divisor(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.price_divisor(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.price_divisor, range, value, display)

  return offset + length, value
end

-- Size: Contract Multiplier
b3_equities_binaryumdf_sbe_v1_6_size_of.contract_multiplier = 8

-- Display: Contract Multiplier
b3_equities_binaryumdf_sbe_v1_6_display.contract_multiplier = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Translate: Contract Multiplier
translate.contract_multiplier = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Contract Multiplier
b3_equities_binaryumdf_sbe_v1_6_dissect.contract_multiplier = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.contract_multiplier
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.contract_multiplier(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.contract_multiplier(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
b3_equities_binaryumdf_sbe_v1_6_size_of.strike_price = 8

-- Display: Strike Price
b3_equities_binaryumdf_sbe_v1_6_display.strike_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
translate.strike_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Strike Price
b3_equities_binaryumdf_sbe_v1_6_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.strike_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.strike_price(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.strike_price(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Min Price Increment
b3_equities_binaryumdf_sbe_v1_6_size_of.min_price_increment = 8

-- Display: Min Price Increment
b3_equities_binaryumdf_sbe_v1_6_display.min_price_increment = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
translate.min_price_increment = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Min Price Increment
b3_equities_binaryumdf_sbe_v1_6_dissect.min_price_increment = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.min_price_increment
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.min_price_increment(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.min_price_increment(raw, value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Size: Tot No Related Sym
b3_equities_binaryumdf_sbe_v1_6_size_of.tot_no_related_sym = 4

-- Display: Tot No Related Sym
b3_equities_binaryumdf_sbe_v1_6_display.tot_no_related_sym = function(value)
  return "Tot No Related Sym: "..value
end

-- Dissect: Tot No Related Sym
b3_equities_binaryumdf_sbe_v1_6_dissect.tot_no_related_sym = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.tot_no_related_sym
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.tot_no_related_sym(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.tot_no_related_sym, range, value, display)

  return offset + length, value
end

-- Size: Security Sub Type
b3_equities_binaryumdf_sbe_v1_6_size_of.security_sub_type = 2

-- Display: Security Sub Type
b3_equities_binaryumdf_sbe_v1_6_display.security_sub_type = function(value)
  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
b3_equities_binaryumdf_sbe_v1_6_dissect.security_sub_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_sub_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Security Type
b3_equities_binaryumdf_sbe_v1_6_size_of.security_type = 1

-- Display: Security Type
b3_equities_binaryumdf_sbe_v1_6_display.security_type = function(value)
  if value == 1 then
    return "Security Type: Cash (1)"
  end
  if value == 2 then
    return "Security Type: Corp (2)"
  end
  if value == 3 then
    return "Security Type: Cs (3)"
  end
  if value == 4 then
    return "Security Type: Dterm (4)"
  end
  if value == 5 then
    return "Security Type: Etf (5)"
  end
  if value == 6 then
    return "Security Type: Fopt (6)"
  end
  if value == 7 then
    return "Security Type: Forward (7)"
  end
  if value == 8 then
    return "Security Type: Fut (8)"
  end
  if value == 9 then
    return "Security Type: Index (9)"
  end
  if value == 10 then
    return "Security Type: Indexopt (10)"
  end
  if value == 11 then
    return "Security Type: Mleg (11)"
  end
  if value == 12 then
    return "Security Type: Opt (12)"
  end
  if value == 13 then
    return "Security Type: Optexer (13)"
  end
  if value == 14 then
    return "Security Type: Ps (14)"
  end
  if value == 15 then
    return "Security Type: Secloan (15)"
  end
  if value == 16 then
    return "Security Type: Sopt (16)"
  end
  if value == 17 then
    return "Security Type: Spot (17)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
b3_equities_binaryumdf_sbe_v1_6_dissect.security_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Security Update Action
b3_equities_binaryumdf_sbe_v1_6_size_of.security_update_action = 1

-- Display: Security Update Action
b3_equities_binaryumdf_sbe_v1_6_display.security_update_action = function(value)
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
b3_equities_binaryumdf_sbe_v1_6_dissect.security_update_action = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_update_action
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_update_action(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_update_action, range, value, display)

  return offset + length, value
end

-- Size: Symbol
b3_equities_binaryumdf_sbe_v1_6_size_of.symbol = 20

-- Display: Symbol
b3_equities_binaryumdf_sbe_v1_6_display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
b3_equities_binaryumdf_sbe_v1_6_dissect.symbol = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.symbol
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.symbol(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Security Group
b3_equities_binaryumdf_sbe_v1_6_size_of.security_group = 3

-- Display: Security Group
b3_equities_binaryumdf_sbe_v1_6_display.security_group = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
b3_equities_binaryumdf_sbe_v1_6_dissect.security_group = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_group
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_group(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_group, range, value, display)

  return offset + length, value
end

-- Size: Security Id Source
b3_equities_binaryumdf_sbe_v1_6_size_of.security_id_source = 1

-- Display: Security Id Source
b3_equities_binaryumdf_sbe_v1_6_display.security_id_source = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Id Source: No Value"
  end

  if value == "4" then
    return "Security Id Source: Isin (4)"
  end
  if value == "8" then
    return "Security Id Source: Exchange Symbol (8)"
  end

  return "Security Id Source: Unknown("..value..")"
end

-- Dissect: Security Id Source
b3_equities_binaryumdf_sbe_v1_6_dissect.security_id_source = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_id_source
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_id_source(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_id_source, range, value, display)

  return offset + length, value
end

-- Size: Security Exchange
b3_equities_binaryumdf_sbe_v1_6_size_of.security_exchange = 4

-- Display: Security Exchange
b3_equities_binaryumdf_sbe_v1_6_display.security_exchange = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
b3_equities_binaryumdf_sbe_v1_6_dissect.security_exchange = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_exchange
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

  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_exchange(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Definition 4 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.security_definition_4_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_exchange

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id_source

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_group

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.symbol

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_update_action

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_sub_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.tot_no_related_sym

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.min_price_increment

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.strike_price

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.contract_multiplier

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.price_divisor

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_validity_timestamp

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.no_shares_issued

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.clearing_house_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.min_order_qty

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.max_order_qty

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.min_lot_size

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.min_trade_vol

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.corporate_action_event_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.issue_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.maturity_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.country_of_issue

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.start_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.end_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.settl_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.settl_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.dated_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.isin_number

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.asset

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.cfi_code

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.maturity_month_year(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.contract_settl_month(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.currency

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.strike_currency

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.settl_currency

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_strategy_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.lot_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.tick_size_denominator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.product

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.exercise_style

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.put_or_call

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.price_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.market_segment_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.governance_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_match_type

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.last_fragment

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.multi_leg_model

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.multi_leg_price_method

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.min_cross_qty

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.no_underlyings_groups(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.no_legs_groups(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.no_instr_attribs_groups(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_desc(buffer, offset + index)

  return index
end

-- Display: Security Definition 4 Message
b3_equities_binaryumdf_sbe_v1_6_display.security_definition_4_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition 4 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.security_definition_4_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryumdf_sbe_v1_6_dissect.security_exchange(buffer, index, packet, parent)

  -- Security Id Source: 1 Byte Ascii String Enum with 2 values
  index, security_id_source = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id_source(buffer, index, packet, parent)

  -- Security Group: 3 Byte Ascii String
  index, security_group = b3_equities_binaryumdf_sbe_v1_6_dissect.security_group(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = b3_equities_binaryumdf_sbe_v1_6_dissect.symbol(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = b3_equities_binaryumdf_sbe_v1_6_dissect.security_update_action(buffer, index, packet, parent)

  -- Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, security_type = b3_equities_binaryumdf_sbe_v1_6_dissect.security_type(buffer, index, packet, parent)

  -- Security Sub Type: 2 Byte Unsigned Fixed Width Integer
  index, security_sub_type = b3_equities_binaryumdf_sbe_v1_6_dissect.security_sub_type(buffer, index, packet, parent)

  -- Tot No Related Sym: 4 Byte Unsigned Fixed Width Integer
  index, tot_no_related_sym = b3_equities_binaryumdf_sbe_v1_6_dissect.tot_no_related_sym(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment = b3_equities_binaryumdf_sbe_v1_6_dissect.min_price_increment(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = b3_equities_binaryumdf_sbe_v1_6_dissect.strike_price(buffer, index, packet, parent)

  -- Contract Multiplier: 8 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier = b3_equities_binaryumdf_sbe_v1_6_dissect.contract_multiplier(buffer, index, packet, parent)

  -- Price Divisor: 8 Byte Signed Fixed Width Integer Nullable
  index, price_divisor = b3_equities_binaryumdf_sbe_v1_6_dissect.price_divisor(buffer, index, packet, parent)

  -- Security Validity Timestamp: 8 Byte Signed Fixed Width Integer
  index, security_validity_timestamp = b3_equities_binaryumdf_sbe_v1_6_dissect.security_validity_timestamp(buffer, index, packet, parent)

  -- No Shares Issued: 8 Byte Unsigned Fixed Width Integer
  index, no_shares_issued = b3_equities_binaryumdf_sbe_v1_6_dissect.no_shares_issued(buffer, index, packet, parent)

  -- Clearing House Id: 8 Byte Unsigned Fixed Width Integer
  index, clearing_house_id = b3_equities_binaryumdf_sbe_v1_6_dissect.clearing_house_id(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Signed Fixed Width Integer
  index, min_order_qty = b3_equities_binaryumdf_sbe_v1_6_dissect.min_order_qty(buffer, index, packet, parent)

  -- Max Order Qty: 8 Byte Signed Fixed Width Integer
  index, max_order_qty = b3_equities_binaryumdf_sbe_v1_6_dissect.max_order_qty(buffer, index, packet, parent)

  -- Min Lot Size: 8 Byte Signed Fixed Width Integer
  index, min_lot_size = b3_equities_binaryumdf_sbe_v1_6_dissect.min_lot_size(buffer, index, packet, parent)

  -- Min Trade Vol: 8 Byte Signed Fixed Width Integer
  index, min_trade_vol = b3_equities_binaryumdf_sbe_v1_6_dissect.min_trade_vol(buffer, index, packet, parent)

  -- Corporate Action Event Id: 4 Byte Unsigned Fixed Width Integer
  index, corporate_action_event_id = b3_equities_binaryumdf_sbe_v1_6_dissect.corporate_action_event_id(buffer, index, packet, parent)

  -- Issue Date: 4 Byte Signed Fixed Width Integer
  index, issue_date = b3_equities_binaryumdf_sbe_v1_6_dissect.issue_date(buffer, index, packet, parent)

  -- Maturity Date: 4 Byte Signed Fixed Width Integer Nullable
  index, maturity_date = b3_equities_binaryumdf_sbe_v1_6_dissect.maturity_date(buffer, index, packet, parent)

  -- Country Of Issue: 2 Byte Ascii String Nullable
  index, country_of_issue = b3_equities_binaryumdf_sbe_v1_6_dissect.country_of_issue(buffer, index, packet, parent)

  -- Start Date: 4 Byte Signed Fixed Width Integer Nullable
  index, start_date = b3_equities_binaryumdf_sbe_v1_6_dissect.start_date(buffer, index, packet, parent)

  -- End Date: 4 Byte Signed Fixed Width Integer Nullable
  index, end_date = b3_equities_binaryumdf_sbe_v1_6_dissect.end_date(buffer, index, packet, parent)

  -- Settl Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settl_type = b3_equities_binaryumdf_sbe_v1_6_dissect.settl_type(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Signed Fixed Width Integer Nullable
  index, settl_date = b3_equities_binaryumdf_sbe_v1_6_dissect.settl_date(buffer, index, packet, parent)

  -- Dated Date: 4 Byte Signed Fixed Width Integer Nullable
  index, dated_date = b3_equities_binaryumdf_sbe_v1_6_dissect.dated_date(buffer, index, packet, parent)

  -- Isin Number: 12 Byte Ascii String Nullable
  index, isin_number = b3_equities_binaryumdf_sbe_v1_6_dissect.isin_number(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = b3_equities_binaryumdf_sbe_v1_6_dissect.asset(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = b3_equities_binaryumdf_sbe_v1_6_dissect.cfi_code(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = b3_equities_binaryumdf_sbe_v1_6_dissect.maturity_month_year(buffer, index, packet, parent)

  -- Contract Settl Month: Struct of 4 fields
  index, contract_settl_month = b3_equities_binaryumdf_sbe_v1_6_dissect.contract_settl_month(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = b3_equities_binaryumdf_sbe_v1_6_dissect.currency(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String Nullable
  index, strike_currency = b3_equities_binaryumdf_sbe_v1_6_dissect.strike_currency(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String Nullable
  index, settl_currency = b3_equities_binaryumdf_sbe_v1_6_dissect.settl_currency(buffer, index, packet, parent)

  -- Security Strategy Type: 3 Byte Ascii String
  index, security_strategy_type = b3_equities_binaryumdf_sbe_v1_6_dissect.security_strategy_type(buffer, index, packet, parent)

  -- Lot Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, lot_type = b3_equities_binaryumdf_sbe_v1_6_dissect.lot_type(buffer, index, packet, parent)

  -- Tick Size Denominator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, tick_size_denominator = b3_equities_binaryumdf_sbe_v1_6_dissect.tick_size_denominator(buffer, index, packet, parent)

  -- Product: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, product = b3_equities_binaryumdf_sbe_v1_6_dissect.product(buffer, index, packet, parent)

  -- Exercise Style: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exercise_style = b3_equities_binaryumdf_sbe_v1_6_dissect.exercise_style(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, put_or_call = b3_equities_binaryumdf_sbe_v1_6_dissect.put_or_call(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_type = b3_equities_binaryumdf_sbe_v1_6_dissect.price_type(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = b3_equities_binaryumdf_sbe_v1_6_dissect.market_segment_id(buffer, index, packet, parent)

  -- Governance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, governance_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.governance_indicator(buffer, index, packet, parent)

  -- Security Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, security_match_type = b3_equities_binaryumdf_sbe_v1_6_dissect.security_match_type(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = b3_equities_binaryumdf_sbe_v1_6_dissect.last_fragment(buffer, index, packet, parent)

  -- Multi Leg Model: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, multi_leg_model = b3_equities_binaryumdf_sbe_v1_6_dissect.multi_leg_model(buffer, index, packet, parent)

  -- Multi Leg Price Method: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, multi_leg_price_method = b3_equities_binaryumdf_sbe_v1_6_dissect.multi_leg_price_method(buffer, index, packet, parent)

  -- Min Cross Qty: 8 Byte Signed Fixed Width Integer
  index, min_cross_qty = b3_equities_binaryumdf_sbe_v1_6_dissect.min_cross_qty(buffer, index, packet, parent)

  -- No Underlyings Groups: Struct of 2 fields
  index, no_underlyings_groups = b3_equities_binaryumdf_sbe_v1_6_dissect.no_underlyings_groups(buffer, index, packet, parent)

  -- No Legs Groups: Struct of 2 fields
  index, no_legs_groups = b3_equities_binaryumdf_sbe_v1_6_dissect.no_legs_groups(buffer, index, packet, parent)

  -- No Instr Attribs Groups: Struct of 2 fields
  index, no_instr_attribs_groups = b3_equities_binaryumdf_sbe_v1_6_dissect.no_instr_attribs_groups(buffer, index, packet, parent)

  -- Security Desc: Struct of 2 fields
  index, security_desc = b3_equities_binaryumdf_sbe_v1_6_dissect.security_desc(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition 4 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.security_definition_4_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_4_message then
    local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_definition_4_message(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.security_definition_4_message(buffer, packet, parent)
    parent = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_definition_4_message, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6_dissect.security_definition_4_message_fields(buffer, offset, packet, parent)
end

-- Size: Transact Time
b3_equities_binaryumdf_sbe_v1_6_size_of.transact_time = 8

-- Display: Transact Time
b3_equities_binaryumdf_sbe_v1_6_display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
b3_equities_binaryumdf_sbe_v1_6_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Trad Ses Open Time
b3_equities_binaryumdf_sbe_v1_6_size_of.trad_ses_open_time = 8

-- Display: Trad Ses Open Time
b3_equities_binaryumdf_sbe_v1_6_display.trad_ses_open_time = function(value)
  -- Check null sentinel value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Trad Ses Open Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trad Ses Open Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trad Ses Open Time
b3_equities_binaryumdf_sbe_v1_6_dissect.trad_ses_open_time = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.trad_ses_open_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.trad_ses_open_time(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trad_ses_open_time, range, value, display)

  return offset + length, value
end

-- Size: Offset 14 Padding 2
b3_equities_binaryumdf_sbe_v1_6_size_of.offset_14_padding_2 = 2

-- Display: Offset 14 Padding 2
b3_equities_binaryumdf_sbe_v1_6_display.offset_14_padding_2 = function(value)
  return "Offset 14 Padding 2: "..value
end

-- Dissect: Offset 14 Padding 2
b3_equities_binaryumdf_sbe_v1_6_dissect.offset_14_padding_2 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.offset_14_padding_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.offset_14_padding_2(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.offset_14_padding_2, range, value, display)

  return offset + length, value
end

-- Size: Security Trading Event
b3_equities_binaryumdf_sbe_v1_6_size_of.security_trading_event = 1

-- Display: Security Trading Event
b3_equities_binaryumdf_sbe_v1_6_display.security_trading_event = function(value)
  if value == 4 then
    return "Security Trading Event: Trading Session Change (4)"
  end
  if value == 101 then
    return "Security Trading Event: Security Status Change (101)"
  end
  if value == 102 then
    return "Security Trading Event: Security Rejoins Security Group Status (102)"
  end
  if value == 255 then
    return "Security Trading Event: No Value"
  end

  return "Security Trading Event: Unknown("..value..")"
end

-- Dissect: Security Trading Event
b3_equities_binaryumdf_sbe_v1_6_dissect.security_trading_event = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_trading_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_trading_event(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Sub Id
b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_sub_id = 1

-- Display: Trading Session Sub Id
b3_equities_binaryumdf_sbe_v1_6_display.trading_session_sub_id = function(value)
  if value == 2 then
    return "Trading Session Sub Id: Pause (2)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Close (4)"
  end
  if value == 17 then
    return "Trading Session Sub Id: Open (17)"
  end
  if value == 18 then
    return "Trading Session Sub Id: Forbidden (18)"
  end
  if value == 20 then
    return "Trading Session Sub Id: Unknown Or Invalid (20)"
  end
  if value == 21 then
    return "Trading Session Sub Id: Reserved (21)"
  end
  if value == 101 then
    return "Trading Session Sub Id: Final Closing Call (101)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
b3_equities_binaryumdf_sbe_v1_6_dissect.trading_session_sub_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.trading_session_sub_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Offset 3 Padding 5
b3_equities_binaryumdf_sbe_v1_6_size_of.offset_3_padding_5 = 5

-- Display: Offset 3 Padding 5
b3_equities_binaryumdf_sbe_v1_6_display.offset_3_padding_5 = function(value)
  return "Offset 3 Padding 5: "..value
end

-- Dissect: Offset 3 Padding 5
b3_equities_binaryumdf_sbe_v1_6_dissect.offset_3_padding_5 = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.offset_3_padding_5
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6_display.offset_3_padding_5(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.offset_3_padding_5, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Group Phase 10 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.security_group_phase_10_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_group

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_3_padding_5

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_sub_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_trading_event

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_14_padding_2

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trad_ses_open_time

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.transact_time

  return index
end

-- Display: Security Group Phase 10 Message
b3_equities_binaryumdf_sbe_v1_6_display.security_group_phase_10_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Group Phase 10 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.security_group_phase_10_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Group: 3 Byte Ascii String
  index, security_group = b3_equities_binaryumdf_sbe_v1_6_dissect.security_group(buffer, index, packet, parent)

  -- Offset 3 Padding 5: 5 Byte
  index, offset_3_padding_5 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_3_padding_5(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trading_session_id(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trading_session_sub_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_trading_event = b3_equities_binaryumdf_sbe_v1_6_dissect.security_trading_event(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Offset 14 Padding 2: 2 Byte
  index, offset_14_padding_2 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_14_padding_2(buffer, index, packet, parent)

  -- Trad Ses Open Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trad_ses_open_time = b3_equities_binaryumdf_sbe_v1_6_dissect.trad_ses_open_time(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryumdf_sbe_v1_6_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Group Phase 10 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.security_group_phase_10_message = function(buffer, offset, packet, parent)
  if show.security_group_phase_10_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_group_phase_10_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.security_group_phase_10_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.security_group_phase_10_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.security_group_phase_10_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Security Trading Status
b3_equities_binaryumdf_sbe_v1_6_size_of.security_trading_status = 1

-- Display: Security Trading Status
b3_equities_binaryumdf_sbe_v1_6_display.security_trading_status = function(value)
  if value == 2 then
    return "Security Trading Status: Pause (2)"
  end
  if value == 4 then
    return "Security Trading Status: Close (4)"
  end
  if value == 17 then
    return "Security Trading Status: Open (17)"
  end
  if value == 18 then
    return "Security Trading Status: Forbidden (18)"
  end
  if value == 20 then
    return "Security Trading Status: Unknown Or Invalid (20)"
  end
  if value == 21 then
    return "Security Trading Status: Reserved (21)"
  end
  if value == 101 then
    return "Security Trading Status: Final Closing Call (101)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
b3_equities_binaryumdf_sbe_v1_6_dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.security_trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Status 3 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.security_status_3_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.match_event_indicator

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trading_session_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_trading_status

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.security_trading_event

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trade_date

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.offset_14_padding_2

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.trad_ses_open_time

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.transact_time

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.rpt_seq

  return index
end

-- Display: Security Status 3 Message
b3_equities_binaryumdf_sbe_v1_6_display.security_status_3_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status 3 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.security_status_3_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6_dissect.security_id(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6_dissect.match_event_indicator(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6_dissect.trading_session_id(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, security_trading_status = b3_equities_binaryumdf_sbe_v1_6_dissect.security_trading_status(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_trading_event = b3_equities_binaryumdf_sbe_v1_6_dissect.security_trading_event(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6_dissect.trade_date(buffer, index, packet, parent)

  -- Offset 14 Padding 2: 2 Byte
  index, offset_14_padding_2 = b3_equities_binaryumdf_sbe_v1_6_dissect.offset_14_padding_2(buffer, index, packet, parent)

  -- Trad Ses Open Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trad_ses_open_time = b3_equities_binaryumdf_sbe_v1_6_dissect.trad_ses_open_time(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryumdf_sbe_v1_6_dissect.transact_time(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6_dissect.rpt_seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status 3 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.security_status_3_message = function(buffer, offset, packet, parent)
  if show.security_status_3_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.security_status_3_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.security_status_3_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.security_status_3_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.security_status_3_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Next Seq No
b3_equities_binaryumdf_sbe_v1_6_size_of.next_seq_no = 4

-- Display: Next Seq No
b3_equities_binaryumdf_sbe_v1_6_display.next_seq_no = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
b3_equities_binaryumdf_sbe_v1_6_dissect.next_seq_no = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.next_seq_no
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.next_seq_no(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sequence 2 Message
b3_equities_binaryumdf_sbe_v1_6_size_of.sequence_2_message = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.next_seq_no

  return index
end

-- Display: Sequence 2 Message
b3_equities_binaryumdf_sbe_v1_6_display.sequence_2_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence 2 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.sequence_2_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = b3_equities_binaryumdf_sbe_v1_6_dissect.next_seq_no(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence 2 Message
b3_equities_binaryumdf_sbe_v1_6_dissect.sequence_2_message = function(buffer, offset, packet, parent)
  if show.sequence_2_message then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.sequence_2_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.sequence_2_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.sequence_2_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.sequence_2_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
b3_equities_binaryumdf_sbe_v1_6_size_of.payload = function(buffer, offset, template_id)
  -- Size of Sequence Reset 1 Message
  if template_id == 1 then
    return 0
  end
  -- Size of Sequence 2 Message
  if template_id == 2 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.sequence_2_message(buffer, offset)
  end
  -- Size of Security Status 3 Message
  if template_id == 3 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.security_status_3_message(buffer, offset)
  end
  -- Size of Security Group Phase 10 Message
  if template_id == 10 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.security_group_phase_10_message(buffer, offset)
  end
  -- Size of Security Definition 4 Message
  if template_id == 4 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.security_definition_4_message(buffer, offset)
  end
  -- Size of News 5 Message
  if template_id == 5 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.news_5_message(buffer, offset)
  end
  -- Size of Empty Book 9 Message
  if template_id == 9 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.empty_book_9_message(buffer, offset)
  end
  -- Size of Channel Reset 11 Message
  if template_id == 11 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.channel_reset_11_message(buffer, offset)
  end
  -- Size of Opening Price 15 Message
  if template_id == 15 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.opening_price_15_message(buffer, offset)
  end
  -- Size of Theoretical Opening Price 16 Message
  if template_id == 16 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.theoretical_opening_price_16_message(buffer, offset)
  end
  -- Size of Closing Price 17 Message
  if template_id == 17 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.closing_price_17_message(buffer, offset)
  end
  -- Size of Auction Imbalance 19 Message
  if template_id == 19 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.auction_imbalance_19_message(buffer, offset)
  end
  -- Size of Price Band 20 Message
  if template_id == 20 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.price_band_20_message(buffer, offset)
  end
  -- Size of Quantity Band 21 Message
  if template_id == 21 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.quantity_band_21_message(buffer, offset)
  end
  -- Size of High Price 24 Message
  if template_id == 24 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.high_price_24_message(buffer, offset)
  end
  -- Size of Low Price 25 Message
  if template_id == 25 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.low_price_25_message(buffer, offset)
  end
  -- Size of Last Trade Price 27 Message
  if template_id == 27 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.last_trade_price_27_message(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Header 30 Message
  if template_id == 30 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.snapshot_full_refresh_header_30_message(buffer, offset)
  end
  -- Size of Order Mb O 50 Message
  if template_id == 50 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.order_mb_o_50_message(buffer, offset)
  end
  -- Size of Delete Order Mb O 51 Message
  if template_id == 51 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.delete_order_mb_o_51_message(buffer, offset)
  end
  -- Size of Mass Delete Orders Mb O 52 Message
  if template_id == 52 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.mass_delete_orders_mb_o_52_message(buffer, offset)
  end
  -- Size of Trade 53 Message
  if template_id == 53 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.trade_53_message(buffer, offset)
  end
  -- Size of Forward Trade 54 Message
  if template_id == 54 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.forward_trade_54_message(buffer, offset)
  end
  -- Size of Execution Summary 55 Message
  if template_id == 55 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.execution_summary_55_message(buffer, offset)
  end
  -- Size of Execution Statistics 56 Message
  if template_id == 56 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.execution_statistics_56_message(buffer, offset)
  end
  -- Size of Trade Bust 57 Message
  if template_id == 57 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.trade_bust_57_message(buffer, offset)
  end
  -- Size of Snapshot Full Refresh Orders Mb O 71 Message
  if template_id == 71 then
    return b3_equities_binaryumdf_sbe_v1_6_size_of.snapshot_full_refresh_orders_mb_o_71_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
b3_equities_binaryumdf_sbe_v1_6_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
b3_equities_binaryumdf_sbe_v1_6_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Sequence Reset 1 Message
  if template_id == 1 then
  end
  -- Dissect Sequence 2 Message
  if template_id == 2 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.sequence_2_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Status 3 Message
  if template_id == 3 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.security_status_3_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Group Phase 10 Message
  if template_id == 10 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.security_group_phase_10_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition 4 Message
  if template_id == 4 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.security_definition_4_message(buffer, offset, packet, parent)
  end
  -- Dissect News 5 Message
  if template_id == 5 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.news_5_message(buffer, offset, packet, parent)
  end
  -- Dissect Empty Book 9 Message
  if template_id == 9 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.empty_book_9_message(buffer, offset, packet, parent)
  end
  -- Dissect Channel Reset 11 Message
  if template_id == 11 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.channel_reset_11_message(buffer, offset, packet, parent)
  end
  -- Dissect Opening Price 15 Message
  if template_id == 15 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.opening_price_15_message(buffer, offset, packet, parent)
  end
  -- Dissect Theoretical Opening Price 16 Message
  if template_id == 16 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.theoretical_opening_price_16_message(buffer, offset, packet, parent)
  end
  -- Dissect Closing Price 17 Message
  if template_id == 17 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.closing_price_17_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Imbalance 19 Message
  if template_id == 19 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.auction_imbalance_19_message(buffer, offset, packet, parent)
  end
  -- Dissect Price Band 20 Message
  if template_id == 20 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.price_band_20_message(buffer, offset, packet, parent)
  end
  -- Dissect Quantity Band 21 Message
  if template_id == 21 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.quantity_band_21_message(buffer, offset, packet, parent)
  end
  -- Dissect High Price 24 Message
  if template_id == 24 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.high_price_24_message(buffer, offset, packet, parent)
  end
  -- Dissect Low Price 25 Message
  if template_id == 25 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.low_price_25_message(buffer, offset, packet, parent)
  end
  -- Dissect Last Trade Price 27 Message
  if template_id == 27 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.last_trade_price_27_message(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Header 30 Message
  if template_id == 30 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.snapshot_full_refresh_header_30_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Mb O 50 Message
  if template_id == 50 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.order_mb_o_50_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Mb O 51 Message
  if template_id == 51 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.delete_order_mb_o_51_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Delete Orders Mb O 52 Message
  if template_id == 52 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.mass_delete_orders_mb_o_52_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade 53 Message
  if template_id == 53 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.trade_53_message(buffer, offset, packet, parent)
  end
  -- Dissect Forward Trade 54 Message
  if template_id == 54 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.forward_trade_54_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Summary 55 Message
  if template_id == 55 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.execution_summary_55_message(buffer, offset, packet, parent)
  end
  -- Dissect Execution Statistics 56 Message
  if template_id == 56 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.execution_statistics_56_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust 57 Message
  if template_id == 57 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.trade_bust_57_message(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Orders Mb O 71 Message
  if template_id == 71 then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.snapshot_full_refresh_orders_mb_o_71_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
b3_equities_binaryumdf_sbe_v1_6_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return b3_equities_binaryumdf_sbe_v1_6_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = b3_equities_binaryumdf_sbe_v1_6_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = b3_equities_binaryumdf_sbe_v1_6_display.payload(buffer, packet, parent)
  local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.payload, range, display)

  return b3_equities_binaryumdf_sbe_v1_6_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
b3_equities_binaryumdf_sbe_v1_6_size_of.version = 2

-- Display: Version
b3_equities_binaryumdf_sbe_v1_6_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
b3_equities_binaryumdf_sbe_v1_6_dissect.version = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.version(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
b3_equities_binaryumdf_sbe_v1_6_size_of.schema_id = 2

-- Display: Schema Id
b3_equities_binaryumdf_sbe_v1_6_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
b3_equities_binaryumdf_sbe_v1_6_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
b3_equities_binaryumdf_sbe_v1_6_size_of.template_id = 2

-- Display: Template Id
b3_equities_binaryumdf_sbe_v1_6_display.template_id = function(value)
  if value == 1 then
    return "Template Id: Sequence Reset 1 Message (1)"
  end
  if value == 2 then
    return "Template Id: Sequence 2 Message (2)"
  end
  if value == 3 then
    return "Template Id: Security Status 3 Message (3)"
  end
  if value == 10 then
    return "Template Id: Security Group Phase 10 Message (10)"
  end
  if value == 4 then
    return "Template Id: Security Definition 4 Message (4)"
  end
  if value == 5 then
    return "Template Id: News 5 Message (5)"
  end
  if value == 9 then
    return "Template Id: Empty Book 9 Message (9)"
  end
  if value == 11 then
    return "Template Id: Channel Reset 11 Message (11)"
  end
  if value == 15 then
    return "Template Id: Opening Price 15 Message (15)"
  end
  if value == 16 then
    return "Template Id: Theoretical Opening Price 16 Message (16)"
  end
  if value == 17 then
    return "Template Id: Closing Price 17 Message (17)"
  end
  if value == 19 then
    return "Template Id: Auction Imbalance 19 Message (19)"
  end
  if value == 20 then
    return "Template Id: Price Band 20 Message (20)"
  end
  if value == 21 then
    return "Template Id: Quantity Band 21 Message (21)"
  end
  if value == 24 then
    return "Template Id: High Price 24 Message (24)"
  end
  if value == 25 then
    return "Template Id: Low Price 25 Message (25)"
  end
  if value == 27 then
    return "Template Id: Last Trade Price 27 Message (27)"
  end
  if value == 30 then
    return "Template Id: Snapshot Full Refresh Header 30 Message (30)"
  end
  if value == 50 then
    return "Template Id: Order Mb O 50 Message (50)"
  end
  if value == 51 then
    return "Template Id: Delete Order Mb O 51 Message (51)"
  end
  if value == 52 then
    return "Template Id: Mass Delete Orders Mb O 52 Message (52)"
  end
  if value == 53 then
    return "Template Id: Trade 53 Message (53)"
  end
  if value == 54 then
    return "Template Id: Forward Trade 54 Message (54)"
  end
  if value == 55 then
    return "Template Id: Execution Summary 55 Message (55)"
  end
  if value == 56 then
    return "Template Id: Execution Statistics 56 Message (56)"
  end
  if value == 57 then
    return "Template Id: Trade Bust 57 Message (57)"
  end
  if value == 71 then
    return "Template Id: Snapshot Full Refresh Orders Mb O 71 Message (71)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
b3_equities_binaryumdf_sbe_v1_6_dissect.template_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.template_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.template_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
b3_equities_binaryumdf_sbe_v1_6_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.block_length

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.template_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.schema_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.version

  return index
end

-- Display: Message Header
b3_equities_binaryumdf_sbe_v1_6_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
b3_equities_binaryumdf_sbe_v1_6_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = b3_equities_binaryumdf_sbe_v1_6_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 27 values
  index, template_id = b3_equities_binaryumdf_sbe_v1_6_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = b3_equities_binaryumdf_sbe_v1_6_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = b3_equities_binaryumdf_sbe_v1_6_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
b3_equities_binaryumdf_sbe_v1_6_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.message_header, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Size: Encoding Type
b3_equities_binaryumdf_sbe_v1_6_size_of.encoding_type = 2

-- Display: Encoding Type
b3_equities_binaryumdf_sbe_v1_6_display.encoding_type = function(value)
  return "Encoding Type: "..value
end

-- Dissect: Encoding Type
b3_equities_binaryumdf_sbe_v1_6_dissect.encoding_type = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.encoding_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.encoding_type(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
b3_equities_binaryumdf_sbe_v1_6_size_of.message_length = 2

-- Display: Message Length
b3_equities_binaryumdf_sbe_v1_6_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
b3_equities_binaryumdf_sbe_v1_6_dissect.message_length = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.message_length(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Display: Message
b3_equities_binaryumdf_sbe_v1_6_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
b3_equities_binaryumdf_sbe_v1_6_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = b3_equities_binaryumdf_sbe_v1_6_dissect.message_length(buffer, index, packet, parent)

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index, encoding_type = b3_equities_binaryumdf_sbe_v1_6_dissect.encoding_type(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = b3_equities_binaryumdf_sbe_v1_6_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 27 branches
  index = b3_equities_binaryumdf_sbe_v1_6_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
b3_equities_binaryumdf_sbe_v1_6_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.message, buffer(offset, 0))
    local current = b3_equities_binaryumdf_sbe_v1_6_dissect.message_fields(buffer, offset, packet, element, size_of_message)
    element:set_len(size_of_message)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.message(buffer, packet, element)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    b3_equities_binaryumdf_sbe_v1_6_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Size: Sending Time
b3_equities_binaryumdf_sbe_v1_6_size_of.sending_time = 8

-- Display: Sending Time
b3_equities_binaryumdf_sbe_v1_6_display.sending_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
b3_equities_binaryumdf_sbe_v1_6_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
b3_equities_binaryumdf_sbe_v1_6_size_of.sequence_number = 4

-- Display: Sequence Number
b3_equities_binaryumdf_sbe_v1_6_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
b3_equities_binaryumdf_sbe_v1_6_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Sequence Version
b3_equities_binaryumdf_sbe_v1_6_size_of.sequence_version = 2

-- Display: Sequence Version
b3_equities_binaryumdf_sbe_v1_6_display.sequence_version = function(value)
  return "Sequence Version: "..value
end

-- Dissect: Sequence Version
b3_equities_binaryumdf_sbe_v1_6_dissect.sequence_version = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.sequence_version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.sequence_version(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.sequence_version, range, value, display)

  return offset + length, value
end

-- Size: Reserved
b3_equities_binaryumdf_sbe_v1_6_size_of.reserved = 1

-- Display: Reserved
b3_equities_binaryumdf_sbe_v1_6_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
b3_equities_binaryumdf_sbe_v1_6_dissect.reserved = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.reserved
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.reserved(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Channel Id
b3_equities_binaryumdf_sbe_v1_6_size_of.channel_id = 1

-- Display: Channel Id
b3_equities_binaryumdf_sbe_v1_6_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
b3_equities_binaryumdf_sbe_v1_6_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_equities_binaryumdf_sbe_v1_6_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
b3_equities_binaryumdf_sbe_v1_6_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.channel_id

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.reserved

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.sequence_version

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.sequence_number

  index = index + b3_equities_binaryumdf_sbe_v1_6_size_of.sending_time

  return index
end

-- Display: Packet Header
b3_equities_binaryumdf_sbe_v1_6_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
b3_equities_binaryumdf_sbe_v1_6_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = b3_equities_binaryumdf_sbe_v1_6_dissect.channel_id(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = b3_equities_binaryumdf_sbe_v1_6_dissect.reserved(buffer, index, packet, parent)

  -- Sequence Version: 2 Byte Unsigned Fixed Width Integer
  index, sequence_version = b3_equities_binaryumdf_sbe_v1_6_dissect.sequence_version(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = b3_equities_binaryumdf_sbe_v1_6_dissect.sequence_number(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = b3_equities_binaryumdf_sbe_v1_6_dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
b3_equities_binaryumdf_sbe_v1_6_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(b3_equities_binaryumdf_sbe_v1_6.fields.packet_header, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
b3_equities_binaryumdf_sbe_v1_6_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = b3_equities_binaryumdf_sbe_v1_6_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 4 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = b3_equities_binaryumdf_sbe_v1_6_dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function b3_equities_binaryumdf_sbe_v1_6.init()
end

-- Dissector for B3 Equities BinaryUmdf Sbe 1.6
function b3_equities_binaryumdf_sbe_v1_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = b3_equities_binaryumdf_sbe_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(b3_equities_binaryumdf_sbe_v1_6, buffer(), b3_equities_binaryumdf_sbe_v1_6.description, "("..buffer:len().." Bytes)")
  return b3_equities_binaryumdf_sbe_v1_6_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, b3_equities_binaryumdf_sbe_v1_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.b3_equities_binaryumdf_sbe_v1_6_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(24, 2):le_uint()

  if value == 2 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(26, 2):le_uint()

  if value == 7 then
    return true
  end

  return false
end

-- Dissector Heuristic for B3 Equities BinaryUmdf Sbe 1.6
local function b3_equities_binaryumdf_sbe_v1_6_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.b3_equities_binaryumdf_sbe_v1_6_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = b3_equities_binaryumdf_sbe_v1_6
  b3_equities_binaryumdf_sbe_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for B3 Equities BinaryUmdf Sbe 1.6
b3_equities_binaryumdf_sbe_v1_6:register_heuristic("udp", b3_equities_binaryumdf_sbe_v1_6_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Brasil, Bolsa, Balcão
--   Version: 1.6
--   Date: Tuesday, June 13, 2023
--   Specification: BinaryUMDF-MessageReference-v.1.6.0-enUS.pdf
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
