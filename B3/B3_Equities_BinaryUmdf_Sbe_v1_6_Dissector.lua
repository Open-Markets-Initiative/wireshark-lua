-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- B3 Equities BinaryUmdf Sbe 1.6 Protocol
local omi_b3_equities_binaryumdf_sbe_v1_6 = Proto("B3.Equities.BinaryUmdf.Sbe.v1.6.Lua", "B3 Equities BinaryUmdf Sbe 1.6")

-- Protocol table
local b3_equities_binaryumdf_sbe_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- B3 Equities BinaryUmdf Sbe 1.6 Fields
omi_b3_equities_binaryumdf_sbe_v1_6.fields.aggressor_side = ProtoField.new("Aggressor Side", "b3.equities.binaryumdf.sbe.v1.6.aggressorside", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.aggressor_time = ProtoField.new("Aggressor Time", "b3.equities.binaryumdf.sbe.v1.6.aggressortime", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.asset = ProtoField.new("Asset", "b3.equities.binaryumdf.sbe.v1.6.asset", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.avg_daily_traded_qty = ProtoField.new("Avg Daily Traded Qty", "b3.equities.binaryumdf.sbe.v1.6.avgdailytradedqty", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.block_length = ProtoField.new("Block Length", "b3.equities.binaryumdf.sbe.v1.6.blocklength", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.block_trade = ProtoField.new("Block Trade", "b3.equities.binaryumdf.sbe.v1.6.blocktrade", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x4000)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.cfi_code = ProtoField.new("Cfi Code", "b3.equities.binaryumdf.sbe.v1.6.cficode", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.channel_id = ProtoField.new("Channel Id", "b3.equities.binaryumdf.sbe.v1.6.channelid", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.clearing_house_id = ProtoField.new("Clearing House Id", "b3.equities.binaryumdf.sbe.v1.6.clearinghouseid", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "b3.equities.binaryumdf.sbe.v1.6.contractmultiplier", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.contract_settl_month = ProtoField.new("Contract Settl Month", "b3.equities.binaryumdf.sbe.v1.6.contractsettlmonth", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.corporate_action_event_id = ProtoField.new("Corporate Action Event Id", "b3.equities.binaryumdf.sbe.v1.6.corporateactioneventid", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.country_of_issue = ProtoField.new("Country Of Issue", "b3.equities.binaryumdf.sbe.v1.6.countryofissue", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.crossed = ProtoField.new("Crossed", "b3.equities.binaryumdf.sbe.v1.6.crossed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.currency = ProtoField.new("Currency", "b3.equities.binaryumdf.sbe.v1.6.currency", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.cxl_qty = ProtoField.new("Cxl Qty", "b3.equities.binaryumdf.sbe.v1.6.cxlqty", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.dated_date = ProtoField.new("Dated Date", "b3.equities.binaryumdf.sbe.v1.6.dateddate", ftypes.INT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.day = ProtoField.new("Day", "b3.equities.binaryumdf.sbe.v1.6.day", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_instr_attribs_group = ProtoField.new("Deprecated Instr Attribs Group", "b3.equities.binaryumdf.sbe.v1.6.deprecatedinstrattribsgroup", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_instr_attribs_groups = ProtoField.new("Deprecated Instr Attribs Groups", "b3.equities.binaryumdf.sbe.v1.6.deprecatedinstrattribsgroups", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_legs_group = ProtoField.new("Deprecated Legs Group", "b3.equities.binaryumdf.sbe.v1.6.deprecatedlegsgroup", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_legs_groups = ProtoField.new("Deprecated Legs Groups", "b3.equities.binaryumdf.sbe.v1.6.deprecatedlegsgroups", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_underlyings_group = ProtoField.new("Deprecated Underlyings Group", "b3.equities.binaryumdf.sbe.v1.6.deprecatedunderlyingsgroup", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_underlyings_groups = ProtoField.new("Deprecated Underlyings Groups", "b3.equities.binaryumdf.sbe.v1.6.deprecatedunderlyingsgroups", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.encoding_type = ProtoField.new("Encoding Type", "b3.equities.binaryumdf.sbe.v1.6.encodingtype", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.end_date = ProtoField.new("End Date", "b3.equities.binaryumdf.sbe.v1.6.enddate", ftypes.INT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.end_of_event = ProtoField.new("End Of Event", "b3.equities.binaryumdf.sbe.v1.6.endofevent", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.entering_firm = ProtoField.new("Entering Firm", "b3.equities.binaryumdf.sbe.v1.6.enteringfirm", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.exercise_style = ProtoField.new("Exercise Style", "b3.equities.binaryumdf.sbe.v1.6.exercisestyle", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.fill_qty = ProtoField.new("Fill Qty", "b3.equities.binaryumdf.sbe.v1.6.fillqty", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.framing_header = ProtoField.new("Framing Header", "b3.equities.binaryumdf.sbe.v1.6.framingheader", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.governance_indicator = ProtoField.new("Governance Indicator", "b3.equities.binaryumdf.sbe.v1.6.governanceindicator", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "b3.equities.binaryumdf.sbe.v1.6.groupsizeencoding", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.headline = ProtoField.new("Headline", "b3.equities.binaryumdf.sbe.v1.6.headline", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.headline_data = ProtoField.new("Headline Data", "b3.equities.binaryumdf.sbe.v1.6.headlinedata", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.headline_length = ProtoField.new("Headline Length", "b3.equities.binaryumdf.sbe.v1.6.headlinelength", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.high_limit_price = ProtoField.new("High Limit Price", "b3.equities.binaryumdf.sbe.v1.6.highlimitprice", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_condition = ProtoField.new("Imbalance Condition", "b3.equities.binaryumdf.sbe.v1.6.imbalancecondition", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_more_buyers = ProtoField.new("Imbalance More Buyers", "b3.equities.binaryumdf.sbe.v1.6.imbalancemorebuyers", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_more_sellers = ProtoField.new("Imbalance More Sellers", "b3.equities.binaryumdf.sbe.v1.6.imbalancemoresellers", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.index_pct = ProtoField.new("Index Pct", "b3.equities.binaryumdf.sbe.v1.6.indexpct", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.index_theoretical_qty = ProtoField.new("Index Theoretical Qty", "b3.equities.binaryumdf.sbe.v1.6.indextheoreticalqty", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.instr_attrib_type = ProtoField.new("Instr Attrib Type", "b3.equities.binaryumdf.sbe.v1.6.instrattribtype", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.instr_attrib_value = ProtoField.new("Instr Attrib Value", "b3.equities.binaryumdf.sbe.v1.6.instrattribvalue", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.isin_number = ProtoField.new("Isin Number", "b3.equities.binaryumdf.sbe.v1.6.isinnumber", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.issue_date = ProtoField.new("Issue Date", "b3.equities.binaryumdf.sbe.v1.6.issuedate", ftypes.INT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.language_code = ProtoField.new("Language Code", "b3.equities.binaryumdf.sbe.v1.6.languagecode", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_fragment = ProtoField.new("Last Fragment", "b3.equities.binaryumdf.sbe.v1.6.lastfragment", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_implied_msg = ProtoField.new("Last Implied Msg", "b3.equities.binaryumdf.sbe.v1.6.lastimpliedmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "b3.equities.binaryumdf.sbe.v1.6.lastmsgseqnumprocessed", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_px = ProtoField.new("Last Px", "b3.equities.binaryumdf.sbe.v1.6.lastpx", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_quote_msg = ProtoField.new("Last Quote Msg", "b3.equities.binaryumdf.sbe.v1.6.lastquotemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_rpt_seq = ProtoField.new("Last Rpt Seq", "b3.equities.binaryumdf.sbe.v1.6.lastrptseq", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_stats_msg = ProtoField.new("Last Stats Msg", "b3.equities.binaryumdf.sbe.v1.6.laststatsmsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_at_the_same_price = ProtoField.new("Last Trade At The Same Price", "b3.equities.binaryumdf.sbe.v1.6.lasttradeatthesameprice", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_date = ProtoField.new("Last Trade Date", "b3.equities.binaryumdf.sbe.v1.6.lasttradedate", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_msg = ProtoField.new("Last Trade Msg", "b3.equities.binaryumdf.sbe.v1.6.lasttrademsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_volume_msg = ProtoField.new("Last Volume Msg", "b3.equities.binaryumdf.sbe.v1.6.lastvolumemsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "b3.equities.binaryumdf.sbe.v1.6.legratioqty", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.leg_security_id = ProtoField.new("Leg Security Id", "b3.equities.binaryumdf.sbe.v1.6.legsecurityid", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.leg_security_type = ProtoField.new("Leg Security Type", "b3.equities.binaryumdf.sbe.v1.6.legsecuritytype", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.leg_side = ProtoField.new("Leg Side", "b3.equities.binaryumdf.sbe.v1.6.legside", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.leg_symbol = ProtoField.new("Leg Symbol", "b3.equities.binaryumdf.sbe.v1.6.legsymbol", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.lot_type = ProtoField.new("Lot Type", "b3.equities.binaryumdf.sbe.v1.6.lottype", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.low_limit_price = ProtoField.new("Low Limit Price", "b3.equities.binaryumdf.sbe.v1.6.lowlimitprice", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.market_segment_id = ProtoField.new("Market Segment Id", "b3.equities.binaryumdf.sbe.v1.6.marketsegmentid", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "b3.equities.binaryumdf.sbe.v1.6.matcheventindicator", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.maturity_date = ProtoField.new("Maturity Date", "b3.equities.binaryumdf.sbe.v1.6.maturitydate", ftypes.INT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "b3.equities.binaryumdf.sbe.v1.6.maturitymonthyear", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.max_order_qty = ProtoField.new("Max Order Qty", "b3.equities.binaryumdf.sbe.v1.6.maxorderqty", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "b3.equities.binaryumdf.sbe.v1.6.maxtradevol", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_corporate_offset_price_optional = ProtoField.new("Md Corporate Offset Price Optional", "b3.equities.binaryumdf.sbe.v1.6.mdcorporateoffsetpriceoptional", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_corporate_price = ProtoField.new("Md Corporate Price", "b3.equities.binaryumdf.sbe.v1.6.mdcorporateprice", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_buyer = ProtoField.new("Md Entry Buyer", "b3.equities.binaryumdf.sbe.v1.6.mdentrybuyer", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_interest_rate = ProtoField.new("Md Entry Interest Rate", "b3.equities.binaryumdf.sbe.v1.6.mdentryinterestrate", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_position_no = ProtoField.new("Md Entry Position No", "b3.equities.binaryumdf.sbe.v1.6.mdentrypositionno", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_seller = ProtoField.new("Md Entry Seller", "b3.equities.binaryumdf.sbe.v1.6.mdentryseller", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_size_quantity = ProtoField.new("Md Entry Size Quantity", "b3.equities.binaryumdf.sbe.v1.6.mdentrysizequantity", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_size_quantity_optional = ProtoField.new("Md Entry Size Quantity Optional", "b3.equities.binaryumdf.sbe.v1.6.mdentrysizequantityoptional", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_timestamp = ProtoField.new("Md Entry Timestamp", "b3.equities.binaryumdf.sbe.v1.6.mdentrytimestamp", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_type = ProtoField.new("Md Entry Type", "b3.equities.binaryumdf.sbe.v1.6.mdentrytype", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_future_price = ProtoField.new("Md Future Price", "b3.equities.binaryumdf.sbe.v1.6.mdfutureprice", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_insert_timestamp = ProtoField.new("Md Insert Timestamp", "b3.equities.binaryumdf.sbe.v1.6.mdinserttimestamp", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_update_action = ProtoField.new("Md Update Action", "b3.equities.binaryumdf.sbe.v1.6.mdupdateaction", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.message = ProtoField.new("Message", "b3.equities.binaryumdf.sbe.v1.6.message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.message_header = ProtoField.new("Message Header", "b3.equities.binaryumdf.sbe.v1.6.messageheader", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.message_length = ProtoField.new("Message Length", "b3.equities.binaryumdf.sbe.v1.6.messagelength", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.min_cross_qty = ProtoField.new("Min Cross Qty", "b3.equities.binaryumdf.sbe.v1.6.mincrossqty", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.min_lot_size = ProtoField.new("Min Lot Size", "b3.equities.binaryumdf.sbe.v1.6.minlotsize", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.min_order_qty = ProtoField.new("Min Order Qty", "b3.equities.binaryumdf.sbe.v1.6.minorderqty", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.min_price_increment = ProtoField.new("Min Price Increment", "b3.equities.binaryumdf.sbe.v1.6.minpriceincrement", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "b3.equities.binaryumdf.sbe.v1.6.mintradevol", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.month = ProtoField.new("Month", "b3.equities.binaryumdf.sbe.v1.6.month", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.multi_leg_model = ProtoField.new("Multi Leg Model", "b3.equities.binaryumdf.sbe.v1.6.multilegmodel", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.multi_leg_price_method = ProtoField.new("Multi Leg Price Method", "b3.equities.binaryumdf.sbe.v1.6.multilegpricemethod", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "b3.equities.binaryumdf.sbe.v1.6.netchgprevday", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.news_id = ProtoField.new("News Id", "b3.equities.binaryumdf.sbe.v1.6.newsid", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.news_source = ProtoField.new("News Source", "b3.equities.binaryumdf.sbe.v1.6.newssource", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.next_seq_no = ProtoField.new("Next Seq No", "b3.equities.binaryumdf.sbe.v1.6.nextseqno", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.no_shares_issued = ProtoField.new("No Shares Issued", "b3.equities.binaryumdf.sbe.v1.6.nosharesissued", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.num_in_group = ProtoField.new("Num In Group", "b3.equities.binaryumdf.sbe.v1.6.numingroup", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.number_of_trades = ProtoField.new("Number Of Trades", "b3.equities.binaryumdf.sbe.v1.6.numberoftrades", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_1_padding_3 = ProtoField.new("Offset 1 Padding 3", "b3.equities.binaryumdf.sbe.v1.6.offset1padding3", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_10_padding_2 = ProtoField.new("Offset 10 Padding 2", "b3.equities.binaryumdf.sbe.v1.6.offset10padding2", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_11_padding_1 = ProtoField.new("Offset 11 Padding 1", "b3.equities.binaryumdf.sbe.v1.6.offset11padding1", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_14_padding_2 = ProtoField.new("Offset 14 Padding 2", "b3.equities.binaryumdf.sbe.v1.6.offset14padding2", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_26_padding_2 = ProtoField.new("Offset 26 Padding 2", "b3.equities.binaryumdf.sbe.v1.6.offset26padding2", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_3_padding_5 = ProtoField.new("Offset 3 Padding 5", "b3.equities.binaryumdf.sbe.v1.6.offset3padding5", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_34_padding_2 = ProtoField.new("Offset 34 Padding 2", "b3.equities.binaryumdf.sbe.v1.6.offset34padding2", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_43_padding_1 = ProtoField.new("Offset 43 Padding 1", "b3.equities.binaryumdf.sbe.v1.6.offset43padding1", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_8_padding_2 = ProtoField.new("Offset 8 Padding 2", "b3.equities.binaryumdf.sbe.v1.6.offset8padding2", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_9_padding_1 = ProtoField.new("Offset 9 Padding 1", "b3.equities.binaryumdf.sbe.v1.6.offset9padding1", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_9_padding_3 = ProtoField.new("Offset 9 Padding 3", "b3.equities.binaryumdf.sbe.v1.6.offset9padding3", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.open_close_settl_flag = ProtoField.new("Open Close Settl Flag", "b3.equities.binaryumdf.sbe.v1.6.openclosesettlflag", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.opening_price = ProtoField.new("Opening Price", "b3.equities.binaryumdf.sbe.v1.6.openingprice", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.orig_time = ProtoField.new("Orig Time", "b3.equities.binaryumdf.sbe.v1.6.origtime", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.out_of_sequence = ProtoField.new("Out Of Sequence", "b3.equities.binaryumdf.sbe.v1.6.outofsequence", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.packet = ProtoField.new("Packet", "b3.equities.binaryumdf.sbe.v1.6.packet", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.packet_header = ProtoField.new("Packet Header", "b3.equities.binaryumdf.sbe.v1.6.packetheader", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.padding_2 = ProtoField.new("Padding 2", "b3.equities.binaryumdf.sbe.v1.6.padding2", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.padding_3 = ProtoField.new("Padding 3", "b3.equities.binaryumdf.sbe.v1.6.padding3", ftypes.BYTES)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.part_count = ProtoField.new("Part Count", "b3.equities.binaryumdf.sbe.v1.6.partcount", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.part_number = ProtoField.new("Part Number", "b3.equities.binaryumdf.sbe.v1.6.partnumber", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.payload = ProtoField.new("Payload", "b3.equities.binaryumdf.sbe.v1.6.payload", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_band_midpoint_price_type = ProtoField.new("Price Band Midpoint Price Type", "b3.equities.binaryumdf.sbe.v1.6.pricebandmidpointpricetype", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_band_type = ProtoField.new("Price Band Type", "b3.equities.binaryumdf.sbe.v1.6.pricebandtype", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_divisor = ProtoField.new("Price Divisor", "b3.equities.binaryumdf.sbe.v1.6.pricedivisor", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_limit_type = ProtoField.new("Price Limit Type", "b3.equities.binaryumdf.sbe.v1.6.pricelimittype", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_type = ProtoField.new("Price Type", "b3.equities.binaryumdf.sbe.v1.6.pricetype", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.product = ProtoField.new("Product", "b3.equities.binaryumdf.sbe.v1.6.product", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.put_or_call = ProtoField.new("Put Or Call", "b3.equities.binaryumdf.sbe.v1.6.putorcall", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.recovery_msg = ProtoField.new("Recovery Msg", "b3.equities.binaryumdf.sbe.v1.6.recoverymsg", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.regular_trade = ProtoField.new("Regular Trade", "b3.equities.binaryumdf.sbe.v1.6.regulartrade", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x2000)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.reserved = ProtoField.new("Reserved", "b3.equities.binaryumdf.sbe.v1.6.reserved", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.reserved_6 = ProtoField.new("Reserved 6", "b3.equities.binaryumdf.sbe.v1.6.reserved6", ftypes.UINT16, nil, base.DEC, 0xFC00)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.rpt_seq = ProtoField.new("Rpt Seq", "b3.equities.binaryumdf.sbe.v1.6.rptseq", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.schema_id = ProtoField.new("Schema Id", "b3.equities.binaryumdf.sbe.v1.6.schemaid", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "b3.equities.binaryumdf.sbe.v1.6.secondaryorderid", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_desc = ProtoField.new("Security Desc", "b3.equities.binaryumdf.sbe.v1.6.securitydesc", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_desc_data = ProtoField.new("Security Desc Data", "b3.equities.binaryumdf.sbe.v1.6.securitydescdata", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_desc_length = ProtoField.new("Security Desc Length", "b3.equities.binaryumdf.sbe.v1.6.securitydesclength", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_exchange = ProtoField.new("Security Exchange", "b3.equities.binaryumdf.sbe.v1.6.securityexchange", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_group = ProtoField.new("Security Group", "b3.equities.binaryumdf.sbe.v1.6.securitygroup", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_id = ProtoField.new("Security Id", "b3.equities.binaryumdf.sbe.v1.6.securityid", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_id_optional = ProtoField.new("Security Id Optional", "b3.equities.binaryumdf.sbe.v1.6.securityidoptional", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_id_source = ProtoField.new("Security Id Source", "b3.equities.binaryumdf.sbe.v1.6.securityidsource", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_match_type = ProtoField.new("Security Match Type", "b3.equities.binaryumdf.sbe.v1.6.securitymatchtype", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_strategy_type = ProtoField.new("Security Strategy Type", "b3.equities.binaryumdf.sbe.v1.6.securitystrategytype", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_sub_type = ProtoField.new("Security Sub Type", "b3.equities.binaryumdf.sbe.v1.6.securitysubtype", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_trading_event = ProtoField.new("Security Trading Event", "b3.equities.binaryumdf.sbe.v1.6.securitytradingevent", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_trading_status = ProtoField.new("Security Trading Status", "b3.equities.binaryumdf.sbe.v1.6.securitytradingstatus", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_type = ProtoField.new("Security Type", "b3.equities.binaryumdf.sbe.v1.6.securitytype", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_update_action = ProtoField.new("Security Update Action", "b3.equities.binaryumdf.sbe.v1.6.securityupdateaction", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_validity_timestamp = ProtoField.new("Security Validity Timestamp", "b3.equities.binaryumdf.sbe.v1.6.securityvaliditytimestamp", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.seller_days = ProtoField.new("Seller Days", "b3.equities.binaryumdf.sbe.v1.6.sellerdays", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.sending_time = ProtoField.new("Sending Time", "b3.equities.binaryumdf.sbe.v1.6.sendingtime", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.sequence_number = ProtoField.new("Sequence Number", "b3.equities.binaryumdf.sbe.v1.6.sequencenumber", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.sequence_version = ProtoField.new("Sequence Version", "b3.equities.binaryumdf.sbe.v1.6.sequenceversion", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.settl_currency = ProtoField.new("Settl Currency", "b3.equities.binaryumdf.sbe.v1.6.settlcurrency", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.settl_date = ProtoField.new("Settl Date", "b3.equities.binaryumdf.sbe.v1.6.settldate", ftypes.INT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.settl_type = ProtoField.new("Settl Type", "b3.equities.binaryumdf.sbe.v1.6.settltype", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group = ProtoField.new("Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Group", "b3.equities.binaryumdf.sbe.v1.6.snapshotfullrefreshordersmbo71messagenomdentriesgroup", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups = ProtoField.new("Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Groups", "b3.equities.binaryumdf.sbe.v1.6.snapshotfullrefreshordersmbo71messagenomdentriesgroups", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.start_date = ProtoField.new("Start Date", "b3.equities.binaryumdf.sbe.v1.6.startdate", ftypes.INT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.strike_currency = ProtoField.new("Strike Currency", "b3.equities.binaryumdf.sbe.v1.6.strikecurrency", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.strike_price = ProtoField.new("Strike Price", "b3.equities.binaryumdf.sbe.v1.6.strikeprice", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.symbol = ProtoField.new("Symbol", "b3.equities.binaryumdf.sbe.v1.6.symbol", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.template_id = ProtoField.new("Template Id", "b3.equities.binaryumdf.sbe.v1.6.templateid", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.text = ProtoField.new("Text", "b3.equities.binaryumdf.sbe.v1.6.text", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.text_data = ProtoField.new("Text Data", "b3.equities.binaryumdf.sbe.v1.6.textdata", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.text_length = ProtoField.new("Text Length", "b3.equities.binaryumdf.sbe.v1.6.textlength", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.tick_size_denominator = ProtoField.new("Tick Size Denominator", "b3.equities.binaryumdf.sbe.v1.6.ticksizedenominator", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.tot_no_related_sym = ProtoField.new("Tot No Related Sym", "b3.equities.binaryumdf.sbe.v1.6.totnorelatedsym", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_bids = ProtoField.new("Tot Num Bids", "b3.equities.binaryumdf.sbe.v1.6.totnumbids", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_offers = ProtoField.new("Tot Num Offers", "b3.equities.binaryumdf.sbe.v1.6.totnumoffers", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "b3.equities.binaryumdf.sbe.v1.6.totnumreports", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_stats = ProtoField.new("Tot Num Stats", "b3.equities.binaryumdf.sbe.v1.6.totnumstats", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.total_text_length = ProtoField.new("Total Text Length", "b3.equities.binaryumdf.sbe.v1.6.totaltextlength", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trad_ses_open_time = ProtoField.new("Trad Ses Open Time", "b3.equities.binaryumdf.sbe.v1.6.tradsesopentime", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_condition = ProtoField.new("Trade Condition", "b3.equities.binaryumdf.sbe.v1.6.tradecondition", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_date = ProtoField.new("Trade Date", "b3.equities.binaryumdf.sbe.v1.6.tradedate", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_id = ProtoField.new("Trade Id", "b3.equities.binaryumdf.sbe.v1.6.tradeid", ftypes.UINT32)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_on_behalf = ProtoField.new("Trade On Behalf", "b3.equities.binaryumdf.sbe.v1.6.tradeonbehalf", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_volume = ProtoField.new("Trade Volume", "b3.equities.binaryumdf.sbe.v1.6.tradevolume", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.traded_hidden_qty = ProtoField.new("Traded Hidden Qty", "b3.equities.binaryumdf.sbe.v1.6.tradedhiddenqty", ftypes.INT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trading_reference_price = ProtoField.new("Trading Reference Price", "b3.equities.binaryumdf.sbe.v1.6.tradingreferenceprice", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trading_session_id = ProtoField.new("Trading Session Id", "b3.equities.binaryumdf.sbe.v1.6.tradingsessionid", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "b3.equities.binaryumdf.sbe.v1.6.tradingsessionsubid", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.transact_time = ProtoField.new("Transact Time", "b3.equities.binaryumdf.sbe.v1.6.transacttime", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trd_sub_type = ProtoField.new("Trd Sub Type", "b3.equities.binaryumdf.sbe.v1.6.trdsubtype", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "b3.equities.binaryumdf.sbe.v1.6.underlyingsecurityid", ftypes.UINT64)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "b3.equities.binaryumdf.sbe.v1.6.underlyingsymbol", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused = ProtoField.new("Unused", "b3.equities.binaryumdf.sbe.v1.6.unused", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_0 = ProtoField.new("Unused Imbalance Condition 0", "b3.equities.binaryumdf.sbe.v1.6.unusedimbalancecondition0", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_1 = ProtoField.new("Unused Imbalance Condition 1", "b3.equities.binaryumdf.sbe.v1.6.unusedimbalancecondition1", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_2 = ProtoField.new("Unused Imbalance Condition 2", "b3.equities.binaryumdf.sbe.v1.6.unusedimbalancecondition2", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_3 = ProtoField.new("Unused Imbalance Condition 3", "b3.equities.binaryumdf.sbe.v1.6.unusedimbalancecondition3", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_4 = ProtoField.new("Unused Imbalance Condition 4", "b3.equities.binaryumdf.sbe.v1.6.unusedimbalancecondition4", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_5 = ProtoField.new("Unused Imbalance Condition 5", "b3.equities.binaryumdf.sbe.v1.6.unusedimbalancecondition5", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_6 = ProtoField.new("Unused Imbalance Condition 6", "b3.equities.binaryumdf.sbe.v1.6.unusedimbalancecondition6", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_7 = ProtoField.new("Unused Imbalance Condition 7", "b3.equities.binaryumdf.sbe.v1.6.unusedimbalancecondition7", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_10 = ProtoField.new("Unused Trade Condition 10", "b3.equities.binaryumdf.sbe.v1.6.unusedtradecondition10", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0400)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_11 = ProtoField.new("Unused Trade Condition 11", "b3.equities.binaryumdf.sbe.v1.6.unusedtradecondition11", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0800)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_12 = ProtoField.new("Unused Trade Condition 12", "b3.equities.binaryumdf.sbe.v1.6.unusedtradecondition12", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x1000)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_15 = ProtoField.new("Unused Trade Condition 15", "b3.equities.binaryumdf.sbe.v1.6.unusedtradecondition15", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x8000)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_4 = ProtoField.new("Unused Trade Condition 4", "b3.equities.binaryumdf.sbe.v1.6.unusedtradecondition4", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_5 = ProtoField.new("Unused Trade Condition 5", "b3.equities.binaryumdf.sbe.v1.6.unusedtradecondition5", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_7 = ProtoField.new("Unused Trade Condition 7", "b3.equities.binaryumdf.sbe.v1.6.unusedtradecondition7", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_8 = ProtoField.new("Unused Trade Condition 8", "b3.equities.binaryumdf.sbe.v1.6.unusedtradecondition8", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_9 = ProtoField.new("Unused Trade Condition 9", "b3.equities.binaryumdf.sbe.v1.6.unusedtradecondition9", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.url_link = ProtoField.new("Url Link", "b3.equities.binaryumdf.sbe.v1.6.urllink", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.url_link_data = ProtoField.new("Url Link Data", "b3.equities.binaryumdf.sbe.v1.6.urllinkdata", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.url_link_length = ProtoField.new("Url Link Length", "b3.equities.binaryumdf.sbe.v1.6.urllinklength", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.version = ProtoField.new("Version", "b3.equities.binaryumdf.sbe.v1.6.version", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.vwap_px = ProtoField.new("Vwap Px", "b3.equities.binaryumdf.sbe.v1.6.vwappx", ftypes.DOUBLE)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.week = ProtoField.new("Week", "b3.equities.binaryumdf.sbe.v1.6.week", ftypes.UINT8)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.year = ProtoField.new("Year", "b3.equities.binaryumdf.sbe.v1.6.year", ftypes.UINT16)

-- B3 Equities BinaryUmdf Sbe 1.6 messages
omi_b3_equities_binaryumdf_sbe_v1_6.fields.auction_imbalance_19_message = ProtoField.new("Auction Imbalance 19 Message", "b3.equities.binaryumdf.sbe.v1.6.auctionimbalance19message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.channel_reset_11_message = ProtoField.new("Channel Reset 11 Message", "b3.equities.binaryumdf.sbe.v1.6.channelreset11message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.closing_price_17_message = ProtoField.new("Closing Price 17 Message", "b3.equities.binaryumdf.sbe.v1.6.closingprice17message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.delete_order_mb_o_51_message = ProtoField.new("Delete Order Mb O 51 Message", "b3.equities.binaryumdf.sbe.v1.6.deleteordermbo51message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_security_definition_message = ProtoField.new("Deprecated Security Definition Message", "b3.equities.binaryumdf.sbe.v1.6.deprecatedsecuritydefinitionmessage", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.empty_book_message = ProtoField.new("Empty Book Message", "b3.equities.binaryumdf.sbe.v1.6.emptybookmessage", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.execution_statistics_56_message = ProtoField.new("Execution Statistics 56 Message", "b3.equities.binaryumdf.sbe.v1.6.executionstatistics56message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.execution_summary_55_message = ProtoField.new("Execution Summary 55 Message", "b3.equities.binaryumdf.sbe.v1.6.executionsummary55message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.forward_trade_54_message = ProtoField.new("Forward Trade 54 Message", "b3.equities.binaryumdf.sbe.v1.6.forwardtrade54message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.high_price_24_message = ProtoField.new("High Price 24 Message", "b3.equities.binaryumdf.sbe.v1.6.highprice24message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_price_27_message = ProtoField.new("Last Trade Price 27 Message", "b3.equities.binaryumdf.sbe.v1.6.lasttradeprice27message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.low_price_25_message = ProtoField.new("Low Price 25 Message", "b3.equities.binaryumdf.sbe.v1.6.lowprice25message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.mass_delete_orders_mb_o_52_message = ProtoField.new("Mass Delete Orders Mb O 52 Message", "b3.equities.binaryumdf.sbe.v1.6.massdeleteordersmbo52message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.news_5_message = ProtoField.new("News 5 Message", "b3.equities.binaryumdf.sbe.v1.6.news5message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.opening_price_15_message = ProtoField.new("Opening Price 15 Message", "b3.equities.binaryumdf.sbe.v1.6.openingprice15message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.order_mb_o_50_message = ProtoField.new("Order Mb O 50 Message", "b3.equities.binaryumdf.sbe.v1.6.ordermbo50message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_band_20_message = ProtoField.new("Price Band 20 Message", "b3.equities.binaryumdf.sbe.v1.6.priceband20message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.quantity_band_21_message = ProtoField.new("Quantity Band 21 Message", "b3.equities.binaryumdf.sbe.v1.6.quantityband21message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_group_phase_10_message = ProtoField.new("Security Group Phase 10 Message", "b3.equities.binaryumdf.sbe.v1.6.securitygroupphase10message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_status_3_message = ProtoField.new("Security Status 3 Message", "b3.equities.binaryumdf.sbe.v1.6.securitystatus3message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.sequence_message = ProtoField.new("Sequence Message", "b3.equities.binaryumdf.sbe.v1.6.sequencemessage", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_header_30_message = ProtoField.new("Snapshot Full Refresh Header 30 Message", "b3.equities.binaryumdf.sbe.v1.6.snapshotfullrefreshheader30message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_orders_mb_o_71_message = ProtoField.new("Snapshot Full Refresh Orders Mb O 71 Message", "b3.equities.binaryumdf.sbe.v1.6.snapshotfullrefreshordersmbo71message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.theoretical_opening_price_16_message = ProtoField.new("Theoretical Opening Price 16 Message", "b3.equities.binaryumdf.sbe.v1.6.theoreticalopeningprice16message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_53_message = ProtoField.new("Trade 53 Message", "b3.equities.binaryumdf.sbe.v1.6.trade53message", ftypes.STRING)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_bust_57_message = ProtoField.new("Trade Bust 57 Message", "b3.equities.binaryumdf.sbe.v1.6.tradebust57message", ftypes.STRING)

-- B3 Equities BinaryUmdf Sbe 1.6 generated fields
omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_instr_attribs_group_index = ProtoField.new("Deprecated Instr Attribs Group Index", "b3.equities.binaryumdf.sbe.v1.6.deprecatedinstrattribsgroupindex", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_legs_group_index = ProtoField.new("Deprecated Legs Group Index", "b3.equities.binaryumdf.sbe.v1.6.deprecatedlegsgroupindex", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_underlyings_group_index = ProtoField.new("Deprecated Underlyings Group Index", "b3.equities.binaryumdf.sbe.v1.6.deprecatedunderlyingsgroupindex", ftypes.UINT16)
omi_b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_index = ProtoField.new("Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Group Index", "b3.equities.binaryumdf.sbe.v1.6.snapshotfullrefreshordersmbo71messagenomdentriesgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- B3 Equities BinaryUmdf Sbe 1.6 Element Dissection Options
show.auction_imbalance_19_message = true
show.channel_reset_11_message = true
show.closing_price_17_message = true
show.contract_settl_month = true
show.delete_order_mb_o_51_message = true
show.deprecated_instr_attribs_group = true
show.deprecated_instr_attribs_groups = true
show.deprecated_legs_group = true
show.deprecated_legs_groups = true
show.deprecated_security_definition_message = true
show.deprecated_underlyings_group = true
show.deprecated_underlyings_groups = true
show.empty_book_message = true
show.execution_statistics_56_message = true
show.execution_summary_55_message = true
show.forward_trade_54_message = true
show.framing_header = true
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
show.opening_price_15_message = true
show.order_mb_o_50_message = true
show.packet = true
show.packet_header = true
show.price_band_20_message = true
show.quantity_band_21_message = true
show.security_desc = true
show.security_group_phase_10_message = true
show.security_status_3_message = true
show.sequence_message = true
show.snapshot_full_refresh_header_30_message = true
show.snapshot_full_refresh_orders_mb_o_71_message = true
show.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group = true
show.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups = true
show.text = true
show.theoretical_opening_price_16_message = true
show.trade_53_message = true
show.trade_bust_57_message = true
show.trade_condition = true
show.url_link = true
show.payload = false

-- Register B3 Equities BinaryUmdf Sbe 1.6 Show Options
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_auction_imbalance_19_message = Pref.bool("Show Auction Imbalance 19 Message", show.auction_imbalance_19_message, "Parse and add Auction Imbalance 19 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_channel_reset_11_message = Pref.bool("Show Channel Reset 11 Message", show.channel_reset_11_message, "Parse and add Channel Reset 11 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_closing_price_17_message = Pref.bool("Show Closing Price 17 Message", show.closing_price_17_message, "Parse and add Closing Price 17 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_contract_settl_month = Pref.bool("Show Contract Settl Month", show.contract_settl_month, "Parse and add Contract Settl Month to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_delete_order_mb_o_51_message = Pref.bool("Show Delete Order Mb O 51 Message", show.delete_order_mb_o_51_message, "Parse and add Delete Order Mb O 51 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_instr_attribs_group = Pref.bool("Show Deprecated Instr Attribs Group", show.deprecated_instr_attribs_group, "Parse and add Deprecated Instr Attribs Group to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_instr_attribs_groups = Pref.bool("Show Deprecated Instr Attribs Groups", show.deprecated_instr_attribs_groups, "Parse and add Deprecated Instr Attribs Groups to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_legs_group = Pref.bool("Show Deprecated Legs Group", show.deprecated_legs_group, "Parse and add Deprecated Legs Group to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_legs_groups = Pref.bool("Show Deprecated Legs Groups", show.deprecated_legs_groups, "Parse and add Deprecated Legs Groups to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_security_definition_message = Pref.bool("Show Deprecated Security Definition Message", show.deprecated_security_definition_message, "Parse and add Deprecated Security Definition Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_underlyings_group = Pref.bool("Show Deprecated Underlyings Group", show.deprecated_underlyings_group, "Parse and add Deprecated Underlyings Group to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_underlyings_groups = Pref.bool("Show Deprecated Underlyings Groups", show.deprecated_underlyings_groups, "Parse and add Deprecated Underlyings Groups to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_empty_book_message = Pref.bool("Show Empty Book Message", show.empty_book_message, "Parse and add Empty Book Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_statistics_56_message = Pref.bool("Show Execution Statistics 56 Message", show.execution_statistics_56_message, "Parse and add Execution Statistics 56 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_summary_55_message = Pref.bool("Show Execution Summary 55 Message", show.execution_summary_55_message, "Parse and add Execution Summary 55 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_forward_trade_54_message = Pref.bool("Show Forward Trade 54 Message", show.forward_trade_54_message, "Parse and add Forward Trade 54 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_framing_header = Pref.bool("Show Framing Header", show.framing_header, "Parse and add Framing Header to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_headline = Pref.bool("Show Headline", show.headline, "Parse and add Headline to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_high_price_24_message = Pref.bool("Show High Price 24 Message", show.high_price_24_message, "Parse and add High Price 24 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_imbalance_condition = Pref.bool("Show Imbalance Condition", show.imbalance_condition, "Parse and add Imbalance Condition to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_last_trade_price_27_message = Pref.bool("Show Last Trade Price 27 Message", show.last_trade_price_27_message, "Parse and add Last Trade Price 27 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_low_price_25_message = Pref.bool("Show Low Price 25 Message", show.low_price_25_message, "Parse and add Low Price 25 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_mass_delete_orders_mb_o_52_message = Pref.bool("Show Mass Delete Orders Mb O 52 Message", show.mass_delete_orders_mb_o_52_message, "Parse and add Mass Delete Orders Mb O 52 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_match_event_indicator = Pref.bool("Show Match Event Indicator", show.match_event_indicator, "Parse and add Match Event Indicator to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_news_5_message = Pref.bool("Show News 5 Message", show.news_5_message, "Parse and add News 5 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_opening_price_15_message = Pref.bool("Show Opening Price 15 Message", show.opening_price_15_message, "Parse and add Opening Price 15 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_order_mb_o_50_message = Pref.bool("Show Order Mb O 50 Message", show.order_mb_o_50_message, "Parse and add Order Mb O 50 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_price_band_20_message = Pref.bool("Show Price Band 20 Message", show.price_band_20_message, "Parse and add Price Band 20 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_quantity_band_21_message = Pref.bool("Show Quantity Band 21 Message", show.quantity_band_21_message, "Parse and add Quantity Band 21 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_desc = Pref.bool("Show Security Desc", show.security_desc, "Parse and add Security Desc to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_group_phase_10_message = Pref.bool("Show Security Group Phase 10 Message", show.security_group_phase_10_message, "Parse and add Security Group Phase 10 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_status_3_message = Pref.bool("Show Security Status 3 Message", show.security_status_3_message, "Parse and add Security Status 3 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_sequence_message = Pref.bool("Show Sequence Message", show.sequence_message, "Parse and add Sequence Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_header_30_message = Pref.bool("Show Snapshot Full Refresh Header 30 Message", show.snapshot_full_refresh_header_30_message, "Parse and add Snapshot Full Refresh Header 30 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message = Pref.bool("Show Snapshot Full Refresh Orders Mb O 71 Message", show.snapshot_full_refresh_orders_mb_o_71_message, "Parse and add Snapshot Full Refresh Orders Mb O 71 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group = Pref.bool("Show Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Group", show.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group, "Parse and add Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Group to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups = Pref.bool("Show Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Groups", show.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups, "Parse and add Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Groups to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_text = Pref.bool("Show Text", show.text, "Parse and add Text to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_theoretical_opening_price_16_message = Pref.bool("Show Theoretical Opening Price 16 Message", show.theoretical_opening_price_16_message, "Parse and add Theoretical Opening Price 16 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_53_message = Pref.bool("Show Trade 53 Message", show.trade_53_message, "Parse and add Trade 53 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_bust_57_message = Pref.bool("Show Trade Bust 57 Message", show.trade_bust_57_message, "Parse and add Trade Bust 57 Message to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_condition = Pref.bool("Show Trade Condition", show.trade_condition, "Parse and add Trade Condition to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_url_link = Pref.bool("Show Url Link", show.url_link, "Parse and add Url Link to protocol tree")
omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_b3_equities_binaryumdf_sbe_v1_6.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.auction_imbalance_19_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_auction_imbalance_19_message then
    show.auction_imbalance_19_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_auction_imbalance_19_message
    changed = true
  end
  if show.channel_reset_11_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_channel_reset_11_message then
    show.channel_reset_11_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_channel_reset_11_message
    changed = true
  end
  if show.closing_price_17_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_closing_price_17_message then
    show.closing_price_17_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_closing_price_17_message
    changed = true
  end
  if show.contract_settl_month ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_contract_settl_month then
    show.contract_settl_month = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_contract_settl_month
    changed = true
  end
  if show.delete_order_mb_o_51_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_delete_order_mb_o_51_message then
    show.delete_order_mb_o_51_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_delete_order_mb_o_51_message
    changed = true
  end
  if show.deprecated_instr_attribs_group ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_instr_attribs_group then
    show.deprecated_instr_attribs_group = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_instr_attribs_group
    changed = true
  end
  if show.deprecated_instr_attribs_groups ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_instr_attribs_groups then
    show.deprecated_instr_attribs_groups = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_instr_attribs_groups
    changed = true
  end
  if show.deprecated_legs_group ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_legs_group then
    show.deprecated_legs_group = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_legs_group
    changed = true
  end
  if show.deprecated_legs_groups ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_legs_groups then
    show.deprecated_legs_groups = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_legs_groups
    changed = true
  end
  if show.deprecated_security_definition_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_security_definition_message then
    show.deprecated_security_definition_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_security_definition_message
    changed = true
  end
  if show.deprecated_underlyings_group ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_underlyings_group then
    show.deprecated_underlyings_group = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_underlyings_group
    changed = true
  end
  if show.deprecated_underlyings_groups ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_underlyings_groups then
    show.deprecated_underlyings_groups = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_deprecated_underlyings_groups
    changed = true
  end
  if show.empty_book_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_empty_book_message then
    show.empty_book_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_empty_book_message
    changed = true
  end
  if show.execution_statistics_56_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_statistics_56_message then
    show.execution_statistics_56_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_statistics_56_message
    changed = true
  end
  if show.execution_summary_55_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_summary_55_message then
    show.execution_summary_55_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_execution_summary_55_message
    changed = true
  end
  if show.forward_trade_54_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_forward_trade_54_message then
    show.forward_trade_54_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_forward_trade_54_message
    changed = true
  end
  if show.framing_header ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_framing_header then
    show.framing_header = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_framing_header
    changed = true
  end
  if show.group_size_encoding ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_group_size_encoding then
    show.group_size_encoding = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_group_size_encoding
    changed = true
  end
  if show.headline ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_headline then
    show.headline = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_headline
    changed = true
  end
  if show.high_price_24_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_high_price_24_message then
    show.high_price_24_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_high_price_24_message
    changed = true
  end
  if show.imbalance_condition ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_imbalance_condition then
    show.imbalance_condition = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_imbalance_condition
    changed = true
  end
  if show.last_trade_price_27_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_last_trade_price_27_message then
    show.last_trade_price_27_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_last_trade_price_27_message
    changed = true
  end
  if show.low_price_25_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_low_price_25_message then
    show.low_price_25_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_low_price_25_message
    changed = true
  end
  if show.mass_delete_orders_mb_o_52_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_mass_delete_orders_mb_o_52_message then
    show.mass_delete_orders_mb_o_52_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_mass_delete_orders_mb_o_52_message
    changed = true
  end
  if show.match_event_indicator ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_match_event_indicator then
    show.match_event_indicator = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_match_event_indicator
    changed = true
  end
  if show.maturity_month_year ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_maturity_month_year then
    show.maturity_month_year = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_maturity_month_year
    changed = true
  end
  if show.message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_message then
    show.message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_message_header then
    show.message_header = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_message_header
    changed = true
  end
  if show.news_5_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_news_5_message then
    show.news_5_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_news_5_message
    changed = true
  end
  if show.opening_price_15_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_opening_price_15_message then
    show.opening_price_15_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_opening_price_15_message
    changed = true
  end
  if show.order_mb_o_50_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_order_mb_o_50_message then
    show.order_mb_o_50_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_order_mb_o_50_message
    changed = true
  end
  if show.packet ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet then
    show.packet = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet_header then
    show.packet_header = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_packet_header
    changed = true
  end
  if show.price_band_20_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_price_band_20_message then
    show.price_band_20_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_price_band_20_message
    changed = true
  end
  if show.quantity_band_21_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_quantity_band_21_message then
    show.quantity_band_21_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_quantity_band_21_message
    changed = true
  end
  if show.security_desc ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_desc then
    show.security_desc = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_desc
    changed = true
  end
  if show.security_group_phase_10_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_group_phase_10_message then
    show.security_group_phase_10_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_group_phase_10_message
    changed = true
  end
  if show.security_status_3_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_status_3_message then
    show.security_status_3_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_security_status_3_message
    changed = true
  end
  if show.sequence_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_sequence_message then
    show.sequence_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_sequence_message
    changed = true
  end
  if show.snapshot_full_refresh_header_30_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_header_30_message then
    show.snapshot_full_refresh_header_30_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_header_30_message
    changed = true
  end
  if show.snapshot_full_refresh_orders_mb_o_71_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message then
    show.snapshot_full_refresh_orders_mb_o_71_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message
    changed = true
  end
  if show.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group then
    show.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group
    changed = true
  end
  if show.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups then
    show.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups
    changed = true
  end
  if show.text ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_text then
    show.text = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_text
    changed = true
  end
  if show.theoretical_opening_price_16_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_theoretical_opening_price_16_message then
    show.theoretical_opening_price_16_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_theoretical_opening_price_16_message
    changed = true
  end
  if show.trade_53_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_53_message then
    show.trade_53_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_53_message
    changed = true
  end
  if show.trade_bust_57_message ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_bust_57_message then
    show.trade_bust_57_message = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_bust_57_message
    changed = true
  end
  if show.trade_condition ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_condition then
    show.trade_condition = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_trade_condition
    changed = true
  end
  if show.url_link ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_url_link then
    show.url_link = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_url_link
    changed = true
  end
  if show.payload ~= omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_payload then
    show.payload = omi_b3_equities_binaryumdf_sbe_v1_6.prefs.show_payload
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

-- Md Entry Type
b3_equities_binaryumdf_sbe_v1_6.md_entry_type = {}

-- Size: Md Entry Type
b3_equities_binaryumdf_sbe_v1_6.md_entry_type.size = 1

-- Display: Md Entry Type
b3_equities_binaryumdf_sbe_v1_6.md_entry_type.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_entry_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryumdf_sbe_v1_6.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
b3_equities_binaryumdf_sbe_v1_6.secondary_order_id = {}

-- Size: Secondary Order Id
b3_equities_binaryumdf_sbe_v1_6.secondary_order_id.size = 8

-- Display: Secondary Order Id
b3_equities_binaryumdf_sbe_v1_6.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
b3_equities_binaryumdf_sbe_v1_6.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Md Insert Timestamp
b3_equities_binaryumdf_sbe_v1_6.md_insert_timestamp = {}

-- Size: Md Insert Timestamp
b3_equities_binaryumdf_sbe_v1_6.md_insert_timestamp.size = 8

-- Display: Md Insert Timestamp
b3_equities_binaryumdf_sbe_v1_6.md_insert_timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Md Insert Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Md Insert Timestamp
b3_equities_binaryumdf_sbe_v1_6.md_insert_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_insert_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.md_insert_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_insert_timestamp, range, value, display)

  return offset + length, value
end

-- Entering Firm
b3_equities_binaryumdf_sbe_v1_6.entering_firm = {}

-- Size: Entering Firm
b3_equities_binaryumdf_sbe_v1_6.entering_firm.size = 4

-- Display: Entering Firm
b3_equities_binaryumdf_sbe_v1_6.entering_firm.display = function(value)
  return "Entering Firm: "..value
end

-- Dissect: Entering Firm
b3_equities_binaryumdf_sbe_v1_6.entering_firm.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.entering_firm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.entering_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.entering_firm, range, value, display)

  return offset + length, value
end

-- Md Entry Position No
b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no = {}

-- Size: Md Entry Position No
b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.size = 4

-- Display: Md Entry Position No
b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.display = function(value)
  return "Md Entry Position No: "..value
end

-- Dissect: Md Entry Position No
b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_position_no, range, value, display)

  return offset + length, value
end

-- Md Entry Size Quantity
b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity = {}

-- Size: Md Entry Size Quantity
b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.size = 8

-- Display: Md Entry Size Quantity
b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.display = function(value)
  return "Md Entry Size Quantity: "..value
end

-- Dissect: Md Entry Size Quantity
b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_size_quantity, range, value, display)

  return offset + length, value
end

-- Md Corporate Offset Price Optional
b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional = {}

-- Size: Md Corporate Offset Price Optional
b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.size = 8

-- Display: Md Corporate Offset Price Optional
b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Md Corporate Offset Price Optional: No Value"
  end

  return "Md Corporate Offset Price Optional: "..value
end

-- Translate: Md Corporate Offset Price Optional
b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Md Corporate Offset Price Optional
b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_corporate_offset_price_optional, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Group
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group = {}

-- Size: Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Group
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group.size =
  b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.size + 
  b3_equities_binaryumdf_sbe_v1_6.entering_firm.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_insert_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.secondary_order_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_type.size

-- Display: Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Group
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Group
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group.fields = function(buffer, offset, packet, parent, snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_index)
  local index = offset

  -- Implicit Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Group Index
  if snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_index ~= nil then
    local iteration = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_index, snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_index)
    iteration:set_generated()
  end

  -- Md Corporate Offset Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_corporate_offset_price_optional = b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.dissect(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_position_no = b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.dissect(buffer, index, packet, parent)

  -- Entering Firm: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm = b3_equities_binaryumdf_sbe_v1_6.entering_firm.dissect(buffer, index, packet, parent)

  -- Md Insert Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_insert_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_insert_timestamp.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryumdf_sbe_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 21 values
  index, md_entry_type = b3_equities_binaryumdf_sbe_v1_6.md_entry_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Group
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group.dissect = function(buffer, offset, packet, parent, snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_index)
  if show.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group.fields(buffer, offset, packet, parent, snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_index)
  end
end

-- Num In Group
b3_equities_binaryumdf_sbe_v1_6.num_in_group = {}

-- Size: Num In Group
b3_equities_binaryumdf_sbe_v1_6.num_in_group.size = 1

-- Display: Num In Group
b3_equities_binaryumdf_sbe_v1_6.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
b3_equities_binaryumdf_sbe_v1_6.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length
b3_equities_binaryumdf_sbe_v1_6.block_length = {}

-- Size: Block Length
b3_equities_binaryumdf_sbe_v1_6.block_length.size = 2

-- Display: Block Length
b3_equities_binaryumdf_sbe_v1_6.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
b3_equities_binaryumdf_sbe_v1_6.block_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.block_length, range, value, display)

  return offset + length, value
end

-- Group Size Encoding
b3_equities_binaryumdf_sbe_v1_6.group_size_encoding = {}

-- Size: Group Size Encoding
b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.size =
  b3_equities_binaryumdf_sbe_v1_6.block_length.size + 
  b3_equities_binaryumdf_sbe_v1_6.num_in_group.size

-- Display: Group Size Encoding
b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = b3_equities_binaryumdf_sbe_v1_6.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = b3_equities_binaryumdf_sbe_v1_6.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.group_size_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.group_size_encoding, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Groups
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups = {}

-- Calculate size of: Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Groups
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.size

  -- Calculate field size from count
  local snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_count * 41

  return index
end

-- Display: Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Groups
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Groups
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Group
  for snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_index = 1, num_in_group do
    index, snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group = b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group.dissect(buffer, index, packet, parent, snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_group_index)
  end

  return index
end

-- Dissect: Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Groups
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups then
    local length = b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups.fields(buffer, offset, packet, parent)
end

-- Security Id
b3_equities_binaryumdf_sbe_v1_6.security_id = {}

-- Size: Security Id
b3_equities_binaryumdf_sbe_v1_6.security_id.size = 8

-- Display: Security Id
b3_equities_binaryumdf_sbe_v1_6.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
b3_equities_binaryumdf_sbe_v1_6.security_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_id, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh Orders Mb O 71 Message
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message = {}

-- Calculate size of: Snapshot Full Refresh Orders Mb O 71 Message
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_id.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups.size(buffer, offset + index)

  return index
end

-- Display: Snapshot Full Refresh Orders Mb O 71 Message
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Orders Mb O 71 Message
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Snapshot Full Refresh Orders Mb O 71 Message no M D Entries Groups: Struct of 2 fields
  index, snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups = b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message_no_m_d_entries_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Orders Mb O 71 Message
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.snapshot_full_refresh_orders_mb_o_71_message then
    local length = b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_orders_mb_o_71_message, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message.fields(buffer, offset, packet, parent)
end

-- Rpt Seq
b3_equities_binaryumdf_sbe_v1_6.rpt_seq = {}

-- Size: Rpt Seq
b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size = 4

-- Display: Rpt Seq
b3_equities_binaryumdf_sbe_v1_6.rpt_seq.display = function(value)
  return "Rpt Seq: "..value
end

-- Dissect: Rpt Seq
b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.rpt_seq, range, value, display)

  return offset + length, value
end

-- Md Entry Timestamp
b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp = {}

-- Size: Md Entry Timestamp
b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size = 8

-- Display: Md Entry Timestamp
b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Md Entry Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Md Entry Timestamp
b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_timestamp, range, value, display)

  return offset + length, value
end

-- Offset 34 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_34_padding_2 = {}

-- Size: Offset 34 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_34_padding_2.size = 2

-- Display: Offset 34 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_34_padding_2.display = function(value)
  return "Offset 34 Padding 2: "..value
end

-- Dissect: Offset 34 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_34_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.offset_34_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.offset_34_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_34_padding_2, range, value, display)

  return offset + length, value
end

-- Trade Date
b3_equities_binaryumdf_sbe_v1_6.trade_date = {}

-- Size: Trade Date
b3_equities_binaryumdf_sbe_v1_6.trade_date.size = 2

-- Display: Trade Date
b3_equities_binaryumdf_sbe_v1_6.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Id
b3_equities_binaryumdf_sbe_v1_6.trade_id = {}

-- Size: Trade Id
b3_equities_binaryumdf_sbe_v1_6.trade_id.size = 4

-- Display: Trade Id
b3_equities_binaryumdf_sbe_v1_6.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
b3_equities_binaryumdf_sbe_v1_6.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Md Future Price
b3_equities_binaryumdf_sbe_v1_6.md_future_price = {}

-- Size: Md Future Price
b3_equities_binaryumdf_sbe_v1_6.md_future_price.size = 8

-- Display: Md Future Price
b3_equities_binaryumdf_sbe_v1_6.md_future_price.display = function(value)
  return "Md Future Price: "..value
end

-- Translate: Md Future Price
b3_equities_binaryumdf_sbe_v1_6.md_future_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Md Future Price
b3_equities_binaryumdf_sbe_v1_6.md_future_price.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_future_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.md_future_price.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.md_future_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_future_price, range, value, display)

  return offset + length, value
end

-- Offset 10 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_10_padding_2 = {}

-- Size: Offset 10 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_10_padding_2.size = 2

-- Display: Offset 10 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_10_padding_2.display = function(value)
  return "Offset 10 Padding 2: "..value
end

-- Dissect: Offset 10 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_10_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.offset_10_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.offset_10_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_10_padding_2, range, value, display)

  return offset + length, value
end

-- Trading Session Id
b3_equities_binaryumdf_sbe_v1_6.trading_session_id = {}

-- Size: Trading Session Id
b3_equities_binaryumdf_sbe_v1_6.trading_session_id.size = 1

-- Display: Trading Session Id
b3_equities_binaryumdf_sbe_v1_6.trading_session_id.display = function(value)
  if value == 1 then
    return "Trading Session Id: Regular Trading Session (1)"
  end
  if value == 6 then
    return "Trading Session Id: Non Regular Trading Session (6)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
b3_equities_binaryumdf_sbe_v1_6.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Match Event Indicator
b3_equities_binaryumdf_sbe_v1_6.match_event_indicator = {}

-- Size: Match Event Indicator
b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size = 1

-- Display: Match Event Indicator
b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.display = function(range, value, packet, parent)
  local display = ""

  -- Is Last Trade Msg flag set?
  if bit.band(value, 0x01) ~= 0 then
    display = display.."Last Trade Msg|"
  end
  -- Is Last Volume Msg flag set?
  if bit.band(value, 0x02) ~= 0 then
    display = display.."Last Volume Msg|"
  end
  -- Is Last Quote Msg flag set?
  if bit.band(value, 0x04) ~= 0 then
    display = display.."Last Quote Msg|"
  end
  -- Is Last Stats Msg flag set?
  if bit.band(value, 0x08) ~= 0 then
    display = display.."Last Stats Msg|"
  end
  -- Is Last Implied Msg flag set?
  if bit.band(value, 0x10) ~= 0 then
    display = display.."Last Implied Msg|"
  end
  -- Is Recovery Msg flag set?
  if bit.band(value, 0x20) ~= 0 then
    display = display.."Recovery Msg|"
  end
  -- Is Unused flag set?
  if bit.band(value, 0x40) ~= 0 then
    display = display.."Unused|"
  end
  -- Is End Of Event flag set?
  if bit.band(value, 0x80) ~= 0 then
    display = display.."End Of Event|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Match Event Indicator
b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.bits = function(range, value, packet, parent)

  -- Last Trade Msg: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_msg, range, value)

  -- Last Volume Msg: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_volume_msg, range, value)

  -- Last Quote Msg: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_quote_msg, range, value)

  -- Last Stats Msg: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_stats_msg, range, value)

  -- Last Implied Msg: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_implied_msg, range, value)

  -- Recovery Msg: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.recovery_msg, range, value)

  -- Unused: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused, range, value)

  -- End Of Event: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.end_of_event, range, value)
end

-- Dissect: Match Event Indicator
b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect = function(buffer, offset, packet, parent)
  local size = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.match_event_indicator, range, display)

  if show.match_event_indicator then
    b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.bits(range, value, packet, element)
  end

  return offset + size, range
end

-- Trade Bust 57 Message
b3_equities_binaryumdf_sbe_v1_6.trade_bust_57_message = {}

-- Size: Trade Bust 57 Message
b3_equities_binaryumdf_sbe_v1_6.trade_bust_57_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.trading_session_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_10_padding_2.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_future_price.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_34_padding_2.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Trade Bust 57 Message
b3_equities_binaryumdf_sbe_v1_6.trade_bust_57_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust 57 Message
b3_equities_binaryumdf_sbe_v1_6.trade_bust_57_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Offset 10 Padding 2: 2 Byte
  index, offset_10_padding_2 = b3_equities_binaryumdf_sbe_v1_6.offset_10_padding_2.dissect(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6.md_future_price.dissect(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryumdf_sbe_v1_6.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Offset 34 Padding 2: 2 Byte
  index, offset_34_padding_2 = b3_equities_binaryumdf_sbe_v1_6.offset_34_padding_2.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust 57 Message
b3_equities_binaryumdf_sbe_v1_6.trade_bust_57_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_bust_57_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_bust_57_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.trade_bust_57_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.trade_bust_57_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.trade_bust_57_message.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Trades
b3_equities_binaryumdf_sbe_v1_6.number_of_trades = {}

-- Size: Number Of Trades
b3_equities_binaryumdf_sbe_v1_6.number_of_trades.size = 4

-- Display: Number Of Trades
b3_equities_binaryumdf_sbe_v1_6.number_of_trades.display = function(value)
  return "Number Of Trades: "..value
end

-- Dissect: Number Of Trades
b3_equities_binaryumdf_sbe_v1_6.number_of_trades.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.number_of_trades.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.number_of_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.number_of_trades, range, value, display)

  return offset + length, value
end

-- Net Chg Prev Day
b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day = {}

-- Size: Net Chg Prev Day
b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day.size = 8

-- Display: Net Chg Prev Day
b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Net Chg Prev Day: No Value"
  end

  return "Net Chg Prev Day: "..value
end

-- Translate: Net Chg Prev Day
b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Net Chg Prev Day
b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.net_chg_prev_day, range, value, display)

  return offset + length, value
end

-- Vwap Px
b3_equities_binaryumdf_sbe_v1_6.vwap_px = {}

-- Size: Vwap Px
b3_equities_binaryumdf_sbe_v1_6.vwap_px.size = 8

-- Display: Vwap Px
b3_equities_binaryumdf_sbe_v1_6.vwap_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Vwap Px: No Value"
  end

  return "Vwap Px: "..value
end

-- Translate: Vwap Px
b3_equities_binaryumdf_sbe_v1_6.vwap_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Vwap Px
b3_equities_binaryumdf_sbe_v1_6.vwap_px.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.vwap_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.vwap_px.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.vwap_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.vwap_px, range, value, display)

  return offset + length, value
end

-- Trade Volume
b3_equities_binaryumdf_sbe_v1_6.trade_volume = {}

-- Size: Trade Volume
b3_equities_binaryumdf_sbe_v1_6.trade_volume.size = 8

-- Display: Trade Volume
b3_equities_binaryumdf_sbe_v1_6.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
b3_equities_binaryumdf_sbe_v1_6.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.trade_volume.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Execution Statistics 56 Message
b3_equities_binaryumdf_sbe_v1_6.execution_statistics_56_message = {}

-- Size: Execution Statistics 56 Message
b3_equities_binaryumdf_sbe_v1_6.execution_statistics_56_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.trading_session_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_volume.size + 
  b3_equities_binaryumdf_sbe_v1_6.vwap_px.size + 
  b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day.size + 
  b3_equities_binaryumdf_sbe_v1_6.number_of_trades.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Execution Statistics 56 Message
b3_equities_binaryumdf_sbe_v1_6.execution_statistics_56_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Statistics 56 Message
b3_equities_binaryumdf_sbe_v1_6.execution_statistics_56_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trade Volume: 8 Byte Signed Fixed Width Integer
  index, trade_volume = b3_equities_binaryumdf_sbe_v1_6.trade_volume.dissect(buffer, index, packet, parent)

  -- Vwap Px: 8 Byte Signed Fixed Width Integer Nullable
  index, vwap_px = b3_equities_binaryumdf_sbe_v1_6.vwap_px.dissect(buffer, index, packet, parent)

  -- Net Chg Prev Day: 8 Byte Signed Fixed Width Integer Nullable
  index, net_chg_prev_day = b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day.dissect(buffer, index, packet, parent)

  -- Number Of Trades: 4 Byte Unsigned Fixed Width Integer
  index, number_of_trades = b3_equities_binaryumdf_sbe_v1_6.number_of_trades.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Statistics 56 Message
b3_equities_binaryumdf_sbe_v1_6.execution_statistics_56_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_statistics_56_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.execution_statistics_56_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.execution_statistics_56_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.execution_statistics_56_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.execution_statistics_56_message.fields(buffer, offset, packet, parent)
  end
end

-- Aggressor Time
b3_equities_binaryumdf_sbe_v1_6.aggressor_time = {}

-- Size: Aggressor Time
b3_equities_binaryumdf_sbe_v1_6.aggressor_time.size = 8

-- Display: Aggressor Time
b3_equities_binaryumdf_sbe_v1_6.aggressor_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Aggressor Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Aggressor Time
b3_equities_binaryumdf_sbe_v1_6.aggressor_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.aggressor_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.aggressor_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.aggressor_time, range, value, display)

  return offset + length, value
end

-- Cxl Qty
b3_equities_binaryumdf_sbe_v1_6.cxl_qty = {}

-- Size: Cxl Qty
b3_equities_binaryumdf_sbe_v1_6.cxl_qty.size = 8

-- Display: Cxl Qty
b3_equities_binaryumdf_sbe_v1_6.cxl_qty.display = function(value)
  return "Cxl Qty: "..value
end

-- Dissect: Cxl Qty
b3_equities_binaryumdf_sbe_v1_6.cxl_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.cxl_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.cxl_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.cxl_qty, range, value, display)

  return offset + length, value
end

-- Traded Hidden Qty
b3_equities_binaryumdf_sbe_v1_6.traded_hidden_qty = {}

-- Size: Traded Hidden Qty
b3_equities_binaryumdf_sbe_v1_6.traded_hidden_qty.size = 8

-- Display: Traded Hidden Qty
b3_equities_binaryumdf_sbe_v1_6.traded_hidden_qty.display = function(value)
  return "Traded Hidden Qty: "..value
end

-- Dissect: Traded Hidden Qty
b3_equities_binaryumdf_sbe_v1_6.traded_hidden_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.traded_hidden_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.traded_hidden_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.traded_hidden_qty, range, value, display)

  return offset + length, value
end

-- Fill Qty
b3_equities_binaryumdf_sbe_v1_6.fill_qty = {}

-- Size: Fill Qty
b3_equities_binaryumdf_sbe_v1_6.fill_qty.size = 8

-- Display: Fill Qty
b3_equities_binaryumdf_sbe_v1_6.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
b3_equities_binaryumdf_sbe_v1_6.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.fill_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Last Px
b3_equities_binaryumdf_sbe_v1_6.last_px = {}

-- Size: Last Px
b3_equities_binaryumdf_sbe_v1_6.last_px.size = 8

-- Display: Last Px
b3_equities_binaryumdf_sbe_v1_6.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
b3_equities_binaryumdf_sbe_v1_6.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
b3_equities_binaryumdf_sbe_v1_6.last_px.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.last_px.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_px, range, value, display)

  return offset + length, value
end

-- Offset 11 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1 = {}

-- Size: Offset 11 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.size = 1

-- Display: Offset 11 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.display = function(value)
  return "Offset 11 Padding 1: "..value
end

-- Dissect: Offset 11 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_11_padding_1, range, value, display)

  return offset + length, value
end

-- Aggressor Side
b3_equities_binaryumdf_sbe_v1_6.aggressor_side = {}

-- Size: Aggressor Side
b3_equities_binaryumdf_sbe_v1_6.aggressor_side.size = 1

-- Display: Aggressor Side
b3_equities_binaryumdf_sbe_v1_6.aggressor_side.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Offset 8 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_8_padding_2 = {}

-- Size: Offset 8 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_8_padding_2.size = 2

-- Display: Offset 8 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_8_padding_2.display = function(value)
  return "Offset 8 Padding 2: "..value
end

-- Dissect: Offset 8 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_8_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.offset_8_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.offset_8_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_8_padding_2, range, value, display)

  return offset + length, value
end

-- Execution Summary 55 Message
b3_equities_binaryumdf_sbe_v1_6.execution_summary_55_message = {}

-- Size: Execution Summary 55 Message
b3_equities_binaryumdf_sbe_v1_6.execution_summary_55_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_8_padding_2.size + 
  b3_equities_binaryumdf_sbe_v1_6.aggressor_side.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.size + 
  b3_equities_binaryumdf_sbe_v1_6.last_px.size + 
  b3_equities_binaryumdf_sbe_v1_6.fill_qty.size + 
  b3_equities_binaryumdf_sbe_v1_6.traded_hidden_qty.size + 
  b3_equities_binaryumdf_sbe_v1_6.cxl_qty.size + 
  b3_equities_binaryumdf_sbe_v1_6.aggressor_time.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size

-- Display: Execution Summary 55 Message
b3_equities_binaryumdf_sbe_v1_6.execution_summary_55_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Summary 55 Message
b3_equities_binaryumdf_sbe_v1_6.execution_summary_55_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Offset 8 Padding 2: 2 Byte
  index, offset_8_padding_2 = b3_equities_binaryumdf_sbe_v1_6.offset_8_padding_2.dissect(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_side = b3_equities_binaryumdf_sbe_v1_6.aggressor_side.dissect(buffer, index, packet, parent)

  -- Offset 11 Padding 1: 1 Byte
  index, offset_11_padding_1 = b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = b3_equities_binaryumdf_sbe_v1_6.last_px.dissect(buffer, index, packet, parent)

  -- Fill Qty: 8 Byte Signed Fixed Width Integer
  index, fill_qty = b3_equities_binaryumdf_sbe_v1_6.fill_qty.dissect(buffer, index, packet, parent)

  -- Traded Hidden Qty: 8 Byte Signed Fixed Width Integer
  index, traded_hidden_qty = b3_equities_binaryumdf_sbe_v1_6.traded_hidden_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Signed Fixed Width Integer
  index, cxl_qty = b3_equities_binaryumdf_sbe_v1_6.cxl_qty.dissect(buffer, index, packet, parent)

  -- Aggressor Time: 8 Byte Unsigned Fixed Width Integer
  index, aggressor_time = b3_equities_binaryumdf_sbe_v1_6.aggressor_time.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Summary 55 Message
b3_equities_binaryumdf_sbe_v1_6.execution_summary_55_message.dissect = function(buffer, offset, packet, parent)
  if show.execution_summary_55_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.execution_summary_55_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.execution_summary_55_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.execution_summary_55_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.execution_summary_55_message.fields(buffer, offset, packet, parent)
  end
end

-- Padding 3
b3_equities_binaryumdf_sbe_v1_6.padding_3 = {}

-- Size: Padding 3
b3_equities_binaryumdf_sbe_v1_6.padding_3.size = 3

-- Display: Padding 3
b3_equities_binaryumdf_sbe_v1_6.padding_3.display = function(value)
  return "Padding 3: "..value
end

-- Dissect: Padding 3
b3_equities_binaryumdf_sbe_v1_6.padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.padding_3, range, value, display)

  return offset + length, value
end

-- Trd Sub Type
b3_equities_binaryumdf_sbe_v1_6.trd_sub_type = {}

-- Size: Trd Sub Type
b3_equities_binaryumdf_sbe_v1_6.trd_sub_type.size = 1

-- Display: Trd Sub Type
b3_equities_binaryumdf_sbe_v1_6.trd_sub_type.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.trd_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.trd_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.trd_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trd_sub_type, range, value, display)

  return offset + length, value
end

-- Md Entry Interest Rate
b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate = {}

-- Size: Md Entry Interest Rate
b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate.size = 8

-- Display: Md Entry Interest Rate
b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x00000000) then
    return "Md Entry Interest Rate: No Value"
  end

  return "Md Entry Interest Rate: "..value
end

-- Translate: Md Entry Interest Rate
b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Md Entry Interest Rate
b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_interest_rate, range, value, display)

  return offset + length, value
end

-- Seller Days
b3_equities_binaryumdf_sbe_v1_6.seller_days = {}

-- Size: Seller Days
b3_equities_binaryumdf_sbe_v1_6.seller_days.size = 2

-- Display: Seller Days
b3_equities_binaryumdf_sbe_v1_6.seller_days.display = function(value)
  return "Seller Days: "..value
end

-- Dissect: Seller Days
b3_equities_binaryumdf_sbe_v1_6.seller_days.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.seller_days.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.seller_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.seller_days, range, value, display)

  return offset + length, value
end

-- Md Entry Seller
b3_equities_binaryumdf_sbe_v1_6.md_entry_seller = {}

-- Size: Md Entry Seller
b3_equities_binaryumdf_sbe_v1_6.md_entry_seller.size = 4

-- Display: Md Entry Seller
b3_equities_binaryumdf_sbe_v1_6.md_entry_seller.display = function(value)
  return "Md Entry Seller: "..value
end

-- Dissect: Md Entry Seller
b3_equities_binaryumdf_sbe_v1_6.md_entry_seller.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_entry_seller.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.md_entry_seller.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_seller, range, value, display)

  return offset + length, value
end

-- Md Entry Buyer
b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer = {}

-- Size: Md Entry Buyer
b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer.size = 4

-- Display: Md Entry Buyer
b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer.display = function(value)
  return "Md Entry Buyer: "..value
end

-- Dissect: Md Entry Buyer
b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_buyer, range, value, display)

  return offset + length, value
end

-- Trade Condition
b3_equities_binaryumdf_sbe_v1_6.trade_condition = {}

-- Size: Trade Condition
b3_equities_binaryumdf_sbe_v1_6.trade_condition.size = 2

-- Display: Trade Condition
b3_equities_binaryumdf_sbe_v1_6.trade_condition.display = function(range, value, packet, parent)
  local display = ""

  -- Is Opening Price flag set?
  if bit.band(value, 0x0001) ~= 0 then
    display = display.."Opening Price|"
  end
  -- Is Crossed flag set?
  if bit.band(value, 0x0002) ~= 0 then
    display = display.."Crossed|"
  end
  -- Is Last Trade At The Same Price flag set?
  if bit.band(value, 0x0004) ~= 0 then
    display = display.."Last Trade At The Same Price|"
  end
  -- Is Out Of Sequence flag set?
  if bit.band(value, 0x0008) ~= 0 then
    display = display.."Out Of Sequence|"
  end
  -- Is Unused Trade Condition 4 flag set?
  if bit.band(value, 0x0010) ~= 0 then
    display = display.."Unused Trade Condition 4|"
  end
  -- Is Unused Trade Condition 5 flag set?
  if bit.band(value, 0x0020) ~= 0 then
    display = display.."Unused Trade Condition 5|"
  end
  -- Is Trade On Behalf flag set?
  if bit.band(value, 0x0040) ~= 0 then
    display = display.."Trade On Behalf|"
  end
  -- Is Unused Trade Condition 7 flag set?
  if bit.band(value, 0x0080) ~= 0 then
    display = display.."Unused Trade Condition 7|"
  end
  -- Is Unused Trade Condition 8 flag set?
  if bit.band(value, 0x0100) ~= 0 then
    display = display.."Unused Trade Condition 8|"
  end
  -- Is Unused Trade Condition 9 flag set?
  if bit.band(value, 0x0200) ~= 0 then
    display = display.."Unused Trade Condition 9|"
  end
  -- Is Unused Trade Condition 10 flag set?
  if bit.band(value, 0x0400) ~= 0 then
    display = display.."Unused Trade Condition 10|"
  end
  -- Is Unused Trade Condition 11 flag set?
  if bit.band(value, 0x0800) ~= 0 then
    display = display.."Unused Trade Condition 11|"
  end
  -- Is Unused Trade Condition 12 flag set?
  if bit.band(value, 0x1000) ~= 0 then
    display = display.."Unused Trade Condition 12|"
  end
  -- Is Regular Trade flag set?
  if bit.band(value, 0x2000) ~= 0 then
    display = display.."Regular Trade|"
  end
  -- Is Block Trade flag set?
  if bit.band(value, 0x4000) ~= 0 then
    display = display.."Block Trade|"
  end
  -- Is Unused Trade Condition 15 flag set?
  if bit.band(value, 0x8000) ~= 0 then
    display = display.."Unused Trade Condition 15|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Trade Condition
b3_equities_binaryumdf_sbe_v1_6.trade_condition.bits = function(range, value, packet, parent)

  -- Opening Price: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.opening_price, range, value)

  -- Crossed: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.crossed, range, value)

  -- Last Trade At The Same Price: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_at_the_same_price, range, value)

  -- Out Of Sequence: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.out_of_sequence, range, value)

  -- Unused Trade Condition 4: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_4, range, value)

  -- Unused Trade Condition 5: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_5, range, value)

  -- Trade On Behalf: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_on_behalf, range, value)

  -- Unused Trade Condition 7: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_7, range, value)

  -- Unused Trade Condition 8: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_8, range, value)

  -- Unused Trade Condition 9: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_9, range, value)

  -- Unused Trade Condition 10: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_10, range, value)

  -- Unused Trade Condition 11: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_11, range, value)

  -- Unused Trade Condition 12: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_12, range, value)

  -- Regular Trade: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.regular_trade, range, value)

  -- Block Trade: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.block_trade, range, value)

  -- Unused Trade Condition 15: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_trade_condition_15, range, value)
end

-- Dissect: Trade Condition
b3_equities_binaryumdf_sbe_v1_6.trade_condition.dissect = function(buffer, offset, packet, parent)
  local size = b3_equities_binaryumdf_sbe_v1_6.trade_condition.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.trade_condition.display(range, value, packet, parent)
  local element = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_condition, range, display)

  if show.trade_condition then
    b3_equities_binaryumdf_sbe_v1_6.trade_condition.bits(range, value, packet, element)
  end

  return offset + size, range
end

-- Forward Trade 54 Message
b3_equities_binaryumdf_sbe_v1_6.forward_trade_54_message = {}

-- Size: Forward Trade 54 Message
b3_equities_binaryumdf_sbe_v1_6.forward_trade_54_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.trading_session_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_condition.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_future_price.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_seller.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size + 
  b3_equities_binaryumdf_sbe_v1_6.seller_days.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate.size + 
  b3_equities_binaryumdf_sbe_v1_6.trd_sub_type.size + 
  b3_equities_binaryumdf_sbe_v1_6.padding_3.size

-- Display: Forward Trade 54 Message
b3_equities_binaryumdf_sbe_v1_6.forward_trade_54_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Forward Trade 54 Message
b3_equities_binaryumdf_sbe_v1_6.forward_trade_54_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Struct of 16 fields
  index, trade_condition = b3_equities_binaryumdf_sbe_v1_6.trade_condition.dissect(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6.md_future_price.dissect(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryumdf_sbe_v1_6.trade_id.dissect(buffer, index, packet, parent)

  -- Md Entry Buyer: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_buyer = b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer.dissect(buffer, index, packet, parent)

  -- Md Entry Seller: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_seller = b3_equities_binaryumdf_sbe_v1_6.md_entry_seller.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  -- Seller Days: 2 Byte Unsigned Fixed Width Integer
  index, seller_days = b3_equities_binaryumdf_sbe_v1_6.seller_days.dissect(buffer, index, packet, parent)

  -- Md Entry Interest Rate: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_interest_rate = b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trd_sub_type = b3_equities_binaryumdf_sbe_v1_6.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = b3_equities_binaryumdf_sbe_v1_6.padding_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Forward Trade 54 Message
b3_equities_binaryumdf_sbe_v1_6.forward_trade_54_message.dissect = function(buffer, offset, packet, parent)
  if show.forward_trade_54_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.forward_trade_54_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.forward_trade_54_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.forward_trade_54_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.forward_trade_54_message.fields(buffer, offset, packet, parent)
  end
end

-- Offset 43 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_43_padding_1 = {}

-- Size: Offset 43 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_43_padding_1.size = 1

-- Display: Offset 43 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_43_padding_1.display = function(value)
  return "Offset 43 Padding 1: "..value
end

-- Dissect: Offset 43 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_43_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.offset_43_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.offset_43_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_43_padding_1, range, value, display)

  return offset + length, value
end

-- Trade 53 Message
b3_equities_binaryumdf_sbe_v1_6.trade_53_message = {}

-- Size: Trade 53 Message
b3_equities_binaryumdf_sbe_v1_6.trade_53_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.trading_session_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_condition.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_future_price.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_seller.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.trd_sub_type.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_43_padding_1.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Trade 53 Message
b3_equities_binaryumdf_sbe_v1_6.trade_53_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade 53 Message
b3_equities_binaryumdf_sbe_v1_6.trade_53_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Struct of 16 fields
  index, trade_condition = b3_equities_binaryumdf_sbe_v1_6.trade_condition.dissect(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6.md_future_price.dissect(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryumdf_sbe_v1_6.trade_id.dissect(buffer, index, packet, parent)

  -- Md Entry Buyer: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_buyer = b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer.dissect(buffer, index, packet, parent)

  -- Md Entry Seller: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_seller = b3_equities_binaryumdf_sbe_v1_6.md_entry_seller.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trd_sub_type = b3_equities_binaryumdf_sbe_v1_6.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Offset 43 Padding 1: 1 Byte
  index, offset_43_padding_1 = b3_equities_binaryumdf_sbe_v1_6.offset_43_padding_1.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade 53 Message
b3_equities_binaryumdf_sbe_v1_6.trade_53_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_53_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trade_53_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.trade_53_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.trade_53_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.trade_53_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Update Action
b3_equities_binaryumdf_sbe_v1_6.md_update_action = {}

-- Size: Md Update Action
b3_equities_binaryumdf_sbe_v1_6.md_update_action.size = 1

-- Display: Md Update Action
b3_equities_binaryumdf_sbe_v1_6.md_update_action.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.md_update_action.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_update_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.md_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Mass Delete Orders Mb O 52 Message
b3_equities_binaryumdf_sbe_v1_6.mass_delete_orders_mb_o_52_message = {}

-- Size: Mass Delete Orders Mb O 52 Message
b3_equities_binaryumdf_sbe_v1_6.mass_delete_orders_mb_o_52_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_update_action.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_type.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Mass Delete Orders Mb O 52 Message
b3_equities_binaryumdf_sbe_v1_6.mass_delete_orders_mb_o_52_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Delete Orders Mb O 52 Message
b3_equities_binaryumdf_sbe_v1_6.mass_delete_orders_mb_o_52_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 21 values
  index, md_entry_type = b3_equities_binaryumdf_sbe_v1_6.md_entry_type.dissect(buffer, index, packet, parent)

  -- Offset 11 Padding 1: 1 Byte
  index, offset_11_padding_1 = b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.dissect(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_position_no = b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Delete Orders Mb O 52 Message
b3_equities_binaryumdf_sbe_v1_6.mass_delete_orders_mb_o_52_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_delete_orders_mb_o_52_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.mass_delete_orders_mb_o_52_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.mass_delete_orders_mb_o_52_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.mass_delete_orders_mb_o_52_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.mass_delete_orders_mb_o_52_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Entry Size Quantity Optional
b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional = {}

-- Size: Md Entry Size Quantity Optional
b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional.size = 8

-- Display: Md Entry Size Quantity Optional
b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional.display = function(value)
  return "Md Entry Size Quantity Optional: "..value
end

-- Dissect: Md Entry Size Quantity Optional
b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_entry_size_quantity_optional, range, value, display)

  return offset + length, value
end

-- Offset 9 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_1 = {}

-- Size: Offset 9 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_1.size = 1

-- Display: Offset 9 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_1.display = function(value)
  return "Offset 9 Padding 1: "..value
end

-- Dissect: Offset 9 Padding 1
b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_1.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_9_padding_1, range, value, display)

  return offset + length, value
end

-- Delete Order Mb O 51 Message
b3_equities_binaryumdf_sbe_v1_6.delete_order_mb_o_51_message = {}

-- Size: Delete Order Mb O 51 Message
b3_equities_binaryumdf_sbe_v1_6.delete_order_mb_o_51_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_1.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_type.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional.size + 
  b3_equities_binaryumdf_sbe_v1_6.secondary_order_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Delete Order Mb O 51 Message
b3_equities_binaryumdf_sbe_v1_6.delete_order_mb_o_51_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Mb O 51 Message
b3_equities_binaryumdf_sbe_v1_6.delete_order_mb_o_51_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Offset 9 Padding 1: 1 Byte
  index, offset_9_padding_1 = b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_1.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 21 values
  index, md_entry_type = b3_equities_binaryumdf_sbe_v1_6.md_entry_type.dissect(buffer, index, packet, parent)

  -- Offset 11 Padding 1: 1 Byte
  index, offset_11_padding_1 = b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.dissect(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_position_no = b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.dissect(buffer, index, packet, parent)

  -- Md Entry Size Quantity Optional: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity_optional = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryumdf_sbe_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Mb O 51 Message
b3_equities_binaryumdf_sbe_v1_6.delete_order_mb_o_51_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_order_mb_o_51_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.delete_order_mb_o_51_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.delete_order_mb_o_51_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.delete_order_mb_o_51_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.delete_order_mb_o_51_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mb O 50 Message
b3_equities_binaryumdf_sbe_v1_6.order_mb_o_50_message = {}

-- Size: Order Mb O 50 Message
b3_equities_binaryumdf_sbe_v1_6.order_mb_o_50_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_update_action.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_type.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.size + 
  b3_equities_binaryumdf_sbe_v1_6.entering_firm.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_insert_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.secondary_order_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size

-- Display: Order Mb O 50 Message
b3_equities_binaryumdf_sbe_v1_6.order_mb_o_50_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mb O 50 Message
b3_equities_binaryumdf_sbe_v1_6.order_mb_o_50_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Ascii String Enum with 21 values
  index, md_entry_type = b3_equities_binaryumdf_sbe_v1_6.md_entry_type.dissect(buffer, index, packet, parent)

  -- Offset 11 Padding 1: 1 Byte
  index, offset_11_padding_1 = b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.dissect(buffer, index, packet, parent)

  -- Md Corporate Offset Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_corporate_offset_price_optional = b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.dissect(buffer, index, packet, parent)

  -- Md Entry Position No: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_position_no = b3_equities_binaryumdf_sbe_v1_6.md_entry_position_no.dissect(buffer, index, packet, parent)

  -- Entering Firm: 4 Byte Unsigned Fixed Width Integer
  index, entering_firm = b3_equities_binaryumdf_sbe_v1_6.entering_firm.dissect(buffer, index, packet, parent)

  -- Md Insert Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_insert_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_insert_timestamp.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = b3_equities_binaryumdf_sbe_v1_6.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mb O 50 Message
b3_equities_binaryumdf_sbe_v1_6.order_mb_o_50_message.dissect = function(buffer, offset, packet, parent)
  if show.order_mb_o_50_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.order_mb_o_50_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.order_mb_o_50_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.order_mb_o_50_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.order_mb_o_50_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Rpt Seq
b3_equities_binaryumdf_sbe_v1_6.last_rpt_seq = {}

-- Size: Last Rpt Seq
b3_equities_binaryumdf_sbe_v1_6.last_rpt_seq.size = 4

-- Display: Last Rpt Seq
b3_equities_binaryumdf_sbe_v1_6.last_rpt_seq.display = function(value)
  return "Last Rpt Seq: "..value
end

-- Dissect: Last Rpt Seq
b3_equities_binaryumdf_sbe_v1_6.last_rpt_seq.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.last_rpt_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.last_rpt_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_rpt_seq, range, value, display)

  return offset + length, value
end

-- Offset 26 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_26_padding_2 = {}

-- Size: Offset 26 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_26_padding_2.size = 2

-- Display: Offset 26 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_26_padding_2.display = function(value)
  return "Offset 26 Padding 2: "..value
end

-- Dissect: Offset 26 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_26_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.offset_26_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.offset_26_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_26_padding_2, range, value, display)

  return offset + length, value
end

-- Tot Num Stats
b3_equities_binaryumdf_sbe_v1_6.tot_num_stats = {}

-- Size: Tot Num Stats
b3_equities_binaryumdf_sbe_v1_6.tot_num_stats.size = 2

-- Display: Tot Num Stats
b3_equities_binaryumdf_sbe_v1_6.tot_num_stats.display = function(value)
  return "Tot Num Stats: "..value
end

-- Dissect: Tot Num Stats
b3_equities_binaryumdf_sbe_v1_6.tot_num_stats.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.tot_num_stats.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.tot_num_stats.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_stats, range, value, display)

  return offset + length, value
end

-- Tot Num Offers
b3_equities_binaryumdf_sbe_v1_6.tot_num_offers = {}

-- Size: Tot Num Offers
b3_equities_binaryumdf_sbe_v1_6.tot_num_offers.size = 4

-- Display: Tot Num Offers
b3_equities_binaryumdf_sbe_v1_6.tot_num_offers.display = function(value)
  return "Tot Num Offers: "..value
end

-- Dissect: Tot Num Offers
b3_equities_binaryumdf_sbe_v1_6.tot_num_offers.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.tot_num_offers.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.tot_num_offers.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_offers, range, value, display)

  return offset + length, value
end

-- Tot Num Bids
b3_equities_binaryumdf_sbe_v1_6.tot_num_bids = {}

-- Size: Tot Num Bids
b3_equities_binaryumdf_sbe_v1_6.tot_num_bids.size = 4

-- Display: Tot Num Bids
b3_equities_binaryumdf_sbe_v1_6.tot_num_bids.display = function(value)
  return "Tot Num Bids: "..value
end

-- Dissect: Tot Num Bids
b3_equities_binaryumdf_sbe_v1_6.tot_num_bids.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.tot_num_bids.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.tot_num_bids.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_bids, range, value, display)

  return offset + length, value
end

-- Tot Num Reports
b3_equities_binaryumdf_sbe_v1_6.tot_num_reports = {}

-- Size: Tot Num Reports
b3_equities_binaryumdf_sbe_v1_6.tot_num_reports.size = 4

-- Display: Tot Num Reports
b3_equities_binaryumdf_sbe_v1_6.tot_num_reports.display = function(value)
  return "Tot Num Reports: "..value
end

-- Dissect: Tot Num Reports
b3_equities_binaryumdf_sbe_v1_6.tot_num_reports.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.tot_num_reports.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.tot_num_reports.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.tot_num_reports, range, value, display)

  return offset + length, value
end

-- Last Msg Seq Num Processed
b3_equities_binaryumdf_sbe_v1_6.last_msg_seq_num_processed = {}

-- Size: Last Msg Seq Num Processed
b3_equities_binaryumdf_sbe_v1_6.last_msg_seq_num_processed.size = 4

-- Display: Last Msg Seq Num Processed
b3_equities_binaryumdf_sbe_v1_6.last_msg_seq_num_processed.display = function(value)
  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
b3_equities_binaryumdf_sbe_v1_6.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.last_msg_seq_num_processed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.last_msg_seq_num_processed.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Snapshot Full Refresh Header 30 Message
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_header_30_message = {}

-- Size: Snapshot Full Refresh Header 30 Message
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_header_30_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.last_msg_seq_num_processed.size + 
  b3_equities_binaryumdf_sbe_v1_6.tot_num_reports.size + 
  b3_equities_binaryumdf_sbe_v1_6.tot_num_bids.size + 
  b3_equities_binaryumdf_sbe_v1_6.tot_num_offers.size + 
  b3_equities_binaryumdf_sbe_v1_6.tot_num_stats.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_26_padding_2.size + 
  b3_equities_binaryumdf_sbe_v1_6.last_rpt_seq.size

-- Display: Snapshot Full Refresh Header 30 Message
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_header_30_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Full Refresh Header 30 Message
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_header_30_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num_processed = b3_equities_binaryumdf_sbe_v1_6.last_msg_seq_num_processed.dissect(buffer, index, packet, parent)

  -- Tot Num Reports: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_reports = b3_equities_binaryumdf_sbe_v1_6.tot_num_reports.dissect(buffer, index, packet, parent)

  -- Tot Num Bids: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_bids = b3_equities_binaryumdf_sbe_v1_6.tot_num_bids.dissect(buffer, index, packet, parent)

  -- Tot Num Offers: 4 Byte Unsigned Fixed Width Integer
  index, tot_num_offers = b3_equities_binaryumdf_sbe_v1_6.tot_num_offers.dissect(buffer, index, packet, parent)

  -- Tot Num Stats: 2 Byte Unsigned Fixed Width Integer
  index, tot_num_stats = b3_equities_binaryumdf_sbe_v1_6.tot_num_stats.dissect(buffer, index, packet, parent)

  -- Offset 26 Padding 2: 2 Byte
  index, offset_26_padding_2 = b3_equities_binaryumdf_sbe_v1_6.offset_26_padding_2.dissect(buffer, index, packet, parent)

  -- Last Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, last_rpt_seq = b3_equities_binaryumdf_sbe_v1_6.last_rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Full Refresh Header 30 Message
b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_header_30_message.dissect = function(buffer, offset, packet, parent)
  if show.snapshot_full_refresh_header_30_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.snapshot_full_refresh_header_30_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_header_30_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_header_30_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_header_30_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Trade Price 27 Message
b3_equities_binaryumdf_sbe_v1_6.last_trade_price_27_message = {}

-- Size: Last Trade Price 27 Message
b3_equities_binaryumdf_sbe_v1_6.last_trade_price_27_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.trading_session_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_condition.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_future_price.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_seller.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size + 
  b3_equities_binaryumdf_sbe_v1_6.seller_days.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate.size + 
  b3_equities_binaryumdf_sbe_v1_6.trd_sub_type.size + 
  b3_equities_binaryumdf_sbe_v1_6.padding_3.size

-- Display: Last Trade Price 27 Message
b3_equities_binaryumdf_sbe_v1_6.last_trade_price_27_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Trade Price 27 Message
b3_equities_binaryumdf_sbe_v1_6.last_trade_price_27_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Struct of 16 fields
  index, trade_condition = b3_equities_binaryumdf_sbe_v1_6.trade_condition.dissect(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6.md_future_price.dissect(buffer, index, packet, parent)

  -- Md Entry Size Quantity: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = b3_equities_binaryumdf_sbe_v1_6.trade_id.dissect(buffer, index, packet, parent)

  -- Md Entry Buyer: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_buyer = b3_equities_binaryumdf_sbe_v1_6.md_entry_buyer.dissect(buffer, index, packet, parent)

  -- Md Entry Seller: 4 Byte Unsigned Fixed Width Integer
  index, md_entry_seller = b3_equities_binaryumdf_sbe_v1_6.md_entry_seller.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  -- Seller Days: 2 Byte Unsigned Fixed Width Integer
  index, seller_days = b3_equities_binaryumdf_sbe_v1_6.seller_days.dissect(buffer, index, packet, parent)

  -- Md Entry Interest Rate: 8 Byte Signed Fixed Width Integer Nullable
  index, md_entry_interest_rate = b3_equities_binaryumdf_sbe_v1_6.md_entry_interest_rate.dissect(buffer, index, packet, parent)

  -- Trd Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, trd_sub_type = b3_equities_binaryumdf_sbe_v1_6.trd_sub_type.dissect(buffer, index, packet, parent)

  -- Padding 3: 3 Byte
  index, padding_3 = b3_equities_binaryumdf_sbe_v1_6.padding_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Trade Price 27 Message
b3_equities_binaryumdf_sbe_v1_6.last_trade_price_27_message.dissect = function(buffer, offset, packet, parent)
  if show.last_trade_price_27_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_price_27_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.last_trade_price_27_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.last_trade_price_27_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.last_trade_price_27_message.fields(buffer, offset, packet, parent)
  end
end

-- Low Price 25 Message
b3_equities_binaryumdf_sbe_v1_6.low_price_25_message = {}

-- Size: Low Price 25 Message
b3_equities_binaryumdf_sbe_v1_6.low_price_25_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_update_action.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_future_price.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Low Price 25 Message
b3_equities_binaryumdf_sbe_v1_6.low_price_25_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Low Price 25 Message
b3_equities_binaryumdf_sbe_v1_6.low_price_25_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6.md_update_action.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6.md_future_price.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Low Price 25 Message
b3_equities_binaryumdf_sbe_v1_6.low_price_25_message.dissect = function(buffer, offset, packet, parent)
  if show.low_price_25_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.low_price_25_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.low_price_25_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.low_price_25_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.low_price_25_message.fields(buffer, offset, packet, parent)
  end
end

-- High Price 24 Message
b3_equities_binaryumdf_sbe_v1_6.high_price_24_message = {}

-- Size: High Price 24 Message
b3_equities_binaryumdf_sbe_v1_6.high_price_24_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_update_action.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_future_price.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: High Price 24 Message
b3_equities_binaryumdf_sbe_v1_6.high_price_24_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Price 24 Message
b3_equities_binaryumdf_sbe_v1_6.high_price_24_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6.md_update_action.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6.md_future_price.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Price 24 Message
b3_equities_binaryumdf_sbe_v1_6.high_price_24_message.dissect = function(buffer, offset, packet, parent)
  if show.high_price_24_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.high_price_24_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.high_price_24_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.high_price_24_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.high_price_24_message.fields(buffer, offset, packet, parent)
  end
end

-- Max Trade Vol
b3_equities_binaryumdf_sbe_v1_6.max_trade_vol = {}

-- Size: Max Trade Vol
b3_equities_binaryumdf_sbe_v1_6.max_trade_vol.size = 8

-- Display: Max Trade Vol
b3_equities_binaryumdf_sbe_v1_6.max_trade_vol.display = function(value)
  return "Max Trade Vol: "..value
end

-- Dissect: Max Trade Vol
b3_equities_binaryumdf_sbe_v1_6.max_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.max_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.max_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.max_trade_vol, range, value, display)

  return offset + length, value
end

-- Avg Daily Traded Qty
b3_equities_binaryumdf_sbe_v1_6.avg_daily_traded_qty = {}

-- Size: Avg Daily Traded Qty
b3_equities_binaryumdf_sbe_v1_6.avg_daily_traded_qty.size = 8

-- Display: Avg Daily Traded Qty
b3_equities_binaryumdf_sbe_v1_6.avg_daily_traded_qty.display = function(value)
  return "Avg Daily Traded Qty: "..value
end

-- Dissect: Avg Daily Traded Qty
b3_equities_binaryumdf_sbe_v1_6.avg_daily_traded_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.avg_daily_traded_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.avg_daily_traded_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.avg_daily_traded_qty, range, value, display)

  return offset + length, value
end

-- Offset 9 Padding 3
b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_3 = {}

-- Size: Offset 9 Padding 3
b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_3.size = 3

-- Display: Offset 9 Padding 3
b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_3.display = function(value)
  return "Offset 9 Padding 3: "..value
end

-- Dissect: Offset 9 Padding 3
b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_9_padding_3, range, value, display)

  return offset + length, value
end

-- Quantity Band 21 Message
b3_equities_binaryumdf_sbe_v1_6.quantity_band_21_message = {}

-- Size: Quantity Band 21 Message
b3_equities_binaryumdf_sbe_v1_6.quantity_band_21_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_3.size + 
  b3_equities_binaryumdf_sbe_v1_6.avg_daily_traded_qty.size + 
  b3_equities_binaryumdf_sbe_v1_6.max_trade_vol.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Quantity Band 21 Message
b3_equities_binaryumdf_sbe_v1_6.quantity_band_21_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quantity Band 21 Message
b3_equities_binaryumdf_sbe_v1_6.quantity_band_21_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Offset 9 Padding 3: 3 Byte
  index, offset_9_padding_3 = b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_3.dissect(buffer, index, packet, parent)

  -- Avg Daily Traded Qty: 8 Byte Signed Fixed Width Integer
  index, avg_daily_traded_qty = b3_equities_binaryumdf_sbe_v1_6.avg_daily_traded_qty.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: 8 Byte Signed Fixed Width Integer
  index, max_trade_vol = b3_equities_binaryumdf_sbe_v1_6.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quantity Band 21 Message
b3_equities_binaryumdf_sbe_v1_6.quantity_band_21_message.dissect = function(buffer, offset, packet, parent)
  if show.quantity_band_21_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.quantity_band_21_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.quantity_band_21_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.quantity_band_21_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.quantity_band_21_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Reference Price
b3_equities_binaryumdf_sbe_v1_6.trading_reference_price = {}

-- Size: Trading Reference Price
b3_equities_binaryumdf_sbe_v1_6.trading_reference_price.size = 8

-- Display: Trading Reference Price
b3_equities_binaryumdf_sbe_v1_6.trading_reference_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Trading Reference Price: No Value"
  end

  return "Trading Reference Price: "..value
end

-- Translate: Trading Reference Price
b3_equities_binaryumdf_sbe_v1_6.trading_reference_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Trading Reference Price
b3_equities_binaryumdf_sbe_v1_6.trading_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.trading_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.trading_reference_price.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.trading_reference_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trading_reference_price, range, value, display)

  return offset + length, value
end

-- High Limit Price
b3_equities_binaryumdf_sbe_v1_6.high_limit_price = {}

-- Size: High Limit Price
b3_equities_binaryumdf_sbe_v1_6.high_limit_price.size = 8

-- Display: High Limit Price
b3_equities_binaryumdf_sbe_v1_6.high_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Translate: High Limit Price
b3_equities_binaryumdf_sbe_v1_6.high_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: High Limit Price
b3_equities_binaryumdf_sbe_v1_6.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.high_limit_price.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.high_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Low Limit Price
b3_equities_binaryumdf_sbe_v1_6.low_limit_price = {}

-- Size: Low Limit Price
b3_equities_binaryumdf_sbe_v1_6.low_limit_price.size = 8

-- Display: Low Limit Price
b3_equities_binaryumdf_sbe_v1_6.low_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
b3_equities_binaryumdf_sbe_v1_6.low_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Low Limit Price
b3_equities_binaryumdf_sbe_v1_6.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.low_limit_price.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.low_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Price Band Midpoint Price Type
b3_equities_binaryumdf_sbe_v1_6.price_band_midpoint_price_type = {}

-- Size: Price Band Midpoint Price Type
b3_equities_binaryumdf_sbe_v1_6.price_band_midpoint_price_type.size = 1

-- Display: Price Band Midpoint Price Type
b3_equities_binaryumdf_sbe_v1_6.price_band_midpoint_price_type.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.price_band_midpoint_price_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.price_band_midpoint_price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.price_band_midpoint_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_band_midpoint_price_type, range, value, display)

  return offset + length, value
end

-- Price Limit Type
b3_equities_binaryumdf_sbe_v1_6.price_limit_type = {}

-- Size: Price Limit Type
b3_equities_binaryumdf_sbe_v1_6.price_limit_type.size = 1

-- Display: Price Limit Type
b3_equities_binaryumdf_sbe_v1_6.price_limit_type.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.price_limit_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.price_limit_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.price_limit_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_limit_type, range, value, display)

  return offset + length, value
end

-- Price Band Type
b3_equities_binaryumdf_sbe_v1_6.price_band_type = {}

-- Size: Price Band Type
b3_equities_binaryumdf_sbe_v1_6.price_band_type.size = 1

-- Display: Price Band Type
b3_equities_binaryumdf_sbe_v1_6.price_band_type.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.price_band_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.price_band_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.price_band_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_band_type, range, value, display)

  return offset + length, value
end

-- Price Band 20 Message
b3_equities_binaryumdf_sbe_v1_6.price_band_20_message = {}

-- Size: Price Band 20 Message
b3_equities_binaryumdf_sbe_v1_6.price_band_20_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.price_band_type.size + 
  b3_equities_binaryumdf_sbe_v1_6.price_limit_type.size + 
  b3_equities_binaryumdf_sbe_v1_6.price_band_midpoint_price_type.size + 
  b3_equities_binaryumdf_sbe_v1_6.low_limit_price.size + 
  b3_equities_binaryumdf_sbe_v1_6.high_limit_price.size + 
  b3_equities_binaryumdf_sbe_v1_6.trading_reference_price.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Price Band 20 Message
b3_equities_binaryumdf_sbe_v1_6.price_band_20_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Band 20 Message
b3_equities_binaryumdf_sbe_v1_6.price_band_20_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Price Band Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, price_band_type = b3_equities_binaryumdf_sbe_v1_6.price_band_type.dissect(buffer, index, packet, parent)

  -- Price Limit Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_limit_type = b3_equities_binaryumdf_sbe_v1_6.price_limit_type.dissect(buffer, index, packet, parent)

  -- Price Band Midpoint Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_band_midpoint_price_type = b3_equities_binaryumdf_sbe_v1_6.price_band_midpoint_price_type.dissect(buffer, index, packet, parent)

  -- Low Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, low_limit_price = b3_equities_binaryumdf_sbe_v1_6.low_limit_price.dissect(buffer, index, packet, parent)

  -- High Limit Price: 8 Byte Signed Fixed Width Integer Nullable
  index, high_limit_price = b3_equities_binaryumdf_sbe_v1_6.high_limit_price.dissect(buffer, index, packet, parent)

  -- Trading Reference Price: 8 Byte Signed Fixed Width Integer Nullable
  index, trading_reference_price = b3_equities_binaryumdf_sbe_v1_6.trading_reference_price.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Band 20 Message
b3_equities_binaryumdf_sbe_v1_6.price_band_20_message.dissect = function(buffer, offset, packet, parent)
  if show.price_band_20_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_band_20_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.price_band_20_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.price_band_20_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.price_band_20_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Condition
b3_equities_binaryumdf_sbe_v1_6.imbalance_condition = {}

-- Size: Imbalance Condition
b3_equities_binaryumdf_sbe_v1_6.imbalance_condition.size = 2

-- Display: Imbalance Condition
b3_equities_binaryumdf_sbe_v1_6.imbalance_condition.display = function(range, value, packet, parent)
  local display = ""

  -- Is Unused Imbalance Condition 0 flag set?
  if bit.band(value, 0x0001) ~= 0 then
    display = display.."Unused Imbalance Condition 0|"
  end
  -- Is Unused Imbalance Condition 1 flag set?
  if bit.band(value, 0x0002) ~= 0 then
    display = display.."Unused Imbalance Condition 1|"
  end
  -- Is Unused Imbalance Condition 2 flag set?
  if bit.band(value, 0x0004) ~= 0 then
    display = display.."Unused Imbalance Condition 2|"
  end
  -- Is Unused Imbalance Condition 3 flag set?
  if bit.band(value, 0x0008) ~= 0 then
    display = display.."Unused Imbalance Condition 3|"
  end
  -- Is Unused Imbalance Condition 4 flag set?
  if bit.band(value, 0x0010) ~= 0 then
    display = display.."Unused Imbalance Condition 4|"
  end
  -- Is Unused Imbalance Condition 5 flag set?
  if bit.band(value, 0x0020) ~= 0 then
    display = display.."Unused Imbalance Condition 5|"
  end
  -- Is Unused Imbalance Condition 6 flag set?
  if bit.band(value, 0x0040) ~= 0 then
    display = display.."Unused Imbalance Condition 6|"
  end
  -- Is Unused Imbalance Condition 7 flag set?
  if bit.band(value, 0x0080) ~= 0 then
    display = display.."Unused Imbalance Condition 7|"
  end
  -- Is Imbalance More Buyers flag set?
  if bit.band(value, 0x0100) ~= 0 then
    display = display.."Imbalance More Buyers|"
  end
  -- Is Imbalance More Sellers flag set?
  if bit.band(value, 0x0200) ~= 0 then
    display = display.."Imbalance More Sellers|"
  end

  if display:sub(-1) == "|" then
    display = display:sub(1, -2)
  end

  return display
end

-- Dissect Bit Fields: Imbalance Condition
b3_equities_binaryumdf_sbe_v1_6.imbalance_condition.bits = function(range, value, packet, parent)

  -- Unused Imbalance Condition 0: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_0, range, value)

  -- Unused Imbalance Condition 1: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_1, range, value)

  -- Unused Imbalance Condition 2: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_2, range, value)

  -- Unused Imbalance Condition 3: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_3, range, value)

  -- Unused Imbalance Condition 4: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_4, range, value)

  -- Unused Imbalance Condition 5: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_5, range, value)

  -- Unused Imbalance Condition 6: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_6, range, value)

  -- Unused Imbalance Condition 7: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.unused_imbalance_condition_7, range, value)

  -- Imbalance More Buyers: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_more_buyers, range, value)

  -- Imbalance More Sellers: 1 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_more_sellers, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.reserved_6, range, value)
end

-- Dissect: Imbalance Condition
b3_equities_binaryumdf_sbe_v1_6.imbalance_condition.dissect = function(buffer, offset, packet, parent)
  local size = b3_equities_binaryumdf_sbe_v1_6.imbalance_condition.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.imbalance_condition.display(range, value, packet, parent)
  local element = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.imbalance_condition, range, display)

  if show.imbalance_condition then
    b3_equities_binaryumdf_sbe_v1_6.imbalance_condition.bits(range, value, packet, element)
  end

  return offset + size, range
end

-- Auction Imbalance 19 Message
b3_equities_binaryumdf_sbe_v1_6.auction_imbalance_19_message = {}

-- Size: Auction Imbalance 19 Message
b3_equities_binaryumdf_sbe_v1_6.auction_imbalance_19_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_update_action.size + 
  b3_equities_binaryumdf_sbe_v1_6.imbalance_condition.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Auction Imbalance 19 Message
b3_equities_binaryumdf_sbe_v1_6.auction_imbalance_19_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Imbalance 19 Message
b3_equities_binaryumdf_sbe_v1_6.auction_imbalance_19_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6.md_update_action.dissect(buffer, index, packet, parent)

  -- Imbalance Condition: Struct of 11 fields
  index, imbalance_condition = b3_equities_binaryumdf_sbe_v1_6.imbalance_condition.dissect(buffer, index, packet, parent)

  -- Md Entry Size Quantity Optional: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity_optional = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Imbalance 19 Message
b3_equities_binaryumdf_sbe_v1_6.auction_imbalance_19_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_imbalance_19_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.auction_imbalance_19_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.auction_imbalance_19_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.auction_imbalance_19_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.auction_imbalance_19_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Trade Date
b3_equities_binaryumdf_sbe_v1_6.last_trade_date = {}

-- Size: Last Trade Date
b3_equities_binaryumdf_sbe_v1_6.last_trade_date.size = 2

-- Display: Last Trade Date
b3_equities_binaryumdf_sbe_v1_6.last_trade_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Last Trade Date: No Value"
  end

  return "Last Trade Date: "..value
end

-- Dissect: Last Trade Date
b3_equities_binaryumdf_sbe_v1_6.last_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.last_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.last_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_trade_date, range, value, display)

  return offset + length, value
end

-- Md Corporate Price
b3_equities_binaryumdf_sbe_v1_6.md_corporate_price = {}

-- Size: Md Corporate Price
b3_equities_binaryumdf_sbe_v1_6.md_corporate_price.size = 8

-- Display: Md Corporate Price
b3_equities_binaryumdf_sbe_v1_6.md_corporate_price.display = function(value)
  return "Md Corporate Price: "..value
end

-- Translate: Md Corporate Price
b3_equities_binaryumdf_sbe_v1_6.md_corporate_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Md Corporate Price
b3_equities_binaryumdf_sbe_v1_6.md_corporate_price.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.md_corporate_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.md_corporate_price.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.md_corporate_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.md_corporate_price, range, value, display)

  return offset + length, value
end

-- Open Close Settl Flag
b3_equities_binaryumdf_sbe_v1_6.open_close_settl_flag = {}

-- Size: Open Close Settl Flag
b3_equities_binaryumdf_sbe_v1_6.open_close_settl_flag.size = 1

-- Display: Open Close Settl Flag
b3_equities_binaryumdf_sbe_v1_6.open_close_settl_flag.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.open_close_settl_flag.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.open_close_settl_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.open_close_settl_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.open_close_settl_flag, range, value, display)

  return offset + length, value
end

-- Closing Price 17 Message
b3_equities_binaryumdf_sbe_v1_6.closing_price_17_message = {}

-- Size: Closing Price 17 Message
b3_equities_binaryumdf_sbe_v1_6.closing_price_17_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.open_close_settl_flag.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_10_padding_2.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_corporate_price.size + 
  b3_equities_binaryumdf_sbe_v1_6.last_trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Closing Price 17 Message
b3_equities_binaryumdf_sbe_v1_6.closing_price_17_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Price 17 Message
b3_equities_binaryumdf_sbe_v1_6.closing_price_17_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, open_close_settl_flag = b3_equities_binaryumdf_sbe_v1_6.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Offset 10 Padding 2: 2 Byte
  index, offset_10_padding_2 = b3_equities_binaryumdf_sbe_v1_6.offset_10_padding_2.dissect(buffer, index, packet, parent)

  -- Md Corporate Price: 8 Byte Signed Fixed Width Integer
  index, md_corporate_price = b3_equities_binaryumdf_sbe_v1_6.md_corporate_price.dissect(buffer, index, packet, parent)

  -- Last Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, last_trade_date = b3_equities_binaryumdf_sbe_v1_6.last_trade_date.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Price 17 Message
b3_equities_binaryumdf_sbe_v1_6.closing_price_17_message.dissect = function(buffer, offset, packet, parent)
  if show.closing_price_17_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.closing_price_17_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.closing_price_17_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.closing_price_17_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.closing_price_17_message.fields(buffer, offset, packet, parent)
  end
end

-- Theoretical Opening Price 16 Message
b3_equities_binaryumdf_sbe_v1_6.theoretical_opening_price_16_message = {}

-- Size: Theoretical Opening Price 16 Message
b3_equities_binaryumdf_sbe_v1_6.theoretical_opening_price_16_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_update_action.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Theoretical Opening Price 16 Message
b3_equities_binaryumdf_sbe_v1_6.theoretical_opening_price_16_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Theoretical Opening Price 16 Message
b3_equities_binaryumdf_sbe_v1_6.theoretical_opening_price_16_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6.md_update_action.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Md Corporate Offset Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, md_corporate_offset_price_optional = b3_equities_binaryumdf_sbe_v1_6.md_corporate_offset_price_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Size Quantity Optional: 8 Byte Signed Fixed Width Integer
  index, md_entry_size_quantity_optional = b3_equities_binaryumdf_sbe_v1_6.md_entry_size_quantity_optional.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Theoretical Opening Price 16 Message
b3_equities_binaryumdf_sbe_v1_6.theoretical_opening_price_16_message.dissect = function(buffer, offset, packet, parent)
  if show.theoretical_opening_price_16_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.theoretical_opening_price_16_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.theoretical_opening_price_16_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.theoretical_opening_price_16_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.theoretical_opening_price_16_message.fields(buffer, offset, packet, parent)
  end
end

-- Padding 2
b3_equities_binaryumdf_sbe_v1_6.padding_2 = {}

-- Size: Padding 2
b3_equities_binaryumdf_sbe_v1_6.padding_2.size = 2

-- Display: Padding 2
b3_equities_binaryumdf_sbe_v1_6.padding_2.display = function(value)
  return "Padding 2: "..value
end

-- Dissect: Padding 2
b3_equities_binaryumdf_sbe_v1_6.padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.padding_2, range, value, display)

  return offset + length, value
end

-- Opening Price 15 Message
b3_equities_binaryumdf_sbe_v1_6.opening_price_15_message = {}

-- Size: Opening Price 15 Message
b3_equities_binaryumdf_sbe_v1_6.opening_price_15_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_update_action.size + 
  b3_equities_binaryumdf_sbe_v1_6.open_close_settl_flag.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_future_price.size + 
  b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size + 
  b3_equities_binaryumdf_sbe_v1_6.padding_2.size

-- Display: Opening Price 15 Message
b3_equities_binaryumdf_sbe_v1_6.opening_price_15_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Opening Price 15 Message
b3_equities_binaryumdf_sbe_v1_6.opening_price_15_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Md Update Action: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, md_update_action = b3_equities_binaryumdf_sbe_v1_6.md_update_action.dissect(buffer, index, packet, parent)

  -- Open Close Settl Flag: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, open_close_settl_flag = b3_equities_binaryumdf_sbe_v1_6.open_close_settl_flag.dissect(buffer, index, packet, parent)

  -- Offset 11 Padding 1: 1 Byte
  index, offset_11_padding_1 = b3_equities_binaryumdf_sbe_v1_6.offset_11_padding_1.dissect(buffer, index, packet, parent)

  -- Md Future Price: 8 Byte Signed Fixed Width Integer
  index, md_future_price = b3_equities_binaryumdf_sbe_v1_6.md_future_price.dissect(buffer, index, packet, parent)

  -- Net Chg Prev Day: 8 Byte Signed Fixed Width Integer Nullable
  index, net_chg_prev_day = b3_equities_binaryumdf_sbe_v1_6.net_chg_prev_day.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  -- Padding 2: 2 Byte
  index, padding_2 = b3_equities_binaryumdf_sbe_v1_6.padding_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Opening Price 15 Message
b3_equities_binaryumdf_sbe_v1_6.opening_price_15_message.dissect = function(buffer, offset, packet, parent)
  if show.opening_price_15_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.opening_price_15_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.opening_price_15_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.opening_price_15_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.opening_price_15_message.fields(buffer, offset, packet, parent)
  end
end

-- Offset 1 Padding 3
b3_equities_binaryumdf_sbe_v1_6.offset_1_padding_3 = {}

-- Size: Offset 1 Padding 3
b3_equities_binaryumdf_sbe_v1_6.offset_1_padding_3.size = 3

-- Display: Offset 1 Padding 3
b3_equities_binaryumdf_sbe_v1_6.offset_1_padding_3.display = function(value)
  return "Offset 1 Padding 3: "..value
end

-- Dissect: Offset 1 Padding 3
b3_equities_binaryumdf_sbe_v1_6.offset_1_padding_3.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.offset_1_padding_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.offset_1_padding_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_1_padding_3, range, value, display)

  return offset + length, value
end

-- Channel Reset 11 Message
b3_equities_binaryumdf_sbe_v1_6.channel_reset_11_message = {}

-- Size: Channel Reset 11 Message
b3_equities_binaryumdf_sbe_v1_6.channel_reset_11_message.size =
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_1_padding_3.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size

-- Display: Channel Reset 11 Message
b3_equities_binaryumdf_sbe_v1_6.channel_reset_11_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Reset 11 Message
b3_equities_binaryumdf_sbe_v1_6.channel_reset_11_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Offset 1 Padding 3: 3 Byte
  index, offset_1_padding_3 = b3_equities_binaryumdf_sbe_v1_6.offset_1_padding_3.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Reset 11 Message
b3_equities_binaryumdf_sbe_v1_6.channel_reset_11_message.dissect = function(buffer, offset, packet, parent)
  if show.channel_reset_11_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.channel_reset_11_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.channel_reset_11_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.channel_reset_11_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.channel_reset_11_message.fields(buffer, offset, packet, parent)
  end
end

-- Empty Book Message
b3_equities_binaryumdf_sbe_v1_6.empty_book_message = {}

-- Size: Empty Book Message
b3_equities_binaryumdf_sbe_v1_6.empty_book_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_3.size + 
  b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.size

-- Display: Empty Book Message
b3_equities_binaryumdf_sbe_v1_6.empty_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Empty Book Message
b3_equities_binaryumdf_sbe_v1_6.empty_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Offset 9 Padding 3: 3 Byte
  index, offset_9_padding_3 = b3_equities_binaryumdf_sbe_v1_6.offset_9_padding_3.dissect(buffer, index, packet, parent)

  -- Md Entry Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, md_entry_timestamp = b3_equities_binaryumdf_sbe_v1_6.md_entry_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Empty Book Message
b3_equities_binaryumdf_sbe_v1_6.empty_book_message.dissect = function(buffer, offset, packet, parent)
  if show.empty_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.empty_book_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.empty_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.empty_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.empty_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Url Link Data
b3_equities_binaryumdf_sbe_v1_6.url_link_data = {}

-- Display: Url Link Data
b3_equities_binaryumdf_sbe_v1_6.url_link_data.display = function(value)
  return "Url Link Data: "..value
end

-- Dissect runtime sized field: Url Link Data
b3_equities_binaryumdf_sbe_v1_6.url_link_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.url_link_data.display(value, packet, parent, size)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.url_link_data, range, value, display)

  return offset + size, value
end

-- Url Link Length
b3_equities_binaryumdf_sbe_v1_6.url_link_length = {}

-- Size: Url Link Length
b3_equities_binaryumdf_sbe_v1_6.url_link_length.size = 2

-- Display: Url Link Length
b3_equities_binaryumdf_sbe_v1_6.url_link_length.display = function(value)
  return "Url Link Length: "..value
end

-- Dissect: Url Link Length
b3_equities_binaryumdf_sbe_v1_6.url_link_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.url_link_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.url_link_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.url_link_length, range, value, display)

  return offset + length, value
end

-- Url Link
b3_equities_binaryumdf_sbe_v1_6.url_link = {}

-- Calculate size of: Url Link
b3_equities_binaryumdf_sbe_v1_6.url_link.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6.url_link_length.size

  local url_link_length = buffer(offset + index - 2, 2):le_uint()

  if url_link_length > 0 then
    -- Parse runtime size of: Url Link Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Url Link
b3_equities_binaryumdf_sbe_v1_6.url_link.display = function(buffer, offset, value, packet, parent)
  return "Url Link: "..value
end

-- Dissect Fields: Url Link
b3_equities_binaryumdf_sbe_v1_6.url_link.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Url Link Length: 2 Byte Unsigned Fixed Width Integer
  index, url_link_length = b3_equities_binaryumdf_sbe_v1_6.url_link_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Url Link Data
  local url_link_data = nil

  local url_link_data_exists = url_link_length > 0

  if url_link_data_exists then

    -- Runtime Size Of: Url Link Data
    index, url_link_data = b3_equities_binaryumdf_sbe_v1_6.url_link_data.dissect(buffer, index, packet, parent, url_link_length)
  end

  return index
end

-- Dissect: Url Link
b3_equities_binaryumdf_sbe_v1_6.url_link.dissect = function(buffer, offset, packet, parent)
  -- Optionally add element to protocol tree
  if show.url_link then
    local length = b3_equities_binaryumdf_sbe_v1_6.url_link.size(buffer, offset)
    local range = buffer(offset, length)
    local value = range:bytes():tohex(false, " ")
    local display = b3_equities_binaryumdf_sbe_v1_6.url_link.display(buffer, offset, value, packet, parent)
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.url_link, range, value, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6.url_link.fields(buffer, offset, packet, parent)
end

-- Text Data
b3_equities_binaryumdf_sbe_v1_6.text_data = {}

-- Display: Text Data
b3_equities_binaryumdf_sbe_v1_6.text_data.display = function(value)
  return "Text Data: "..value
end

-- Dissect runtime sized field: Text Data
b3_equities_binaryumdf_sbe_v1_6.text_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.text_data.display(value, packet, parent, size)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.text_data, range, value, display)

  return offset + size, value
end

-- Text Length
b3_equities_binaryumdf_sbe_v1_6.text_length = {}

-- Size: Text Length
b3_equities_binaryumdf_sbe_v1_6.text_length.size = 2

-- Display: Text Length
b3_equities_binaryumdf_sbe_v1_6.text_length.display = function(value)
  return "Text Length: "..value
end

-- Dissect: Text Length
b3_equities_binaryumdf_sbe_v1_6.text_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.text_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.text_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.text_length, range, value, display)

  return offset + length, value
end

-- Text
b3_equities_binaryumdf_sbe_v1_6.text = {}

-- Calculate size of: Text
b3_equities_binaryumdf_sbe_v1_6.text.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6.text_length.size

  local text_length = buffer(offset + index - 2, 2):le_uint()

  if text_length > 0 then
    -- Parse runtime size of: Text Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Text
b3_equities_binaryumdf_sbe_v1_6.text.display = function(buffer, offset, value, packet, parent)
  return "Text: "..value
end

-- Dissect Fields: Text
b3_equities_binaryumdf_sbe_v1_6.text.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text Length: 2 Byte Unsigned Fixed Width Integer
  index, text_length = b3_equities_binaryumdf_sbe_v1_6.text_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Text Data
  local text_data = nil

  local text_data_exists = text_length > 0

  if text_data_exists then

    -- Runtime Size Of: Text Data
    index, text_data = b3_equities_binaryumdf_sbe_v1_6.text_data.dissect(buffer, index, packet, parent, text_length)
  end

  return index
end

-- Dissect: Text
b3_equities_binaryumdf_sbe_v1_6.text.dissect = function(buffer, offset, packet, parent)
  -- Optionally add element to protocol tree
  if show.text then
    local length = b3_equities_binaryumdf_sbe_v1_6.text.size(buffer, offset)
    local range = buffer(offset, length)
    local value = range:bytes():tohex(false, " ")
    local display = b3_equities_binaryumdf_sbe_v1_6.text.display(buffer, offset, value, packet, parent)
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.text, range, value, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6.text.fields(buffer, offset, packet, parent)
end

-- Headline Data
b3_equities_binaryumdf_sbe_v1_6.headline_data = {}

-- Display: Headline Data
b3_equities_binaryumdf_sbe_v1_6.headline_data.display = function(value)
  return "Headline Data: "..value
end

-- Dissect runtime sized field: Headline Data
b3_equities_binaryumdf_sbe_v1_6.headline_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.headline_data.display(value, packet, parent, size)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.headline_data, range, value, display)

  return offset + size, value
end

-- Headline Length
b3_equities_binaryumdf_sbe_v1_6.headline_length = {}

-- Size: Headline Length
b3_equities_binaryumdf_sbe_v1_6.headline_length.size = 2

-- Display: Headline Length
b3_equities_binaryumdf_sbe_v1_6.headline_length.display = function(value)
  return "Headline Length: "..value
end

-- Dissect: Headline Length
b3_equities_binaryumdf_sbe_v1_6.headline_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.headline_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.headline_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.headline_length, range, value, display)

  return offset + length, value
end

-- Headline
b3_equities_binaryumdf_sbe_v1_6.headline = {}

-- Calculate size of: Headline
b3_equities_binaryumdf_sbe_v1_6.headline.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6.headline_length.size

  local headline_length = buffer(offset + index - 2, 2):le_uint()

  if headline_length > 0 then
    -- Parse runtime size of: Headline Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Headline
b3_equities_binaryumdf_sbe_v1_6.headline.display = function(buffer, offset, value, packet, parent)
  return "Headline: "..value
end

-- Dissect Fields: Headline
b3_equities_binaryumdf_sbe_v1_6.headline.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Headline Length: 2 Byte Unsigned Fixed Width Integer
  index, headline_length = b3_equities_binaryumdf_sbe_v1_6.headline_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Headline Data
  local headline_data = nil

  local headline_data_exists = headline_length > 0

  if headline_data_exists then

    -- Runtime Size Of: Headline Data
    index, headline_data = b3_equities_binaryumdf_sbe_v1_6.headline_data.dissect(buffer, index, packet, parent, headline_length)
  end

  return index
end

-- Dissect: Headline
b3_equities_binaryumdf_sbe_v1_6.headline.dissect = function(buffer, offset, packet, parent)
  -- Optionally add element to protocol tree
  if show.headline then
    local length = b3_equities_binaryumdf_sbe_v1_6.headline.size(buffer, offset)
    local range = buffer(offset, length)
    local value = range:bytes():tohex(false, " ")
    local display = b3_equities_binaryumdf_sbe_v1_6.headline.display(buffer, offset, value, packet, parent)
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.headline, range, value, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6.headline.fields(buffer, offset, packet, parent)
end

-- Total Text Length
b3_equities_binaryumdf_sbe_v1_6.total_text_length = {}

-- Size: Total Text Length
b3_equities_binaryumdf_sbe_v1_6.total_text_length.size = 4

-- Display: Total Text Length
b3_equities_binaryumdf_sbe_v1_6.total_text_length.display = function(value)
  return "Total Text Length: "..value
end

-- Dissect: Total Text Length
b3_equities_binaryumdf_sbe_v1_6.total_text_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.total_text_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.total_text_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.total_text_length, range, value, display)

  return offset + length, value
end

-- Orig Time
b3_equities_binaryumdf_sbe_v1_6.orig_time = {}

-- Size: Orig Time
b3_equities_binaryumdf_sbe_v1_6.orig_time.size = 8

-- Display: Orig Time
b3_equities_binaryumdf_sbe_v1_6.orig_time.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.orig_time, range, value, display)

  return offset + length, value
end

-- News Id
b3_equities_binaryumdf_sbe_v1_6.news_id = {}

-- Size: News Id
b3_equities_binaryumdf_sbe_v1_6.news_id.size = 8

-- Display: News Id
b3_equities_binaryumdf_sbe_v1_6.news_id.display = function(value)
  return "News Id: "..value
end

-- Dissect: News Id
b3_equities_binaryumdf_sbe_v1_6.news_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.news_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.news_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.news_id, range, value, display)

  return offset + length, value
end

-- Part Number
b3_equities_binaryumdf_sbe_v1_6.part_number = {}

-- Size: Part Number
b3_equities_binaryumdf_sbe_v1_6.part_number.size = 2

-- Display: Part Number
b3_equities_binaryumdf_sbe_v1_6.part_number.display = function(value)
  return "Part Number: "..value
end

-- Dissect: Part Number
b3_equities_binaryumdf_sbe_v1_6.part_number.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.part_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.part_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.part_number, range, value, display)

  return offset + length, value
end

-- Part Count
b3_equities_binaryumdf_sbe_v1_6.part_count = {}

-- Size: Part Count
b3_equities_binaryumdf_sbe_v1_6.part_count.size = 2

-- Display: Part Count
b3_equities_binaryumdf_sbe_v1_6.part_count.display = function(value)
  return "Part Count: "..value
end

-- Dissect: Part Count
b3_equities_binaryumdf_sbe_v1_6.part_count.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.part_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.part_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.part_count, range, value, display)

  return offset + length, value
end

-- Language Code
b3_equities_binaryumdf_sbe_v1_6.language_code = {}

-- Size: Language Code
b3_equities_binaryumdf_sbe_v1_6.language_code.size = 2

-- Display: Language Code
b3_equities_binaryumdf_sbe_v1_6.language_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Language Code: No Value"
  end

  return "Language Code: "..value
end

-- Dissect: Language Code
b3_equities_binaryumdf_sbe_v1_6.language_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.language_code.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.language_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.language_code, range, value, display)

  return offset + length, value
end

-- News Source
b3_equities_binaryumdf_sbe_v1_6.news_source = {}

-- Size: News Source
b3_equities_binaryumdf_sbe_v1_6.news_source.size = 1

-- Display: News Source
b3_equities_binaryumdf_sbe_v1_6.news_source.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.news_source.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.news_source.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.news_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.news_source, range, value, display)

  return offset + length, value
end

-- Security Id Optional
b3_equities_binaryumdf_sbe_v1_6.security_id_optional = {}

-- Size: Security Id Optional
b3_equities_binaryumdf_sbe_v1_6.security_id_optional.size = 8

-- Display: Security Id Optional
b3_equities_binaryumdf_sbe_v1_6.security_id_optional.display = function(value)
  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
b3_equities_binaryumdf_sbe_v1_6.security_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.security_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- News 5 Message
b3_equities_binaryumdf_sbe_v1_6.news_5_message = {}

-- Calculate size of: News 5 Message
b3_equities_binaryumdf_sbe_v1_6.news_5_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_id_optional.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.news_source.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.language_code.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.part_count.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.part_number.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.news_id.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.orig_time.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.total_text_length.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.headline.size(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6.text.size(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6.url_link.size(buffer, offset + index)

  return index
end

-- Display: News 5 Message
b3_equities_binaryumdf_sbe_v1_6.news_5_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News 5 Message
b3_equities_binaryumdf_sbe_v1_6.news_5_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id Optional: 8 Byte Unsigned Fixed Width Integer
  index, security_id_optional = b3_equities_binaryumdf_sbe_v1_6.security_id_optional.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- News Source: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, news_source = b3_equities_binaryumdf_sbe_v1_6.news_source.dissect(buffer, index, packet, parent)

  -- Language Code: 2 Byte Ascii String Nullable
  index, language_code = b3_equities_binaryumdf_sbe_v1_6.language_code.dissect(buffer, index, packet, parent)

  -- Part Count: 2 Byte Unsigned Fixed Width Integer
  index, part_count = b3_equities_binaryumdf_sbe_v1_6.part_count.dissect(buffer, index, packet, parent)

  -- Part Number: 2 Byte Unsigned Fixed Width Integer
  index, part_number = b3_equities_binaryumdf_sbe_v1_6.part_number.dissect(buffer, index, packet, parent)

  -- News Id: 8 Byte Unsigned Fixed Width Integer
  index, news_id = b3_equities_binaryumdf_sbe_v1_6.news_id.dissect(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_time = b3_equities_binaryumdf_sbe_v1_6.orig_time.dissect(buffer, index, packet, parent)

  -- Total Text Length: 4 Byte Unsigned Fixed Width Integer
  index, total_text_length = b3_equities_binaryumdf_sbe_v1_6.total_text_length.dissect(buffer, index, packet, parent)

  -- Headline: Struct of 2 fields
  index, headline = b3_equities_binaryumdf_sbe_v1_6.headline.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = b3_equities_binaryumdf_sbe_v1_6.text.dissect(buffer, index, packet, parent)

  -- Url Link: Struct of 2 fields
  index, url_link = b3_equities_binaryumdf_sbe_v1_6.url_link.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News 5 Message
b3_equities_binaryumdf_sbe_v1_6.news_5_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.news_5_message then
    local length = b3_equities_binaryumdf_sbe_v1_6.news_5_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6.news_5_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.news_5_message, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6.news_5_message.fields(buffer, offset, packet, parent)
end

-- Security Desc Data
b3_equities_binaryumdf_sbe_v1_6.security_desc_data = {}

-- Display: Security Desc Data
b3_equities_binaryumdf_sbe_v1_6.security_desc_data.display = function(value)
  return "Security Desc Data: "..value
end

-- Dissect runtime sized field: Security Desc Data
b3_equities_binaryumdf_sbe_v1_6.security_desc_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = b3_equities_binaryumdf_sbe_v1_6.security_desc_data.display(value, packet, parent, size)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_desc_data, range, value, display)

  return offset + size, value
end

-- Security Desc Length
b3_equities_binaryumdf_sbe_v1_6.security_desc_length = {}

-- Size: Security Desc Length
b3_equities_binaryumdf_sbe_v1_6.security_desc_length.size = 1

-- Display: Security Desc Length
b3_equities_binaryumdf_sbe_v1_6.security_desc_length.display = function(value)
  return "Security Desc Length: "..value
end

-- Dissect: Security Desc Length
b3_equities_binaryumdf_sbe_v1_6.security_desc_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_desc_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.security_desc_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_desc_length, range, value, display)

  return offset + length, value
end

-- Security Desc
b3_equities_binaryumdf_sbe_v1_6.security_desc = {}

-- Calculate size of: Security Desc
b3_equities_binaryumdf_sbe_v1_6.security_desc.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_desc_length.size

  local security_desc_length = buffer(offset + index - 1, 1):le_uint()

  if security_desc_length > 0 then
    -- Parse runtime size of: Security Desc Data
    index = index + buffer(offset + index - 1, 1):le_uint()

  end

  return index
end

-- Display: Security Desc
b3_equities_binaryumdf_sbe_v1_6.security_desc.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Security Desc
b3_equities_binaryumdf_sbe_v1_6.security_desc.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Desc Length: 1 Byte Unsigned Fixed Width Integer
  index, security_desc_length = b3_equities_binaryumdf_sbe_v1_6.security_desc_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Security Desc Data
  local security_desc_data = nil

  local security_desc_data_exists = security_desc_length > 0

  if security_desc_data_exists then

    -- Runtime Size Of: Security Desc Data
    index, security_desc_data = b3_equities_binaryumdf_sbe_v1_6.security_desc_data.dissect(buffer, index, packet, parent, security_desc_length)
  end

  -- Composite value
  local security_desc = security_desc_data

  return index, security_desc
end

-- Dissect: Security Desc
b3_equities_binaryumdf_sbe_v1_6.security_desc.dissect = function(buffer, offset, packet, parent)
  if show.security_desc then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_desc, buffer(offset, 0))
    local index, value = b3_equities_binaryumdf_sbe_v1_6.security_desc.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.security_desc.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.security_desc.fields(buffer, offset, packet, parent)
  end
end

-- Instr Attrib Value
b3_equities_binaryumdf_sbe_v1_6.instr_attrib_value = {}

-- Size: Instr Attrib Value
b3_equities_binaryumdf_sbe_v1_6.instr_attrib_value.size = 1

-- Display: Instr Attrib Value
b3_equities_binaryumdf_sbe_v1_6.instr_attrib_value.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.instr_attrib_value.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.instr_attrib_value.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.instr_attrib_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.instr_attrib_value, range, value, display)

  return offset + length, value
end

-- Instr Attrib Type
b3_equities_binaryumdf_sbe_v1_6.instr_attrib_type = {}

-- Size: Instr Attrib Type
b3_equities_binaryumdf_sbe_v1_6.instr_attrib_type.size = 1

-- Display: Instr Attrib Type
b3_equities_binaryumdf_sbe_v1_6.instr_attrib_type.display = function(value)
  if value == 24 then
    return "Instr Attrib Type: Trade Type Eligibility (24)"
  end
  if value == 34 then
    return "Instr Attrib Type: Gtd Gtc Eligibility (34)"
  end

  return "Instr Attrib Type: Unknown("..value..")"
end

-- Dissect: Instr Attrib Type
b3_equities_binaryumdf_sbe_v1_6.instr_attrib_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.instr_attrib_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.instr_attrib_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.instr_attrib_type, range, value, display)

  return offset + length, value
end

-- Deprecated Instr Attribs Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_group = {}

-- Size: Deprecated Instr Attribs Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_group.size =
  b3_equities_binaryumdf_sbe_v1_6.instr_attrib_type.size + 
  b3_equities_binaryumdf_sbe_v1_6.instr_attrib_value.size

-- Display: Deprecated Instr Attribs Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Deprecated Instr Attribs Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_group.fields = function(buffer, offset, packet, parent, deprecated_instr_attribs_group_index)
  local index = offset

  -- Implicit Deprecated Instr Attribs Group Index
  if deprecated_instr_attribs_group_index ~= nil then
    local iteration = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_instr_attribs_group_index, deprecated_instr_attribs_group_index)
    iteration:set_generated()
  end

  -- Instr Attrib Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, instr_attrib_type = b3_equities_binaryumdf_sbe_v1_6.instr_attrib_type.dissect(buffer, index, packet, parent)

  -- Instr Attrib Value: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, instr_attrib_value = b3_equities_binaryumdf_sbe_v1_6.instr_attrib_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Deprecated Instr Attribs Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_group.dissect = function(buffer, offset, packet, parent, deprecated_instr_attribs_group_index)
  if show.deprecated_instr_attribs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_instr_attribs_group, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_group.fields(buffer, offset, packet, parent, deprecated_instr_attribs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_group.fields(buffer, offset, packet, parent, deprecated_instr_attribs_group_index)
  end
end

-- Deprecated Instr Attribs Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_groups = {}

-- Calculate size of: Deprecated Instr Attribs Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_groups.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.size

  -- Calculate field size from count
  local deprecated_instr_attribs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + deprecated_instr_attribs_group_count * 2

  return index
end

-- Display: Deprecated Instr Attribs Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Deprecated Instr Attribs Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Deprecated Instr Attribs Group
  for deprecated_instr_attribs_group_index = 1, num_in_group do
    index, deprecated_instr_attribs_group = b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_group.dissect(buffer, index, packet, parent, deprecated_instr_attribs_group_index)
  end

  return index
end

-- Dissect: Deprecated Instr Attribs Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.deprecated_instr_attribs_groups then
    local length = b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_groups.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_instr_attribs_groups, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_groups.fields(buffer, offset, packet, parent)
end

-- Leg Symbol
b3_equities_binaryumdf_sbe_v1_6.leg_symbol = {}

-- Size: Leg Symbol
b3_equities_binaryumdf_sbe_v1_6.leg_symbol.size = 20

-- Display: Leg Symbol
b3_equities_binaryumdf_sbe_v1_6.leg_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
b3_equities_binaryumdf_sbe_v1_6.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.leg_symbol.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Leg Side
b3_equities_binaryumdf_sbe_v1_6.leg_side = {}

-- Size: Leg Side
b3_equities_binaryumdf_sbe_v1_6.leg_side.size = 1

-- Display: Leg Side
b3_equities_binaryumdf_sbe_v1_6.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
b3_equities_binaryumdf_sbe_v1_6.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Security Type
b3_equities_binaryumdf_sbe_v1_6.leg_security_type = {}

-- Size: Leg Security Type
b3_equities_binaryumdf_sbe_v1_6.leg_security_type.size = 1

-- Display: Leg Security Type
b3_equities_binaryumdf_sbe_v1_6.leg_security_type.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
b3_equities_binaryumdf_sbe_v1_6.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
b3_equities_binaryumdf_sbe_v1_6.leg_ratio_qty.size = 8

-- Display: Leg Ratio Qty
b3_equities_binaryumdf_sbe_v1_6.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Translate: Leg Ratio Qty
b3_equities_binaryumdf_sbe_v1_6.leg_ratio_qty.translate = function(raw)
  return raw:tonumber()/10000000
end

-- Dissect: Leg Ratio Qty
b3_equities_binaryumdf_sbe_v1_6.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.leg_ratio_qty.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.leg_ratio_qty.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Security Id
b3_equities_binaryumdf_sbe_v1_6.leg_security_id = {}

-- Size: Leg Security Id
b3_equities_binaryumdf_sbe_v1_6.leg_security_id.size = 8

-- Display: Leg Security Id
b3_equities_binaryumdf_sbe_v1_6.leg_security_id.display = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
b3_equities_binaryumdf_sbe_v1_6.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Deprecated Legs Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_group = {}

-- Size: Deprecated Legs Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_group.size =
  b3_equities_binaryumdf_sbe_v1_6.leg_security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.leg_ratio_qty.size + 
  b3_equities_binaryumdf_sbe_v1_6.leg_security_type.size + 
  b3_equities_binaryumdf_sbe_v1_6.leg_side.size + 
  b3_equities_binaryumdf_sbe_v1_6.leg_symbol.size

-- Display: Deprecated Legs Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Deprecated Legs Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_group.fields = function(buffer, offset, packet, parent, deprecated_legs_group_index)
  local index = offset

  -- Implicit Deprecated Legs Group Index
  if deprecated_legs_group_index ~= nil then
    local iteration = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_legs_group_index, deprecated_legs_group_index)
    iteration:set_generated()
  end

  -- Leg Security Id: 8 Byte Unsigned Fixed Width Integer
  index, leg_security_id = b3_equities_binaryumdf_sbe_v1_6.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 8 Byte Signed Fixed Width Integer
  index, leg_ratio_qty = b3_equities_binaryumdf_sbe_v1_6.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, leg_security_type = b3_equities_binaryumdf_sbe_v1_6.leg_security_type.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = b3_equities_binaryumdf_sbe_v1_6.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Symbol: 20 Byte Ascii String
  index, leg_symbol = b3_equities_binaryumdf_sbe_v1_6.leg_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Deprecated Legs Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_group.dissect = function(buffer, offset, packet, parent, deprecated_legs_group_index)
  if show.deprecated_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_legs_group, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_group.fields(buffer, offset, packet, parent, deprecated_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_group.fields(buffer, offset, packet, parent, deprecated_legs_group_index)
  end
end

-- Deprecated Legs Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_groups = {}

-- Calculate size of: Deprecated Legs Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.size

  -- Calculate field size from count
  local deprecated_legs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + deprecated_legs_group_count * 38

  return index
end

-- Display: Deprecated Legs Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Deprecated Legs Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Deprecated Legs Group
  for deprecated_legs_group_index = 1, num_in_group do
    index, deprecated_legs_group = b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_group.dissect(buffer, index, packet, parent, deprecated_legs_group_index)
  end

  return index
end

-- Dissect: Deprecated Legs Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.deprecated_legs_groups then
    local length = b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_groups.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_legs_groups, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_groups.fields(buffer, offset, packet, parent)
end

-- Underlying Symbol
b3_equities_binaryumdf_sbe_v1_6.underlying_symbol = {}

-- Size: Underlying Symbol
b3_equities_binaryumdf_sbe_v1_6.underlying_symbol.size = 20

-- Display: Underlying Symbol
b3_equities_binaryumdf_sbe_v1_6.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
b3_equities_binaryumdf_sbe_v1_6.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.underlying_symbol.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Index Theoretical Qty
b3_equities_binaryumdf_sbe_v1_6.index_theoretical_qty = {}

-- Size: Index Theoretical Qty
b3_equities_binaryumdf_sbe_v1_6.index_theoretical_qty.size = 8

-- Display: Index Theoretical Qty
b3_equities_binaryumdf_sbe_v1_6.index_theoretical_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Index Theoretical Qty: No Value"
  end

  return "Index Theoretical Qty: "..value
end

-- Translate: Index Theoretical Qty
b3_equities_binaryumdf_sbe_v1_6.index_theoretical_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Index Theoretical Qty
b3_equities_binaryumdf_sbe_v1_6.index_theoretical_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.index_theoretical_qty.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.index_theoretical_qty.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.index_theoretical_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.index_theoretical_qty, range, value, display)

  return offset + length, value
end

-- Index Pct
b3_equities_binaryumdf_sbe_v1_6.index_pct = {}

-- Size: Index Pct
b3_equities_binaryumdf_sbe_v1_6.index_pct.size = 8

-- Display: Index Pct
b3_equities_binaryumdf_sbe_v1_6.index_pct.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x00000000) then
    return "Index Pct: No Value"
  end

  return "Index Pct: "..value
end

-- Translate: Index Pct
b3_equities_binaryumdf_sbe_v1_6.index_pct.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x00000000) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Index Pct
b3_equities_binaryumdf_sbe_v1_6.index_pct.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.index_pct.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.index_pct.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.index_pct.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.index_pct, range, value, display)

  return offset + length, value
end

-- Underlying Security Id
b3_equities_binaryumdf_sbe_v1_6.underlying_security_id = {}

-- Size: Underlying Security Id
b3_equities_binaryumdf_sbe_v1_6.underlying_security_id.size = 8

-- Display: Underlying Security Id
b3_equities_binaryumdf_sbe_v1_6.underlying_security_id.display = function(value)
  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
b3_equities_binaryumdf_sbe_v1_6.underlying_security_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.underlying_security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.underlying_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.underlying_security_id, range, value, display)

  return offset + length, value
end

-- Deprecated Underlyings Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_group = {}

-- Size: Deprecated Underlyings Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_group.size =
  b3_equities_binaryumdf_sbe_v1_6.underlying_security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.index_pct.size + 
  b3_equities_binaryumdf_sbe_v1_6.index_theoretical_qty.size + 
  b3_equities_binaryumdf_sbe_v1_6.underlying_symbol.size

-- Display: Deprecated Underlyings Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Deprecated Underlyings Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_group.fields = function(buffer, offset, packet, parent, deprecated_underlyings_group_index)
  local index = offset

  -- Implicit Deprecated Underlyings Group Index
  if deprecated_underlyings_group_index ~= nil then
    local iteration = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_underlyings_group_index, deprecated_underlyings_group_index)
    iteration:set_generated()
  end

  -- Underlying Security Id: 8 Byte Unsigned Fixed Width Integer
  index, underlying_security_id = b3_equities_binaryumdf_sbe_v1_6.underlying_security_id.dissect(buffer, index, packet, parent)

  -- Index Pct: 8 Byte Signed Fixed Width Integer Nullable
  index, index_pct = b3_equities_binaryumdf_sbe_v1_6.index_pct.dissect(buffer, index, packet, parent)

  -- Index Theoretical Qty: 8 Byte Signed Fixed Width Integer Nullable
  index, index_theoretical_qty = b3_equities_binaryumdf_sbe_v1_6.index_theoretical_qty.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 20 Byte Ascii String
  index, underlying_symbol = b3_equities_binaryumdf_sbe_v1_6.underlying_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Deprecated Underlyings Group
b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_group.dissect = function(buffer, offset, packet, parent, deprecated_underlyings_group_index)
  if show.deprecated_underlyings_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_underlyings_group, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_group.fields(buffer, offset, packet, parent, deprecated_underlyings_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_group.fields(buffer, offset, packet, parent, deprecated_underlyings_group_index)
  end
end

-- Deprecated Underlyings Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_groups = {}

-- Calculate size of: Deprecated Underlyings Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_groups.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.size

  -- Calculate field size from count
  local deprecated_underlyings_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + deprecated_underlyings_group_count * 44

  return index
end

-- Display: Deprecated Underlyings Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Deprecated Underlyings Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = b3_equities_binaryumdf_sbe_v1_6.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Deprecated Underlyings Group
  for deprecated_underlyings_group_index = 1, num_in_group do
    index, deprecated_underlyings_group = b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_group.dissect(buffer, index, packet, parent, deprecated_underlyings_group_index)
  end

  return index
end

-- Dissect: Deprecated Underlyings Groups
b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.deprecated_underlyings_groups then
    local length = b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_groups.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_underlyings_groups, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_groups.fields(buffer, offset, packet, parent)
end

-- Min Cross Qty
b3_equities_binaryumdf_sbe_v1_6.min_cross_qty = {}

-- Size: Min Cross Qty
b3_equities_binaryumdf_sbe_v1_6.min_cross_qty.size = 8

-- Display: Min Cross Qty
b3_equities_binaryumdf_sbe_v1_6.min_cross_qty.display = function(value)
  return "Min Cross Qty: "..value
end

-- Dissect: Min Cross Qty
b3_equities_binaryumdf_sbe_v1_6.min_cross_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.min_cross_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.min_cross_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.min_cross_qty, range, value, display)

  return offset + length, value
end

-- Multi Leg Price Method
b3_equities_binaryumdf_sbe_v1_6.multi_leg_price_method = {}

-- Size: Multi Leg Price Method
b3_equities_binaryumdf_sbe_v1_6.multi_leg_price_method.size = 1

-- Display: Multi Leg Price Method
b3_equities_binaryumdf_sbe_v1_6.multi_leg_price_method.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.multi_leg_price_method.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.multi_leg_price_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.multi_leg_price_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.multi_leg_price_method, range, value, display)

  return offset + length, value
end

-- Multi Leg Model
b3_equities_binaryumdf_sbe_v1_6.multi_leg_model = {}

-- Size: Multi Leg Model
b3_equities_binaryumdf_sbe_v1_6.multi_leg_model.size = 1

-- Display: Multi Leg Model
b3_equities_binaryumdf_sbe_v1_6.multi_leg_model.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.multi_leg_model.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.multi_leg_model.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.multi_leg_model.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.multi_leg_model, range, value, display)

  return offset + length, value
end

-- Last Fragment
b3_equities_binaryumdf_sbe_v1_6.last_fragment = {}

-- Size: Last Fragment
b3_equities_binaryumdf_sbe_v1_6.last_fragment.size = 1

-- Display: Last Fragment
b3_equities_binaryumdf_sbe_v1_6.last_fragment.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.last_fragment.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Security Match Type
b3_equities_binaryumdf_sbe_v1_6.security_match_type = {}

-- Size: Security Match Type
b3_equities_binaryumdf_sbe_v1_6.security_match_type.size = 1

-- Display: Security Match Type
b3_equities_binaryumdf_sbe_v1_6.security_match_type.display = function(value)
  if value == 8 then
    return "Security Match Type: Issuing Buy Back Auction (8)"
  end
  if value == 255 then
    return "Security Match Type: No Value"
  end

  return "Security Match Type: Unknown("..value..")"
end

-- Dissect: Security Match Type
b3_equities_binaryumdf_sbe_v1_6.security_match_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_match_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.security_match_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_match_type, range, value, display)

  return offset + length, value
end

-- Governance Indicator
b3_equities_binaryumdf_sbe_v1_6.governance_indicator = {}

-- Size: Governance Indicator
b3_equities_binaryumdf_sbe_v1_6.governance_indicator.size = 1

-- Display: Governance Indicator
b3_equities_binaryumdf_sbe_v1_6.governance_indicator.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.governance_indicator.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.governance_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.governance_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.governance_indicator, range, value, display)

  return offset + length, value
end

-- Market Segment Id
b3_equities_binaryumdf_sbe_v1_6.market_segment_id = {}

-- Size: Market Segment Id
b3_equities_binaryumdf_sbe_v1_6.market_segment_id.size = 1

-- Display: Market Segment Id
b3_equities_binaryumdf_sbe_v1_6.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
b3_equities_binaryumdf_sbe_v1_6.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Price Type
b3_equities_binaryumdf_sbe_v1_6.price_type = {}

-- Size: Price Type
b3_equities_binaryumdf_sbe_v1_6.price_type.size = 1

-- Display: Price Type
b3_equities_binaryumdf_sbe_v1_6.price_type.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.price_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_type, range, value, display)

  return offset + length, value
end

-- Put Or Call
b3_equities_binaryumdf_sbe_v1_6.put_or_call = {}

-- Size: Put Or Call
b3_equities_binaryumdf_sbe_v1_6.put_or_call.size = 1

-- Display: Put Or Call
b3_equities_binaryumdf_sbe_v1_6.put_or_call.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Exercise Style
b3_equities_binaryumdf_sbe_v1_6.exercise_style = {}

-- Size: Exercise Style
b3_equities_binaryumdf_sbe_v1_6.exercise_style.size = 1

-- Display: Exercise Style
b3_equities_binaryumdf_sbe_v1_6.exercise_style.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.exercise_style.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Product
b3_equities_binaryumdf_sbe_v1_6.product = {}

-- Size: Product
b3_equities_binaryumdf_sbe_v1_6.product.size = 1

-- Display: Product
b3_equities_binaryumdf_sbe_v1_6.product.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.product.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.product.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.product.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.product, range, value, display)

  return offset + length, value
end

-- Tick Size Denominator
b3_equities_binaryumdf_sbe_v1_6.tick_size_denominator = {}

-- Size: Tick Size Denominator
b3_equities_binaryumdf_sbe_v1_6.tick_size_denominator.size = 1

-- Display: Tick Size Denominator
b3_equities_binaryumdf_sbe_v1_6.tick_size_denominator.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Tick Size Denominator: No Value"
  end

  return "Tick Size Denominator: "..value
end

-- Dissect: Tick Size Denominator
b3_equities_binaryumdf_sbe_v1_6.tick_size_denominator.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.tick_size_denominator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.tick_size_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.tick_size_denominator, range, value, display)

  return offset + length, value
end

-- Lot Type
b3_equities_binaryumdf_sbe_v1_6.lot_type = {}

-- Size: Lot Type
b3_equities_binaryumdf_sbe_v1_6.lot_type.size = 1

-- Display: Lot Type
b3_equities_binaryumdf_sbe_v1_6.lot_type.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.lot_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Security Strategy Type
b3_equities_binaryumdf_sbe_v1_6.security_strategy_type = {}

-- Size: Security Strategy Type
b3_equities_binaryumdf_sbe_v1_6.security_strategy_type.size = 3

-- Display: Security Strategy Type
b3_equities_binaryumdf_sbe_v1_6.security_strategy_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Strategy Type: No Value"
  end

  return "Security Strategy Type: "..value
end

-- Dissect: Security Strategy Type
b3_equities_binaryumdf_sbe_v1_6.security_strategy_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_strategy_type.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.security_strategy_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_strategy_type, range, value, display)

  return offset + length, value
end

-- Settl Currency
b3_equities_binaryumdf_sbe_v1_6.settl_currency = {}

-- Size: Settl Currency
b3_equities_binaryumdf_sbe_v1_6.settl_currency.size = 3

-- Display: Settl Currency
b3_equities_binaryumdf_sbe_v1_6.settl_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settl Currency: No Value"
  end

  return "Settl Currency: "..value
end

-- Dissect: Settl Currency
b3_equities_binaryumdf_sbe_v1_6.settl_currency.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.settl_currency.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.settl_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.settl_currency, range, value, display)

  return offset + length, value
end

-- Strike Currency
b3_equities_binaryumdf_sbe_v1_6.strike_currency = {}

-- Size: Strike Currency
b3_equities_binaryumdf_sbe_v1_6.strike_currency.size = 3

-- Display: Strike Currency
b3_equities_binaryumdf_sbe_v1_6.strike_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Currency: No Value"
  end

  return "Strike Currency: "..value
end

-- Dissect: Strike Currency
b3_equities_binaryumdf_sbe_v1_6.strike_currency.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.strike_currency.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.strike_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.strike_currency, range, value, display)

  return offset + length, value
end

-- Currency
b3_equities_binaryumdf_sbe_v1_6.currency = {}

-- Size: Currency
b3_equities_binaryumdf_sbe_v1_6.currency.size = 3

-- Display: Currency
b3_equities_binaryumdf_sbe_v1_6.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
b3_equities_binaryumdf_sbe_v1_6.currency.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.currency.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.currency, range, value, display)

  return offset + length, value
end

-- Week
b3_equities_binaryumdf_sbe_v1_6.week = {}

-- Size: Week
b3_equities_binaryumdf_sbe_v1_6.week.size = 1

-- Display: Week
b3_equities_binaryumdf_sbe_v1_6.week.display = function(value)
  return "Week: "..value
end

-- Dissect: Week
b3_equities_binaryumdf_sbe_v1_6.week.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.week.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.week.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.week, range, value, display)

  return offset + length, value
end

-- Day
b3_equities_binaryumdf_sbe_v1_6.day = {}

-- Size: Day
b3_equities_binaryumdf_sbe_v1_6.day.size = 1

-- Display: Day
b3_equities_binaryumdf_sbe_v1_6.day.display = function(value)
  return "Day: "..value
end

-- Dissect: Day
b3_equities_binaryumdf_sbe_v1_6.day.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.day.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.day, range, value, display)

  return offset + length, value
end

-- Month
b3_equities_binaryumdf_sbe_v1_6.month = {}

-- Size: Month
b3_equities_binaryumdf_sbe_v1_6.month.size = 1

-- Display: Month
b3_equities_binaryumdf_sbe_v1_6.month.display = function(value)
  return "Month: "..value
end

-- Dissect: Month
b3_equities_binaryumdf_sbe_v1_6.month.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.month.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.month, range, value, display)

  return offset + length, value
end

-- Year
b3_equities_binaryumdf_sbe_v1_6.year = {}

-- Size: Year
b3_equities_binaryumdf_sbe_v1_6.year.size = 2

-- Display: Year
b3_equities_binaryumdf_sbe_v1_6.year.display = function(value)
  return "Year: "..value
end

-- Dissect: Year
b3_equities_binaryumdf_sbe_v1_6.year.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.year.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.year, range, value, display)

  return offset + length, value
end

-- Contract Settl Month
b3_equities_binaryumdf_sbe_v1_6.contract_settl_month = {}

-- Size: Contract Settl Month
b3_equities_binaryumdf_sbe_v1_6.contract_settl_month.size =
  b3_equities_binaryumdf_sbe_v1_6.year.size + 
  b3_equities_binaryumdf_sbe_v1_6.month.size + 
  b3_equities_binaryumdf_sbe_v1_6.day.size + 
  b3_equities_binaryumdf_sbe_v1_6.week.size

-- Display: Contract Settl Month
b3_equities_binaryumdf_sbe_v1_6.contract_settl_month.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Settl Month
b3_equities_binaryumdf_sbe_v1_6.contract_settl_month.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer
  index, year = b3_equities_binaryumdf_sbe_v1_6.year.dissect(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer
  index, month = b3_equities_binaryumdf_sbe_v1_6.month.dissect(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer
  index, day = b3_equities_binaryumdf_sbe_v1_6.day.dissect(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer
  index, week = b3_equities_binaryumdf_sbe_v1_6.week.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Settl Month
b3_equities_binaryumdf_sbe_v1_6.contract_settl_month.dissect = function(buffer, offset, packet, parent)
  if show.contract_settl_month then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.contract_settl_month, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.contract_settl_month.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.contract_settl_month.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.contract_settl_month.fields(buffer, offset, packet, parent)
  end
end

-- Maturity Month Year
b3_equities_binaryumdf_sbe_v1_6.maturity_month_year = {}

-- Size: Maturity Month Year
b3_equities_binaryumdf_sbe_v1_6.maturity_month_year.size =
  b3_equities_binaryumdf_sbe_v1_6.year.size + 
  b3_equities_binaryumdf_sbe_v1_6.month.size + 
  b3_equities_binaryumdf_sbe_v1_6.day.size + 
  b3_equities_binaryumdf_sbe_v1_6.week.size

-- Display: Maturity Month Year
b3_equities_binaryumdf_sbe_v1_6.maturity_month_year.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maturity Month Year
b3_equities_binaryumdf_sbe_v1_6.maturity_month_year.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer
  index, year = b3_equities_binaryumdf_sbe_v1_6.year.dissect(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer
  index, month = b3_equities_binaryumdf_sbe_v1_6.month.dissect(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer
  index, day = b3_equities_binaryumdf_sbe_v1_6.day.dissect(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer
  index, week = b3_equities_binaryumdf_sbe_v1_6.week.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
b3_equities_binaryumdf_sbe_v1_6.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  if show.maturity_month_year then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.maturity_month_year, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.maturity_month_year.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.maturity_month_year.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.maturity_month_year.fields(buffer, offset, packet, parent)
  end
end

-- Cfi Code
b3_equities_binaryumdf_sbe_v1_6.cfi_code = {}

-- Size: Cfi Code
b3_equities_binaryumdf_sbe_v1_6.cfi_code.size = 6

-- Display: Cfi Code
b3_equities_binaryumdf_sbe_v1_6.cfi_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
b3_equities_binaryumdf_sbe_v1_6.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.cfi_code.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Asset
b3_equities_binaryumdf_sbe_v1_6.asset = {}

-- Size: Asset
b3_equities_binaryumdf_sbe_v1_6.asset.size = 6

-- Display: Asset
b3_equities_binaryumdf_sbe_v1_6.asset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Asset: No Value"
  end

  return "Asset: "..value
end

-- Dissect: Asset
b3_equities_binaryumdf_sbe_v1_6.asset.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.asset.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.asset, range, value, display)

  return offset + length, value
end

-- Isin Number
b3_equities_binaryumdf_sbe_v1_6.isin_number = {}

-- Size: Isin Number
b3_equities_binaryumdf_sbe_v1_6.isin_number.size = 12

-- Display: Isin Number
b3_equities_binaryumdf_sbe_v1_6.isin_number.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin Number: No Value"
  end

  return "Isin Number: "..value
end

-- Dissect: Isin Number
b3_equities_binaryumdf_sbe_v1_6.isin_number.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.isin_number.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.isin_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.isin_number, range, value, display)

  return offset + length, value
end

-- Dated Date
b3_equities_binaryumdf_sbe_v1_6.dated_date = {}

-- Size: Dated Date
b3_equities_binaryumdf_sbe_v1_6.dated_date.size = 4

-- Display: Dated Date
b3_equities_binaryumdf_sbe_v1_6.dated_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Dated Date: No Value"
  end

  return "Dated Date: "..value
end

-- Dissect: Dated Date
b3_equities_binaryumdf_sbe_v1_6.dated_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.dated_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6.dated_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.dated_date, range, value, display)

  return offset + length, value
end

-- Settl Date
b3_equities_binaryumdf_sbe_v1_6.settl_date = {}

-- Size: Settl Date
b3_equities_binaryumdf_sbe_v1_6.settl_date.size = 4

-- Display: Settl Date
b3_equities_binaryumdf_sbe_v1_6.settl_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Settl Date: No Value"
  end

  return "Settl Date: "..value
end

-- Dissect: Settl Date
b3_equities_binaryumdf_sbe_v1_6.settl_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.settl_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6.settl_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Settl Type
b3_equities_binaryumdf_sbe_v1_6.settl_type = {}

-- Size: Settl Type
b3_equities_binaryumdf_sbe_v1_6.settl_type.size = 2

-- Display: Settl Type
b3_equities_binaryumdf_sbe_v1_6.settl_type.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Settl Type: No Value"
  end

  return "Settl Type: "..value
end

-- Dissect: Settl Type
b3_equities_binaryumdf_sbe_v1_6.settl_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.settl_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.settl_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.settl_type, range, value, display)

  return offset + length, value
end

-- End Date
b3_equities_binaryumdf_sbe_v1_6.end_date = {}

-- Size: End Date
b3_equities_binaryumdf_sbe_v1_6.end_date.size = 4

-- Display: End Date
b3_equities_binaryumdf_sbe_v1_6.end_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "End Date: No Value"
  end

  return "End Date: "..value
end

-- Dissect: End Date
b3_equities_binaryumdf_sbe_v1_6.end_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.end_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6.end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.end_date, range, value, display)

  return offset + length, value
end

-- Start Date
b3_equities_binaryumdf_sbe_v1_6.start_date = {}

-- Size: Start Date
b3_equities_binaryumdf_sbe_v1_6.start_date.size = 4

-- Display: Start Date
b3_equities_binaryumdf_sbe_v1_6.start_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Start Date: No Value"
  end

  return "Start Date: "..value
end

-- Dissect: Start Date
b3_equities_binaryumdf_sbe_v1_6.start_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.start_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6.start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.start_date, range, value, display)

  return offset + length, value
end

-- Country Of Issue
b3_equities_binaryumdf_sbe_v1_6.country_of_issue = {}

-- Size: Country Of Issue
b3_equities_binaryumdf_sbe_v1_6.country_of_issue.size = 2

-- Display: Country Of Issue
b3_equities_binaryumdf_sbe_v1_6.country_of_issue.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Country Of Issue: No Value"
  end

  return "Country Of Issue: "..value
end

-- Dissect: Country Of Issue
b3_equities_binaryumdf_sbe_v1_6.country_of_issue.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.country_of_issue.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.country_of_issue.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.country_of_issue, range, value, display)

  return offset + length, value
end

-- Maturity Date
b3_equities_binaryumdf_sbe_v1_6.maturity_date = {}

-- Size: Maturity Date
b3_equities_binaryumdf_sbe_v1_6.maturity_date.size = 4

-- Display: Maturity Date
b3_equities_binaryumdf_sbe_v1_6.maturity_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
b3_equities_binaryumdf_sbe_v1_6.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Issue Date
b3_equities_binaryumdf_sbe_v1_6.issue_date = {}

-- Size: Issue Date
b3_equities_binaryumdf_sbe_v1_6.issue_date.size = 4

-- Display: Issue Date
b3_equities_binaryumdf_sbe_v1_6.issue_date.display = function(value)
  return "Issue Date: "..value
end

-- Dissect: Issue Date
b3_equities_binaryumdf_sbe_v1_6.issue_date.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.issue_date.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = b3_equities_binaryumdf_sbe_v1_6.issue_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.issue_date, range, value, display)

  return offset + length, value
end

-- Corporate Action Event Id
b3_equities_binaryumdf_sbe_v1_6.corporate_action_event_id = {}

-- Size: Corporate Action Event Id
b3_equities_binaryumdf_sbe_v1_6.corporate_action_event_id.size = 4

-- Display: Corporate Action Event Id
b3_equities_binaryumdf_sbe_v1_6.corporate_action_event_id.display = function(value)
  return "Corporate Action Event Id: "..value
end

-- Dissect: Corporate Action Event Id
b3_equities_binaryumdf_sbe_v1_6.corporate_action_event_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.corporate_action_event_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.corporate_action_event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.corporate_action_event_id, range, value, display)

  return offset + length, value
end

-- Min Trade Vol
b3_equities_binaryumdf_sbe_v1_6.min_trade_vol = {}

-- Size: Min Trade Vol
b3_equities_binaryumdf_sbe_v1_6.min_trade_vol.size = 8

-- Display: Min Trade Vol
b3_equities_binaryumdf_sbe_v1_6.min_trade_vol.display = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
b3_equities_binaryumdf_sbe_v1_6.min_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.min_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.min_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Min Lot Size
b3_equities_binaryumdf_sbe_v1_6.min_lot_size = {}

-- Size: Min Lot Size
b3_equities_binaryumdf_sbe_v1_6.min_lot_size.size = 8

-- Display: Min Lot Size
b3_equities_binaryumdf_sbe_v1_6.min_lot_size.display = function(value)
  return "Min Lot Size: "..value
end

-- Dissect: Min Lot Size
b3_equities_binaryumdf_sbe_v1_6.min_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.min_lot_size.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.min_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.min_lot_size, range, value, display)

  return offset + length, value
end

-- Max Order Qty
b3_equities_binaryumdf_sbe_v1_6.max_order_qty = {}

-- Size: Max Order Qty
b3_equities_binaryumdf_sbe_v1_6.max_order_qty.size = 8

-- Display: Max Order Qty
b3_equities_binaryumdf_sbe_v1_6.max_order_qty.display = function(value)
  return "Max Order Qty: "..value
end

-- Dissect: Max Order Qty
b3_equities_binaryumdf_sbe_v1_6.max_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.max_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.max_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.max_order_qty, range, value, display)

  return offset + length, value
end

-- Min Order Qty
b3_equities_binaryumdf_sbe_v1_6.min_order_qty = {}

-- Size: Min Order Qty
b3_equities_binaryumdf_sbe_v1_6.min_order_qty.size = 8

-- Display: Min Order Qty
b3_equities_binaryumdf_sbe_v1_6.min_order_qty.display = function(value)
  return "Min Order Qty: "..value
end

-- Dissect: Min Order Qty
b3_equities_binaryumdf_sbe_v1_6.min_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.min_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.min_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.min_order_qty, range, value, display)

  return offset + length, value
end

-- Clearing House Id
b3_equities_binaryumdf_sbe_v1_6.clearing_house_id = {}

-- Size: Clearing House Id
b3_equities_binaryumdf_sbe_v1_6.clearing_house_id.size = 8

-- Display: Clearing House Id
b3_equities_binaryumdf_sbe_v1_6.clearing_house_id.display = function(value)
  return "Clearing House Id: "..value
end

-- Dissect: Clearing House Id
b3_equities_binaryumdf_sbe_v1_6.clearing_house_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.clearing_house_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.clearing_house_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.clearing_house_id, range, value, display)

  return offset + length, value
end

-- No Shares Issued
b3_equities_binaryumdf_sbe_v1_6.no_shares_issued = {}

-- Size: No Shares Issued
b3_equities_binaryumdf_sbe_v1_6.no_shares_issued.size = 8

-- Display: No Shares Issued
b3_equities_binaryumdf_sbe_v1_6.no_shares_issued.display = function(value)
  return "No Shares Issued: "..value
end

-- Dissect: No Shares Issued
b3_equities_binaryumdf_sbe_v1_6.no_shares_issued.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.no_shares_issued.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.no_shares_issued.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.no_shares_issued, range, value, display)

  return offset + length, value
end

-- Security Validity Timestamp
b3_equities_binaryumdf_sbe_v1_6.security_validity_timestamp = {}

-- Size: Security Validity Timestamp
b3_equities_binaryumdf_sbe_v1_6.security_validity_timestamp.size = 8

-- Display: Security Validity Timestamp
b3_equities_binaryumdf_sbe_v1_6.security_validity_timestamp.display = function(value)
  return "Security Validity Timestamp: "..value
end

-- Dissect: Security Validity Timestamp
b3_equities_binaryumdf_sbe_v1_6.security_validity_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_validity_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = b3_equities_binaryumdf_sbe_v1_6.security_validity_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_validity_timestamp, range, value, display)

  return offset + length, value
end

-- Price Divisor
b3_equities_binaryumdf_sbe_v1_6.price_divisor = {}

-- Size: Price Divisor
b3_equities_binaryumdf_sbe_v1_6.price_divisor.size = 8

-- Display: Price Divisor
b3_equities_binaryumdf_sbe_v1_6.price_divisor.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price Divisor: No Value"
  end

  return "Price Divisor: "..value
end

-- Translate: Price Divisor
b3_equities_binaryumdf_sbe_v1_6.price_divisor.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price Divisor
b3_equities_binaryumdf_sbe_v1_6.price_divisor.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.price_divisor.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.price_divisor.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.price_divisor.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.price_divisor, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
b3_equities_binaryumdf_sbe_v1_6.contract_multiplier = {}

-- Size: Contract Multiplier
b3_equities_binaryumdf_sbe_v1_6.contract_multiplier.size = 8

-- Display: Contract Multiplier
b3_equities_binaryumdf_sbe_v1_6.contract_multiplier.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Translate: Contract Multiplier
b3_equities_binaryumdf_sbe_v1_6.contract_multiplier.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Contract Multiplier
b3_equities_binaryumdf_sbe_v1_6.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.contract_multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.contract_multiplier.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.contract_multiplier.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Strike Price
b3_equities_binaryumdf_sbe_v1_6.strike_price = {}

-- Size: Strike Price
b3_equities_binaryumdf_sbe_v1_6.strike_price.size = 8

-- Display: Strike Price
b3_equities_binaryumdf_sbe_v1_6.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
b3_equities_binaryumdf_sbe_v1_6.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Strike Price
b3_equities_binaryumdf_sbe_v1_6.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.strike_price.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Min Price Increment
b3_equities_binaryumdf_sbe_v1_6.min_price_increment = {}

-- Size: Min Price Increment
b3_equities_binaryumdf_sbe_v1_6.min_price_increment.size = 8

-- Display: Min Price Increment
b3_equities_binaryumdf_sbe_v1_6.min_price_increment.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
b3_equities_binaryumdf_sbe_v1_6.min_price_increment.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Min Price Increment
b3_equities_binaryumdf_sbe_v1_6.min_price_increment.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.min_price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = b3_equities_binaryumdf_sbe_v1_6.min_price_increment.translate(raw)
  local display = b3_equities_binaryumdf_sbe_v1_6.min_price_increment.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Tot No Related Sym
b3_equities_binaryumdf_sbe_v1_6.tot_no_related_sym = {}

-- Size: Tot No Related Sym
b3_equities_binaryumdf_sbe_v1_6.tot_no_related_sym.size = 4

-- Display: Tot No Related Sym
b3_equities_binaryumdf_sbe_v1_6.tot_no_related_sym.display = function(value)
  return "Tot No Related Sym: "..value
end

-- Dissect: Tot No Related Sym
b3_equities_binaryumdf_sbe_v1_6.tot_no_related_sym.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.tot_no_related_sym.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.tot_no_related_sym.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.tot_no_related_sym, range, value, display)

  return offset + length, value
end

-- Security Sub Type
b3_equities_binaryumdf_sbe_v1_6.security_sub_type = {}

-- Size: Security Sub Type
b3_equities_binaryumdf_sbe_v1_6.security_sub_type.size = 2

-- Display: Security Sub Type
b3_equities_binaryumdf_sbe_v1_6.security_sub_type.display = function(value)
  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
b3_equities_binaryumdf_sbe_v1_6.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Security Type
b3_equities_binaryumdf_sbe_v1_6.security_type = {}

-- Size: Security Type
b3_equities_binaryumdf_sbe_v1_6.security_type.size = 1

-- Display: Security Type
b3_equities_binaryumdf_sbe_v1_6.security_type.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.security_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_type, range, value, display)

  return offset + length, value
end

-- Security Update Action
b3_equities_binaryumdf_sbe_v1_6.security_update_action = {}

-- Size: Security Update Action
b3_equities_binaryumdf_sbe_v1_6.security_update_action.size = 1

-- Display: Security Update Action
b3_equities_binaryumdf_sbe_v1_6.security_update_action.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.security_update_action.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_update_action.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryumdf_sbe_v1_6.security_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_update_action, range, value, display)

  return offset + length, value
end

-- Symbol
b3_equities_binaryumdf_sbe_v1_6.symbol = {}

-- Size: Symbol
b3_equities_binaryumdf_sbe_v1_6.symbol.size = 20

-- Display: Symbol
b3_equities_binaryumdf_sbe_v1_6.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
b3_equities_binaryumdf_sbe_v1_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.symbol.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Security Group
b3_equities_binaryumdf_sbe_v1_6.security_group = {}

-- Size: Security Group
b3_equities_binaryumdf_sbe_v1_6.security_group.size = 3

-- Display: Security Group
b3_equities_binaryumdf_sbe_v1_6.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
b3_equities_binaryumdf_sbe_v1_6.security_group.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_group.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_group, range, value, display)

  return offset + length, value
end

-- Security Id Source
b3_equities_binaryumdf_sbe_v1_6.security_id_source = {}

-- Size: Security Id Source
b3_equities_binaryumdf_sbe_v1_6.security_id_source.size = 1

-- Display: Security Id Source
b3_equities_binaryumdf_sbe_v1_6.security_id_source.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.security_id_source.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = b3_equities_binaryumdf_sbe_v1_6.security_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_id_source, range, value, display)

  return offset + length, value
end

-- Security Exchange
b3_equities_binaryumdf_sbe_v1_6.security_exchange = {}

-- Size: Security Exchange
b3_equities_binaryumdf_sbe_v1_6.security_exchange.size = 4

-- Display: Security Exchange
b3_equities_binaryumdf_sbe_v1_6.security_exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Exchange: No Value"
  end

  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
b3_equities_binaryumdf_sbe_v1_6.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_exchange.size
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

  local display = b3_equities_binaryumdf_sbe_v1_6.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Deprecated Security Definition Message
b3_equities_binaryumdf_sbe_v1_6.deprecated_security_definition_message = {}

-- Calculate size of: Deprecated Security Definition Message
b3_equities_binaryumdf_sbe_v1_6.deprecated_security_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_id.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_exchange.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_id_source.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_group.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.symbol.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_update_action.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_type.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_sub_type.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.tot_no_related_sym.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.min_price_increment.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.strike_price.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.contract_multiplier.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.price_divisor.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_validity_timestamp.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.no_shares_issued.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.clearing_house_id.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.min_order_qty.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.max_order_qty.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.min_lot_size.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.min_trade_vol.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.corporate_action_event_id.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.issue_date.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.maturity_date.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.country_of_issue.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.start_date.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.end_date.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.settl_type.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.settl_date.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.dated_date.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.isin_number.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.asset.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.cfi_code.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.maturity_month_year.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.contract_settl_month.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.currency.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.strike_currency.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.settl_currency.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_strategy_type.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.lot_type.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.tick_size_denominator.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.product.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.exercise_style.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.put_or_call.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.price_type.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.market_segment_id.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.governance_indicator.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_match_type.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.last_fragment.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.multi_leg_model.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.multi_leg_price_method.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.min_cross_qty.size

  index = index + b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_groups.size(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_groups.size(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_groups.size(buffer, offset + index)

  index = index + b3_equities_binaryumdf_sbe_v1_6.security_desc.size(buffer, offset + index)

  return index
end

-- Display: Deprecated Security Definition Message
b3_equities_binaryumdf_sbe_v1_6.deprecated_security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Deprecated Security Definition Message
b3_equities_binaryumdf_sbe_v1_6.deprecated_security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Security Exchange: 4 Byte Ascii String
  index, security_exchange = b3_equities_binaryumdf_sbe_v1_6.security_exchange.dissect(buffer, index, packet, parent)

  -- Security Id Source: 1 Byte Ascii String Enum with 2 values
  index, security_id_source = b3_equities_binaryumdf_sbe_v1_6.security_id_source.dissect(buffer, index, packet, parent)

  -- Security Group: 3 Byte Ascii String
  index, security_group = b3_equities_binaryumdf_sbe_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = b3_equities_binaryumdf_sbe_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Security Update Action: 1 Byte Ascii String Enum with 3 values
  index, security_update_action = b3_equities_binaryumdf_sbe_v1_6.security_update_action.dissect(buffer, index, packet, parent)

  -- Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, security_type = b3_equities_binaryumdf_sbe_v1_6.security_type.dissect(buffer, index, packet, parent)

  -- Security Sub Type: 2 Byte Unsigned Fixed Width Integer
  index, security_sub_type = b3_equities_binaryumdf_sbe_v1_6.security_sub_type.dissect(buffer, index, packet, parent)

  -- Tot No Related Sym: 4 Byte Unsigned Fixed Width Integer
  index, tot_no_related_sym = b3_equities_binaryumdf_sbe_v1_6.tot_no_related_sym.dissect(buffer, index, packet, parent)

  -- Min Price Increment: 8 Byte Signed Fixed Width Integer Nullable
  index, min_price_increment = b3_equities_binaryumdf_sbe_v1_6.min_price_increment.dissect(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, strike_price = b3_equities_binaryumdf_sbe_v1_6.strike_price.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: 8 Byte Signed Fixed Width Integer Nullable
  index, contract_multiplier = b3_equities_binaryumdf_sbe_v1_6.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Price Divisor: 8 Byte Signed Fixed Width Integer Nullable
  index, price_divisor = b3_equities_binaryumdf_sbe_v1_6.price_divisor.dissect(buffer, index, packet, parent)

  -- Security Validity Timestamp: 8 Byte Signed Fixed Width Integer
  index, security_validity_timestamp = b3_equities_binaryumdf_sbe_v1_6.security_validity_timestamp.dissect(buffer, index, packet, parent)

  -- No Shares Issued: 8 Byte Unsigned Fixed Width Integer
  index, no_shares_issued = b3_equities_binaryumdf_sbe_v1_6.no_shares_issued.dissect(buffer, index, packet, parent)

  -- Clearing House Id: 8 Byte Unsigned Fixed Width Integer
  index, clearing_house_id = b3_equities_binaryumdf_sbe_v1_6.clearing_house_id.dissect(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Signed Fixed Width Integer
  index, min_order_qty = b3_equities_binaryumdf_sbe_v1_6.min_order_qty.dissect(buffer, index, packet, parent)

  -- Max Order Qty: 8 Byte Signed Fixed Width Integer
  index, max_order_qty = b3_equities_binaryumdf_sbe_v1_6.max_order_qty.dissect(buffer, index, packet, parent)

  -- Min Lot Size: 8 Byte Signed Fixed Width Integer
  index, min_lot_size = b3_equities_binaryumdf_sbe_v1_6.min_lot_size.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: 8 Byte Signed Fixed Width Integer
  index, min_trade_vol = b3_equities_binaryumdf_sbe_v1_6.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Corporate Action Event Id: 4 Byte Unsigned Fixed Width Integer
  index, corporate_action_event_id = b3_equities_binaryumdf_sbe_v1_6.corporate_action_event_id.dissect(buffer, index, packet, parent)

  -- Issue Date: 4 Byte Signed Fixed Width Integer
  index, issue_date = b3_equities_binaryumdf_sbe_v1_6.issue_date.dissect(buffer, index, packet, parent)

  -- Maturity Date: 4 Byte Signed Fixed Width Integer Nullable
  index, maturity_date = b3_equities_binaryumdf_sbe_v1_6.maturity_date.dissect(buffer, index, packet, parent)

  -- Country Of Issue: 2 Byte Ascii String Nullable
  index, country_of_issue = b3_equities_binaryumdf_sbe_v1_6.country_of_issue.dissect(buffer, index, packet, parent)

  -- Start Date: 4 Byte Signed Fixed Width Integer Nullable
  index, start_date = b3_equities_binaryumdf_sbe_v1_6.start_date.dissect(buffer, index, packet, parent)

  -- End Date: 4 Byte Signed Fixed Width Integer Nullable
  index, end_date = b3_equities_binaryumdf_sbe_v1_6.end_date.dissect(buffer, index, packet, parent)

  -- Settl Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settl_type = b3_equities_binaryumdf_sbe_v1_6.settl_type.dissect(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Signed Fixed Width Integer Nullable
  index, settl_date = b3_equities_binaryumdf_sbe_v1_6.settl_date.dissect(buffer, index, packet, parent)

  -- Dated Date: 4 Byte Signed Fixed Width Integer Nullable
  index, dated_date = b3_equities_binaryumdf_sbe_v1_6.dated_date.dissect(buffer, index, packet, parent)

  -- Isin Number: 12 Byte Ascii String Nullable
  index, isin_number = b3_equities_binaryumdf_sbe_v1_6.isin_number.dissect(buffer, index, packet, parent)

  -- Asset: 6 Byte Ascii String
  index, asset = b3_equities_binaryumdf_sbe_v1_6.asset.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = b3_equities_binaryumdf_sbe_v1_6.cfi_code.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = b3_equities_binaryumdf_sbe_v1_6.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Contract Settl Month: Struct of 4 fields
  index, contract_settl_month = b3_equities_binaryumdf_sbe_v1_6.contract_settl_month.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = b3_equities_binaryumdf_sbe_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Strike Currency: 3 Byte Ascii String Nullable
  index, strike_currency = b3_equities_binaryumdf_sbe_v1_6.strike_currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String Nullable
  index, settl_currency = b3_equities_binaryumdf_sbe_v1_6.settl_currency.dissect(buffer, index, packet, parent)

  -- Security Strategy Type: 3 Byte Ascii String
  index, security_strategy_type = b3_equities_binaryumdf_sbe_v1_6.security_strategy_type.dissect(buffer, index, packet, parent)

  -- Lot Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, lot_type = b3_equities_binaryumdf_sbe_v1_6.lot_type.dissect(buffer, index, packet, parent)

  -- Tick Size Denominator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, tick_size_denominator = b3_equities_binaryumdf_sbe_v1_6.tick_size_denominator.dissect(buffer, index, packet, parent)

  -- Product: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, product = b3_equities_binaryumdf_sbe_v1_6.product.dissect(buffer, index, packet, parent)

  -- Exercise Style: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exercise_style = b3_equities_binaryumdf_sbe_v1_6.exercise_style.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, put_or_call = b3_equities_binaryumdf_sbe_v1_6.put_or_call.dissect(buffer, index, packet, parent)

  -- Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_type = b3_equities_binaryumdf_sbe_v1_6.price_type.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index, market_segment_id = b3_equities_binaryumdf_sbe_v1_6.market_segment_id.dissect(buffer, index, packet, parent)

  -- Governance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, governance_indicator = b3_equities_binaryumdf_sbe_v1_6.governance_indicator.dissect(buffer, index, packet, parent)

  -- Security Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, security_match_type = b3_equities_binaryumdf_sbe_v1_6.security_match_type.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = b3_equities_binaryumdf_sbe_v1_6.last_fragment.dissect(buffer, index, packet, parent)

  -- Multi Leg Model: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, multi_leg_model = b3_equities_binaryumdf_sbe_v1_6.multi_leg_model.dissect(buffer, index, packet, parent)

  -- Multi Leg Price Method: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, multi_leg_price_method = b3_equities_binaryumdf_sbe_v1_6.multi_leg_price_method.dissect(buffer, index, packet, parent)

  -- Min Cross Qty: 8 Byte Signed Fixed Width Integer
  index, min_cross_qty = b3_equities_binaryumdf_sbe_v1_6.min_cross_qty.dissect(buffer, index, packet, parent)

  -- Deprecated Underlyings Groups: Struct of 2 fields
  index, deprecated_underlyings_groups = b3_equities_binaryumdf_sbe_v1_6.deprecated_underlyings_groups.dissect(buffer, index, packet, parent)

  -- Deprecated Legs Groups: Struct of 2 fields
  index, deprecated_legs_groups = b3_equities_binaryumdf_sbe_v1_6.deprecated_legs_groups.dissect(buffer, index, packet, parent)

  -- Deprecated Instr Attribs Groups: Struct of 2 fields
  index, deprecated_instr_attribs_groups = b3_equities_binaryumdf_sbe_v1_6.deprecated_instr_attribs_groups.dissect(buffer, index, packet, parent)

  -- Security Desc: Struct of 2 fields
  index, security_desc = b3_equities_binaryumdf_sbe_v1_6.security_desc.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Deprecated Security Definition Message
b3_equities_binaryumdf_sbe_v1_6.deprecated_security_definition_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.deprecated_security_definition_message then
    local length = b3_equities_binaryumdf_sbe_v1_6.deprecated_security_definition_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = b3_equities_binaryumdf_sbe_v1_6.deprecated_security_definition_message.display(buffer, packet, parent)
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.deprecated_security_definition_message, range, display)
  end

  return b3_equities_binaryumdf_sbe_v1_6.deprecated_security_definition_message.fields(buffer, offset, packet, parent)
end

-- Transact Time
b3_equities_binaryumdf_sbe_v1_6.transact_time = {}

-- Size: Transact Time
b3_equities_binaryumdf_sbe_v1_6.transact_time.size = 8

-- Display: Transact Time
b3_equities_binaryumdf_sbe_v1_6.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
b3_equities_binaryumdf_sbe_v1_6.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Trad Ses Open Time
b3_equities_binaryumdf_sbe_v1_6.trad_ses_open_time = {}

-- Size: Trad Ses Open Time
b3_equities_binaryumdf_sbe_v1_6.trad_ses_open_time.size = 8

-- Display: Trad Ses Open Time
b3_equities_binaryumdf_sbe_v1_6.trad_ses_open_time.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.trad_ses_open_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.trad_ses_open_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.trad_ses_open_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trad_ses_open_time, range, value, display)

  return offset + length, value
end

-- Offset 14 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_14_padding_2 = {}

-- Size: Offset 14 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_14_padding_2.size = 2

-- Display: Offset 14 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_14_padding_2.display = function(value)
  return "Offset 14 Padding 2: "..value
end

-- Dissect: Offset 14 Padding 2
b3_equities_binaryumdf_sbe_v1_6.offset_14_padding_2.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.offset_14_padding_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.offset_14_padding_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_14_padding_2, range, value, display)

  return offset + length, value
end

-- Security Trading Event
b3_equities_binaryumdf_sbe_v1_6.security_trading_event = {}

-- Size: Security Trading Event
b3_equities_binaryumdf_sbe_v1_6.security_trading_event.size = 1

-- Display: Security Trading Event
b3_equities_binaryumdf_sbe_v1_6.security_trading_event.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.security_trading_event.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_trading_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.security_trading_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
b3_equities_binaryumdf_sbe_v1_6.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
b3_equities_binaryumdf_sbe_v1_6.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
b3_equities_binaryumdf_sbe_v1_6.trading_session_sub_id.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Offset 3 Padding 5
b3_equities_binaryumdf_sbe_v1_6.offset_3_padding_5 = {}

-- Size: Offset 3 Padding 5
b3_equities_binaryumdf_sbe_v1_6.offset_3_padding_5.size = 5

-- Display: Offset 3 Padding 5
b3_equities_binaryumdf_sbe_v1_6.offset_3_padding_5.display = function(value)
  return "Offset 3 Padding 5: "..value
end

-- Dissect: Offset 3 Padding 5
b3_equities_binaryumdf_sbe_v1_6.offset_3_padding_5.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.offset_3_padding_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = b3_equities_binaryumdf_sbe_v1_6.offset_3_padding_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.offset_3_padding_5, range, value, display)

  return offset + length, value
end

-- Security Group Phase 10 Message
b3_equities_binaryumdf_sbe_v1_6.security_group_phase_10_message = {}

-- Size: Security Group Phase 10 Message
b3_equities_binaryumdf_sbe_v1_6.security_group_phase_10_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_group.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_3_padding_5.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.trading_session_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.trading_session_sub_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.security_trading_event.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_14_padding_2.size + 
  b3_equities_binaryumdf_sbe_v1_6.trad_ses_open_time.size + 
  b3_equities_binaryumdf_sbe_v1_6.transact_time.size

-- Display: Security Group Phase 10 Message
b3_equities_binaryumdf_sbe_v1_6.security_group_phase_10_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Group Phase 10 Message
b3_equities_binaryumdf_sbe_v1_6.security_group_phase_10_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Group: 3 Byte Ascii String
  index, security_group = b3_equities_binaryumdf_sbe_v1_6.security_group.dissect(buffer, index, packet, parent)

  -- Offset 3 Padding 5: 5 Byte
  index, offset_3_padding_5 = b3_equities_binaryumdf_sbe_v1_6.offset_3_padding_5.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, trading_session_sub_id = b3_equities_binaryumdf_sbe_v1_6.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_trading_event = b3_equities_binaryumdf_sbe_v1_6.security_trading_event.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Offset 14 Padding 2: 2 Byte
  index, offset_14_padding_2 = b3_equities_binaryumdf_sbe_v1_6.offset_14_padding_2.dissect(buffer, index, packet, parent)

  -- Trad Ses Open Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trad_ses_open_time = b3_equities_binaryumdf_sbe_v1_6.trad_ses_open_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryumdf_sbe_v1_6.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Group Phase 10 Message
b3_equities_binaryumdf_sbe_v1_6.security_group_phase_10_message.dissect = function(buffer, offset, packet, parent)
  if show.security_group_phase_10_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_group_phase_10_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.security_group_phase_10_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.security_group_phase_10_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.security_group_phase_10_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Status
b3_equities_binaryumdf_sbe_v1_6.security_trading_status = {}

-- Size: Security Trading Status
b3_equities_binaryumdf_sbe_v1_6.security_trading_status.size = 1

-- Display: Security Trading Status
b3_equities_binaryumdf_sbe_v1_6.security_trading_status.display = function(value)
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
b3_equities_binaryumdf_sbe_v1_6.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Status 3 Message
b3_equities_binaryumdf_sbe_v1_6.security_status_3_message = {}

-- Size: Security Status 3 Message
b3_equities_binaryumdf_sbe_v1_6.security_status_3_message.size =
  b3_equities_binaryumdf_sbe_v1_6.security_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.size + 
  b3_equities_binaryumdf_sbe_v1_6.trading_session_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.security_trading_status.size + 
  b3_equities_binaryumdf_sbe_v1_6.security_trading_event.size + 
  b3_equities_binaryumdf_sbe_v1_6.trade_date.size + 
  b3_equities_binaryumdf_sbe_v1_6.offset_14_padding_2.size + 
  b3_equities_binaryumdf_sbe_v1_6.trad_ses_open_time.size + 
  b3_equities_binaryumdf_sbe_v1_6.transact_time.size + 
  b3_equities_binaryumdf_sbe_v1_6.rpt_seq.size

-- Display: Security Status 3 Message
b3_equities_binaryumdf_sbe_v1_6.security_status_3_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status 3 Message
b3_equities_binaryumdf_sbe_v1_6.security_status_3_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Unsigned Fixed Width Integer
  index, security_id = b3_equities_binaryumdf_sbe_v1_6.security_id.dissect(buffer, index, packet, parent)

  -- Match Event Indicator: Struct of 8 fields
  index, match_event_indicator = b3_equities_binaryumdf_sbe_v1_6.match_event_indicator.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trading_session_id = b3_equities_binaryumdf_sbe_v1_6.trading_session_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, security_trading_status = b3_equities_binaryumdf_sbe_v1_6.security_trading_status.dissect(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_trading_event = b3_equities_binaryumdf_sbe_v1_6.security_trading_event.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = b3_equities_binaryumdf_sbe_v1_6.trade_date.dissect(buffer, index, packet, parent)

  -- Offset 14 Padding 2: 2 Byte
  index, offset_14_padding_2 = b3_equities_binaryumdf_sbe_v1_6.offset_14_padding_2.dissect(buffer, index, packet, parent)

  -- Trad Ses Open Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trad_ses_open_time = b3_equities_binaryumdf_sbe_v1_6.trad_ses_open_time.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = b3_equities_binaryumdf_sbe_v1_6.transact_time.dissect(buffer, index, packet, parent)

  -- Rpt Seq: 4 Byte Unsigned Fixed Width Integer
  index, rpt_seq = b3_equities_binaryumdf_sbe_v1_6.rpt_seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status 3 Message
b3_equities_binaryumdf_sbe_v1_6.security_status_3_message.dissect = function(buffer, offset, packet, parent)
  if show.security_status_3_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.security_status_3_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.security_status_3_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.security_status_3_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.security_status_3_message.fields(buffer, offset, packet, parent)
  end
end

-- Next Seq No
b3_equities_binaryumdf_sbe_v1_6.next_seq_no = {}

-- Size: Next Seq No
b3_equities_binaryumdf_sbe_v1_6.next_seq_no.size = 4

-- Display: Next Seq No
b3_equities_binaryumdf_sbe_v1_6.next_seq_no.display = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
b3_equities_binaryumdf_sbe_v1_6.next_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.next_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.next_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- Sequence Message
b3_equities_binaryumdf_sbe_v1_6.sequence_message = {}

-- Size: Sequence Message
b3_equities_binaryumdf_sbe_v1_6.sequence_message.size =
  b3_equities_binaryumdf_sbe_v1_6.next_seq_no.size

-- Display: Sequence Message
b3_equities_binaryumdf_sbe_v1_6.sequence_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Message
b3_equities_binaryumdf_sbe_v1_6.sequence_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = b3_equities_binaryumdf_sbe_v1_6.next_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Message
b3_equities_binaryumdf_sbe_v1_6.sequence_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.sequence_message, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.sequence_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.sequence_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.sequence_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
b3_equities_binaryumdf_sbe_v1_6.payload = {}

-- Size: Payload
b3_equities_binaryumdf_sbe_v1_6.payload.size = function(buffer, offset, template_id)
  -- Size of Sequence Reset Message
  if template_id == 1 then
    return 0
  end
  -- Size of Sequence Message
  if template_id == 2 then
    return b3_equities_binaryumdf_sbe_v1_6.sequence_message.size
  end
  -- Size of Security Status 3 Message
  if template_id == 3 then
    return b3_equities_binaryumdf_sbe_v1_6.security_status_3_message.size
  end
  -- Size of Security Group Phase 10 Message
  if template_id == 10 then
    return b3_equities_binaryumdf_sbe_v1_6.security_group_phase_10_message.size
  end
  -- Size of Deprecated Security Definition Message
  if template_id == 4 then
    return b3_equities_binaryumdf_sbe_v1_6.deprecated_security_definition_message.size(buffer, offset)
  end
  -- Size of News 5 Message
  if template_id == 5 then
    return b3_equities_binaryumdf_sbe_v1_6.news_5_message.size(buffer, offset)
  end
  -- Size of Empty Book Message
  if template_id == 9 then
    return b3_equities_binaryumdf_sbe_v1_6.empty_book_message.size
  end
  -- Size of Channel Reset 11 Message
  if template_id == 11 then
    return b3_equities_binaryumdf_sbe_v1_6.channel_reset_11_message.size
  end
  -- Size of Opening Price 15 Message
  if template_id == 15 then
    return b3_equities_binaryumdf_sbe_v1_6.opening_price_15_message.size
  end
  -- Size of Theoretical Opening Price 16 Message
  if template_id == 16 then
    return b3_equities_binaryumdf_sbe_v1_6.theoretical_opening_price_16_message.size
  end
  -- Size of Closing Price 17 Message
  if template_id == 17 then
    return b3_equities_binaryumdf_sbe_v1_6.closing_price_17_message.size
  end
  -- Size of Auction Imbalance 19 Message
  if template_id == 19 then
    return b3_equities_binaryumdf_sbe_v1_6.auction_imbalance_19_message.size
  end
  -- Size of Price Band 20 Message
  if template_id == 20 then
    return b3_equities_binaryumdf_sbe_v1_6.price_band_20_message.size
  end
  -- Size of Quantity Band 21 Message
  if template_id == 21 then
    return b3_equities_binaryumdf_sbe_v1_6.quantity_band_21_message.size
  end
  -- Size of High Price 24 Message
  if template_id == 24 then
    return b3_equities_binaryumdf_sbe_v1_6.high_price_24_message.size
  end
  -- Size of Low Price 25 Message
  if template_id == 25 then
    return b3_equities_binaryumdf_sbe_v1_6.low_price_25_message.size
  end
  -- Size of Last Trade Price 27 Message
  if template_id == 27 then
    return b3_equities_binaryumdf_sbe_v1_6.last_trade_price_27_message.size
  end
  -- Size of Snapshot Full Refresh Header 30 Message
  if template_id == 30 then
    return b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_header_30_message.size
  end
  -- Size of Order Mb O 50 Message
  if template_id == 50 then
    return b3_equities_binaryumdf_sbe_v1_6.order_mb_o_50_message.size
  end
  -- Size of Delete Order Mb O 51 Message
  if template_id == 51 then
    return b3_equities_binaryumdf_sbe_v1_6.delete_order_mb_o_51_message.size
  end
  -- Size of Mass Delete Orders Mb O 52 Message
  if template_id == 52 then
    return b3_equities_binaryumdf_sbe_v1_6.mass_delete_orders_mb_o_52_message.size
  end
  -- Size of Trade 53 Message
  if template_id == 53 then
    return b3_equities_binaryumdf_sbe_v1_6.trade_53_message.size
  end
  -- Size of Forward Trade 54 Message
  if template_id == 54 then
    return b3_equities_binaryumdf_sbe_v1_6.forward_trade_54_message.size
  end
  -- Size of Execution Summary 55 Message
  if template_id == 55 then
    return b3_equities_binaryumdf_sbe_v1_6.execution_summary_55_message.size
  end
  -- Size of Execution Statistics 56 Message
  if template_id == 56 then
    return b3_equities_binaryumdf_sbe_v1_6.execution_statistics_56_message.size
  end
  -- Size of Trade Bust 57 Message
  if template_id == 57 then
    return b3_equities_binaryumdf_sbe_v1_6.trade_bust_57_message.size
  end
  -- Size of Snapshot Full Refresh Orders Mb O 71 Message
  if template_id == 71 then
    return b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
b3_equities_binaryumdf_sbe_v1_6.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
b3_equities_binaryumdf_sbe_v1_6.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Sequence Reset Message
  if template_id == 1 then
  end
  -- Dissect Sequence Message
  if template_id == 2 then
    return b3_equities_binaryumdf_sbe_v1_6.sequence_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status 3 Message
  if template_id == 3 then
    return b3_equities_binaryumdf_sbe_v1_6.security_status_3_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Group Phase 10 Message
  if template_id == 10 then
    return b3_equities_binaryumdf_sbe_v1_6.security_group_phase_10_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Deprecated Security Definition Message
  if template_id == 4 then
    return b3_equities_binaryumdf_sbe_v1_6.deprecated_security_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News 5 Message
  if template_id == 5 then
    return b3_equities_binaryumdf_sbe_v1_6.news_5_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Empty Book Message
  if template_id == 9 then
    return b3_equities_binaryumdf_sbe_v1_6.empty_book_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Channel Reset 11 Message
  if template_id == 11 then
    return b3_equities_binaryumdf_sbe_v1_6.channel_reset_11_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Opening Price 15 Message
  if template_id == 15 then
    return b3_equities_binaryumdf_sbe_v1_6.opening_price_15_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Theoretical Opening Price 16 Message
  if template_id == 16 then
    return b3_equities_binaryumdf_sbe_v1_6.theoretical_opening_price_16_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing Price 17 Message
  if template_id == 17 then
    return b3_equities_binaryumdf_sbe_v1_6.closing_price_17_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Imbalance 19 Message
  if template_id == 19 then
    return b3_equities_binaryumdf_sbe_v1_6.auction_imbalance_19_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Band 20 Message
  if template_id == 20 then
    return b3_equities_binaryumdf_sbe_v1_6.price_band_20_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quantity Band 21 Message
  if template_id == 21 then
    return b3_equities_binaryumdf_sbe_v1_6.quantity_band_21_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect High Price 24 Message
  if template_id == 24 then
    return b3_equities_binaryumdf_sbe_v1_6.high_price_24_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Low Price 25 Message
  if template_id == 25 then
    return b3_equities_binaryumdf_sbe_v1_6.low_price_25_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Trade Price 27 Message
  if template_id == 27 then
    return b3_equities_binaryumdf_sbe_v1_6.last_trade_price_27_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Header 30 Message
  if template_id == 30 then
    return b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_header_30_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mb O 50 Message
  if template_id == 50 then
    return b3_equities_binaryumdf_sbe_v1_6.order_mb_o_50_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Mb O 51 Message
  if template_id == 51 then
    return b3_equities_binaryumdf_sbe_v1_6.delete_order_mb_o_51_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Delete Orders Mb O 52 Message
  if template_id == 52 then
    return b3_equities_binaryumdf_sbe_v1_6.mass_delete_orders_mb_o_52_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade 53 Message
  if template_id == 53 then
    return b3_equities_binaryumdf_sbe_v1_6.trade_53_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Forward Trade 54 Message
  if template_id == 54 then
    return b3_equities_binaryumdf_sbe_v1_6.forward_trade_54_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Summary 55 Message
  if template_id == 55 then
    return b3_equities_binaryumdf_sbe_v1_6.execution_summary_55_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Statistics 56 Message
  if template_id == 56 then
    return b3_equities_binaryumdf_sbe_v1_6.execution_statistics_56_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust 57 Message
  if template_id == 57 then
    return b3_equities_binaryumdf_sbe_v1_6.trade_bust_57_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Full Refresh Orders Mb O 71 Message
  if template_id == 71 then
    return b3_equities_binaryumdf_sbe_v1_6.snapshot_full_refresh_orders_mb_o_71_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
b3_equities_binaryumdf_sbe_v1_6.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return b3_equities_binaryumdf_sbe_v1_6.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = b3_equities_binaryumdf_sbe_v1_6.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = b3_equities_binaryumdf_sbe_v1_6.payload.display(buffer, packet, parent)
  local element = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.payload, range, display)

  return b3_equities_binaryumdf_sbe_v1_6.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
b3_equities_binaryumdf_sbe_v1_6.version = {}

-- Size: Version
b3_equities_binaryumdf_sbe_v1_6.version.size = 2

-- Display: Version
b3_equities_binaryumdf_sbe_v1_6.version.display = function(value)
  if value == 7 then
    return "Version: Version 1.6.0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
b3_equities_binaryumdf_sbe_v1_6.version.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
b3_equities_binaryumdf_sbe_v1_6.schema_id = {}

-- Size: Schema Id
b3_equities_binaryumdf_sbe_v1_6.schema_id.size = 2

-- Display: Schema Id
b3_equities_binaryumdf_sbe_v1_6.schema_id.display = function(value)
  if value == 2 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
b3_equities_binaryumdf_sbe_v1_6.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
b3_equities_binaryumdf_sbe_v1_6.template_id = {}

-- Size: Template Id
b3_equities_binaryumdf_sbe_v1_6.template_id.size = 2

-- Display: Template Id
b3_equities_binaryumdf_sbe_v1_6.template_id.display = function(value)
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
    return "Template Id: DeprecatedSecurity Definition Message (4)"
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
b3_equities_binaryumdf_sbe_v1_6.template_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.template_id, range, value, display)

  return offset + length, value
end

-- Message Header
b3_equities_binaryumdf_sbe_v1_6.message_header = {}

-- Size: Message Header
b3_equities_binaryumdf_sbe_v1_6.message_header.size =
  b3_equities_binaryumdf_sbe_v1_6.block_length.size + 
  b3_equities_binaryumdf_sbe_v1_6.template_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.schema_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.version.size

-- Display: Message Header
b3_equities_binaryumdf_sbe_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
b3_equities_binaryumdf_sbe_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = b3_equities_binaryumdf_sbe_v1_6.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 27 values
  index, template_id = b3_equities_binaryumdf_sbe_v1_6.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = b3_equities_binaryumdf_sbe_v1_6.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = b3_equities_binaryumdf_sbe_v1_6.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
b3_equities_binaryumdf_sbe_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.message_header, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Encoding Type
b3_equities_binaryumdf_sbe_v1_6.encoding_type = {}

-- Size: Encoding Type
b3_equities_binaryumdf_sbe_v1_6.encoding_type.size = 2

-- Display: Encoding Type
b3_equities_binaryumdf_sbe_v1_6.encoding_type.display = function(value)
  return "Encoding Type: "..value
end

-- Dissect: Encoding Type
b3_equities_binaryumdf_sbe_v1_6.encoding_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.encoding_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.encoding_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- Message Length
b3_equities_binaryumdf_sbe_v1_6.message_length = {}

-- Size: Message Length
b3_equities_binaryumdf_sbe_v1_6.message_length.size = 2

-- Display: Message Length
b3_equities_binaryumdf_sbe_v1_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
b3_equities_binaryumdf_sbe_v1_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Framing Header
b3_equities_binaryumdf_sbe_v1_6.framing_header = {}

-- Size: Framing Header
b3_equities_binaryumdf_sbe_v1_6.framing_header.size =
  b3_equities_binaryumdf_sbe_v1_6.message_length.size + 
  b3_equities_binaryumdf_sbe_v1_6.encoding_type.size

-- Display: Framing Header
b3_equities_binaryumdf_sbe_v1_6.framing_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Framing Header
b3_equities_binaryumdf_sbe_v1_6.framing_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = b3_equities_binaryumdf_sbe_v1_6.message_length.dissect(buffer, index, packet, parent)

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index, encoding_type = b3_equities_binaryumdf_sbe_v1_6.encoding_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Framing Header
b3_equities_binaryumdf_sbe_v1_6.framing_header.dissect = function(buffer, offset, packet, parent)
  if show.framing_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.framing_header, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.framing_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.framing_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.framing_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
b3_equities_binaryumdf_sbe_v1_6.message = {}

-- Display: Message
b3_equities_binaryumdf_sbe_v1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
b3_equities_binaryumdf_sbe_v1_6.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Framing Header: Struct of 2 fields
  index, framing_header = b3_equities_binaryumdf_sbe_v1_6.framing_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = b3_equities_binaryumdf_sbe_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 27 branches
  index = b3_equities_binaryumdf_sbe_v1_6.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
b3_equities_binaryumdf_sbe_v1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.message, buffer(offset, 0))
    local current = b3_equities_binaryumdf_sbe_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = b3_equities_binaryumdf_sbe_v1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    b3_equities_binaryumdf_sbe_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Sending Time
b3_equities_binaryumdf_sbe_v1_6.sending_time = {}

-- Size: Sending Time
b3_equities_binaryumdf_sbe_v1_6.sending_time.size = 8

-- Display: Sending Time
b3_equities_binaryumdf_sbe_v1_6.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
b3_equities_binaryumdf_sbe_v1_6.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_equities_binaryumdf_sbe_v1_6.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Sequence Number
b3_equities_binaryumdf_sbe_v1_6.sequence_number = {}

-- Size: Sequence Number
b3_equities_binaryumdf_sbe_v1_6.sequence_number.size = 4

-- Display: Sequence Number
b3_equities_binaryumdf_sbe_v1_6.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
b3_equities_binaryumdf_sbe_v1_6.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequence Version
b3_equities_binaryumdf_sbe_v1_6.sequence_version = {}

-- Size: Sequence Version
b3_equities_binaryumdf_sbe_v1_6.sequence_version.size = 2

-- Display: Sequence Version
b3_equities_binaryumdf_sbe_v1_6.sequence_version.display = function(value)
  return "Sequence Version: "..value
end

-- Dissect: Sequence Version
b3_equities_binaryumdf_sbe_v1_6.sequence_version.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.sequence_version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.sequence_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.sequence_version, range, value, display)

  return offset + length, value
end

-- Reserved
b3_equities_binaryumdf_sbe_v1_6.reserved = {}

-- Size: Reserved
b3_equities_binaryumdf_sbe_v1_6.reserved.size = 1

-- Display: Reserved
b3_equities_binaryumdf_sbe_v1_6.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
b3_equities_binaryumdf_sbe_v1_6.reserved.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.reserved.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.reserved, range, value, display)

  return offset + length, value
end

-- Channel Id
b3_equities_binaryumdf_sbe_v1_6.channel_id = {}

-- Size: Channel Id
b3_equities_binaryumdf_sbe_v1_6.channel_id.size = 1

-- Display: Channel Id
b3_equities_binaryumdf_sbe_v1_6.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
b3_equities_binaryumdf_sbe_v1_6.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_equities_binaryumdf_sbe_v1_6.channel_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_equities_binaryumdf_sbe_v1_6.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Packet Header
b3_equities_binaryumdf_sbe_v1_6.packet_header = {}

-- Size: Packet Header
b3_equities_binaryumdf_sbe_v1_6.packet_header.size =
  b3_equities_binaryumdf_sbe_v1_6.channel_id.size + 
  b3_equities_binaryumdf_sbe_v1_6.reserved.size + 
  b3_equities_binaryumdf_sbe_v1_6.sequence_version.size + 
  b3_equities_binaryumdf_sbe_v1_6.sequence_number.size + 
  b3_equities_binaryumdf_sbe_v1_6.sending_time.size

-- Display: Packet Header
b3_equities_binaryumdf_sbe_v1_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
b3_equities_binaryumdf_sbe_v1_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = b3_equities_binaryumdf_sbe_v1_6.channel_id.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = b3_equities_binaryumdf_sbe_v1_6.reserved.dissect(buffer, index, packet, parent)

  -- Sequence Version: 2 Byte Unsigned Fixed Width Integer
  index, sequence_version = b3_equities_binaryumdf_sbe_v1_6.sequence_version.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = b3_equities_binaryumdf_sbe_v1_6.sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = b3_equities_binaryumdf_sbe_v1_6.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
b3_equities_binaryumdf_sbe_v1_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6.fields.packet_header, buffer(offset, 0))
    local index = b3_equities_binaryumdf_sbe_v1_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_equities_binaryumdf_sbe_v1_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_equities_binaryumdf_sbe_v1_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
b3_equities_binaryumdf_sbe_v1_6.packet = {}

-- Dissect Packet
b3_equities_binaryumdf_sbe_v1_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = b3_equities_binaryumdf_sbe_v1_6.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = b3_equities_binaryumdf_sbe_v1_6.message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_b3_equities_binaryumdf_sbe_v1_6.init()
end

-- Dissector for B3 Equities BinaryUmdf Sbe 1.6
function omi_b3_equities_binaryumdf_sbe_v1_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_b3_equities_binaryumdf_sbe_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_b3_equities_binaryumdf_sbe_v1_6, buffer(), omi_b3_equities_binaryumdf_sbe_v1_6.description, "("..buffer:len().." Bytes)")
  return b3_equities_binaryumdf_sbe_v1_6.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_b3_equities_binaryumdf_sbe_v1_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
b3_equities_binaryumdf_sbe_v1_6.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
b3_equities_binaryumdf_sbe_v1_6.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(24, 2):le_uint()

  if value == 2 then
    return true
  end

  return false
end

-- Verify Version Field
b3_equities_binaryumdf_sbe_v1_6.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(26, 2):le_uint()

  if value == 7 then
    return true
  end

  return false
end

-- Dissector Heuristic for B3 Equities BinaryUmdf Sbe 1.6
local function omi_b3_equities_binaryumdf_sbe_v1_6_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not b3_equities_binaryumdf_sbe_v1_6.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not b3_equities_binaryumdf_sbe_v1_6.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not b3_equities_binaryumdf_sbe_v1_6.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_b3_equities_binaryumdf_sbe_v1_6
  omi_b3_equities_binaryumdf_sbe_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for B3 Equities BinaryUmdf Sbe 1.6
omi_b3_equities_binaryumdf_sbe_v1_6:register_heuristic("udp", omi_b3_equities_binaryumdf_sbe_v1_6_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
