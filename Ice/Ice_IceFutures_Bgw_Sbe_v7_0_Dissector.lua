-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Ice IceFutures Bgw Sbe 7.0 Protocol
local omi_ice_icefutures_bgw_sbe_v7_0 = Proto("Ice.IceFutures.Bgw.Sbe.v7.0.Lua", "Ice IceFutures Bgw Sbe 7.0")

-- Protocol table
local ice_icefutures_bgw_sbe_v7_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Ice IceFutures Bgw Sbe 7.0 Fields
omi_ice_icefutures_bgw_sbe_v7_0.fields.alloc_handl_inst = ProtoField.new("Alloc Handl Inst", "ice.icefutures.bgw.sbe.v7.0.allochandlinst", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.allocation_account = ProtoField.new("Allocation Account", "ice.icefutures.bgw.sbe.v7.0.allocationaccount", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.aon_allowed = ProtoField.new("Aon Allowed", "ice.icefutures.bgw.sbe.v7.0.aonallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.application_name = ProtoField.new("Application Name", "ice.icefutures.bgw.sbe.v7.0.applicationname", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.application_vendor = ProtoField.new("Application Vendor", "ice.icefutures.bgw.sbe.v7.0.applicationvendor", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.application_version = ProtoField.new("Application Version", "ice.icefutures.bgw.sbe.v7.0.applicationversion", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.base_num_lots = ProtoField.new("Base Num Lots", "ice.icefutures.bgw.sbe.v7.0.basenumlots", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.begin_seq_no = ProtoField.new("Begin Seq No", "ice.icefutures.bgw.sbe.v7.0.beginseqno", ftypes.UINT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.bench_mark_price_type = ProtoField.new("Bench Mark Price Type", "ice.icefutures.bgw.sbe.v7.0.benchmarkpricetype", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.benchmark_price = ProtoField.new("Benchmark Price", "ice.icefutures.bgw.sbe.v7.0.benchmarkprice", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.bid_px = ProtoField.new("Bid Px", "ice.icefutures.bgw.sbe.v7.0.bidpx", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.bid_sz = ProtoField.new("Bid Sz", "ice.icefutures.bgw.sbe.v7.0.bidsz", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.block_details_block_type = ProtoField.new("Block Details Block Type", "ice.icefutures.bgw.sbe.v7.0.blockdetailsblocktype", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.block_details_min_qty = ProtoField.new("Block Details Min Qty", "ice.icefutures.bgw.sbe.v7.0.blockdetailsminqty", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.block_details_trade_type = ProtoField.new("Block Details Trade Type", "ice.icefutures.bgw.sbe.v7.0.blockdetailstradetype", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.block_length = ProtoField.new("Block Length", "ice.icefutures.bgw.sbe.v7.0.blocklength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.block_only = ProtoField.new("Block Only", "ice.icefutures.bgw.sbe.v7.0.blockonly", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.block_tick_value = ProtoField.new("Block Tick Value", "ice.icefutures.bgw.sbe.v7.0.blocktickvalue", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.bypass_mqr = ProtoField.new("Bypass Mqr", "ice.icefutures.bgw.sbe.v7.0.bypassmqr", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cancel_reason = ProtoField.new("Cancel Reason", "ice.icefutures.bgw.sbe.v7.0.cancelreason", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cfi_code = ProtoField.new("Cfi Code", "ice.icefutures.bgw.sbe.v7.0.cficode", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "ice.icefutures.bgw.sbe.v7.0.clordid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.clearable = ProtoField.new("Clearable", "ice.icefutures.bgw.sbe.v7.0.clearable", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cleared_alias = ProtoField.new("Cleared Alias", "ice.icefutures.bgw.sbe.v7.0.clearedalias", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cleared_alias_data = ProtoField.new("Cleared Alias Data", "ice.icefutures.bgw.sbe.v7.0.clearedaliasdata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cleared_alias_length = ProtoField.new("Cleared Alias Length", "ice.icefutures.bgw.sbe.v7.0.clearedaliaslength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.clearing_account_string_14 = ProtoField.new("Clearing Account string 14", "ice.icefutures.bgw.sbe.v7.0.clearingaccountstring14", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.clearing_account_string_14_null = ProtoField.new("Clearing Account string 14 Null", "ice.icefutures.bgw.sbe.v7.0.clearingaccountstring14null", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.clearing_firm_int_32 = ProtoField.new("Clearing Firm int 32", "ice.icefutures.bgw.sbe.v7.0.clearingfirmint32", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.clearing_firm_int_32_null = ProtoField.new("Clearing Firm int 32 Null", "ice.icefutures.bgw.sbe.v7.0.clearingfirmint32null", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.client_id = ProtoField.new("Client Id", "ice.icefutures.bgw.sbe.v7.0.clientid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.client_id_code = ProtoField.new("Client Id Code", "ice.icefutures.bgw.sbe.v7.0.clientidcode", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.commodity_deriv_indicator = ProtoField.new("Commodity Deriv Indicator", "ice.icefutures.bgw.sbe.v7.0.commodityderivindicator", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "ice.icefutures.bgw.sbe.v7.0.contractmultiplier", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.contract_size = ProtoField.new("Contract Size", "ice.icefutures.bgw.sbe.v7.0.contractsize", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cross_i_d_int_64 = ProtoField.new("Cross I D int 64", "ice.icefutures.bgw.sbe.v7.0.crossidint64", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cross_i_d_int_64_null = ProtoField.new("Cross I D int 64 Null", "ice.icefutures.bgw.sbe.v7.0.crossidint64null", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cross_type_cross_type_enum = ProtoField.new("Cross Type Cross Type Enum", "ice.icefutures.bgw.sbe.v7.0.crosstypecrosstypeenum", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cross_type_cross_type_enum_null = ProtoField.new("Cross Type Cross Type Enum Null", "ice.icefutures.bgw.sbe.v7.0.crosstypecrosstypeenumnull", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.crossing_order_futures_allowed = ProtoField.new("Crossing Order Futures Allowed", "ice.icefutures.bgw.sbe.v7.0.crossingorderfuturesallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.crossing_order_options_allowed = ProtoField.new("Crossing Order Options Allowed", "ice.icefutures.bgw.sbe.v7.0.crossingorderoptionsallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cum_qty = ProtoField.new("Cum Qty", "ice.icefutures.bgw.sbe.v7.0.cumqty", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.currency = ProtoField.new("Currency", "ice.icefutures.bgw.sbe.v7.0.currency", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "ice.icefutures.bgw.sbe.v7.0.custorderhandlinginst", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.customer_account_ref_id = ProtoField.new("Customer Account Ref Id", "ice.icefutures.bgw.sbe.v7.0.customeraccountrefid", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.deal_adjust_indicator = ProtoField.new("Deal Adjust Indicator", "ice.icefutures.bgw.sbe.v7.0.dealadjustindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_ice_icefutures_bgw_sbe_v7_0.fields.delivery_end_date = ProtoField.new("Delivery End Date", "ice.icefutures.bgw.sbe.v7.0.deliveryenddate", ftypes.UINT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.delivery_start_date = ProtoField.new("Delivery Start Date", "ice.icefutures.bgw.sbe.v7.0.deliverystartdate", ftypes.UINT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.denominator = ProtoField.new("Denominator", "ice.icefutures.bgw.sbe.v7.0.denominator", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.direct_electronic_access = ProtoField.new("Direct Electronic Access", "ice.icefutures.bgw.sbe.v7.0.directelectronicaccess", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.encoding_type = ProtoField.new("Encoding Type", "ice.icefutures.bgw.sbe.v7.0.encodingtype", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.end_date = ProtoField.new("End Date", "ice.icefutures.bgw.sbe.v7.0.enddate", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.end_seq_no = ProtoField.new("End Seq No", "ice.icefutures.bgw.sbe.v7.0.endseqno", ftypes.UINT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.exchange_code = ProtoField.new("Exchange Code", "ice.icefutures.bgw.sbe.v7.0.exchangecode", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.exchange_silo = ProtoField.new("Exchange Silo", "ice.icefutures.bgw.sbe.v7.0.exchangesilo", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_i_d_int_64 = ProtoField.new("Exec I D int 64", "ice.icefutures.bgw.sbe.v7.0.execidint64", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_i_d_order_exec_id = ProtoField.new("Exec I D order Exec Id", "ice.icefutures.bgw.sbe.v7.0.execidorderexecid", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_inst = ProtoField.new("Exec Inst", "ice.icefutures.bgw.sbe.v7.0.execinst", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "ice.icefutures.bgw.sbe.v7.0.execrefid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "ice.icefutures.bgw.sbe.v7.0.execrestatementreason", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_type = ProtoField.new("Exec Type", "ice.icefutures.bgw.sbe.v7.0.exectype", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_decision = ProtoField.new("Execution Decision", "ice.icefutures.bgw.sbe.v7.0.executiondecision", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.expire_date = ProtoField.new("Expire Date", "ice.icefutures.bgw.sbe.v7.0.expiredate", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.flex_allowed = ProtoField.new("Flex Allowed", "ice.icefutures.bgw.sbe.v7.0.flexallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.flex_strike_allowed = ProtoField.new("Flex Strike Allowed", "ice.icefutures.bgw.sbe.v7.0.flexstrikeallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.framing_header = ProtoField.new("Framing Header", "ice.icefutures.bgw.sbe.v7.0.framingheader", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.gap_fill_flag = ProtoField.new("Gap Fill Flag", "ice.icefutures.bgw.sbe.v7.0.gapfillflag", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.give_up_clearing_firm = ProtoField.new("Give Up Clearing Firm", "ice.icefutures.bgw.sbe.v7.0.giveupclearingfirm", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.granularity = ProtoField.new("Granularity", "ice.icefutures.bgw.sbe.v7.0.granularity", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "ice.icefutures.bgw.sbe.v7.0.groupsizeencoding", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.gt_allowed = ProtoField.new("Gt Allowed", "ice.icefutures.bgw.sbe.v7.0.gtallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.header_flags = ProtoField.new("Header Flags", "ice.icefutures.bgw.sbe.v7.0.headerflags", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.heart_beat_interval = ProtoField.new("Heart Beat Interval", "ice.icefutures.bgw.sbe.v7.0.heartbeatinterval", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.hedge_market_id = ProtoField.new("Hedge Market Id", "ice.icefutures.bgw.sbe.v7.0.hedgemarketid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.hedge_only = ProtoField.new("Hedge Only", "ice.icefutures.bgw.sbe.v7.0.hedgeonly", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.hedge_product_id = ProtoField.new("Hedge Product Id", "ice.icefutures.bgw.sbe.v7.0.hedgeproductid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.home_exchange = ProtoField.new("Home Exchange", "ice.icefutures.bgw.sbe.v7.0.homeexchange", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.home_exchange_data = ProtoField.new("Home Exchange Data", "ice.icefutures.bgw.sbe.v7.0.homeexchangedata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.home_exchange_length = ProtoField.new("Home Exchange Length", "ice.icefutures.bgw.sbe.v7.0.homeexchangelength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_alias = ProtoField.new("Hub Alias", "ice.icefutures.bgw.sbe.v7.0.hubalias", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_alias_data = ProtoField.new("Hub Alias Data", "ice.icefutures.bgw.sbe.v7.0.hubaliasdata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_alias_length = ProtoField.new("Hub Alias Length", "ice.icefutures.bgw.sbe.v7.0.hubaliaslength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_id = ProtoField.new("Hub Id", "ice.icefutures.bgw.sbe.v7.0.hubid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_name = ProtoField.new("Hub Name", "ice.icefutures.bgw.sbe.v7.0.hubname", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_name_data = ProtoField.new("Hub Name Data", "ice.icefutures.bgw.sbe.v7.0.hubnamedata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_name_length = ProtoField.new("Hub Name Length", "ice.icefutures.bgw.sbe.v7.0.hubnamelength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_report_message_no_users_group = ProtoField.new("I P Report Message no Users Group", "ice.icefutures.bgw.sbe.v7.0.ipreportmessagenousersgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_report_message_no_users_groups = ProtoField.new("I P Report Message no Users Groups", "ice.icefutures.bgw.sbe.v7.0.ipreportmessagenousersgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_request_message_no_users_group = ProtoField.new("I P Request Message no Users Group", "ice.icefutures.bgw.sbe.v7.0.iprequestmessagenousersgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_request_message_no_users_groups = ProtoField.new("I P Request Message no Users Groups", "ice.icefutures.bgw.sbe.v7.0.iprequestmessagenousersgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.implied_type = ProtoField.new("Implied Type", "ice.icefutures.bgw.sbe.v7.0.impliedtype", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.increment_price = ProtoField.new("Increment Price", "ice.icefutures.bgw.sbe.v7.0.incrementprice", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.increment_qty = ProtoField.new("Increment Qty", "ice.icefutures.bgw.sbe.v7.0.incrementqty", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.initial_margin = ProtoField.new("Initial Margin", "ice.icefutures.bgw.sbe.v7.0.initialmargin", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.investment_decision = ProtoField.new("Investment Decision", "ice.icefutures.bgw.sbe.v7.0.investmentdecision", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.ip_address = ProtoField.new("Ip Address", "ice.icefutures.bgw.sbe.v7.0.ipaddress", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.ip_session_token = ProtoField.new("Ip Session Token", "ice.icefutures.bgw.sbe.v7.0.ipsessiontoken", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.is_dividend_adjusted = ProtoField.new("Is Dividend Adjusted", "ice.icefutures.bgw.sbe.v7.0.isdividendadjusted", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.last_par_px = ProtoField.new("Last Par Px", "ice.icefutures.bgw.sbe.v7.0.lastparpx", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.last_px = ProtoField.new("Last Px", "ice.icefutures.bgw.sbe.v7.0.lastpx", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.last_shares = ProtoField.new("Last Shares", "ice.icefutures.bgw.sbe.v7.0.lastshares", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leaves_qty = ProtoField.new("Leaves Qty", "ice.icefutures.bgw.sbe.v7.0.leavesqty", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_deals_suppressed = ProtoField.new("Leg Deals Suppressed", "ice.icefutures.bgw.sbe.v7.0.legdealssuppressed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_memo_field = ProtoField.new("Leg Memo Field", "ice.icefutures.bgw.sbe.v7.0.legmemofield", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_opt_attribute = ProtoField.new("Leg Opt Attribute", "ice.icefutures.bgw.sbe.v7.0.legoptattribute", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_option_delta = ProtoField.new("Leg Option Delta", "ice.icefutures.bgw.sbe.v7.0.legoptiondelta", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_price = ProtoField.new("Leg Price", "ice.icefutures.bgw.sbe.v7.0.legprice", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_qty = ProtoField.new("Leg Qty", "ice.icefutures.bgw.sbe.v7.0.legqty", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_price_denominator = ProtoField.new("Leg Ratio Price Denominator", "ice.icefutures.bgw.sbe.v7.0.legratiopricedenominator", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_price_numerator = ProtoField.new("Leg Ratio Price Numerator", "ice.icefutures.bgw.sbe.v7.0.legratiopricenumerator", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_qty_denominator_int_16 = ProtoField.new("Leg Ratio Qty Denominator int 16", "ice.icefutures.bgw.sbe.v7.0.legratioqtydenominatorint16", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_qty_denominator_int_16_null = ProtoField.new("Leg Ratio Qty Denominator int 16 Null", "ice.icefutures.bgw.sbe.v7.0.legratioqtydenominatorint16null", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_qty_numerator_int_16 = ProtoField.new("Leg Ratio Qty Numerator int 16", "ice.icefutures.bgw.sbe.v7.0.legratioqtynumeratorint16", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_qty_numerator_int_16_null = ProtoField.new("Leg Ratio Qty Numerator int 16 Null", "ice.icefutures.bgw.sbe.v7.0.legratioqtynumeratorint16null", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_security_id = ProtoField.new("Leg Security Id", "ice.icefutures.bgw.sbe.v7.0.legsecurityid", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_security_id_source = ProtoField.new("Leg Security Id Source", "ice.icefutures.bgw.sbe.v7.0.legsecurityidsource", ftypes.INT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_security_sub_type = ProtoField.new("Leg Security Sub Type", "ice.icefutures.bgw.sbe.v7.0.legsecuritysubtype", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_security_type = ProtoField.new("Leg Security Type", "ice.icefutures.bgw.sbe.v7.0.legsecuritytype", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_side = ProtoField.new("Leg Side", "ice.icefutures.bgw.sbe.v7.0.legside", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_symbol_int_32 = ProtoField.new("Leg Symbol int 32", "ice.icefutures.bgw.sbe.v7.0.legsymbolint32", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_symbol_int_32_null = ProtoField.new("Leg Symbol int 32 Null", "ice.icefutures.bgw.sbe.v7.0.legsymbolint32null", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.link_exec_id = ProtoField.new("Link Exec Id", "ice.icefutures.bgw.sbe.v7.0.linkexecid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "ice.icefutures.bgw.sbe.v7.0.liquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_ice_icefutures_bgw_sbe_v7_0.fields.liquidity_provision = ProtoField.new("Liquidity Provision", "ice.icefutures.bgw.sbe.v7.0.liquidityprovision", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.list_seq_no = ProtoField.new("List Seq No", "ice.icefutures.bgw.sbe.v7.0.listseqno", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.lot_size = ProtoField.new("Lot Size", "ice.icefutures.bgw.sbe.v7.0.lotsize", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.lot_size_multiplier_decimal_9 = ProtoField.new("Lot Size Multiplier Decimal 9", "ice.icefutures.bgw.sbe.v7.0.lotsizemultiplierdecimal9", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.lot_size_multiplier_decimal_9_null = ProtoField.new("Lot Size Multiplier Decimal 9 Null", "ice.icefutures.bgw.sbe.v7.0.lotsizemultiplierdecimal9null", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.manual_order_indicator = ProtoField.new("Manual Order Indicator", "ice.icefutures.bgw.sbe.v7.0.manualorderindicator", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.market_transparency_type = ProtoField.new("Market Transparency Type", "ice.icefutures.bgw.sbe.v7.0.markettransparencytype", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.market_type_i_d_int_32 = ProtoField.new("Market Type I D int 32", "ice.icefutures.bgw.sbe.v7.0.markettypeidint32", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.market_type_i_d_int_32_null = ProtoField.new("Market Type I D int 32 Null", "ice.icefutures.bgw.sbe.v7.0.markettypeidint32null", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "ice.icefutures.bgw.sbe.v7.0.masscancelrejectreason", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_cancel_request_type = ProtoField.new("Mass Cancel Request Type", "ice.icefutures.bgw.sbe.v7.0.masscancelrequesttype", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_cancel_response = ProtoField.new("Mass Cancel Response", "ice.icefutures.bgw.sbe.v7.0.masscancelresponse", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_report_message_no_quote_sets_group = ProtoField.new("Mass Quote Report Message no Quote Sets Group", "ice.icefutures.bgw.sbe.v7.0.massquotereportmessagenoquotesetsgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_report_message_no_quote_sets_groups = ProtoField.new("Mass Quote Report Message no Quote Sets Groups", "ice.icefutures.bgw.sbe.v7.0.massquotereportmessagenoquotesetsgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_request_message_no_quote_sets_group = ProtoField.new("Mass Quote Request Message no Quote Sets Group", "ice.icefutures.bgw.sbe.v7.0.massquoterequestmessagenoquotesetsgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_request_message_no_quote_sets_groups = ProtoField.new("Mass Quote Request Message no Quote Sets Groups", "ice.icefutures.bgw.sbe.v7.0.massquoterequestmessagenoquotesetsgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quotes_allowed = ProtoField.new("Mass Quotes Allowed", "ice.icefutures.bgw.sbe.v7.0.massquotesallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.maturity_date = ProtoField.new("Maturity Date", "ice.icefutures.bgw.sbe.v7.0.maturitydate", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.max_price = ProtoField.new("Max Price", "ice.icefutures.bgw.sbe.v7.0.maxprice", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.max_show = ProtoField.new("Max Show", "ice.icefutures.bgw.sbe.v7.0.maxshow", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.me_acceptance_time_utc_timestamp = ProtoField.new("Me Acceptance Time Utc Timestamp", "ice.icefutures.bgw.sbe.v7.0.meacceptancetimeutctimestamp", ftypes.UINT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.me_acceptance_time_utc_timestamp_null = ProtoField.new("Me Acceptance Time Utc Timestamp Null", "ice.icefutures.bgw.sbe.v7.0.meacceptancetimeutctimestampnull", ftypes.UINT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.memo = ProtoField.new("Memo", "ice.icefutures.bgw.sbe.v7.0.memo", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.message_header = ProtoField.new("Message Header", "ice.icefutures.bgw.sbe.v7.0.messageheader", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.message_length = ProtoField.new("Message Length", "ice.icefutures.bgw.sbe.v7.0.messagelength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mifid_id = ProtoField.new("Mifid Id", "ice.icefutures.bgw.sbe.v7.0.mifidid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mifid_regulated_market_boolean_enum = ProtoField.new("Mifid Regulated Market Boolean Enum", "ice.icefutures.bgw.sbe.v7.0.mifidregulatedmarketbooleanenum", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mifid_regulated_market_boolean_enum_null = ProtoField.new("Mifid Regulated Market Boolean Enum Null", "ice.icefutures.bgw.sbe.v7.0.mifidregulatedmarketbooleanenumnull", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.min_price = ProtoField.new("Min Price", "ice.icefutures.bgw.sbe.v7.0.minprice", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_legs_group = ProtoField.new("New Order Cross Request Message no Legs Group", "ice.icefutures.bgw.sbe.v7.0.newordercrossrequestmessagenolegsgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_legs_groups = ProtoField.new("New Order Cross Request Message no Legs Groups", "ice.icefutures.bgw.sbe.v7.0.newordercrossrequestmessagenolegsgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_sides_group = ProtoField.new("New Order Cross Request Message no Sides Group", "ice.icefutures.bgw.sbe.v7.0.newordercrossrequestmessagenosidesgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_sides_groups = ProtoField.new("New Order Cross Request Message no Sides Groups", "ice.icefutures.bgw.sbe.v7.0.newordercrossrequestmessagenosidesgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.new_seq_no = ProtoField.new("New Seq No", "ice.icefutures.bgw.sbe.v7.0.newseqno", ftypes.UINT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.no_leg_executions = ProtoField.new("No Leg Executions", "ice.icefutures.bgw.sbe.v7.0.nolegexecutions", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.no_rpts = ProtoField.new("No Rpts", "ice.icefutures.bgw.sbe.v7.0.norpts", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.non_commoditized_market = ProtoField.new("Non Commoditized Market", "ice.icefutures.bgw.sbe.v7.0.noncommoditizedmarket", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.num_in_group = ProtoField.new("Num In Group", "ice.icefutures.bgw.sbe.v7.0.numingroup", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_cycles_int_16 = ProtoField.new("Num Of Cycles int 16", "ice.icefutures.bgw.sbe.v7.0.numofcyclesint16", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_cycles_int_16_null = ProtoField.new("Num Of Cycles int 16 Null", "ice.icefutures.bgw.sbe.v7.0.numofcyclesint16null", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_decimal_price = ProtoField.new("Num Of Decimal Price", "ice.icefutures.bgw.sbe.v7.0.numofdecimalprice", ftypes.INT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_decimal_qty = ProtoField.new("Num Of Decimal Qty", "ice.icefutures.bgw.sbe.v7.0.numofdecimalqty", ftypes.INT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_decimal_strike_price = ProtoField.new("Num Of Decimal Strike Price", "ice.icefutures.bgw.sbe.v7.0.numofdecimalstrikeprice", ftypes.INT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_lots = ProtoField.new("Num Of Lots", "ice.icefutures.bgw.sbe.v7.0.numoflots", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.off_exchange_increment_price_decimal_9 = ProtoField.new("Off Exchange Increment Price Decimal 9", "ice.icefutures.bgw.sbe.v7.0.offexchangeincrementpricedecimal9", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.off_exchange_increment_price_decimal_9_null = ProtoField.new("Off Exchange Increment Price Decimal 9 Null", "ice.icefutures.bgw.sbe.v7.0.offexchangeincrementpricedecimal9null", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.off_exchange_increment_qty_decimal_9 = ProtoField.new("Off Exchange Increment Qty Decimal 9", "ice.icefutures.bgw.sbe.v7.0.offexchangeincrementqtydecimal9", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.off_exchange_increment_qty_decimal_9_null = ProtoField.new("Off Exchange Increment Qty Decimal 9 Null", "ice.icefutures.bgw.sbe.v7.0.offexchangeincrementqtydecimal9null", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.offer_px = ProtoField.new("Offer Px", "ice.icefutures.bgw.sbe.v7.0.offerpx", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.offer_sz = ProtoField.new("Offer Sz", "ice.icefutures.bgw.sbe.v7.0.offersz", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.on_behalf_of_comp_id = ProtoField.new("On Behalf Of Comp Id", "ice.icefutures.bgw.sbe.v7.0.onbehalfofcompid", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.on_behalf_of_location_i_d_string_41 = ProtoField.new("On Behalf Of Location I D string 41", "ice.icefutures.bgw.sbe.v7.0.onbehalfoflocationidstring41", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.on_behalf_of_location_i_d_string_41_null = ProtoField.new("On Behalf Of Location I D string 41 Null", "ice.icefutures.bgw.sbe.v7.0.onbehalfoflocationidstring41null", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.on_behalf_of_sub_i_d_string_41 = ProtoField.new("On Behalf Of Sub I D string 41", "ice.icefutures.bgw.sbe.v7.0.onbehalfofsubidstring41", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.on_behalf_of_sub_i_d_string_41_null = ProtoField.new("On Behalf Of Sub I D string 41 Null", "ice.icefutures.bgw.sbe.v7.0.onbehalfofsubidstring41null", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.options_allowed = ProtoField.new("Options Allowed", "ice.icefutures.bgw.sbe.v7.0.optionsallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.ord_type_order_type_enum = ProtoField.new("Ord Type Order Type Enum", "ice.icefutures.bgw.sbe.v7.0.ordtypeordertypeenum", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.ord_type_order_type_enum_null = ProtoField.new("Ord Type Order Type Enum Null", "ice.icefutures.bgw.sbe.v7.0.ordtypeordertypeenumnull", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.order_id = ProtoField.new("Order Id", "ice.icefutures.bgw.sbe.v7.0.orderid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.order_modification_flags = ProtoField.new("Order Modification Flags", "ice.icefutures.bgw.sbe.v7.0.ordermodificationflags", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.order_qty_decimal_9 = ProtoField.new("Order Qty Decimal 9", "ice.icefutures.bgw.sbe.v7.0.orderqtydecimal9", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.order_qty_decimal_9_null = ProtoField.new("Order Qty Decimal 9 Null", "ice.icefutures.bgw.sbe.v7.0.orderqtydecimal9null", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.order_state = ProtoField.new("Order State", "ice.icefutures.bgw.sbe.v7.0.orderstate", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.order_status = ProtoField.new("Order Status", "ice.icefutures.bgw.sbe.v7.0.orderstatus", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.orig_cl_ord_i_d_int_64 = ProtoField.new("Orig Cl Ord I D int 64", "ice.icefutures.bgw.sbe.v7.0.origclordidint64", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.orig_cl_ord_i_d_int_64_null = ProtoField.new("Orig Cl Ord I D int 64 Null", "ice.icefutures.bgw.sbe.v7.0.origclordidint64null", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.orig_order_id = ProtoField.new("Orig Order Id", "ice.icefutures.bgw.sbe.v7.0.origorderid", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.original_creation_timestamp = ProtoField.new("Original Creation Timestamp", "ice.icefutures.bgw.sbe.v7.0.originalcreationtimestamp", ftypes.UINT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.original_system_id = ProtoField.new("Original System Id", "ice.icefutures.bgw.sbe.v7.0.originalsystemid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.originator_user_id = ProtoField.new("Originator User Id", "ice.icefutures.bgw.sbe.v7.0.originatoruserid", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.override_block_min = ProtoField.new("Override Block Min", "ice.icefutures.bgw.sbe.v7.0.overrideblockmin", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.packet = ProtoField.new("Packet", "ice.icefutures.bgw.sbe.v7.0.packet", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.physical_code = ProtoField.new("Physical Code", "ice.icefutures.bgw.sbe.v7.0.physicalcode", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.physical_code_data = ProtoField.new("Physical Code Data", "ice.icefutures.bgw.sbe.v7.0.physicalcodedata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.physical_code_length = ProtoField.new("Physical Code Length", "ice.icefutures.bgw.sbe.v7.0.physicalcodelength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.port = ProtoField.new("Port", "ice.icefutures.bgw.sbe.v7.0.port", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.position_effect = ProtoField.new("Position Effect", "ice.icefutures.bgw.sbe.v7.0.positioneffect", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.poss_dupe = ProtoField.new("Poss Dupe", "ice.icefutures.bgw.sbe.v7.0.possdupe", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_ice_icefutures_bgw_sbe_v7_0.fields.poss_resend = ProtoField.new("Poss Resend", "ice.icefutures.bgw.sbe.v7.0.possresend", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_ice_icefutures_bgw_sbe_v7_0.fields.price_decimal_9 = ProtoField.new("Price Decimal 9", "ice.icefutures.bgw.sbe.v7.0.pricedecimal9", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.price_decimal_9_null = ProtoField.new("Price Decimal 9 Null", "ice.icefutures.bgw.sbe.v7.0.pricedecimal9null", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.price_denomination = ProtoField.new("Price Denomination", "ice.icefutures.bgw.sbe.v7.0.pricedenomination", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.price_denomination_data = ProtoField.new("Price Denomination Data", "ice.icefutures.bgw.sbe.v7.0.pricedenominationdata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.price_denomination_length = ProtoField.new("Price Denomination Length", "ice.icefutures.bgw.sbe.v7.0.pricedenominationlength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.price_type = ProtoField.new("Price Type", "ice.icefutures.bgw.sbe.v7.0.pricetype", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.price_unit = ProtoField.new("Price Unit", "ice.icefutures.bgw.sbe.v7.0.priceunit", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.price_unit_data = ProtoField.new("Price Unit Data", "ice.icefutures.bgw.sbe.v7.0.priceunitdata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.price_unit_length = ProtoField.new("Price Unit Length", "ice.icefutures.bgw.sbe.v7.0.priceunitlength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_desc = ProtoField.new("Product Desc", "ice.icefutures.bgw.sbe.v7.0.productdesc", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_desc_data = ProtoField.new("Product Desc Data", "ice.icefutures.bgw.sbe.v7.0.productdescdata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_desc_length = ProtoField.new("Product Desc Length", "ice.icefutures.bgw.sbe.v7.0.productdesclength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_group = ProtoField.new("Product Group", "ice.icefutures.bgw.sbe.v7.0.productgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_group_data = ProtoField.new("Product Group Data", "ice.icefutures.bgw.sbe.v7.0.productgroupdata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_group_length = ProtoField.new("Product Group Length", "ice.icefutures.bgw.sbe.v7.0.productgrouplength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_i_d_int_32 = ProtoField.new("Product I D int 32", "ice.icefutures.bgw.sbe.v7.0.productidint32", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_i_d_int_32_null = ProtoField.new("Product I D int 32 Null", "ice.icefutures.bgw.sbe.v7.0.productidint32null", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_name = ProtoField.new("Product Name", "ice.icefutures.bgw.sbe.v7.0.productname", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_name_data = ProtoField.new("Product Name Data", "ice.icefutures.bgw.sbe.v7.0.productnamedata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_name_length = ProtoField.new("Product Name Length", "ice.icefutures.bgw.sbe.v7.0.productnamelength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.product_type = ProtoField.new("Product Type", "ice.icefutures.bgw.sbe.v7.0.producttype", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.put_or_call = ProtoField.new("Put Or Call", "ice.icefutures.bgw.sbe.v7.0.putorcall", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_ack_status = ProtoField.new("Quote Ack Status", "ice.icefutures.bgw.sbe.v7.0.quoteackstatus", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_cancel_request_message_no_quote_entries_group = ProtoField.new("Quote Cancel Request Message no Quote Entries Group", "ice.icefutures.bgw.sbe.v7.0.quotecancelrequestmessagenoquoteentriesgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_cancel_request_message_no_quote_entries_groups = ProtoField.new("Quote Cancel Request Message no Quote Entries Groups", "ice.icefutures.bgw.sbe.v7.0.quotecancelrequestmessagenoquoteentriesgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_cancel_type = ProtoField.new("Quote Cancel Type", "ice.icefutures.bgw.sbe.v7.0.quotecanceltype", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_entry_exchange_code = ProtoField.new("Quote Entry Exchange Code", "ice.icefutures.bgw.sbe.v7.0.quoteentryexchangecode", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_entry_id = ProtoField.new("Quote Entry Id", "ice.icefutures.bgw.sbe.v7.0.quoteentryid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_entry_reject_reason = ProtoField.new("Quote Entry Reject Reason", "ice.icefutures.bgw.sbe.v7.0.quoteentryrejectreason", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_entry_reject_reason_text = ProtoField.new("Quote Entry Reject Reason Text", "ice.icefutures.bgw.sbe.v7.0.quoteentryrejectreasontext", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_id = ProtoField.new("Quote Id", "ice.icefutures.bgw.sbe.v7.0.quoteid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "ice.icefutures.bgw.sbe.v7.0.quoterejectreason", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_set_id = ProtoField.new("Quote Set Id", "ice.icefutures.bgw.sbe.v7.0.quotesetid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.raw_data = ProtoField.new("Raw Data", "ice.icefutures.bgw.sbe.v7.0.rawdata", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.ref_sequence_id = ProtoField.new("Ref Sequence Id", "ice.icefutures.bgw.sbe.v7.0.refsequenceid", ftypes.UINT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.ref_sprd_product_id = ProtoField.new("Ref Sprd Product Id", "ice.icefutures.bgw.sbe.v7.0.refsprdproductid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.reject_reason = ProtoField.new("Reject Reason", "ice.icefutures.bgw.sbe.v7.0.rejectreason", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.reject_response_to = ProtoField.new("Reject Response To", "ice.icefutures.bgw.sbe.v7.0.rejectresponseto", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_2 = ProtoField.new("Reserved 2", "ice.icefutures.bgw.sbe.v7.0.reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_3 = ProtoField.new("Reserved 3", "ice.icefutures.bgw.sbe.v7.0.reserved3", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_4 = ProtoField.new("Reserved 4", "ice.icefutures.bgw.sbe.v7.0.reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_5 = ProtoField.new("Reserved 5", "ice.icefutures.bgw.sbe.v7.0.reserved5", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_6 = ProtoField.new("Reserved 6", "ice.icefutures.bgw.sbe.v7.0.reserved6", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_7 = ProtoField.new("Reserved 7", "ice.icefutures.bgw.sbe.v7.0.reserved7", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_bits = ProtoField.new("Reserved Bits", "ice.icefutures.bgw.sbe.v7.0.reservedbits", ftypes.UINT8, nil, base.DEC, 0x3F)
omi_ice_icefutures_bgw_sbe_v7_0.fields.rfc_status = ProtoField.new("Rfc Status", "ice.icefutures.bgw.sbe.v7.0.rfcstatus", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.rfq_futures_allowed = ProtoField.new("Rfq Futures Allowed", "ice.icefutures.bgw.sbe.v7.0.rfqfuturesallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.rfq_options_allowed = ProtoField.new("Rfq Options Allowed", "ice.icefutures.bgw.sbe.v7.0.rfqoptionsallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.rfq_req_id = ProtoField.new("Rfq Req Id", "ice.icefutures.bgw.sbe.v7.0.rfqreqid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.rfq_system_id = ProtoField.new("Rfq System Id", "ice.icefutures.bgw.sbe.v7.0.rfqsystemid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.risk_protection_reset = ProtoField.new("Risk Protection Reset", "ice.icefutures.bgw.sbe.v7.0.riskprotectionreset", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.schema_id = ProtoField.new("Schema Id", "ice.icefutures.bgw.sbe.v7.0.schemaid", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.screen_last_trade_date = ProtoField.new("Screen Last Trade Date", "ice.icefutures.bgw.sbe.v7.0.screenlasttradedate", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.screen_tick_value = ProtoField.new("Screen Tick Value", "ice.icefutures.bgw.sbe.v7.0.screentickvalue", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "ice.icefutures.bgw.sbe.v7.0.secondaryexecid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_alt_id = ProtoField.new("Security Alt Id", "ice.icefutures.bgw.sbe.v7.0.securityaltid", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "ice.icefutures.bgw.sbe.v7.0.securityaltidsource", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_block_details_group = ProtoField.new("Security Definition Report Message no Block Details Group", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportmessagenoblockdetailsgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_block_details_groups = ProtoField.new("Security Definition Report Message no Block Details Groups", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportmessagenoblockdetailsgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_security_alt_i_d_group = ProtoField.new("Security Definition Report Message no Security Alt I D Group", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportmessagenosecurityaltidgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_security_alt_i_d_groups = ProtoField.new("Security Definition Report Message no Security Alt I D Groups", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportmessagenosecurityaltidgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_block_details_group = ProtoField.new("Security Definition Report Strategy Message no Block Details Group", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportstrategymessagenoblockdetailsgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_block_details_groups = ProtoField.new("Security Definition Report Strategy Message no Block Details Groups", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportstrategymessagenoblockdetailsgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_legs_group = ProtoField.new("Security Definition Report Strategy Message no Legs Group", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportstrategymessagenolegsgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_legs_groups = ProtoField.new("Security Definition Report Strategy Message no Legs Groups", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportstrategymessagenolegsgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_security_alt_i_d_group = ProtoField.new("Security Definition Report Strategy Message no Security Alt I D Group", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportstrategymessagenosecurityaltidgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_security_alt_i_d_groups = ProtoField.new("Security Definition Report Strategy Message no Security Alt I D Groups", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportstrategymessagenosecurityaltidgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_create_strategy_message_no_legs_group = ProtoField.new("Security Definition Request Create Strategy Message no Legs Group", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionrequestcreatestrategymessagenolegsgroup", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_create_strategy_message_no_legs_groups = ProtoField.new("Security Definition Request Create Strategy Message no Legs Groups", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionrequestcreatestrategymessagenolegsgroups", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_desc = ProtoField.new("Security Desc", "ice.icefutures.bgw.sbe.v7.0.securitydesc", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_desc_data = ProtoField.new("Security Desc Data", "ice.icefutures.bgw.sbe.v7.0.securitydescdata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_desc_length = ProtoField.new("Security Desc Length", "ice.icefutures.bgw.sbe.v7.0.securitydesclength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_exchange = ProtoField.new("Security Exchange", "ice.icefutures.bgw.sbe.v7.0.securityexchange", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_exchange_data = ProtoField.new("Security Exchange Data", "ice.icefutures.bgw.sbe.v7.0.securityexchangedata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_exchange_length = ProtoField.new("Security Exchange Length", "ice.icefutures.bgw.sbe.v7.0.securityexchangelength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_id = ProtoField.new("Security Id", "ice.icefutures.bgw.sbe.v7.0.securityid", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_id_data = ProtoField.new("Security Id Data", "ice.icefutures.bgw.sbe.v7.0.securityiddata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_id_length = ProtoField.new("Security Id Length", "ice.icefutures.bgw.sbe.v7.0.securityidlength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_req_id = ProtoField.new("Security Req Id", "ice.icefutures.bgw.sbe.v7.0.securityreqid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_request_type = ProtoField.new("Security Request Type", "ice.icefutures.bgw.sbe.v7.0.securityrequesttype", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_response_id = ProtoField.new("Security Response Id", "ice.icefutures.bgw.sbe.v7.0.securityresponseid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_response_type = ProtoField.new("Security Response Type", "ice.icefutures.bgw.sbe.v7.0.securityresponsetype", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_sub_type_int_16 = ProtoField.new("Security Sub Type int 16", "ice.icefutures.bgw.sbe.v7.0.securitysubtypeint16", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_sub_type_int_16_null = ProtoField.new("Security Sub Type int 16 Null", "ice.icefutures.bgw.sbe.v7.0.securitysubtypeint16null", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_trading_status = ProtoField.new("Security Trading Status", "ice.icefutures.bgw.sbe.v7.0.securitytradingstatus", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_type_security_type_enum = ProtoField.new("Security Type Security Type Enum", "ice.icefutures.bgw.sbe.v7.0.securitytypesecuritytypeenum", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_type_security_type_enum_null = ProtoField.new("Security Type Security Type Enum Null", "ice.icefutures.bgw.sbe.v7.0.securitytypesecuritytypeenumnull", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.self_block_allowed = ProtoField.new("Self Block Allowed", "ice.icefutures.bgw.sbe.v7.0.selfblockallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.self_match_prevention_id = ProtoField.new("Self Match Prevention Id", "ice.icefutures.bgw.sbe.v7.0.selfmatchpreventionid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.self_match_prevention_instruction = ProtoField.new("Self Match Prevention Instruction", "ice.icefutures.bgw.sbe.v7.0.selfmatchpreventioninstruction", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.send_time = ProtoField.new("Send Time", "ice.icefutures.bgw.sbe.v7.0.sendtime", ftypes.UINT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.sequence_id = ProtoField.new("Sequence Id", "ice.icefutures.bgw.sbe.v7.0.sequenceid", ftypes.UINT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.settl_method = ProtoField.new("Settl Method", "ice.icefutures.bgw.sbe.v7.0.settlmethod", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.severity_level = ProtoField.new("Severity Level", "ice.icefutures.bgw.sbe.v7.0.severitylevel", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.side_side_enum = ProtoField.new("Side Side Enum", "ice.icefutures.bgw.sbe.v7.0.sidesideenum", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.side_side_enum_null = ProtoField.new("Side Side Enum Null", "ice.icefutures.bgw.sbe.v7.0.sidesideenumnull", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.simple_open_frame = ProtoField.new("Simple Open Frame", "ice.icefutures.bgw.sbe.v7.0.simpleopenframe", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.simple_open_framing_header = ProtoField.new("Simple Open Framing Header", "ice.icefutures.bgw.sbe.v7.0.simpleopenframingheader", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.start_date = ProtoField.new("Start Date", "ice.icefutures.bgw.sbe.v7.0.startdate", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.status = ProtoField.new("Status", "ice.icefutures.bgw.sbe.v7.0.status", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.stop_elected = ProtoField.new("Stop Elected", "ice.icefutures.bgw.sbe.v7.0.stopelected", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_ice_icefutures_bgw_sbe_v7_0.fields.stop_limit_price_changed = ProtoField.new("Stop Limit Price Changed", "ice.icefutures.bgw.sbe.v7.0.stoplimitpricechanged", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_ice_icefutures_bgw_sbe_v7_0.fields.stop_px = ProtoField.new("Stop Px", "ice.icefutures.bgw.sbe.v7.0.stoppx", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.stops_allowed = ProtoField.new("Stops Allowed", "ice.icefutures.bgw.sbe.v7.0.stopsallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.strategy_security_id = ProtoField.new("Strategy Security Id", "ice.icefutures.bgw.sbe.v7.0.strategysecurityid", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.strategy_security_id_data = ProtoField.new("Strategy Security Id Data", "ice.icefutures.bgw.sbe.v7.0.strategysecurityiddata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.strategy_security_id_length = ProtoField.new("Strategy Security Id Length", "ice.icefutures.bgw.sbe.v7.0.strategysecurityidlength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.strike_exercise_style = ProtoField.new("Strike Exercise Style", "ice.icefutures.bgw.sbe.v7.0.strikeexercisestyle", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.strike_price = ProtoField.new("Strike Price", "ice.icefutures.bgw.sbe.v7.0.strikeprice", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.strip_id = ProtoField.new("Strip Id", "ice.icefutures.bgw.sbe.v7.0.stripid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.strip_name = ProtoField.new("Strip Name", "ice.icefutures.bgw.sbe.v7.0.stripname", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.strip_name_data = ProtoField.new("Strip Name Data", "ice.icefutures.bgw.sbe.v7.0.stripnamedata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.strip_name_length = ProtoField.new("Strip Name Length", "ice.icefutures.bgw.sbe.v7.0.stripnamelength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.strip_type = ProtoField.new("Strip Type", "ice.icefutures.bgw.sbe.v7.0.striptype", ftypes.INT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.success = ProtoField.new("Success", "ice.icefutures.bgw.sbe.v7.0.success", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.supported_schema_version = ProtoField.new("Supported Schema Version", "ice.icefutures.bgw.sbe.v7.0.supportedschemaversion", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.symbol_int_32 = ProtoField.new("Symbol int 32", "ice.icefutures.bgw.sbe.v7.0.symbolint32", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.symbol_int_32_null = ProtoField.new("Symbol int 32 Null", "ice.icefutures.bgw.sbe.v7.0.symbolint32null", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.system_id = ProtoField.new("System Id", "ice.icefutures.bgw.sbe.v7.0.systemid", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.system_sequence_id = ProtoField.new("System Sequence Id", "ice.icefutures.bgw.sbe.v7.0.systemsequenceid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.template_id = ProtoField.new("Template Id", "ice.icefutures.bgw.sbe.v7.0.templateid", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.test_market_indicator_boolean_enum = ProtoField.new("Test Market Indicator Boolean Enum", "ice.icefutures.bgw.sbe.v7.0.testmarketindicatorbooleanenum", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.test_market_indicator_boolean_enum_null = ProtoField.new("Test Market Indicator Boolean Enum Null", "ice.icefutures.bgw.sbe.v7.0.testmarketindicatorbooleanenumnull", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.text = ProtoField.new("Text", "ice.icefutures.bgw.sbe.v7.0.text", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.text_data = ProtoField.new("Text Data", "ice.icefutures.bgw.sbe.v7.0.textdata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.text_length = ProtoField.new("Text Length", "ice.icefutures.bgw.sbe.v7.0.textlength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.tick_value = ProtoField.new("Tick Value", "ice.icefutures.bgw.sbe.v7.0.tickvalue", ftypes.INT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.time_in_force_time_in_force_enum = ProtoField.new("Time In Force Time In Force Enum", "ice.icefutures.bgw.sbe.v7.0.timeinforcetimeinforceenum", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.time_in_force_time_in_force_enum_null = ProtoField.new("Time In Force Time In Force Enum Null", "ice.icefutures.bgw.sbe.v7.0.timeinforcetimeinforceenumnull", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.time_priority = ProtoField.new("Time Priority", "ice.icefutures.bgw.sbe.v7.0.timepriority", ftypes.UINT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.trade_flags = ProtoField.new("Trade Flags", "ice.icefutures.bgw.sbe.v7.0.tradeflags", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.trade_type = ProtoField.new("Trade Type", "ice.icefutures.bgw.sbe.v7.0.tradetype", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.trading_capacity = ProtoField.new("Trading Capacity", "ice.icefutures.bgw.sbe.v7.0.tradingcapacity", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.transact_details = ProtoField.new("Transact Details", "ice.icefutures.bgw.sbe.v7.0.transactdetails", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.transact_time_utc_timestamp = ProtoField.new("Transact Time Utc Timestamp", "ice.icefutures.bgw.sbe.v7.0.transacttimeutctimestamp", ftypes.UINT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.transact_time_utc_timestamp_null = ProtoField.new("Transact Time Utc Timestamp Null", "ice.icefutures.bgw.sbe.v7.0.transacttimeutctimestampnull", ftypes.UINT64)
omi_ice_icefutures_bgw_sbe_v7_0.fields.uds_futures_allowed = ProtoField.new("Uds Futures Allowed", "ice.icefutures.bgw.sbe.v7.0.udsfuturesallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.uds_options_allowed = ProtoField.new("Uds Options Allowed", "ice.icefutures.bgw.sbe.v7.0.udsoptionsallowed", ftypes.UINT8)
omi_ice_icefutures_bgw_sbe_v7_0.fields.underlying_product = ProtoField.new("Underlying Product", "ice.icefutures.bgw.sbe.v7.0.underlyingproduct", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "ice.icefutures.bgw.sbe.v7.0.underlyingsecurityid", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.underlying_strategy_symbol = ProtoField.new("Underlying Strategy Symbol", "ice.icefutures.bgw.sbe.v7.0.underlyingstrategysymbol", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.underlying_symbol_int_32 = ProtoField.new("Underlying Symbol int 32", "ice.icefutures.bgw.sbe.v7.0.underlyingsymbolint32", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.underlying_symbol_int_32_null = ProtoField.new("Underlying Symbol int 32 Null", "ice.icefutures.bgw.sbe.v7.0.underlyingsymbolint32null", ftypes.INT32)
omi_ice_icefutures_bgw_sbe_v7_0.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "ice.icefutures.bgw.sbe.v7.0.unitofmeasure", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.unit_of_measure_data = ProtoField.new("Unit Of Measure Data", "ice.icefutures.bgw.sbe.v7.0.unitofmeasuredata", ftypes.BYTES)
omi_ice_icefutures_bgw_sbe_v7_0.fields.unit_of_measure_length = ProtoField.new("Unit Of Measure Length", "ice.icefutures.bgw.sbe.v7.0.unitofmeasurelength", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.user_id = ProtoField.new("User Id", "ice.icefutures.bgw.sbe.v7.0.userid", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.version = ProtoField.new("Version", "ice.icefutures.bgw.sbe.v7.0.version", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.waiver_indicator = ProtoField.new("Waiver Indicator", "ice.icefutures.bgw.sbe.v7.0.waiverindicator", ftypes.UINT8)

-- Ice IceFutures Sbe Bgw 7.0 Application Messages
omi_ice_icefutures_bgw_sbe_v7_0.fields.cancel_replace_request_message = ProtoField.new("Cancel Replace Request Message", "ice.icefutures.bgw.sbe.v7.0.cancelreplacerequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.cancel_request_message = ProtoField.new("Cancel Request Message", "ice.icefutures.bgw.sbe.v7.0.cancelrequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.error_message = ProtoField.new("Error Message", "ice.icefutures.bgw.sbe.v7.0.errormessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_cancel_message = ProtoField.new("Execution Report Cancel Message", "ice.icefutures.bgw.sbe.v7.0.executionreportcancelmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_modify_message = ProtoField.new("Execution Report Modify Message", "ice.icefutures.bgw.sbe.v7.0.executionreportmodifymessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_new_message = ProtoField.new("Execution Report New Message", "ice.icefutures.bgw.sbe.v7.0.executionreportnewmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_reject_message = ProtoField.new("Execution Report Reject Message", "ice.icefutures.bgw.sbe.v7.0.executionreportrejectmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_snapshot_message = ProtoField.new("Execution Report Snapshot Message", "ice.icefutures.bgw.sbe.v7.0.executionreportsnapshotmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_trade_message = ProtoField.new("Execution Report Trade Message", "ice.icefutures.bgw.sbe.v7.0.executionreporttrademessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.ip_report_message = ProtoField.new("Ip Report Message", "ice.icefutures.bgw.sbe.v7.0.ipreportmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.ip_request_message = ProtoField.new("Ip Request Message", "ice.icefutures.bgw.sbe.v7.0.iprequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.logon_report_message = ProtoField.new("Logon Report Message", "ice.icefutures.bgw.sbe.v7.0.logonreportmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.logon_request_message = ProtoField.new("Logon Request Message", "ice.icefutures.bgw.sbe.v7.0.logonrequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.logout_report_message = ProtoField.new("Logout Report Message", "ice.icefutures.bgw.sbe.v7.0.logoutreportmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.logout_request_message = ProtoField.new("Logout Request Message", "ice.icefutures.bgw.sbe.v7.0.logoutrequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_report_message = ProtoField.new("Mass Quote Report Message", "ice.icefutures.bgw.sbe.v7.0.massquotereportmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_request_message = ProtoField.new("Mass Quote Request Message", "ice.icefutures.bgw.sbe.v7.0.massquoterequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_report_message = ProtoField.new("New Order Cross Report Message", "ice.icefutures.bgw.sbe.v7.0.newordercrossreportmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message = ProtoField.new("New Order Cross Request Message", "ice.icefutures.bgw.sbe.v7.0.newordercrossrequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_request_message = ProtoField.new("New Order Request Message", "ice.icefutures.bgw.sbe.v7.0.neworderrequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.news_message = ProtoField.new("News Message", "ice.icefutures.bgw.sbe.v7.0.newsmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.order_mass_cancel_report_message = ProtoField.new("Order Mass Cancel Report Message", "ice.icefutures.bgw.sbe.v7.0.ordermasscancelreportmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.order_mass_cancel_request_message = ProtoField.new("Order Mass Cancel Request Message", "ice.icefutures.bgw.sbe.v7.0.ordermasscancelrequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_cancel_request_message = ProtoField.new("Quote Cancel Request Message", "ice.icefutures.bgw.sbe.v7.0.quotecancelrequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_report_message = ProtoField.new("Quote Report Message", "ice.icefutures.bgw.sbe.v7.0.quotereportmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_request_message = ProtoField.new("Quote Request Message", "ice.icefutures.bgw.sbe.v7.0.quoterequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.resend_report_message = ProtoField.new("Resend Report Message", "ice.icefutures.bgw.sbe.v7.0.resendreportmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.resend_request_message = ProtoField.new("Resend Request Message", "ice.icefutures.bgw.sbe.v7.0.resendrequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_reject_message = ProtoField.new("Security Definition Reject Message", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionrejectmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message = ProtoField.new("Security Definition Report Message", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_product_message = ProtoField.new("Security Definition Report Product Message", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportproductmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message = ProtoField.new("Security Definition Report Strategy Message", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportstrategymessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_create_flex_message = ProtoField.new("Security Definition Request Create Flex Message", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionrequestcreateflexmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_create_strategy_message = ProtoField.new("Security Definition Request Create Strategy Message", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionrequestcreatestrategymessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_message = ProtoField.new("Security Definition Request Message", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionrequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "ice.icefutures.bgw.sbe.v7.0.sequenceresetmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.simple_open_framing_header_message = ProtoField.new("Simple Open Framing Header Message", "ice.icefutures.bgw.sbe.v7.0.simpleopenframingheadermessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.trader_logon_report_message = ProtoField.new("Trader Logon Report Message", "ice.icefutures.bgw.sbe.v7.0.traderlogonreportmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.trader_logon_request_message = ProtoField.new("Trader Logon Request Message", "ice.icefutures.bgw.sbe.v7.0.traderlogonrequestmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.trader_logout_report_message = ProtoField.new("Trader Logout Report Message", "ice.icefutures.bgw.sbe.v7.0.traderlogoutreportmessage", ftypes.STRING)
omi_ice_icefutures_bgw_sbe_v7_0.fields.trader_logout_request_message = ProtoField.new("Trader Logout Request Message", "ice.icefutures.bgw.sbe.v7.0.traderlogoutrequestmessage", ftypes.STRING)

-- Ice IceFutures Bgw Sbe 7.0 generated fields
omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_report_message_no_users_group_index = ProtoField.new("I P Report Message no Users Group Index", "ice.icefutures.bgw.sbe.v7.0.ipreportmessagenousersgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_request_message_no_users_group_index = ProtoField.new("I P Request Message no Users Group Index", "ice.icefutures.bgw.sbe.v7.0.iprequestmessagenousersgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_report_message_no_quote_sets_group_index = ProtoField.new("Mass Quote Report Message no Quote Sets Group Index", "ice.icefutures.bgw.sbe.v7.0.massquotereportmessagenoquotesetsgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_request_message_no_quote_sets_group_index = ProtoField.new("Mass Quote Request Message no Quote Sets Group Index", "ice.icefutures.bgw.sbe.v7.0.massquoterequestmessagenoquotesetsgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_legs_group_index = ProtoField.new("New Order Cross Request Message no Legs Group Index", "ice.icefutures.bgw.sbe.v7.0.newordercrossrequestmessagenolegsgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_sides_group_index = ProtoField.new("New Order Cross Request Message no Sides Group Index", "ice.icefutures.bgw.sbe.v7.0.newordercrossrequestmessagenosidesgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_cancel_request_message_no_quote_entries_group_index = ProtoField.new("Quote Cancel Request Message no Quote Entries Group Index", "ice.icefutures.bgw.sbe.v7.0.quotecancelrequestmessagenoquoteentriesgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_block_details_group_index = ProtoField.new("Security Definition Report Message no Block Details Group Index", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportmessagenoblockdetailsgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_security_alt_i_d_group_index = ProtoField.new("Security Definition Report Message no Security Alt I D Group Index", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportmessagenosecurityaltidgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_block_details_group_index = ProtoField.new("Security Definition Report Strategy Message no Block Details Group Index", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportstrategymessagenoblockdetailsgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_legs_group_index = ProtoField.new("Security Definition Report Strategy Message no Legs Group Index", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportstrategymessagenolegsgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_security_alt_i_d_group_index = ProtoField.new("Security Definition Report Strategy Message no Security Alt I D Group Index", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionreportstrategymessagenosecurityaltidgroupindex", ftypes.UINT16)
omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_create_strategy_message_no_legs_group_index = ProtoField.new("Security Definition Request Create Strategy Message no Legs Group Index", "ice.icefutures.bgw.sbe.v7.0.securitydefinitionrequestcreatestrategymessagenolegsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Ice IceFutures Bgw Sbe 7.0 Element Dissection Options
show.application_messages = true
show.cleared_alias = true
show.exec_i_d_order_exec_id = true
show.framing_header = true
show.group_size_encoding = true
show.header_flags = true
show.home_exchange = true
show.hub_alias = true
show.hub_name = true
show.i_p_report_message_no_users_group = true
show.i_p_report_message_no_users_groups = true
show.i_p_request_message_no_users_group = true
show.i_p_request_message_no_users_groups = true
show.mass_quote_report_message_no_quote_sets_group = true
show.mass_quote_report_message_no_quote_sets_groups = true
show.mass_quote_request_message_no_quote_sets_group = true
show.mass_quote_request_message_no_quote_sets_groups = true
show.message_header = true
show.new_order_cross_request_message_no_legs_group = true
show.new_order_cross_request_message_no_legs_groups = true
show.new_order_cross_request_message_no_sides_group = true
show.new_order_cross_request_message_no_sides_groups = true
show.order_modification_flags = true
show.orig_order_id = true
show.packet = true
show.physical_code = true
show.price_denomination = true
show.price_unit = true
show.product_desc = true
show.product_group = true
show.product_name = true
show.quote_cancel_request_message_no_quote_entries_group = true
show.quote_cancel_request_message_no_quote_entries_groups = true
show.security_definition_report_message_no_block_details_group = true
show.security_definition_report_message_no_block_details_groups = true
show.security_definition_report_message_no_security_alt_i_d_group = true
show.security_definition_report_message_no_security_alt_i_d_groups = true
show.security_definition_report_strategy_message_no_block_details_group = true
show.security_definition_report_strategy_message_no_block_details_groups = true
show.security_definition_report_strategy_message_no_legs_group = true
show.security_definition_report_strategy_message_no_legs_groups = true
show.security_definition_report_strategy_message_no_security_alt_i_d_group = true
show.security_definition_report_strategy_message_no_security_alt_i_d_groups = true
show.security_definition_request_create_strategy_message_no_legs_group = true
show.security_definition_request_create_strategy_message_no_legs_groups = true
show.security_desc = true
show.security_exchange = true
show.security_id = true
show.simple_open_frame = true
show.simple_open_framing_header = true
show.strategy_security_id = true
show.strip_name = true
show.text = true
show.trade_flags = true
show.unit_of_measure = true
show.security_definition_report_strategy_message_no_block_details_group_index = true
show.security_definition_report_strategy_message_no_security_alt_i_d_group_index = true
show.security_definition_report_strategy_message_no_legs_group_index = true
show.security_definition_report_message_no_block_details_group_index = true
show.security_definition_report_message_no_security_alt_i_d_group_index = true
show.i_p_request_message_no_users_group_index = true
show.i_p_report_message_no_users_group_index = true
show.new_order_cross_request_message_no_sides_group_index = true
show.new_order_cross_request_message_no_legs_group_index = true
show.mass_quote_request_message_no_quote_sets_group_index = true
show.quote_cancel_request_message_no_quote_entries_group_index = true
show.security_definition_request_create_strategy_message_no_legs_group_index = true
show.mass_quote_report_message_no_quote_sets_group_index = true

-- Register Ice IceFutures Bgw Sbe 7.0 Show Options
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_cleared_alias = Pref.bool("Show Cleared Alias", show.cleared_alias, "Parse and add Cleared Alias to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_exec_i_d_order_exec_id = Pref.bool("Show Exec I D order Exec Id", show.exec_i_d_order_exec_id, "Parse and add Exec I D order Exec Id to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_framing_header = Pref.bool("Show Framing Header", show.framing_header, "Parse and add Framing Header to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_header_flags = Pref.bool("Show Header Flags", show.header_flags, "Parse and add Header Flags to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_home_exchange = Pref.bool("Show Home Exchange", show.home_exchange, "Parse and add Home Exchange to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_hub_alias = Pref.bool("Show Hub Alias", show.hub_alias, "Parse and add Hub Alias to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_hub_name = Pref.bool("Show Hub Name", show.hub_name, "Parse and add Hub Name to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_report_message_no_users_group = Pref.bool("Show I P Report Message no Users Group", show.i_p_report_message_no_users_group, "Parse and add I P Report Message no Users Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_report_message_no_users_groups = Pref.bool("Show I P Report Message no Users Groups", show.i_p_report_message_no_users_groups, "Parse and add I P Report Message no Users Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_request_message_no_users_group = Pref.bool("Show I P Request Message no Users Group", show.i_p_request_message_no_users_group, "Parse and add I P Request Message no Users Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_request_message_no_users_groups = Pref.bool("Show I P Request Message no Users Groups", show.i_p_request_message_no_users_groups, "Parse and add I P Request Message no Users Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_report_message_no_quote_sets_group = Pref.bool("Show Mass Quote Report Message no Quote Sets Group", show.mass_quote_report_message_no_quote_sets_group, "Parse and add Mass Quote Report Message no Quote Sets Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_report_message_no_quote_sets_groups = Pref.bool("Show Mass Quote Report Message no Quote Sets Groups", show.mass_quote_report_message_no_quote_sets_groups, "Parse and add Mass Quote Report Message no Quote Sets Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_request_message_no_quote_sets_group = Pref.bool("Show Mass Quote Request Message no Quote Sets Group", show.mass_quote_request_message_no_quote_sets_group, "Parse and add Mass Quote Request Message no Quote Sets Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_request_message_no_quote_sets_groups = Pref.bool("Show Mass Quote Request Message no Quote Sets Groups", show.mass_quote_request_message_no_quote_sets_groups, "Parse and add Mass Quote Request Message no Quote Sets Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_legs_group = Pref.bool("Show New Order Cross Request Message no Legs Group", show.new_order_cross_request_message_no_legs_group, "Parse and add New Order Cross Request Message no Legs Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_legs_groups = Pref.bool("Show New Order Cross Request Message no Legs Groups", show.new_order_cross_request_message_no_legs_groups, "Parse and add New Order Cross Request Message no Legs Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_sides_group = Pref.bool("Show New Order Cross Request Message no Sides Group", show.new_order_cross_request_message_no_sides_group, "Parse and add New Order Cross Request Message no Sides Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_sides_groups = Pref.bool("Show New Order Cross Request Message no Sides Groups", show.new_order_cross_request_message_no_sides_groups, "Parse and add New Order Cross Request Message no Sides Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_order_modification_flags = Pref.bool("Show Order Modification Flags", show.order_modification_flags, "Parse and add Order Modification Flags to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_orig_order_id = Pref.bool("Show Orig Order Id", show.orig_order_id, "Parse and add Orig Order Id to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_physical_code = Pref.bool("Show Physical Code", show.physical_code, "Parse and add Physical Code to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_price_denomination = Pref.bool("Show Price Denomination", show.price_denomination, "Parse and add Price Denomination to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_price_unit = Pref.bool("Show Price Unit", show.price_unit, "Parse and add Price Unit to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_product_desc = Pref.bool("Show Product Desc", show.product_desc, "Parse and add Product Desc to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_product_group = Pref.bool("Show Product Group", show.product_group, "Parse and add Product Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_product_name = Pref.bool("Show Product Name", show.product_name, "Parse and add Product Name to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_quote_cancel_request_message_no_quote_entries_group = Pref.bool("Show Quote Cancel Request Message no Quote Entries Group", show.quote_cancel_request_message_no_quote_entries_group, "Parse and add Quote Cancel Request Message no Quote Entries Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_quote_cancel_request_message_no_quote_entries_groups = Pref.bool("Show Quote Cancel Request Message no Quote Entries Groups", show.quote_cancel_request_message_no_quote_entries_groups, "Parse and add Quote Cancel Request Message no Quote Entries Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_block_details_group = Pref.bool("Show Security Definition Report Message no Block Details Group", show.security_definition_report_message_no_block_details_group, "Parse and add Security Definition Report Message no Block Details Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_block_details_groups = Pref.bool("Show Security Definition Report Message no Block Details Groups", show.security_definition_report_message_no_block_details_groups, "Parse and add Security Definition Report Message no Block Details Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_security_alt_i_d_group = Pref.bool("Show Security Definition Report Message no Security Alt I D Group", show.security_definition_report_message_no_security_alt_i_d_group, "Parse and add Security Definition Report Message no Security Alt I D Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_security_alt_i_d_groups = Pref.bool("Show Security Definition Report Message no Security Alt I D Groups", show.security_definition_report_message_no_security_alt_i_d_groups, "Parse and add Security Definition Report Message no Security Alt I D Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_block_details_group = Pref.bool("Show Security Definition Report Strategy Message no Block Details Group", show.security_definition_report_strategy_message_no_block_details_group, "Parse and add Security Definition Report Strategy Message no Block Details Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_block_details_groups = Pref.bool("Show Security Definition Report Strategy Message no Block Details Groups", show.security_definition_report_strategy_message_no_block_details_groups, "Parse and add Security Definition Report Strategy Message no Block Details Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_legs_group = Pref.bool("Show Security Definition Report Strategy Message no Legs Group", show.security_definition_report_strategy_message_no_legs_group, "Parse and add Security Definition Report Strategy Message no Legs Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_legs_groups = Pref.bool("Show Security Definition Report Strategy Message no Legs Groups", show.security_definition_report_strategy_message_no_legs_groups, "Parse and add Security Definition Report Strategy Message no Legs Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_security_alt_i_d_group = Pref.bool("Show Security Definition Report Strategy Message no Security Alt I D Group", show.security_definition_report_strategy_message_no_security_alt_i_d_group, "Parse and add Security Definition Report Strategy Message no Security Alt I D Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_security_alt_i_d_groups = Pref.bool("Show Security Definition Report Strategy Message no Security Alt I D Groups", show.security_definition_report_strategy_message_no_security_alt_i_d_groups, "Parse and add Security Definition Report Strategy Message no Security Alt I D Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_request_create_strategy_message_no_legs_group = Pref.bool("Show Security Definition Request Create Strategy Message no Legs Group", show.security_definition_request_create_strategy_message_no_legs_group, "Parse and add Security Definition Request Create Strategy Message no Legs Group to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_request_create_strategy_message_no_legs_groups = Pref.bool("Show Security Definition Request Create Strategy Message no Legs Groups", show.security_definition_request_create_strategy_message_no_legs_groups, "Parse and add Security Definition Request Create Strategy Message no Legs Groups to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_desc = Pref.bool("Show Security Desc", show.security_desc, "Parse and add Security Desc to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_exchange = Pref.bool("Show Security Exchange", show.security_exchange, "Parse and add Security Exchange to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_id = Pref.bool("Show Security Id", show.security_id, "Parse and add Security Id to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_simple_open_frame = Pref.bool("Show Simple Open Frame", show.simple_open_frame, "Parse and add Simple Open Frame to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_simple_open_framing_header = Pref.bool("Show Simple Open Framing Header", show.simple_open_framing_header, "Parse and add Simple Open Framing Header to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_strategy_security_id = Pref.bool("Show Strategy Security Id", show.strategy_security_id, "Parse and add Strategy Security Id to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_strip_name = Pref.bool("Show Strip Name", show.strip_name, "Parse and add Strip Name to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_text = Pref.bool("Show Text", show.text, "Parse and add Text to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_unit_of_measure = Pref.bool("Show Unit Of Measure", show.unit_of_measure, "Parse and add Unit Of Measure to protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_block_details_group_index = Pref.bool("Show Security Definition Report Strategy Message no Block Details Group Index", show.security_definition_report_strategy_message_no_block_details_group_index, "Show generated security definition report strategy message no block details group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_security_alt_i_d_group_index = Pref.bool("Show Security Definition Report Strategy Message no Security Alt I D Group Index", show.security_definition_report_strategy_message_no_security_alt_i_d_group_index, "Show generated security definition report strategy message no security alt i d group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_legs_group_index = Pref.bool("Show Security Definition Report Strategy Message no Legs Group Index", show.security_definition_report_strategy_message_no_legs_group_index, "Show generated security definition report strategy message no legs group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_block_details_group_index = Pref.bool("Show Security Definition Report Message no Block Details Group Index", show.security_definition_report_message_no_block_details_group_index, "Show generated security definition report message no block details group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_security_alt_i_d_group_index = Pref.bool("Show Security Definition Report Message no Security Alt I D Group Index", show.security_definition_report_message_no_security_alt_i_d_group_index, "Show generated security definition report message no security alt i d group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_request_message_no_users_group_index = Pref.bool("Show I P Request Message no Users Group Index", show.i_p_request_message_no_users_group_index, "Show generated i p request message no users group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_report_message_no_users_group_index = Pref.bool("Show I P Report Message no Users Group Index", show.i_p_report_message_no_users_group_index, "Show generated i p report message no users group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_sides_group_index = Pref.bool("Show New Order Cross Request Message no Sides Group Index", show.new_order_cross_request_message_no_sides_group_index, "Show generated new order cross request message no sides group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_legs_group_index = Pref.bool("Show New Order Cross Request Message no Legs Group Index", show.new_order_cross_request_message_no_legs_group_index, "Show generated new order cross request message no legs group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_request_message_no_quote_sets_group_index = Pref.bool("Show Mass Quote Request Message no Quote Sets Group Index", show.mass_quote_request_message_no_quote_sets_group_index, "Show generated mass quote request message no quote sets group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_quote_cancel_request_message_no_quote_entries_group_index = Pref.bool("Show Quote Cancel Request Message no Quote Entries Group Index", show.quote_cancel_request_message_no_quote_entries_group_index, "Show generated quote cancel request message no quote entries group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_request_create_strategy_message_no_legs_group_index = Pref.bool("Show Security Definition Request Create Strategy Message no Legs Group Index", show.security_definition_request_create_strategy_message_no_legs_group_index, "Show generated security definition request create strategy message no legs group index in protocol tree")
omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_report_message_no_quote_sets_group_index = Pref.bool("Show Mass Quote Report Message no Quote Sets Group Index", show.mass_quote_report_message_no_quote_sets_group_index, "Show generated mass quote report message no quote sets group index in protocol tree")

-- Handle changed preferences
function omi_ice_icefutures_bgw_sbe_v7_0.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_application_messages then
    show.application_messages = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_application_messages
  end
  if show.cleared_alias ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_cleared_alias then
    show.cleared_alias = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_cleared_alias
  end
  if show.exec_i_d_order_exec_id ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_exec_i_d_order_exec_id then
    show.exec_i_d_order_exec_id = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_exec_i_d_order_exec_id
  end
  if show.framing_header ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_framing_header then
    show.framing_header = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_framing_header
  end
  if show.group_size_encoding ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_group_size_encoding then
    show.group_size_encoding = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_group_size_encoding
  end
  if show.header_flags ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_header_flags then
    show.header_flags = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_header_flags
  end
  if show.home_exchange ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_home_exchange then
    show.home_exchange = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_home_exchange
  end
  if show.hub_alias ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_hub_alias then
    show.hub_alias = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_hub_alias
  end
  if show.hub_name ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_hub_name then
    show.hub_name = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_hub_name
  end
  if show.i_p_report_message_no_users_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_report_message_no_users_group then
    show.i_p_report_message_no_users_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_report_message_no_users_group
  end
  if show.i_p_report_message_no_users_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_report_message_no_users_groups then
    show.i_p_report_message_no_users_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_report_message_no_users_groups
  end
  if show.i_p_request_message_no_users_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_request_message_no_users_group then
    show.i_p_request_message_no_users_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_request_message_no_users_group
  end
  if show.i_p_request_message_no_users_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_request_message_no_users_groups then
    show.i_p_request_message_no_users_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_request_message_no_users_groups
  end
  if show.mass_quote_report_message_no_quote_sets_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_report_message_no_quote_sets_group then
    show.mass_quote_report_message_no_quote_sets_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_report_message_no_quote_sets_group
  end
  if show.mass_quote_report_message_no_quote_sets_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_report_message_no_quote_sets_groups then
    show.mass_quote_report_message_no_quote_sets_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_report_message_no_quote_sets_groups
  end
  if show.mass_quote_request_message_no_quote_sets_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_request_message_no_quote_sets_group then
    show.mass_quote_request_message_no_quote_sets_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_request_message_no_quote_sets_group
  end
  if show.mass_quote_request_message_no_quote_sets_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_request_message_no_quote_sets_groups then
    show.mass_quote_request_message_no_quote_sets_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_request_message_no_quote_sets_groups
  end
  if show.message_header ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_message_header then
    show.message_header = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_message_header
  end
  if show.new_order_cross_request_message_no_legs_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_legs_group then
    show.new_order_cross_request_message_no_legs_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_legs_group
  end
  if show.new_order_cross_request_message_no_legs_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_legs_groups then
    show.new_order_cross_request_message_no_legs_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_legs_groups
  end
  if show.new_order_cross_request_message_no_sides_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_sides_group then
    show.new_order_cross_request_message_no_sides_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_sides_group
  end
  if show.new_order_cross_request_message_no_sides_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_sides_groups then
    show.new_order_cross_request_message_no_sides_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_sides_groups
  end
  if show.order_modification_flags ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_order_modification_flags then
    show.order_modification_flags = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_order_modification_flags
  end
  if show.orig_order_id ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_orig_order_id then
    show.orig_order_id = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_orig_order_id
  end
  if show.packet ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_packet then
    show.packet = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_packet
  end
  if show.physical_code ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_physical_code then
    show.physical_code = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_physical_code
  end
  if show.price_denomination ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_price_denomination then
    show.price_denomination = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_price_denomination
  end
  if show.price_unit ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_price_unit then
    show.price_unit = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_price_unit
  end
  if show.product_desc ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_product_desc then
    show.product_desc = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_product_desc
  end
  if show.product_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_product_group then
    show.product_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_product_group
  end
  if show.product_name ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_product_name then
    show.product_name = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_product_name
  end
  if show.quote_cancel_request_message_no_quote_entries_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_quote_cancel_request_message_no_quote_entries_group then
    show.quote_cancel_request_message_no_quote_entries_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_quote_cancel_request_message_no_quote_entries_group
  end
  if show.quote_cancel_request_message_no_quote_entries_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_quote_cancel_request_message_no_quote_entries_groups then
    show.quote_cancel_request_message_no_quote_entries_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_quote_cancel_request_message_no_quote_entries_groups
  end
  if show.security_definition_report_message_no_block_details_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_block_details_group then
    show.security_definition_report_message_no_block_details_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_block_details_group
  end
  if show.security_definition_report_message_no_block_details_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_block_details_groups then
    show.security_definition_report_message_no_block_details_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_block_details_groups
  end
  if show.security_definition_report_message_no_security_alt_i_d_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_security_alt_i_d_group then
    show.security_definition_report_message_no_security_alt_i_d_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_security_alt_i_d_group
  end
  if show.security_definition_report_message_no_security_alt_i_d_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_security_alt_i_d_groups then
    show.security_definition_report_message_no_security_alt_i_d_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_security_alt_i_d_groups
  end
  if show.security_definition_report_strategy_message_no_block_details_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_block_details_group then
    show.security_definition_report_strategy_message_no_block_details_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_block_details_group
  end
  if show.security_definition_report_strategy_message_no_block_details_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_block_details_groups then
    show.security_definition_report_strategy_message_no_block_details_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_block_details_groups
  end
  if show.security_definition_report_strategy_message_no_legs_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_legs_group then
    show.security_definition_report_strategy_message_no_legs_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_legs_group
  end
  if show.security_definition_report_strategy_message_no_legs_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_legs_groups then
    show.security_definition_report_strategy_message_no_legs_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_legs_groups
  end
  if show.security_definition_report_strategy_message_no_security_alt_i_d_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_security_alt_i_d_group then
    show.security_definition_report_strategy_message_no_security_alt_i_d_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_security_alt_i_d_group
  end
  if show.security_definition_report_strategy_message_no_security_alt_i_d_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_security_alt_i_d_groups then
    show.security_definition_report_strategy_message_no_security_alt_i_d_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_security_alt_i_d_groups
  end
  if show.security_definition_request_create_strategy_message_no_legs_group ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_request_create_strategy_message_no_legs_group then
    show.security_definition_request_create_strategy_message_no_legs_group = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_request_create_strategy_message_no_legs_group
  end
  if show.security_definition_request_create_strategy_message_no_legs_groups ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_request_create_strategy_message_no_legs_groups then
    show.security_definition_request_create_strategy_message_no_legs_groups = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_request_create_strategy_message_no_legs_groups
  end
  if show.security_desc ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_desc then
    show.security_desc = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_desc
  end
  if show.security_exchange ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_exchange then
    show.security_exchange = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_exchange
  end
  if show.security_id ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_id then
    show.security_id = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_id
  end
  if show.simple_open_frame ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_simple_open_frame then
    show.simple_open_frame = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_simple_open_frame
  end
  if show.simple_open_framing_header ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_simple_open_framing_header then
    show.simple_open_framing_header = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_simple_open_framing_header
  end
  if show.strategy_security_id ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_strategy_security_id then
    show.strategy_security_id = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_strategy_security_id
  end
  if show.strip_name ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_strip_name then
    show.strip_name = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_strip_name
  end
  if show.text ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_text then
    show.text = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_text
  end
  if show.trade_flags ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_trade_flags then
    show.trade_flags = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_trade_flags
  end
  if show.unit_of_measure ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_unit_of_measure then
    show.unit_of_measure = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_unit_of_measure
  end
  if show.security_definition_report_strategy_message_no_block_details_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_block_details_group_index then
    show.security_definition_report_strategy_message_no_block_details_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_block_details_group_index
  end
  if show.security_definition_report_strategy_message_no_security_alt_i_d_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_security_alt_i_d_group_index then
    show.security_definition_report_strategy_message_no_security_alt_i_d_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_security_alt_i_d_group_index
  end
  if show.security_definition_report_strategy_message_no_legs_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_legs_group_index then
    show.security_definition_report_strategy_message_no_legs_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_strategy_message_no_legs_group_index
  end
  if show.security_definition_report_message_no_block_details_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_block_details_group_index then
    show.security_definition_report_message_no_block_details_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_block_details_group_index
  end
  if show.security_definition_report_message_no_security_alt_i_d_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_security_alt_i_d_group_index then
    show.security_definition_report_message_no_security_alt_i_d_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_report_message_no_security_alt_i_d_group_index
  end
  if show.i_p_request_message_no_users_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_request_message_no_users_group_index then
    show.i_p_request_message_no_users_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_request_message_no_users_group_index
  end
  if show.i_p_report_message_no_users_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_report_message_no_users_group_index then
    show.i_p_report_message_no_users_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_i_p_report_message_no_users_group_index
  end
  if show.new_order_cross_request_message_no_sides_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_sides_group_index then
    show.new_order_cross_request_message_no_sides_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_sides_group_index
  end
  if show.new_order_cross_request_message_no_legs_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_legs_group_index then
    show.new_order_cross_request_message_no_legs_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_new_order_cross_request_message_no_legs_group_index
  end
  if show.mass_quote_request_message_no_quote_sets_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_request_message_no_quote_sets_group_index then
    show.mass_quote_request_message_no_quote_sets_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_request_message_no_quote_sets_group_index
  end
  if show.quote_cancel_request_message_no_quote_entries_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_quote_cancel_request_message_no_quote_entries_group_index then
    show.quote_cancel_request_message_no_quote_entries_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_quote_cancel_request_message_no_quote_entries_group_index
  end
  if show.security_definition_request_create_strategy_message_no_legs_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_request_create_strategy_message_no_legs_group_index then
    show.security_definition_request_create_strategy_message_no_legs_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_security_definition_request_create_strategy_message_no_legs_group_index
  end
  if show.mass_quote_report_message_no_quote_sets_group_index ~= omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_report_message_no_quote_sets_group_index then
    show.mass_quote_report_message_no_quote_sets_group_index = omi_ice_icefutures_bgw_sbe_v7_0.prefs.show_mass_quote_report_message_no_quote_sets_group_index
  end
end


-----------------------------------------------------------------------
-- Ice IceFutures Bgw Sbe 7.0 Fields
-----------------------------------------------------------------------

-- Alloc Handl Inst
ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst = {}

-- Size: Alloc Handl Inst
ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.size = 1

-- Display: Alloc Handl Inst
ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Alloc Handl Inst: No Value"
  end

  if value == "A" then
    return "Alloc Handl Inst: Apt (A)"
  end
  if value == "G" then
    return "Alloc Handl Inst: G (G)"
  end

  return "Alloc Handl Inst: Unknown("..value..")"
end

-- Dissect: Alloc Handl Inst
ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.alloc_handl_inst, range, value, display)

  return offset + length, value
end

-- Allocation Account
ice_icefutures_bgw_sbe_v7_0.allocation_account = {}

-- Size: Allocation Account
ice_icefutures_bgw_sbe_v7_0.allocation_account.size = 20

-- Display: Allocation Account
ice_icefutures_bgw_sbe_v7_0.allocation_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Allocation Account: No Value"
  end

  return "Allocation Account: "..value
end

-- Dissect: Allocation Account
ice_icefutures_bgw_sbe_v7_0.allocation_account.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.allocation_account.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.allocation_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.allocation_account, range, value, display)

  return offset + length, value
end

-- Aon Allowed
ice_icefutures_bgw_sbe_v7_0.aon_allowed = {}

-- Size: Aon Allowed
ice_icefutures_bgw_sbe_v7_0.aon_allowed.size = 1

-- Display: Aon Allowed
ice_icefutures_bgw_sbe_v7_0.aon_allowed.display = function(value)
  if value == 0 then
    return "Aon Allowed: False (0)"
  end
  if value == 1 then
    return "Aon Allowed: True (1)"
  end

  return "Aon Allowed: Unknown("..value..")"
end

-- Dissect: Aon Allowed
ice_icefutures_bgw_sbe_v7_0.aon_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.aon_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.aon_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.aon_allowed, range, value, display)

  return offset + length, value
end

-- Application Name
ice_icefutures_bgw_sbe_v7_0.application_name = {}

-- Size: Application Name
ice_icefutures_bgw_sbe_v7_0.application_name.size = 30

-- Display: Application Name
ice_icefutures_bgw_sbe_v7_0.application_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Application Name: No Value"
  end

  return "Application Name: "..value
end

-- Dissect: Application Name
ice_icefutures_bgw_sbe_v7_0.application_name.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.application_name.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.application_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.application_name, range, value, display)

  return offset + length, value
end

-- Application Vendor
ice_icefutures_bgw_sbe_v7_0.application_vendor = {}

-- Size: Application Vendor
ice_icefutures_bgw_sbe_v7_0.application_vendor.size = 30

-- Display: Application Vendor
ice_icefutures_bgw_sbe_v7_0.application_vendor.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Application Vendor: No Value"
  end

  return "Application Vendor: "..value
end

-- Dissect: Application Vendor
ice_icefutures_bgw_sbe_v7_0.application_vendor.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.application_vendor.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.application_vendor.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.application_vendor, range, value, display)

  return offset + length, value
end

-- Application Version
ice_icefutures_bgw_sbe_v7_0.application_version = {}

-- Size: Application Version
ice_icefutures_bgw_sbe_v7_0.application_version.size = 50

-- Display: Application Version
ice_icefutures_bgw_sbe_v7_0.application_version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Application Version: No Value"
  end

  return "Application Version: "..value
end

-- Dissect: Application Version
ice_icefutures_bgw_sbe_v7_0.application_version.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.application_version.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.application_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.application_version, range, value, display)

  return offset + length, value
end

-- Base Num Lots
ice_icefutures_bgw_sbe_v7_0.base_num_lots = {}

-- Size: Base Num Lots
ice_icefutures_bgw_sbe_v7_0.base_num_lots.size = 4

-- Display: Base Num Lots
ice_icefutures_bgw_sbe_v7_0.base_num_lots.display = function(value)
  return "Base Num Lots: "..value
end

-- Dissect: Base Num Lots
ice_icefutures_bgw_sbe_v7_0.base_num_lots.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.base_num_lots.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.base_num_lots.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.base_num_lots, range, value, display)

  return offset + length, value
end

-- Begin Seq No
ice_icefutures_bgw_sbe_v7_0.begin_seq_no = {}

-- Size: Begin Seq No
ice_icefutures_bgw_sbe_v7_0.begin_seq_no.size = 4

-- Display: Begin Seq No
ice_icefutures_bgw_sbe_v7_0.begin_seq_no.display = function(value)
  return "Begin Seq No: "..value
end

-- Dissect: Begin Seq No
ice_icefutures_bgw_sbe_v7_0.begin_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.begin_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.begin_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.begin_seq_no, range, value, display)

  return offset + length, value
end

-- Bench Mark Price Type
ice_icefutures_bgw_sbe_v7_0.bench_mark_price_type = {}

-- Size: Bench Mark Price Type
ice_icefutures_bgw_sbe_v7_0.bench_mark_price_type.size = 1

-- Display: Bench Mark Price Type
ice_icefutures_bgw_sbe_v7_0.bench_mark_price_type.display = function(value)
  if value == 3 then
    return "Bench Mark Price Type: Fixed Amount (3)"
  end

  return "Bench Mark Price Type: Unknown("..value..")"
end

-- Dissect: Bench Mark Price Type
ice_icefutures_bgw_sbe_v7_0.bench_mark_price_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.bench_mark_price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.bench_mark_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.bench_mark_price_type, range, value, display)

  return offset + length, value
end

-- Benchmark Price
ice_icefutures_bgw_sbe_v7_0.benchmark_price = {}

-- Size: Benchmark Price
ice_icefutures_bgw_sbe_v7_0.benchmark_price.size = 8

-- Display: Benchmark Price
ice_icefutures_bgw_sbe_v7_0.benchmark_price.display = function(value)
  return "Benchmark Price: "..value
end

-- Dissect: Benchmark Price
ice_icefutures_bgw_sbe_v7_0.benchmark_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.benchmark_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.benchmark_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.benchmark_price, range, value, display)

  return offset + length, value
end

-- Bid Px
ice_icefutures_bgw_sbe_v7_0.bid_px = {}

-- Size: Bid Px
ice_icefutures_bgw_sbe_v7_0.bid_px.size = 8

-- Display: Bid Px
ice_icefutures_bgw_sbe_v7_0.bid_px.display = function(value)
  return "Bid Px: "..value
end

-- Dissect: Bid Px
ice_icefutures_bgw_sbe_v7_0.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.bid_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.bid_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Bid Sz
ice_icefutures_bgw_sbe_v7_0.bid_sz = {}

-- Size: Bid Sz
ice_icefutures_bgw_sbe_v7_0.bid_sz.size = 8

-- Display: Bid Sz
ice_icefutures_bgw_sbe_v7_0.bid_sz.display = function(value)
  return "Bid Sz: "..value
end

-- Dissect: Bid Sz
ice_icefutures_bgw_sbe_v7_0.bid_sz.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.bid_sz.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.bid_sz.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.bid_sz, range, value, display)

  return offset + length, value
end

-- Block Details Block Type
ice_icefutures_bgw_sbe_v7_0.block_details_block_type = {}

-- Size: Block Details Block Type
ice_icefutures_bgw_sbe_v7_0.block_details_block_type.size = 1

-- Display: Block Details Block Type
ice_icefutures_bgw_sbe_v7_0.block_details_block_type.display = function(value)
  if value == 0 then
    return "Block Details Block Type: Regular (0)"
  end
  if value == 1 then
    return "Block Details Block Type: Pnc (1)"
  end
  if value == 2 then
    return "Block Details Block Type: Dp (2)"
  end
  if value == 3 then
    return "Block Details Block Type: Lis (3)"
  end

  return "Block Details Block Type: Unknown("..value..")"
end

-- Dissect: Block Details Block Type
ice_icefutures_bgw_sbe_v7_0.block_details_block_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.block_details_block_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.block_details_block_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.block_details_block_type, range, value, display)

  return offset + length, value
end

-- Block Details Min Qty
ice_icefutures_bgw_sbe_v7_0.block_details_min_qty = {}

-- Size: Block Details Min Qty
ice_icefutures_bgw_sbe_v7_0.block_details_min_qty.size = 8

-- Display: Block Details Min Qty
ice_icefutures_bgw_sbe_v7_0.block_details_min_qty.display = function(value)
  return "Block Details Min Qty: "..value
end

-- Dissect: Block Details Min Qty
ice_icefutures_bgw_sbe_v7_0.block_details_min_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.block_details_min_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.block_details_min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.block_details_min_qty, range, value, display)

  return offset + length, value
end

-- Block Details Trade Type
ice_icefutures_bgw_sbe_v7_0.block_details_trade_type = {}

-- Size: Block Details Trade Type
ice_icefutures_bgw_sbe_v7_0.block_details_trade_type.size = 3

-- Display: Block Details Trade Type
ice_icefutures_bgw_sbe_v7_0.block_details_trade_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Block Details Trade Type: No Value"
  end

  return "Block Details Trade Type: "..value
end

-- Dissect: Block Details Trade Type
ice_icefutures_bgw_sbe_v7_0.block_details_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.block_details_trade_type.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.block_details_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.block_details_trade_type, range, value, display)

  return offset + length, value
end

-- Block Length
ice_icefutures_bgw_sbe_v7_0.block_length = {}

-- Size: Block Length
ice_icefutures_bgw_sbe_v7_0.block_length.size = 2

-- Display: Block Length
ice_icefutures_bgw_sbe_v7_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
ice_icefutures_bgw_sbe_v7_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Block Only
ice_icefutures_bgw_sbe_v7_0.block_only = {}

-- Size: Block Only
ice_icefutures_bgw_sbe_v7_0.block_only.size = 1

-- Display: Block Only
ice_icefutures_bgw_sbe_v7_0.block_only.display = function(value)
  if value == 0 then
    return "Block Only: False (0)"
  end
  if value == 1 then
    return "Block Only: True (1)"
  end

  return "Block Only: Unknown("..value..")"
end

-- Dissect: Block Only
ice_icefutures_bgw_sbe_v7_0.block_only.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.block_only.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.block_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.block_only, range, value, display)

  return offset + length, value
end

-- Block Tick Value
ice_icefutures_bgw_sbe_v7_0.block_tick_value = {}

-- Size: Block Tick Value
ice_icefutures_bgw_sbe_v7_0.block_tick_value.size = 8

-- Display: Block Tick Value
ice_icefutures_bgw_sbe_v7_0.block_tick_value.display = function(value)
  return "Block Tick Value: "..value
end

-- Dissect: Block Tick Value
ice_icefutures_bgw_sbe_v7_0.block_tick_value.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.block_tick_value.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.block_tick_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.block_tick_value, range, value, display)

  return offset + length, value
end

-- Bypass Mqr
ice_icefutures_bgw_sbe_v7_0.bypass_mqr = {}

-- Size: Bypass Mqr
ice_icefutures_bgw_sbe_v7_0.bypass_mqr.size = 1

-- Display: Bypass Mqr
ice_icefutures_bgw_sbe_v7_0.bypass_mqr.display = function(value)
  if value == 0 then
    return "Bypass Mqr: False (0)"
  end
  if value == 1 then
    return "Bypass Mqr: True (1)"
  end

  return "Bypass Mqr: Unknown("..value..")"
end

-- Dissect: Bypass Mqr
ice_icefutures_bgw_sbe_v7_0.bypass_mqr.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.bypass_mqr.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.bypass_mqr.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.bypass_mqr, range, value, display)

  return offset + length, value
end

-- Cancel Reason
ice_icefutures_bgw_sbe_v7_0.cancel_reason = {}

-- Size: Cancel Reason
ice_icefutures_bgw_sbe_v7_0.cancel_reason.size = 1

-- Display: Cancel Reason
ice_icefutures_bgw_sbe_v7_0.cancel_reason.display = function(value)
  if value == 0 then
    return "Cancel Reason: Canceled By User (0)"
  end
  if value == 7 then
    return "Cancel Reason: Canceled By System (7)"
  end
  if value == 10 then
    return "Cancel Reason: Canceled For Reasonability Limits (10)"
  end
  if value == 11 then
    return "Cancel Reason: Canceled At Market Close (11)"
  end
  if value == 13 then
    return "Cancel Reason: Canceled For Ipl (13)"
  end
  if value == 27 then
    return "Cancel Reason: Canceled For Ioc (27)"
  end
  if value == 28 then
    return "Cancel Reason: Canceled For Fok (28)"
  end
  if value == 31 then
    return "Cancel Reason: Canceled For Market (31)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
ice_icefutures_bgw_sbe_v7_0.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cfi Code
ice_icefutures_bgw_sbe_v7_0.cfi_code = {}

-- Size: Cfi Code
ice_icefutures_bgw_sbe_v7_0.cfi_code.size = 12

-- Display: Cfi Code
ice_icefutures_bgw_sbe_v7_0.cfi_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
ice_icefutures_bgw_sbe_v7_0.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.cfi_code.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
ice_icefutures_bgw_sbe_v7_0.cl_ord_id = {}

-- Size: Cl Ord Id
ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size = 8

-- Display: Cl Ord Id
ice_icefutures_bgw_sbe_v7_0.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearable
ice_icefutures_bgw_sbe_v7_0.clearable = {}

-- Size: Clearable
ice_icefutures_bgw_sbe_v7_0.clearable.size = 1

-- Display: Clearable
ice_icefutures_bgw_sbe_v7_0.clearable.display = function(value)
  if value == 0 then
    return "Clearable: False (0)"
  end
  if value == 1 then
    return "Clearable: True (1)"
  end

  return "Clearable: Unknown("..value..")"
end

-- Dissect: Clearable
ice_icefutures_bgw_sbe_v7_0.clearable.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.clearable.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.clearable.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.clearable, range, value, display)

  return offset + length, value
end

-- Cleared Alias Data
ice_icefutures_bgw_sbe_v7_0.cleared_alias_data = {}

-- Display: Cleared Alias Data
ice_icefutures_bgw_sbe_v7_0.cleared_alias_data.display = function(value)
  return "Cleared Alias Data: "..value
end

-- Dissect runtime sized field: Cleared Alias Data
ice_icefutures_bgw_sbe_v7_0.cleared_alias_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.cleared_alias_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cleared_alias_data, range, value, display)

  return offset + size, value
end

-- Cleared Alias Length
ice_icefutures_bgw_sbe_v7_0.cleared_alias_length = {}

-- Size: Cleared Alias Length
ice_icefutures_bgw_sbe_v7_0.cleared_alias_length.size = 2

-- Display: Cleared Alias Length
ice_icefutures_bgw_sbe_v7_0.cleared_alias_length.display = function(value)
  return "Cleared Alias Length: "..value
end

-- Dissect: Cleared Alias Length
ice_icefutures_bgw_sbe_v7_0.cleared_alias_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.cleared_alias_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.cleared_alias_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cleared_alias_length, range, value, display)

  return offset + length, value
end

-- Clearing Account string 14
ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14 = {}

-- Size: Clearing Account string 14
ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14.size = 14

-- Display: Clearing Account string 14
ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account string 14: No Value"
  end

  return "Clearing Account string 14: "..value
end

-- Dissect: Clearing Account string 14
ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.clearing_account_string_14, range, value, display)

  return offset + length, value
end

-- Clearing Account string 14 Null
ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null = {}

-- Size: Clearing Account string 14 Null
ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null.size = 14

-- Display: Clearing Account string 14 Null
ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account string 14 Null: No Value"
  end

  return "Clearing Account string 14 Null: "..value
end

-- Dissect: Clearing Account string 14 Null
ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.clearing_account_string_14_null, range, value, display)

  return offset + length, value
end

-- Clearing Firm int 32
ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32 = {}

-- Size: Clearing Firm int 32
ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32.size = 4

-- Display: Clearing Firm int 32
ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32.display = function(value)
  return "Clearing Firm int 32: "..value
end

-- Dissect: Clearing Firm int 32
ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.clearing_firm_int_32, range, value, display)

  return offset + length, value
end

-- Clearing Firm int 32 Null
ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null = {}

-- Size: Clearing Firm int 32 Null
ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null.size = 4

-- Display: Clearing Firm int 32 Null
ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null.display = function(value)
  return "Clearing Firm int 32 Null: "..value
end

-- Dissect: Clearing Firm int 32 Null
ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.clearing_firm_int_32_null, range, value, display)

  return offset + length, value
end

-- Client Id
ice_icefutures_bgw_sbe_v7_0.client_id = {}

-- Size: Client Id
ice_icefutures_bgw_sbe_v7_0.client_id.size = 4

-- Display: Client Id
ice_icefutures_bgw_sbe_v7_0.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
ice_icefutures_bgw_sbe_v7_0.client_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.client_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.client_id, range, value, display)

  return offset + length, value
end

-- Client Id Code
ice_icefutures_bgw_sbe_v7_0.client_id_code = {}

-- Size: Client Id Code
ice_icefutures_bgw_sbe_v7_0.client_id_code.size = 8

-- Display: Client Id Code
ice_icefutures_bgw_sbe_v7_0.client_id_code.display = function(value)
  return "Client Id Code: "..value
end

-- Dissect: Client Id Code
ice_icefutures_bgw_sbe_v7_0.client_id_code.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.client_id_code.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.client_id_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.client_id_code, range, value, display)

  return offset + length, value
end

-- Commodity Deriv Indicator
ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator = {}

-- Size: Commodity Deriv Indicator
ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.size = 1

-- Display: Commodity Deriv Indicator
ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.display = function(value)
  if value == 0 then
    return "Commodity Deriv Indicator: False (0)"
  end
  if value == 1 then
    return "Commodity Deriv Indicator: True (1)"
  end

  return "Commodity Deriv Indicator: Unknown("..value..")"
end

-- Dissect: Commodity Deriv Indicator
ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.commodity_deriv_indicator, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
ice_icefutures_bgw_sbe_v7_0.contract_multiplier = {}

-- Size: Contract Multiplier
ice_icefutures_bgw_sbe_v7_0.contract_multiplier.size = 4

-- Display: Contract Multiplier
ice_icefutures_bgw_sbe_v7_0.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
ice_icefutures_bgw_sbe_v7_0.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Contract Size
ice_icefutures_bgw_sbe_v7_0.contract_size = {}

-- Size: Contract Size
ice_icefutures_bgw_sbe_v7_0.contract_size.size = 4

-- Display: Contract Size
ice_icefutures_bgw_sbe_v7_0.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
ice_icefutures_bgw_sbe_v7_0.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Cross I D int 64
ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64 = {}

-- Size: Cross I D int 64
ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64.size = 8

-- Display: Cross I D int 64
ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64.display = function(value)
  return "Cross I D int 64: "..value
end

-- Dissect: Cross I D int 64
ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cross_i_d_int_64, range, value, display)

  return offset + length, value
end

-- Cross I D int 64 Null
ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64_null = {}

-- Size: Cross I D int 64 Null
ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64_null.size = 8

-- Display: Cross I D int 64 Null
ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64_null.display = function(value)
  return "Cross I D int 64 Null: "..value
end

-- Dissect: Cross I D int 64 Null
ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64_null.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cross_i_d_int_64_null, range, value, display)

  return offset + length, value
end

-- Cross Type Cross Type Enum
ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum = {}

-- Size: Cross Type Cross Type Enum
ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum.size = 1

-- Display: Cross Type Cross Type Enum
ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cross Type Cross Type Enum: No Value"
  end

  if value == "1" then
    return "Cross Type Cross Type Enum: Aon (1)"
  end
  if value == "2" then
    return "Cross Type Cross Type Enum: Ioc (2)"
  end

  return "Cross Type Cross Type Enum: Unknown("..value..")"
end

-- Dissect: Cross Type Cross Type Enum
ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cross_type_cross_type_enum, range, value, display)

  return offset + length, value
end

-- Cross Type Cross Type Enum Null
ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum_null = {}

-- Size: Cross Type Cross Type Enum Null
ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum_null.size = 1

-- Display: Cross Type Cross Type Enum Null
ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum_null.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cross Type Cross Type Enum Null: No Value"
  end

  if value == "1" then
    return "Cross Type Cross Type Enum Null: Aon (1)"
  end
  if value == "2" then
    return "Cross Type Cross Type Enum Null: Ioc (2)"
  end

  return "Cross Type Cross Type Enum Null: Unknown("..value..")"
end

-- Dissect: Cross Type Cross Type Enum Null
ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum_null.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cross_type_cross_type_enum_null, range, value, display)

  return offset + length, value
end

-- Crossing Order Futures Allowed
ice_icefutures_bgw_sbe_v7_0.crossing_order_futures_allowed = {}

-- Size: Crossing Order Futures Allowed
ice_icefutures_bgw_sbe_v7_0.crossing_order_futures_allowed.size = 1

-- Display: Crossing Order Futures Allowed
ice_icefutures_bgw_sbe_v7_0.crossing_order_futures_allowed.display = function(value)
  if value == 0 then
    return "Crossing Order Futures Allowed: False (0)"
  end
  if value == 1 then
    return "Crossing Order Futures Allowed: True (1)"
  end

  return "Crossing Order Futures Allowed: Unknown("..value..")"
end

-- Dissect: Crossing Order Futures Allowed
ice_icefutures_bgw_sbe_v7_0.crossing_order_futures_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.crossing_order_futures_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.crossing_order_futures_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.crossing_order_futures_allowed, range, value, display)

  return offset + length, value
end

-- Crossing Order Options Allowed
ice_icefutures_bgw_sbe_v7_0.crossing_order_options_allowed = {}

-- Size: Crossing Order Options Allowed
ice_icefutures_bgw_sbe_v7_0.crossing_order_options_allowed.size = 1

-- Display: Crossing Order Options Allowed
ice_icefutures_bgw_sbe_v7_0.crossing_order_options_allowed.display = function(value)
  if value == 0 then
    return "Crossing Order Options Allowed: False (0)"
  end
  if value == 1 then
    return "Crossing Order Options Allowed: True (1)"
  end

  return "Crossing Order Options Allowed: Unknown("..value..")"
end

-- Dissect: Crossing Order Options Allowed
ice_icefutures_bgw_sbe_v7_0.crossing_order_options_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.crossing_order_options_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.crossing_order_options_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.crossing_order_options_allowed, range, value, display)

  return offset + length, value
end

-- Cum Qty
ice_icefutures_bgw_sbe_v7_0.cum_qty = {}

-- Size: Cum Qty
ice_icefutures_bgw_sbe_v7_0.cum_qty.size = 8

-- Display: Cum Qty
ice_icefutures_bgw_sbe_v7_0.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
ice_icefutures_bgw_sbe_v7_0.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Currency
ice_icefutures_bgw_sbe_v7_0.currency = {}

-- Size: Currency
ice_icefutures_bgw_sbe_v7_0.currency.size = 12

-- Display: Currency
ice_icefutures_bgw_sbe_v7_0.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
ice_icefutures_bgw_sbe_v7_0.currency.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.currency.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.currency, range, value, display)

  return offset + length, value
end

-- Cust Order Handling Inst
ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst = {}

-- Size: Cust Order Handling Inst
ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst.size = 1

-- Display: Cust Order Handling Inst
ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cust Order Handling Inst: No Value"
  end

  if value == "C" then
    return "Cust Order Handling Inst: C (C)"
  end
  if value == "D" then
    return "Cust Order Handling Inst: D (D)"
  end
  if value == "G" then
    return "Cust Order Handling Inst: G (G)"
  end
  if value == "H" then
    return "Cust Order Handling Inst: H (H)"
  end
  if value == "W" then
    return "Cust Order Handling Inst: W (W)"
  end
  if value == "Y" then
    return "Cust Order Handling Inst: Y (Y)"
  end

  return "Cust Order Handling Inst: Unknown("..value..")"
end

-- Dissect: Cust Order Handling Inst
ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cust_order_handling_inst, range, value, display)

  return offset + length, value
end

-- Customer Account Ref Id
ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id = {}

-- Size: Customer Account Ref Id
ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.size = 12

-- Display: Customer Account Ref Id
ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Customer Account Ref Id: No Value"
  end

  return "Customer Account Ref Id: "..value
end

-- Dissect: Customer Account Ref Id
ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.customer_account_ref_id, range, value, display)

  return offset + length, value
end

-- Delivery End Date
ice_icefutures_bgw_sbe_v7_0.delivery_end_date = {}

-- Size: Delivery End Date
ice_icefutures_bgw_sbe_v7_0.delivery_end_date.size = 8

-- Display: Delivery End Date
ice_icefutures_bgw_sbe_v7_0.delivery_end_date.display = function(value)
  return "Delivery End Date: "..value
end

-- Dissect: Delivery End Date
ice_icefutures_bgw_sbe_v7_0.delivery_end_date.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.delivery_end_date.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = ice_icefutures_bgw_sbe_v7_0.delivery_end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.delivery_end_date, range, value, display)

  return offset + length, value
end

-- Delivery Start Date
ice_icefutures_bgw_sbe_v7_0.delivery_start_date = {}

-- Size: Delivery Start Date
ice_icefutures_bgw_sbe_v7_0.delivery_start_date.size = 8

-- Display: Delivery Start Date
ice_icefutures_bgw_sbe_v7_0.delivery_start_date.display = function(value)
  return "Delivery Start Date: "..value
end

-- Dissect: Delivery Start Date
ice_icefutures_bgw_sbe_v7_0.delivery_start_date.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.delivery_start_date.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = ice_icefutures_bgw_sbe_v7_0.delivery_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.delivery_start_date, range, value, display)

  return offset + length, value
end

-- Denominator
ice_icefutures_bgw_sbe_v7_0.denominator = {}

-- Size: Denominator
ice_icefutures_bgw_sbe_v7_0.denominator.size = 4

-- Display: Denominator
ice_icefutures_bgw_sbe_v7_0.denominator.display = function(value)
  return "Denominator: "..value
end

-- Dissect: Denominator
ice_icefutures_bgw_sbe_v7_0.denominator.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.denominator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.denominator, range, value, display)

  return offset + length, value
end

-- Direct Electronic Access
ice_icefutures_bgw_sbe_v7_0.direct_electronic_access = {}

-- Size: Direct Electronic Access
ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.size = 1

-- Display: Direct Electronic Access
ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.display = function(value)
  if value == 0 then
    return "Direct Electronic Access: False (0)"
  end
  if value == 1 then
    return "Direct Electronic Access: True (1)"
  end

  return "Direct Electronic Access: Unknown("..value..")"
end

-- Dissect: Direct Electronic Access
ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.direct_electronic_access, range, value, display)

  return offset + length, value
end

-- Encoding Type
ice_icefutures_bgw_sbe_v7_0.encoding_type = {}

-- Size: Encoding Type
ice_icefutures_bgw_sbe_v7_0.encoding_type.size = 2

-- Display: Encoding Type
ice_icefutures_bgw_sbe_v7_0.encoding_type.display = function(value)
  return "Encoding Type: "..value
end

-- Dissect: Encoding Type
ice_icefutures_bgw_sbe_v7_0.encoding_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.encoding_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.encoding_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- End Date
ice_icefutures_bgw_sbe_v7_0.end_date = {}

-- Size: End Date
ice_icefutures_bgw_sbe_v7_0.end_date.size = 2

-- Display: End Date
ice_icefutures_bgw_sbe_v7_0.end_date.display = function(value)
  return "End Date: "..value
end

-- Dissect: End Date
ice_icefutures_bgw_sbe_v7_0.end_date.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.end_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.end_date, range, value, display)

  return offset + length, value
end

-- End Seq No
ice_icefutures_bgw_sbe_v7_0.end_seq_no = {}

-- Size: End Seq No
ice_icefutures_bgw_sbe_v7_0.end_seq_no.size = 4

-- Display: End Seq No
ice_icefutures_bgw_sbe_v7_0.end_seq_no.display = function(value)
  return "End Seq No: "..value
end

-- Dissect: End Seq No
ice_icefutures_bgw_sbe_v7_0.end_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.end_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.end_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.end_seq_no, range, value, display)

  return offset + length, value
end

-- Exchange Code
ice_icefutures_bgw_sbe_v7_0.exchange_code = {}

-- Size: Exchange Code
ice_icefutures_bgw_sbe_v7_0.exchange_code.size = 4

-- Display: Exchange Code
ice_icefutures_bgw_sbe_v7_0.exchange_code.display = function(value)
  return "Exchange Code: "..value
end

-- Dissect: Exchange Code
ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.exchange_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Exchange Silo
ice_icefutures_bgw_sbe_v7_0.exchange_silo = {}

-- Size: Exchange Silo
ice_icefutures_bgw_sbe_v7_0.exchange_silo.size = 1

-- Display: Exchange Silo
ice_icefutures_bgw_sbe_v7_0.exchange_silo.display = function(value)
  if value == 0 then
    return "Exchange Silo: Ice (0)"
  end
  if value == 1 then
    return "Exchange Silo: Endex (1)"
  end
  if value == 2 then
    return "Exchange Silo: Liffe (2)"
  end

  return "Exchange Silo: Unknown("..value..")"
end

-- Dissect: Exchange Silo
ice_icefutures_bgw_sbe_v7_0.exchange_silo.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.exchange_silo.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.exchange_silo.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.exchange_silo, range, value, display)

  return offset + length, value
end

-- Exec I D int 64
ice_icefutures_bgw_sbe_v7_0.exec_i_d_int_64 = {}

-- Size: Exec I D int 64
ice_icefutures_bgw_sbe_v7_0.exec_i_d_int_64.size = 8

-- Display: Exec I D int 64
ice_icefutures_bgw_sbe_v7_0.exec_i_d_int_64.display = function(value)
  return "Exec I D int 64: "..value
end

-- Dissect: Exec I D int 64
ice_icefutures_bgw_sbe_v7_0.exec_i_d_int_64.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.exec_i_d_int_64.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.exec_i_d_int_64.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_i_d_int_64, range, value, display)

  return offset + length, value
end

-- Exec Inst
ice_icefutures_bgw_sbe_v7_0.exec_inst = {}

-- Size: Exec Inst
ice_icefutures_bgw_sbe_v7_0.exec_inst.size = 1

-- Display: Exec Inst
ice_icefutures_bgw_sbe_v7_0.exec_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Inst: No Value"
  end

  if value == "G" then
    return "Exec Inst: Aon (G)"
  end
  if value == "P" then
    return "Exec Inst: Pnc (P)"
  end
  if value == "D" then
    return "Exec Inst: Dp (D)"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
ice_icefutures_bgw_sbe_v7_0.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.exec_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_icefutures_bgw_sbe_v7_0.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
ice_icefutures_bgw_sbe_v7_0.exec_ref_id = {}

-- Size: Exec Ref Id
ice_icefutures_bgw_sbe_v7_0.exec_ref_id.size = 8

-- Display: Exec Ref Id
ice_icefutures_bgw_sbe_v7_0.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
ice_icefutures_bgw_sbe_v7_0.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
ice_icefutures_bgw_sbe_v7_0.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
ice_icefutures_bgw_sbe_v7_0.exec_restatement_reason.size = 1

-- Display: Exec Restatement Reason
ice_icefutures_bgw_sbe_v7_0.exec_restatement_reason.display = function(value)
  if value == 3 then
    return "Exec Restatement Reason: Repriced (3)"
  end
  if value == 99 then
    return "Exec Restatement Reason: Other (99)"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
ice_icefutures_bgw_sbe_v7_0.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Exec Type
ice_icefutures_bgw_sbe_v7_0.exec_type = {}

-- Size: Exec Type
ice_icefutures_bgw_sbe_v7_0.exec_type.size = 1

-- Display: Exec Type
ice_icefutures_bgw_sbe_v7_0.exec_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Type: No Value"
  end

  if value == "0" then
    return "Exec Type: New (0)"
  end
  if value == "1" then
    return "Exec Type: Partial Fill (1)"
  end
  if value == "2" then
    return "Exec Type: Fill (2)"
  end
  if value == "4" then
    return "Exec Type: Cancelled (4)"
  end
  if value == "5" then
    return "Exec Type: Replaced (5)"
  end
  if value == "8" then
    return "Exec Type: Rejected (8)"
  end
  if value == "D" then
    return "Exec Type: Restated (D)"
  end
  if value == "G" then
    return "Exec Type: Trade Correct (G)"
  end
  if value == "H" then
    return "Exec Type: Trade Cancel (H)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
ice_icefutures_bgw_sbe_v7_0.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.exec_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_icefutures_bgw_sbe_v7_0.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Execution Decision
ice_icefutures_bgw_sbe_v7_0.execution_decision = {}

-- Size: Execution Decision
ice_icefutures_bgw_sbe_v7_0.execution_decision.size = 8

-- Display: Execution Decision
ice_icefutures_bgw_sbe_v7_0.execution_decision.display = function(value)
  return "Execution Decision: "..value
end

-- Dissect: Execution Decision
ice_icefutures_bgw_sbe_v7_0.execution_decision.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.execution_decision.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.execution_decision.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_decision, range, value, display)

  return offset + length, value
end

-- Expire Date
ice_icefutures_bgw_sbe_v7_0.expire_date = {}

-- Size: Expire Date
ice_icefutures_bgw_sbe_v7_0.expire_date.size = 2

-- Display: Expire Date
ice_icefutures_bgw_sbe_v7_0.expire_date.display = function(value)
  return "Expire Date: "..value
end

-- Dissect: Expire Date
ice_icefutures_bgw_sbe_v7_0.expire_date.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.expire_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.expire_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Flex Allowed
ice_icefutures_bgw_sbe_v7_0.flex_allowed = {}

-- Size: Flex Allowed
ice_icefutures_bgw_sbe_v7_0.flex_allowed.size = 1

-- Display: Flex Allowed
ice_icefutures_bgw_sbe_v7_0.flex_allowed.display = function(value)
  if value == 0 then
    return "Flex Allowed: False (0)"
  end
  if value == 1 then
    return "Flex Allowed: True (1)"
  end

  return "Flex Allowed: Unknown("..value..")"
end

-- Dissect: Flex Allowed
ice_icefutures_bgw_sbe_v7_0.flex_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.flex_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.flex_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.flex_allowed, range, value, display)

  return offset + length, value
end

-- Flex Strike Allowed
ice_icefutures_bgw_sbe_v7_0.flex_strike_allowed = {}

-- Size: Flex Strike Allowed
ice_icefutures_bgw_sbe_v7_0.flex_strike_allowed.size = 1

-- Display: Flex Strike Allowed
ice_icefutures_bgw_sbe_v7_0.flex_strike_allowed.display = function(value)
  if value == 0 then
    return "Flex Strike Allowed: False (0)"
  end
  if value == 1 then
    return "Flex Strike Allowed: True (1)"
  end

  return "Flex Strike Allowed: Unknown("..value..")"
end

-- Dissect: Flex Strike Allowed
ice_icefutures_bgw_sbe_v7_0.flex_strike_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.flex_strike_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.flex_strike_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.flex_strike_allowed, range, value, display)

  return offset + length, value
end

-- Gap Fill Flag
ice_icefutures_bgw_sbe_v7_0.gap_fill_flag = {}

-- Size: Gap Fill Flag
ice_icefutures_bgw_sbe_v7_0.gap_fill_flag.size = 1

-- Display: Gap Fill Flag
ice_icefutures_bgw_sbe_v7_0.gap_fill_flag.display = function(value)
  if value == 0 then
    return "Gap Fill Flag: False (0)"
  end
  if value == 1 then
    return "Gap Fill Flag: True (1)"
  end

  return "Gap Fill Flag: Unknown("..value..")"
end

-- Dissect: Gap Fill Flag
ice_icefutures_bgw_sbe_v7_0.gap_fill_flag.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.gap_fill_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.gap_fill_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.gap_fill_flag, range, value, display)

  return offset + length, value
end

-- Give Up Clearing Firm
ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm = {}

-- Size: Give Up Clearing Firm
ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.size = 4

-- Display: Give Up Clearing Firm
ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.display = function(value)
  return "Give Up Clearing Firm: "..value
end

-- Dissect: Give Up Clearing Firm
ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.give_up_clearing_firm, range, value, display)

  return offset + length, value
end

-- Granularity
ice_icefutures_bgw_sbe_v7_0.granularity = {}

-- Size: Granularity
ice_icefutures_bgw_sbe_v7_0.granularity.size = 12

-- Display: Granularity
ice_icefutures_bgw_sbe_v7_0.granularity.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Granularity: No Value"
  end

  return "Granularity: "..value
end

-- Dissect: Granularity
ice_icefutures_bgw_sbe_v7_0.granularity.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.granularity.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.granularity.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.granularity, range, value, display)

  return offset + length, value
end

-- Gt Allowed
ice_icefutures_bgw_sbe_v7_0.gt_allowed = {}

-- Size: Gt Allowed
ice_icefutures_bgw_sbe_v7_0.gt_allowed.size = 1

-- Display: Gt Allowed
ice_icefutures_bgw_sbe_v7_0.gt_allowed.display = function(value)
  if value == 0 then
    return "Gt Allowed: False (0)"
  end
  if value == 1 then
    return "Gt Allowed: True (1)"
  end

  return "Gt Allowed: Unknown("..value..")"
end

-- Dissect: Gt Allowed
ice_icefutures_bgw_sbe_v7_0.gt_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.gt_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.gt_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.gt_allowed, range, value, display)

  return offset + length, value
end

-- Heart Beat Interval
ice_icefutures_bgw_sbe_v7_0.heart_beat_interval = {}

-- Size: Heart Beat Interval
ice_icefutures_bgw_sbe_v7_0.heart_beat_interval.size = 2

-- Display: Heart Beat Interval
ice_icefutures_bgw_sbe_v7_0.heart_beat_interval.display = function(value)
  return "Heart Beat Interval: "..value
end

-- Dissect: Heart Beat Interval
ice_icefutures_bgw_sbe_v7_0.heart_beat_interval.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.heart_beat_interval.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.heart_beat_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.heart_beat_interval, range, value, display)

  return offset + length, value
end

-- Hedge Market Id
ice_icefutures_bgw_sbe_v7_0.hedge_market_id = {}

-- Size: Hedge Market Id
ice_icefutures_bgw_sbe_v7_0.hedge_market_id.size = 4

-- Display: Hedge Market Id
ice_icefutures_bgw_sbe_v7_0.hedge_market_id.display = function(value)
  return "Hedge Market Id: "..value
end

-- Dissect: Hedge Market Id
ice_icefutures_bgw_sbe_v7_0.hedge_market_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.hedge_market_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.hedge_market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.hedge_market_id, range, value, display)

  return offset + length, value
end

-- Hedge Only
ice_icefutures_bgw_sbe_v7_0.hedge_only = {}

-- Size: Hedge Only
ice_icefutures_bgw_sbe_v7_0.hedge_only.size = 1

-- Display: Hedge Only
ice_icefutures_bgw_sbe_v7_0.hedge_only.display = function(value)
  if value == 0 then
    return "Hedge Only: False (0)"
  end
  if value == 1 then
    return "Hedge Only: True (1)"
  end

  return "Hedge Only: Unknown("..value..")"
end

-- Dissect: Hedge Only
ice_icefutures_bgw_sbe_v7_0.hedge_only.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.hedge_only.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.hedge_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.hedge_only, range, value, display)

  return offset + length, value
end

-- Hedge Product Id
ice_icefutures_bgw_sbe_v7_0.hedge_product_id = {}

-- Size: Hedge Product Id
ice_icefutures_bgw_sbe_v7_0.hedge_product_id.size = 4

-- Display: Hedge Product Id
ice_icefutures_bgw_sbe_v7_0.hedge_product_id.display = function(value)
  return "Hedge Product Id: "..value
end

-- Dissect: Hedge Product Id
ice_icefutures_bgw_sbe_v7_0.hedge_product_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.hedge_product_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.hedge_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.hedge_product_id, range, value, display)

  return offset + length, value
end

-- Home Exchange Data
ice_icefutures_bgw_sbe_v7_0.home_exchange_data = {}

-- Display: Home Exchange Data
ice_icefutures_bgw_sbe_v7_0.home_exchange_data.display = function(value)
  return "Home Exchange Data: "..value
end

-- Dissect runtime sized field: Home Exchange Data
ice_icefutures_bgw_sbe_v7_0.home_exchange_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.home_exchange_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.home_exchange_data, range, value, display)

  return offset + size, value
end

-- Home Exchange Length
ice_icefutures_bgw_sbe_v7_0.home_exchange_length = {}

-- Size: Home Exchange Length
ice_icefutures_bgw_sbe_v7_0.home_exchange_length.size = 2

-- Display: Home Exchange Length
ice_icefutures_bgw_sbe_v7_0.home_exchange_length.display = function(value)
  return "Home Exchange Length: "..value
end

-- Dissect: Home Exchange Length
ice_icefutures_bgw_sbe_v7_0.home_exchange_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.home_exchange_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.home_exchange_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.home_exchange_length, range, value, display)

  return offset + length, value
end

-- Hub Alias Data
ice_icefutures_bgw_sbe_v7_0.hub_alias_data = {}

-- Display: Hub Alias Data
ice_icefutures_bgw_sbe_v7_0.hub_alias_data.display = function(value)
  return "Hub Alias Data: "..value
end

-- Dissect runtime sized field: Hub Alias Data
ice_icefutures_bgw_sbe_v7_0.hub_alias_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.hub_alias_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_alias_data, range, value, display)

  return offset + size, value
end

-- Hub Alias Length
ice_icefutures_bgw_sbe_v7_0.hub_alias_length = {}

-- Size: Hub Alias Length
ice_icefutures_bgw_sbe_v7_0.hub_alias_length.size = 2

-- Display: Hub Alias Length
ice_icefutures_bgw_sbe_v7_0.hub_alias_length.display = function(value)
  return "Hub Alias Length: "..value
end

-- Dissect: Hub Alias Length
ice_icefutures_bgw_sbe_v7_0.hub_alias_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.hub_alias_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.hub_alias_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_alias_length, range, value, display)

  return offset + length, value
end

-- Hub Id
ice_icefutures_bgw_sbe_v7_0.hub_id = {}

-- Size: Hub Id
ice_icefutures_bgw_sbe_v7_0.hub_id.size = 4

-- Display: Hub Id
ice_icefutures_bgw_sbe_v7_0.hub_id.display = function(value)
  return "Hub Id: "..value
end

-- Dissect: Hub Id
ice_icefutures_bgw_sbe_v7_0.hub_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.hub_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.hub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_id, range, value, display)

  return offset + length, value
end

-- Hub Name Data
ice_icefutures_bgw_sbe_v7_0.hub_name_data = {}

-- Display: Hub Name Data
ice_icefutures_bgw_sbe_v7_0.hub_name_data.display = function(value)
  return "Hub Name Data: "..value
end

-- Dissect runtime sized field: Hub Name Data
ice_icefutures_bgw_sbe_v7_0.hub_name_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.hub_name_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_name_data, range, value, display)

  return offset + size, value
end

-- Hub Name Length
ice_icefutures_bgw_sbe_v7_0.hub_name_length = {}

-- Size: Hub Name Length
ice_icefutures_bgw_sbe_v7_0.hub_name_length.size = 2

-- Display: Hub Name Length
ice_icefutures_bgw_sbe_v7_0.hub_name_length.display = function(value)
  return "Hub Name Length: "..value
end

-- Dissect: Hub Name Length
ice_icefutures_bgw_sbe_v7_0.hub_name_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.hub_name_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.hub_name_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_name_length, range, value, display)

  return offset + length, value
end

-- Implied Type
ice_icefutures_bgw_sbe_v7_0.implied_type = {}

-- Size: Implied Type
ice_icefutures_bgw_sbe_v7_0.implied_type.size = 1

-- Display: Implied Type
ice_icefutures_bgw_sbe_v7_0.implied_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Implied Type: No Value"
  end

  return "Implied Type: "..value
end

-- Dissect: Implied Type
ice_icefutures_bgw_sbe_v7_0.implied_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.implied_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_icefutures_bgw_sbe_v7_0.implied_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.implied_type, range, value, display)

  return offset + length, value
end

-- Increment Price
ice_icefutures_bgw_sbe_v7_0.increment_price = {}

-- Size: Increment Price
ice_icefutures_bgw_sbe_v7_0.increment_price.size = 8

-- Display: Increment Price
ice_icefutures_bgw_sbe_v7_0.increment_price.display = function(value)
  return "Increment Price: "..value
end

-- Dissect: Increment Price
ice_icefutures_bgw_sbe_v7_0.increment_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.increment_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.increment_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.increment_price, range, value, display)

  return offset + length, value
end

-- Increment Qty
ice_icefutures_bgw_sbe_v7_0.increment_qty = {}

-- Size: Increment Qty
ice_icefutures_bgw_sbe_v7_0.increment_qty.size = 8

-- Display: Increment Qty
ice_icefutures_bgw_sbe_v7_0.increment_qty.display = function(value)
  return "Increment Qty: "..value
end

-- Dissect: Increment Qty
ice_icefutures_bgw_sbe_v7_0.increment_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.increment_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.increment_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.increment_qty, range, value, display)

  return offset + length, value
end

-- Initial Margin
ice_icefutures_bgw_sbe_v7_0.initial_margin = {}

-- Size: Initial Margin
ice_icefutures_bgw_sbe_v7_0.initial_margin.size = 4

-- Display: Initial Margin
ice_icefutures_bgw_sbe_v7_0.initial_margin.display = function(value)
  return "Initial Margin: "..value
end

-- Dissect: Initial Margin
ice_icefutures_bgw_sbe_v7_0.initial_margin.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.initial_margin.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.initial_margin.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.initial_margin, range, value, display)

  return offset + length, value
end

-- Investment Decision
ice_icefutures_bgw_sbe_v7_0.investment_decision = {}

-- Size: Investment Decision
ice_icefutures_bgw_sbe_v7_0.investment_decision.size = 8

-- Display: Investment Decision
ice_icefutures_bgw_sbe_v7_0.investment_decision.display = function(value)
  return "Investment Decision: "..value
end

-- Dissect: Investment Decision
ice_icefutures_bgw_sbe_v7_0.investment_decision.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.investment_decision.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.investment_decision.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.investment_decision, range, value, display)

  return offset + length, value
end

-- Ip Address
ice_icefutures_bgw_sbe_v7_0.ip_address = {}

-- Size: Ip Address
ice_icefutures_bgw_sbe_v7_0.ip_address.size = 15

-- Display: Ip Address
ice_icefutures_bgw_sbe_v7_0.ip_address.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Ip Address: No Value"
  end

  return "Ip Address: "..value
end

-- Dissect: Ip Address
ice_icefutures_bgw_sbe_v7_0.ip_address.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.ip_address.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.ip_address.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.ip_address, range, value, display)

  return offset + length, value
end

-- Ip Session Token
ice_icefutures_bgw_sbe_v7_0.ip_session_token = {}

-- Size: Ip Session Token
ice_icefutures_bgw_sbe_v7_0.ip_session_token.size = 50

-- Display: Ip Session Token
ice_icefutures_bgw_sbe_v7_0.ip_session_token.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Ip Session Token: No Value"
  end

  return "Ip Session Token: "..value
end

-- Dissect: Ip Session Token
ice_icefutures_bgw_sbe_v7_0.ip_session_token.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.ip_session_token.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.ip_session_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.ip_session_token, range, value, display)

  return offset + length, value
end

-- Is Dividend Adjusted
ice_icefutures_bgw_sbe_v7_0.is_dividend_adjusted = {}

-- Size: Is Dividend Adjusted
ice_icefutures_bgw_sbe_v7_0.is_dividend_adjusted.size = 1

-- Display: Is Dividend Adjusted
ice_icefutures_bgw_sbe_v7_0.is_dividend_adjusted.display = function(value)
  if value == 0 then
    return "Is Dividend Adjusted: False (0)"
  end
  if value == 1 then
    return "Is Dividend Adjusted: True (1)"
  end

  return "Is Dividend Adjusted: Unknown("..value..")"
end

-- Dissect: Is Dividend Adjusted
ice_icefutures_bgw_sbe_v7_0.is_dividend_adjusted.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.is_dividend_adjusted.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.is_dividend_adjusted.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.is_dividend_adjusted, range, value, display)

  return offset + length, value
end

-- Last Par Px
ice_icefutures_bgw_sbe_v7_0.last_par_px = {}

-- Size: Last Par Px
ice_icefutures_bgw_sbe_v7_0.last_par_px.size = 8

-- Display: Last Par Px
ice_icefutures_bgw_sbe_v7_0.last_par_px.display = function(value)
  return "Last Par Px: "..value
end

-- Dissect: Last Par Px
ice_icefutures_bgw_sbe_v7_0.last_par_px.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.last_par_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.last_par_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.last_par_px, range, value, display)

  return offset + length, value
end

-- Last Px
ice_icefutures_bgw_sbe_v7_0.last_px = {}

-- Size: Last Px
ice_icefutures_bgw_sbe_v7_0.last_px.size = 8

-- Display: Last Px
ice_icefutures_bgw_sbe_v7_0.last_px.display = function(value)
  return "Last Px: "..value
end

-- Dissect: Last Px
ice_icefutures_bgw_sbe_v7_0.last_px.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.last_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Shares
ice_icefutures_bgw_sbe_v7_0.last_shares = {}

-- Size: Last Shares
ice_icefutures_bgw_sbe_v7_0.last_shares.size = 8

-- Display: Last Shares
ice_icefutures_bgw_sbe_v7_0.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
ice_icefutures_bgw_sbe_v7_0.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Leaves Qty
ice_icefutures_bgw_sbe_v7_0.leaves_qty = {}

-- Size: Leaves Qty
ice_icefutures_bgw_sbe_v7_0.leaves_qty.size = 8

-- Display: Leaves Qty
ice_icefutures_bgw_sbe_v7_0.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
ice_icefutures_bgw_sbe_v7_0.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Leg Deals Suppressed
ice_icefutures_bgw_sbe_v7_0.leg_deals_suppressed = {}

-- Size: Leg Deals Suppressed
ice_icefutures_bgw_sbe_v7_0.leg_deals_suppressed.size = 1

-- Display: Leg Deals Suppressed
ice_icefutures_bgw_sbe_v7_0.leg_deals_suppressed.display = function(value)
  if value == 0 then
    return "Leg Deals Suppressed: False (0)"
  end
  if value == 1 then
    return "Leg Deals Suppressed: True (1)"
  end

  return "Leg Deals Suppressed: Unknown("..value..")"
end

-- Dissect: Leg Deals Suppressed
ice_icefutures_bgw_sbe_v7_0.leg_deals_suppressed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_deals_suppressed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_deals_suppressed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_deals_suppressed, range, value, display)

  return offset + length, value
end

-- Leg Memo Field
ice_icefutures_bgw_sbe_v7_0.leg_memo_field = {}

-- Size: Leg Memo Field
ice_icefutures_bgw_sbe_v7_0.leg_memo_field.size = 12

-- Display: Leg Memo Field
ice_icefutures_bgw_sbe_v7_0.leg_memo_field.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Memo Field: No Value"
  end

  return "Leg Memo Field: "..value
end

-- Dissect: Leg Memo Field
ice_icefutures_bgw_sbe_v7_0.leg_memo_field.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_memo_field.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.leg_memo_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_memo_field, range, value, display)

  return offset + length, value
end

-- Leg Opt Attribute
ice_icefutures_bgw_sbe_v7_0.leg_opt_attribute = {}

-- Size: Leg Opt Attribute
ice_icefutures_bgw_sbe_v7_0.leg_opt_attribute.size = 4

-- Display: Leg Opt Attribute
ice_icefutures_bgw_sbe_v7_0.leg_opt_attribute.display = function(value)
  return "Leg Opt Attribute: "..value
end

-- Dissect: Leg Opt Attribute
ice_icefutures_bgw_sbe_v7_0.leg_opt_attribute.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_opt_attribute.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_opt_attribute.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_opt_attribute, range, value, display)

  return offset + length, value
end

-- Leg Option Delta
ice_icefutures_bgw_sbe_v7_0.leg_option_delta = {}

-- Size: Leg Option Delta
ice_icefutures_bgw_sbe_v7_0.leg_option_delta.size = 4

-- Display: Leg Option Delta
ice_icefutures_bgw_sbe_v7_0.leg_option_delta.display = function(value)
  return "Leg Option Delta: "..value
end

-- Dissect: Leg Option Delta
ice_icefutures_bgw_sbe_v7_0.leg_option_delta.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_option_delta.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_option_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_option_delta, range, value, display)

  return offset + length, value
end

-- Leg Price
ice_icefutures_bgw_sbe_v7_0.leg_price = {}

-- Size: Leg Price
ice_icefutures_bgw_sbe_v7_0.leg_price.size = 8

-- Display: Leg Price
ice_icefutures_bgw_sbe_v7_0.leg_price.display = function(value)
  return "Leg Price: "..value
end

-- Dissect: Leg Price
ice_icefutures_bgw_sbe_v7_0.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Leg Qty
ice_icefutures_bgw_sbe_v7_0.leg_qty = {}

-- Size: Leg Qty
ice_icefutures_bgw_sbe_v7_0.leg_qty.size = 8

-- Display: Leg Qty
ice_icefutures_bgw_sbe_v7_0.leg_qty.display = function(value)
  return "Leg Qty: "..value
end

-- Dissect: Leg Qty
ice_icefutures_bgw_sbe_v7_0.leg_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_qty.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_qty, range, value, display)

  return offset + length, value
end

-- Leg Ratio Price Denominator
ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_denominator = {}

-- Size: Leg Ratio Price Denominator
ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_denominator.size = 2

-- Display: Leg Ratio Price Denominator
ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_denominator.display = function(value)
  return "Leg Ratio Price Denominator: "..value
end

-- Dissect: Leg Ratio Price Denominator
ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_denominator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_price_denominator, range, value, display)

  return offset + length, value
end

-- Leg Ratio Price Numerator
ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_numerator = {}

-- Size: Leg Ratio Price Numerator
ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_numerator.size = 2

-- Display: Leg Ratio Price Numerator
ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_numerator.display = function(value)
  return "Leg Ratio Price Numerator: "..value
end

-- Dissect: Leg Ratio Price Numerator
ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_numerator.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_numerator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_numerator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_price_numerator, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty Denominator int 16
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16 = {}

-- Size: Leg Ratio Qty Denominator int 16
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16.size = 2

-- Display: Leg Ratio Qty Denominator int 16
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16.display = function(value)
  return "Leg Ratio Qty Denominator int 16: "..value
end

-- Dissect: Leg Ratio Qty Denominator int 16
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_qty_denominator_int_16, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty Denominator int 16 Null
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16_null = {}

-- Size: Leg Ratio Qty Denominator int 16 Null
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16_null.size = 2

-- Display: Leg Ratio Qty Denominator int 16 Null
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16_null.display = function(value)
  return "Leg Ratio Qty Denominator int 16 Null: "..value
end

-- Dissect: Leg Ratio Qty Denominator int 16 Null
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16_null.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_qty_denominator_int_16_null, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty Numerator int 16
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16 = {}

-- Size: Leg Ratio Qty Numerator int 16
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16.size = 2

-- Display: Leg Ratio Qty Numerator int 16
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16.display = function(value)
  return "Leg Ratio Qty Numerator int 16: "..value
end

-- Dissect: Leg Ratio Qty Numerator int 16
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_qty_numerator_int_16, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty Numerator int 16 Null
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16_null = {}

-- Size: Leg Ratio Qty Numerator int 16 Null
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16_null.size = 2

-- Display: Leg Ratio Qty Numerator int 16 Null
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16_null.display = function(value)
  return "Leg Ratio Qty Numerator int 16 Null: "..value
end

-- Dissect: Leg Ratio Qty Numerator int 16 Null
ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16_null.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_ratio_qty_numerator_int_16_null, range, value, display)

  return offset + length, value
end

-- Leg Security Id
ice_icefutures_bgw_sbe_v7_0.leg_security_id = {}

-- Size: Leg Security Id
ice_icefutures_bgw_sbe_v7_0.leg_security_id.size = 75

-- Display: Leg Security Id
ice_icefutures_bgw_sbe_v7_0.leg_security_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Security Id: No Value"
  end

  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
ice_icefutures_bgw_sbe_v7_0.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_security_id.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Leg Security Id Source
ice_icefutures_bgw_sbe_v7_0.leg_security_id_source = {}

-- Size: Leg Security Id Source
ice_icefutures_bgw_sbe_v7_0.leg_security_id_source.size = 1

-- Display: Leg Security Id Source
ice_icefutures_bgw_sbe_v7_0.leg_security_id_source.display = function(value)
  return "Leg Security Id Source: "..value
end

-- Dissect: Leg Security Id Source
ice_icefutures_bgw_sbe_v7_0.leg_security_id_source.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_security_id_source.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_security_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_security_id_source, range, value, display)

  return offset + length, value
end

-- Leg Security Sub Type
ice_icefutures_bgw_sbe_v7_0.leg_security_sub_type = {}

-- Size: Leg Security Sub Type
ice_icefutures_bgw_sbe_v7_0.leg_security_sub_type.size = 2

-- Display: Leg Security Sub Type
ice_icefutures_bgw_sbe_v7_0.leg_security_sub_type.display = function(value)
  return "Leg Security Sub Type: "..value
end

-- Dissect: Leg Security Sub Type
ice_icefutures_bgw_sbe_v7_0.leg_security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_security_sub_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_security_sub_type, range, value, display)

  return offset + length, value
end

-- Leg Security Type
ice_icefutures_bgw_sbe_v7_0.leg_security_type = {}

-- Size: Leg Security Type
ice_icefutures_bgw_sbe_v7_0.leg_security_type.size = 1

-- Display: Leg Security Type
ice_icefutures_bgw_sbe_v7_0.leg_security_type.display = function(value)
  if value == 1 then
    return "Leg Security Type: Fut (1)"
  end
  if value == 2 then
    return "Leg Security Type: Opt (2)"
  end
  if value == 3 then
    return "Leg Security Type: Common Stock (3)"
  end
  if value == 4 then
    return "Leg Security Type: Mleg (4)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
ice_icefutures_bgw_sbe_v7_0.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Side
ice_icefutures_bgw_sbe_v7_0.leg_side = {}

-- Size: Leg Side
ice_icefutures_bgw_sbe_v7_0.leg_side.size = 1

-- Display: Leg Side
ice_icefutures_bgw_sbe_v7_0.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
ice_icefutures_bgw_sbe_v7_0.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Symbol int 32
ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32 = {}

-- Size: Leg Symbol int 32
ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32.size = 4

-- Display: Leg Symbol int 32
ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32.display = function(value)
  return "Leg Symbol int 32: "..value
end

-- Dissect: Leg Symbol int 32
ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_symbol_int_32, range, value, display)

  return offset + length, value
end

-- Leg Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32_null = {}

-- Size: Leg Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32_null.size = 4

-- Display: Leg Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32_null.display = function(value)
  return "Leg Symbol int 32 Null: "..value
end

-- Dissect: Leg Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32_null.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.leg_symbol_int_32_null, range, value, display)

  return offset + length, value
end

-- Link Exec Id
ice_icefutures_bgw_sbe_v7_0.link_exec_id = {}

-- Size: Link Exec Id
ice_icefutures_bgw_sbe_v7_0.link_exec_id.size = 8

-- Display: Link Exec Id
ice_icefutures_bgw_sbe_v7_0.link_exec_id.display = function(value)
  return "Link Exec Id: "..value
end

-- Dissect: Link Exec Id
ice_icefutures_bgw_sbe_v7_0.link_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.link_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.link_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.link_exec_id, range, value, display)

  return offset + length, value
end

-- Liquidity Provision
ice_icefutures_bgw_sbe_v7_0.liquidity_provision = {}

-- Size: Liquidity Provision
ice_icefutures_bgw_sbe_v7_0.liquidity_provision.size = 1

-- Display: Liquidity Provision
ice_icefutures_bgw_sbe_v7_0.liquidity_provision.display = function(value)
  if value == 0 then
    return "Liquidity Provision: False (0)"
  end
  if value == 1 then
    return "Liquidity Provision: True (1)"
  end

  return "Liquidity Provision: Unknown("..value..")"
end

-- Dissect: Liquidity Provision
ice_icefutures_bgw_sbe_v7_0.liquidity_provision.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.liquidity_provision.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.liquidity_provision.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.liquidity_provision, range, value, display)

  return offset + length, value
end

-- List Seq No
ice_icefutures_bgw_sbe_v7_0.list_seq_no = {}

-- Size: List Seq No
ice_icefutures_bgw_sbe_v7_0.list_seq_no.size = 4

-- Display: List Seq No
ice_icefutures_bgw_sbe_v7_0.list_seq_no.display = function(value)
  return "List Seq No: "..value
end

-- Dissect: List Seq No
ice_icefutures_bgw_sbe_v7_0.list_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.list_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.list_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.list_seq_no, range, value, display)

  return offset + length, value
end

-- Lot Size
ice_icefutures_bgw_sbe_v7_0.lot_size = {}

-- Size: Lot Size
ice_icefutures_bgw_sbe_v7_0.lot_size.size = 4

-- Display: Lot Size
ice_icefutures_bgw_sbe_v7_0.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
ice_icefutures_bgw_sbe_v7_0.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lot Size Multiplier Decimal 9
ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9 = {}

-- Size: Lot Size Multiplier Decimal 9
ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9.size = 8

-- Display: Lot Size Multiplier Decimal 9
ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9.display = function(value)
  return "Lot Size Multiplier Decimal 9: "..value
end

-- Dissect: Lot Size Multiplier Decimal 9
ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.lot_size_multiplier_decimal_9, range, value, display)

  return offset + length, value
end

-- Lot Size Multiplier Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9_null = {}

-- Size: Lot Size Multiplier Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9_null.size = 8

-- Display: Lot Size Multiplier Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9_null.display = function(value)
  return "Lot Size Multiplier Decimal 9 Null: "..value
end

-- Dissect: Lot Size Multiplier Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9_null.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.lot_size_multiplier_decimal_9_null, range, value, display)

  return offset + length, value
end

-- Manual Order Indicator
ice_icefutures_bgw_sbe_v7_0.manual_order_indicator = {}

-- Size: Manual Order Indicator
ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.size = 1

-- Display: Manual Order Indicator
ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.display = function(value)
  if value == 0 then
    return "Manual Order Indicator: False (0)"
  end
  if value == 1 then
    return "Manual Order Indicator: True (1)"
  end

  return "Manual Order Indicator: Unknown("..value..")"
end

-- Dissect: Manual Order Indicator
ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.manual_order_indicator, range, value, display)

  return offset + length, value
end

-- Market Transparency Type
ice_icefutures_bgw_sbe_v7_0.market_transparency_type = {}

-- Size: Market Transparency Type
ice_icefutures_bgw_sbe_v7_0.market_transparency_type.size = 1

-- Display: Market Transparency Type
ice_icefutures_bgw_sbe_v7_0.market_transparency_type.display = function(value)
  if value == 0 then
    return "Market Transparency Type: False (0)"
  end
  if value == 1 then
    return "Market Transparency Type: True (1)"
  end

  return "Market Transparency Type: Unknown("..value..")"
end

-- Dissect: Market Transparency Type
ice_icefutures_bgw_sbe_v7_0.market_transparency_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.market_transparency_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.market_transparency_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.market_transparency_type, range, value, display)

  return offset + length, value
end

-- Market Type I D int 32
ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32 = {}

-- Size: Market Type I D int 32
ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.size = 4

-- Display: Market Type I D int 32
ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.display = function(value)
  return "Market Type I D int 32: "..value
end

-- Dissect: Market Type I D int 32
ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.market_type_i_d_int_32, range, value, display)

  return offset + length, value
end

-- Market Type I D int 32 Null
ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32_null = {}

-- Size: Market Type I D int 32 Null
ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32_null.size = 4

-- Display: Market Type I D int 32 Null
ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32_null.display = function(value)
  return "Market Type I D int 32 Null: "..value
end

-- Dissect: Market Type I D int 32 Null
ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32_null.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.market_type_i_d_int_32_null, range, value, display)

  return offset + length, value
end

-- Mass Cancel Reject Reason
ice_icefutures_bgw_sbe_v7_0.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
ice_icefutures_bgw_sbe_v7_0.mass_cancel_reject_reason.size = 1

-- Display: Mass Cancel Reject Reason
ice_icefutures_bgw_sbe_v7_0.mass_cancel_reject_reason.display = function(value)
  if value == 0 then
    return "Mass Cancel Reject Reason: Unsupported (0)"
  end
  if value == 6 then
    return "Mass Cancel Reject Reason: Invalid Trading Session (6)"
  end
  if value == 7 then
    return "Mass Cancel Reject Reason: Invalid Market (7)"
  end
  if value == 99 then
    return "Mass Cancel Reject Reason: Other (99)"
  end

  return "Mass Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Mass Cancel Reject Reason
ice_icefutures_bgw_sbe_v7_0.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Request Type
ice_icefutures_bgw_sbe_v7_0.mass_cancel_request_type = {}

-- Size: Mass Cancel Request Type
ice_icefutures_bgw_sbe_v7_0.mass_cancel_request_type.size = 1

-- Display: Mass Cancel Request Type
ice_icefutures_bgw_sbe_v7_0.mass_cancel_request_type.display = function(value)
  if value == 6 then
    return "Mass Cancel Request Type: Cancel For Trading Session (6)"
  end
  if value == 10 then
    return "Mass Cancel Request Type: Cancel All For Trader (10)"
  end

  return "Mass Cancel Request Type: Unknown("..value..")"
end

-- Dissect: Mass Cancel Request Type
ice_icefutures_bgw_sbe_v7_0.mass_cancel_request_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.mass_cancel_request_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.mass_cancel_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_cancel_request_type, range, value, display)

  return offset + length, value
end

-- Mass Cancel Response
ice_icefutures_bgw_sbe_v7_0.mass_cancel_response = {}

-- Size: Mass Cancel Response
ice_icefutures_bgw_sbe_v7_0.mass_cancel_response.size = 1

-- Display: Mass Cancel Response
ice_icefutures_bgw_sbe_v7_0.mass_cancel_response.display = function(value)
  if value == 0 then
    return "Mass Cancel Response: Rejected (0)"
  end
  if value == 6 then
    return "Mass Cancel Response: Cancel For Trading Session (6)"
  end
  if value == 10 then
    return "Mass Cancel Response: Cancel All For Trader (10)"
  end

  return "Mass Cancel Response: Unknown("..value..")"
end

-- Dissect: Mass Cancel Response
ice_icefutures_bgw_sbe_v7_0.mass_cancel_response.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.mass_cancel_response.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.mass_cancel_response.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_cancel_response, range, value, display)

  return offset + length, value
end

-- Mass Quotes Allowed
ice_icefutures_bgw_sbe_v7_0.mass_quotes_allowed = {}

-- Size: Mass Quotes Allowed
ice_icefutures_bgw_sbe_v7_0.mass_quotes_allowed.size = 1

-- Display: Mass Quotes Allowed
ice_icefutures_bgw_sbe_v7_0.mass_quotes_allowed.display = function(value)
  if value == 0 then
    return "Mass Quotes Allowed: False (0)"
  end
  if value == 1 then
    return "Mass Quotes Allowed: True (1)"
  end

  return "Mass Quotes Allowed: Unknown("..value..")"
end

-- Dissect: Mass Quotes Allowed
ice_icefutures_bgw_sbe_v7_0.mass_quotes_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.mass_quotes_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.mass_quotes_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quotes_allowed, range, value, display)

  return offset + length, value
end

-- Maturity Date
ice_icefutures_bgw_sbe_v7_0.maturity_date = {}

-- Size: Maturity Date
ice_icefutures_bgw_sbe_v7_0.maturity_date.size = 2

-- Display: Maturity Date
ice_icefutures_bgw_sbe_v7_0.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
ice_icefutures_bgw_sbe_v7_0.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Max Price
ice_icefutures_bgw_sbe_v7_0.max_price = {}

-- Size: Max Price
ice_icefutures_bgw_sbe_v7_0.max_price.size = 8

-- Display: Max Price
ice_icefutures_bgw_sbe_v7_0.max_price.display = function(value)
  return "Max Price: "..value
end

-- Dissect: Max Price
ice_icefutures_bgw_sbe_v7_0.max_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.max_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.max_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.max_price, range, value, display)

  return offset + length, value
end

-- Max Show
ice_icefutures_bgw_sbe_v7_0.max_show = {}

-- Size: Max Show
ice_icefutures_bgw_sbe_v7_0.max_show.size = 8

-- Display: Max Show
ice_icefutures_bgw_sbe_v7_0.max_show.display = function(value)
  return "Max Show: "..value
end

-- Dissect: Max Show
ice_icefutures_bgw_sbe_v7_0.max_show.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.max_show.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.max_show.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.max_show, range, value, display)

  return offset + length, value
end

-- Me Acceptance Time Utc Timestamp
ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp = {}

-- Size: Me Acceptance Time Utc Timestamp
ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp.size = 8

-- Display: Me Acceptance Time Utc Timestamp
ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp.display = function(value)
  return "Me Acceptance Time Utc Timestamp: "..value
end

-- Dissect: Me Acceptance Time Utc Timestamp
ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.me_acceptance_time_utc_timestamp, range, value, display)

  return offset + length, value
end

-- Me Acceptance Time Utc Timestamp Null
ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp_null = {}

-- Size: Me Acceptance Time Utc Timestamp Null
ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp_null.size = 8

-- Display: Me Acceptance Time Utc Timestamp Null
ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp_null.display = function(value)
  return "Me Acceptance Time Utc Timestamp Null: "..value
end

-- Dissect: Me Acceptance Time Utc Timestamp Null
ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp_null.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.me_acceptance_time_utc_timestamp_null, range, value, display)

  return offset + length, value
end

-- Memo
ice_icefutures_bgw_sbe_v7_0.memo = {}

-- Size: Memo
ice_icefutures_bgw_sbe_v7_0.memo.size = 30

-- Display: Memo
ice_icefutures_bgw_sbe_v7_0.memo.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Memo: No Value"
  end

  return "Memo: "..value
end

-- Dissect: Memo
ice_icefutures_bgw_sbe_v7_0.memo.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.memo.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.memo, range, value, display)

  return offset + length, value
end

-- Message Length
ice_icefutures_bgw_sbe_v7_0.message_length = {}

-- Size: Message Length
ice_icefutures_bgw_sbe_v7_0.message_length.size = 2

-- Display: Message Length
ice_icefutures_bgw_sbe_v7_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
ice_icefutures_bgw_sbe_v7_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Mifid Id
ice_icefutures_bgw_sbe_v7_0.mifid_id = {}

-- Size: Mifid Id
ice_icefutures_bgw_sbe_v7_0.mifid_id.size = 8

-- Display: Mifid Id
ice_icefutures_bgw_sbe_v7_0.mifid_id.display = function(value)
  return "Mifid Id: "..value
end

-- Dissect: Mifid Id
ice_icefutures_bgw_sbe_v7_0.mifid_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.mifid_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.mifid_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mifid_id, range, value, display)

  return offset + length, value
end

-- Mifid Regulated Market Boolean Enum
ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum = {}

-- Size: Mifid Regulated Market Boolean Enum
ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum.size = 1

-- Display: Mifid Regulated Market Boolean Enum
ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum.display = function(value)
  if value == 0 then
    return "Mifid Regulated Market Boolean Enum: False (0)"
  end
  if value == 1 then
    return "Mifid Regulated Market Boolean Enum: True (1)"
  end

  return "Mifid Regulated Market Boolean Enum: Unknown("..value..")"
end

-- Dissect: Mifid Regulated Market Boolean Enum
ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mifid_regulated_market_boolean_enum, range, value, display)

  return offset + length, value
end

-- Mifid Regulated Market Boolean Enum Null
ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum_null = {}

-- Size: Mifid Regulated Market Boolean Enum Null
ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum_null.size = 1

-- Display: Mifid Regulated Market Boolean Enum Null
ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum_null.display = function(value)
  if value == 0 then
    return "Mifid Regulated Market Boolean Enum Null: False (0)"
  end
  if value == 1 then
    return "Mifid Regulated Market Boolean Enum Null: True (1)"
  end

  return "Mifid Regulated Market Boolean Enum Null: Unknown("..value..")"
end

-- Dissect: Mifid Regulated Market Boolean Enum Null
ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum_null.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mifid_regulated_market_boolean_enum_null, range, value, display)

  return offset + length, value
end

-- Min Price
ice_icefutures_bgw_sbe_v7_0.min_price = {}

-- Size: Min Price
ice_icefutures_bgw_sbe_v7_0.min_price.size = 8

-- Display: Min Price
ice_icefutures_bgw_sbe_v7_0.min_price.display = function(value)
  return "Min Price: "..value
end

-- Dissect: Min Price
ice_icefutures_bgw_sbe_v7_0.min_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.min_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.min_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.min_price, range, value, display)

  return offset + length, value
end

-- New Seq No
ice_icefutures_bgw_sbe_v7_0.new_seq_no = {}

-- Size: New Seq No
ice_icefutures_bgw_sbe_v7_0.new_seq_no.size = 4

-- Display: New Seq No
ice_icefutures_bgw_sbe_v7_0.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
ice_icefutures_bgw_sbe_v7_0.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- No Leg Executions
ice_icefutures_bgw_sbe_v7_0.no_leg_executions = {}

-- Size: No Leg Executions
ice_icefutures_bgw_sbe_v7_0.no_leg_executions.size = 2

-- Display: No Leg Executions
ice_icefutures_bgw_sbe_v7_0.no_leg_executions.display = function(value)
  return "No Leg Executions: "..value
end

-- Dissect: No Leg Executions
ice_icefutures_bgw_sbe_v7_0.no_leg_executions.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.no_leg_executions.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.no_leg_executions.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.no_leg_executions, range, value, display)

  return offset + length, value
end

-- No Rpts
ice_icefutures_bgw_sbe_v7_0.no_rpts = {}

-- Size: No Rpts
ice_icefutures_bgw_sbe_v7_0.no_rpts.size = 4

-- Display: No Rpts
ice_icefutures_bgw_sbe_v7_0.no_rpts.display = function(value)
  return "No Rpts: "..value
end

-- Dissect: No Rpts
ice_icefutures_bgw_sbe_v7_0.no_rpts.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.no_rpts.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.no_rpts.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.no_rpts, range, value, display)

  return offset + length, value
end

-- Non Commoditized Market
ice_icefutures_bgw_sbe_v7_0.non_commoditized_market = {}

-- Size: Non Commoditized Market
ice_icefutures_bgw_sbe_v7_0.non_commoditized_market.size = 1

-- Display: Non Commoditized Market
ice_icefutures_bgw_sbe_v7_0.non_commoditized_market.display = function(value)
  if value == 0 then
    return "Non Commoditized Market: False (0)"
  end
  if value == 1 then
    return "Non Commoditized Market: True (1)"
  end

  return "Non Commoditized Market: Unknown("..value..")"
end

-- Dissect: Non Commoditized Market
ice_icefutures_bgw_sbe_v7_0.non_commoditized_market.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.non_commoditized_market.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.non_commoditized_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.non_commoditized_market, range, value, display)

  return offset + length, value
end

-- Num In Group
ice_icefutures_bgw_sbe_v7_0.num_in_group = {}

-- Size: Num In Group
ice_icefutures_bgw_sbe_v7_0.num_in_group.size = 2

-- Display: Num In Group
ice_icefutures_bgw_sbe_v7_0.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
ice_icefutures_bgw_sbe_v7_0.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Num Of Cycles int 16
ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16 = {}

-- Size: Num Of Cycles int 16
ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16.size = 2

-- Display: Num Of Cycles int 16
ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16.display = function(value)
  return "Num Of Cycles int 16: "..value
end

-- Dissect: Num Of Cycles int 16
ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_cycles_int_16, range, value, display)

  return offset + length, value
end

-- Num Of Cycles int 16 Null
ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16_null = {}

-- Size: Num Of Cycles int 16 Null
ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16_null.size = 2

-- Display: Num Of Cycles int 16 Null
ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16_null.display = function(value)
  return "Num Of Cycles int 16 Null: "..value
end

-- Dissect: Num Of Cycles int 16 Null
ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16_null.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_cycles_int_16_null, range, value, display)

  return offset + length, value
end

-- Num Of Decimal Price
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_price = {}

-- Size: Num Of Decimal Price
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_price.size = 1

-- Display: Num Of Decimal Price
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_price.display = function(value)
  return "Num Of Decimal Price: "..value
end

-- Dissect: Num Of Decimal Price
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_decimal_price, range, value, display)

  return offset + length, value
end

-- Num Of Decimal Qty
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_qty = {}

-- Size: Num Of Decimal Qty
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_qty.size = 1

-- Display: Num Of Decimal Qty
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_qty.display = function(value)
  return "Num Of Decimal Qty: "..value
end

-- Dissect: Num Of Decimal Qty
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_decimal_qty, range, value, display)

  return offset + length, value
end

-- Num Of Decimal Strike Price
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_strike_price = {}

-- Size: Num Of Decimal Strike Price
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_strike_price.size = 1

-- Display: Num Of Decimal Strike Price
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_strike_price.display = function(value)
  return "Num Of Decimal Strike Price: "..value
end

-- Dissect: Num Of Decimal Strike Price
ice_icefutures_bgw_sbe_v7_0.num_of_decimal_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_strike_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_decimal_strike_price, range, value, display)

  return offset + length, value
end

-- Num Of Lots
ice_icefutures_bgw_sbe_v7_0.num_of_lots = {}

-- Size: Num Of Lots
ice_icefutures_bgw_sbe_v7_0.num_of_lots.size = 8

-- Display: Num Of Lots
ice_icefutures_bgw_sbe_v7_0.num_of_lots.display = function(value)
  return "Num Of Lots: "..value
end

-- Dissect: Num Of Lots
ice_icefutures_bgw_sbe_v7_0.num_of_lots.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.num_of_lots.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.num_of_lots.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.num_of_lots, range, value, display)

  return offset + length, value
end

-- Off Exchange Increment Price Decimal 9
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9 = {}

-- Size: Off Exchange Increment Price Decimal 9
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9.size = 8

-- Display: Off Exchange Increment Price Decimal 9
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9.display = function(value)
  return "Off Exchange Increment Price Decimal 9: "..value
end

-- Dissect: Off Exchange Increment Price Decimal 9
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.off_exchange_increment_price_decimal_9, range, value, display)

  return offset + length, value
end

-- Off Exchange Increment Price Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9_null = {}

-- Size: Off Exchange Increment Price Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9_null.size = 8

-- Display: Off Exchange Increment Price Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9_null.display = function(value)
  return "Off Exchange Increment Price Decimal 9 Null: "..value
end

-- Dissect: Off Exchange Increment Price Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9_null.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.off_exchange_increment_price_decimal_9_null, range, value, display)

  return offset + length, value
end

-- Off Exchange Increment Qty Decimal 9
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9 = {}

-- Size: Off Exchange Increment Qty Decimal 9
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9.size = 8

-- Display: Off Exchange Increment Qty Decimal 9
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9.display = function(value)
  return "Off Exchange Increment Qty Decimal 9: "..value
end

-- Dissect: Off Exchange Increment Qty Decimal 9
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.off_exchange_increment_qty_decimal_9, range, value, display)

  return offset + length, value
end

-- Off Exchange Increment Qty Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9_null = {}

-- Size: Off Exchange Increment Qty Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9_null.size = 8

-- Display: Off Exchange Increment Qty Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9_null.display = function(value)
  return "Off Exchange Increment Qty Decimal 9 Null: "..value
end

-- Dissect: Off Exchange Increment Qty Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9_null.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.off_exchange_increment_qty_decimal_9_null, range, value, display)

  return offset + length, value
end

-- Offer Px
ice_icefutures_bgw_sbe_v7_0.offer_px = {}

-- Size: Offer Px
ice_icefutures_bgw_sbe_v7_0.offer_px.size = 8

-- Display: Offer Px
ice_icefutures_bgw_sbe_v7_0.offer_px.display = function(value)
  return "Offer Px: "..value
end

-- Dissect: Offer Px
ice_icefutures_bgw_sbe_v7_0.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.offer_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.offer_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Offer Sz
ice_icefutures_bgw_sbe_v7_0.offer_sz = {}

-- Size: Offer Sz
ice_icefutures_bgw_sbe_v7_0.offer_sz.size = 8

-- Display: Offer Sz
ice_icefutures_bgw_sbe_v7_0.offer_sz.display = function(value)
  return "Offer Sz: "..value
end

-- Dissect: Offer Sz
ice_icefutures_bgw_sbe_v7_0.offer_sz.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.offer_sz.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.offer_sz.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.offer_sz, range, value, display)

  return offset + length, value
end

-- On Behalf Of Comp Id
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id = {}

-- Size: On Behalf Of Comp Id
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.size = 41

-- Display: On Behalf Of Comp Id
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "On Behalf Of Comp Id: No Value"
  end

  return "On Behalf Of Comp Id: "..value
end

-- Dissect: On Behalf Of Comp Id
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.on_behalf_of_comp_id, range, value, display)

  return offset + length, value
end

-- On Behalf Of Location I D string 41
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41 = {}

-- Size: On Behalf Of Location I D string 41
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.size = 41

-- Display: On Behalf Of Location I D string 41
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "On Behalf Of Location I D string 41: No Value"
  end

  return "On Behalf Of Location I D string 41: "..value
end

-- Dissect: On Behalf Of Location I D string 41
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.on_behalf_of_location_i_d_string_41, range, value, display)

  return offset + length, value
end

-- On Behalf Of Location I D string 41 Null
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41_null = {}

-- Size: On Behalf Of Location I D string 41 Null
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41_null.size = 41

-- Display: On Behalf Of Location I D string 41 Null
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41_null.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "On Behalf Of Location I D string 41 Null: No Value"
  end

  return "On Behalf Of Location I D string 41 Null: "..value
end

-- Dissect: On Behalf Of Location I D string 41 Null
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41_null.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.on_behalf_of_location_i_d_string_41_null, range, value, display)

  return offset + length, value
end

-- On Behalf Of Sub I D string 41
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41 = {}

-- Size: On Behalf Of Sub I D string 41
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.size = 41

-- Display: On Behalf Of Sub I D string 41
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "On Behalf Of Sub I D string 41: No Value"
  end

  return "On Behalf Of Sub I D string 41: "..value
end

-- Dissect: On Behalf Of Sub I D string 41
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.on_behalf_of_sub_i_d_string_41, range, value, display)

  return offset + length, value
end

-- On Behalf Of Sub I D string 41 Null
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41_null = {}

-- Size: On Behalf Of Sub I D string 41 Null
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41_null.size = 41

-- Display: On Behalf Of Sub I D string 41 Null
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41_null.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "On Behalf Of Sub I D string 41 Null: No Value"
  end

  return "On Behalf Of Sub I D string 41 Null: "..value
end

-- Dissect: On Behalf Of Sub I D string 41 Null
ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41_null.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.on_behalf_of_sub_i_d_string_41_null, range, value, display)

  return offset + length, value
end

-- Options Allowed
ice_icefutures_bgw_sbe_v7_0.options_allowed = {}

-- Size: Options Allowed
ice_icefutures_bgw_sbe_v7_0.options_allowed.size = 1

-- Display: Options Allowed
ice_icefutures_bgw_sbe_v7_0.options_allowed.display = function(value)
  if value == 0 then
    return "Options Allowed: False (0)"
  end
  if value == 1 then
    return "Options Allowed: True (1)"
  end

  return "Options Allowed: Unknown("..value..")"
end

-- Dissect: Options Allowed
ice_icefutures_bgw_sbe_v7_0.options_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.options_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.options_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.options_allowed, range, value, display)

  return offset + length, value
end

-- Ord Type Order Type Enum
ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum = {}

-- Size: Ord Type Order Type Enum
ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.size = 1

-- Display: Ord Type Order Type Enum
ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.display = function(value)
  if value == 1 then
    return "Ord Type Order Type Enum: Market (1)"
  end
  if value == 2 then
    return "Ord Type Order Type Enum: Limit (2)"
  end
  if value == 3 then
    return "Ord Type Order Type Enum: Stop (3)"
  end
  if value == 4 then
    return "Ord Type Order Type Enum: Stop Limit (4)"
  end

  return "Ord Type Order Type Enum: Unknown("..value..")"
end

-- Dissect: Ord Type Order Type Enum
ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.ord_type_order_type_enum, range, value, display)

  return offset + length, value
end

-- Ord Type Order Type Enum Null
ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum_null = {}

-- Size: Ord Type Order Type Enum Null
ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum_null.size = 1

-- Display: Ord Type Order Type Enum Null
ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum_null.display = function(value)
  if value == 1 then
    return "Ord Type Order Type Enum Null: Market (1)"
  end
  if value == 2 then
    return "Ord Type Order Type Enum Null: Limit (2)"
  end
  if value == 3 then
    return "Ord Type Order Type Enum Null: Stop (3)"
  end
  if value == 4 then
    return "Ord Type Order Type Enum Null: Stop Limit (4)"
  end

  return "Ord Type Order Type Enum Null: Unknown("..value..")"
end

-- Dissect: Ord Type Order Type Enum Null
ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum_null.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.ord_type_order_type_enum_null, range, value, display)

  return offset + length, value
end

-- Order Id
ice_icefutures_bgw_sbe_v7_0.order_id = {}

-- Size: Order Id
ice_icefutures_bgw_sbe_v7_0.order_id.size = 8

-- Display: Order Id
ice_icefutures_bgw_sbe_v7_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
ice_icefutures_bgw_sbe_v7_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty Decimal 9
ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9 = {}

-- Size: Order Qty Decimal 9
ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9.size = 8

-- Display: Order Qty Decimal 9
ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9.display = function(value)
  return "Order Qty Decimal 9: "..value
end

-- Dissect: Order Qty Decimal 9
ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.order_qty_decimal_9, range, value, display)

  return offset + length, value
end

-- Order Qty Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9_null = {}

-- Size: Order Qty Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9_null.size = 8

-- Display: Order Qty Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9_null.display = function(value)
  return "Order Qty Decimal 9 Null: "..value
end

-- Dissect: Order Qty Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9_null.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.order_qty_decimal_9_null, range, value, display)

  return offset + length, value
end

-- Order State
ice_icefutures_bgw_sbe_v7_0.order_state = {}

-- Size: Order State
ice_icefutures_bgw_sbe_v7_0.order_state.size = 1

-- Display: Order State
ice_icefutures_bgw_sbe_v7_0.order_state.display = function(value)
  if value == 0 then
    return "Order State: Active (0)"
  end
  if value == 1 then
    return "Order State: Inactive (1)"
  end
  if value == 2 then
    return "Order State: Withdrawn (2)"
  end
  if value == 4 then
    return "Order State: Consummated (4)"
  end
  if value == 6 then
    return "Order State: Elected (6)"
  end

  return "Order State: Unknown("..value..")"
end

-- Dissect: Order State
ice_icefutures_bgw_sbe_v7_0.order_state.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.order_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.order_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.order_state, range, value, display)

  return offset + length, value
end

-- Order Status
ice_icefutures_bgw_sbe_v7_0.order_status = {}

-- Size: Order Status
ice_icefutures_bgw_sbe_v7_0.order_status.size = 1

-- Display: Order Status
ice_icefutures_bgw_sbe_v7_0.order_status.display = function(value)
  if value == 0 then
    return "Order Status: New (0)"
  end
  if value == 1 then
    return "Order Status: Partial Fill (1)"
  end
  if value == 2 then
    return "Order Status: Fill (2)"
  end
  if value == 4 then
    return "Order Status: Canceled (4)"
  end
  if value == 5 then
    return "Order Status: Replace (5)"
  end
  if value == 8 then
    return "Order Status: Rejected (8)"
  end

  return "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
ice_icefutures_bgw_sbe_v7_0.order_status.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.order_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.order_status, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord I D int 64
ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64 = {}

-- Size: Orig Cl Ord I D int 64
ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64.size = 8

-- Display: Orig Cl Ord I D int 64
ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64.display = function(value)
  return "Orig Cl Ord I D int 64: "..value
end

-- Dissect: Orig Cl Ord I D int 64
ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.orig_cl_ord_i_d_int_64, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord I D int 64 Null
ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null = {}

-- Size: Orig Cl Ord I D int 64 Null
ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null.size = 8

-- Display: Orig Cl Ord I D int 64 Null
ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null.display = function(value)
  return "Orig Cl Ord I D int 64 Null: "..value
end

-- Dissect: Orig Cl Ord I D int 64 Null
ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.orig_cl_ord_i_d_int_64_null, range, value, display)

  return offset + length, value
end

-- Original Creation Timestamp
ice_icefutures_bgw_sbe_v7_0.original_creation_timestamp = {}

-- Size: Original Creation Timestamp
ice_icefutures_bgw_sbe_v7_0.original_creation_timestamp.size = 8

-- Display: Original Creation Timestamp
ice_icefutures_bgw_sbe_v7_0.original_creation_timestamp.display = function(value)
  return "Original Creation Timestamp: "..value
end

-- Dissect: Original Creation Timestamp
ice_icefutures_bgw_sbe_v7_0.original_creation_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.original_creation_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = ice_icefutures_bgw_sbe_v7_0.original_creation_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.original_creation_timestamp, range, value, display)

  return offset + length, value
end

-- Original System Id
ice_icefutures_bgw_sbe_v7_0.original_system_id = {}

-- Size: Original System Id
ice_icefutures_bgw_sbe_v7_0.original_system_id.size = 8

-- Display: Original System Id
ice_icefutures_bgw_sbe_v7_0.original_system_id.display = function(value)
  return "Original System Id: "..value
end

-- Dissect: Original System Id
ice_icefutures_bgw_sbe_v7_0.original_system_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.original_system_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.original_system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.original_system_id, range, value, display)

  return offset + length, value
end

-- Originator User Id
ice_icefutures_bgw_sbe_v7_0.originator_user_id = {}

-- Size: Originator User Id
ice_icefutures_bgw_sbe_v7_0.originator_user_id.size = 20

-- Display: Originator User Id
ice_icefutures_bgw_sbe_v7_0.originator_user_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Originator User Id: No Value"
  end

  return "Originator User Id: "..value
end

-- Dissect: Originator User Id
ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.originator_user_id.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.originator_user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.originator_user_id, range, value, display)

  return offset + length, value
end

-- Override Block Min
ice_icefutures_bgw_sbe_v7_0.override_block_min = {}

-- Size: Override Block Min
ice_icefutures_bgw_sbe_v7_0.override_block_min.size = 1

-- Display: Override Block Min
ice_icefutures_bgw_sbe_v7_0.override_block_min.display = function(value)
  if value == 0 then
    return "Override Block Min: False (0)"
  end
  if value == 1 then
    return "Override Block Min: True (1)"
  end

  return "Override Block Min: Unknown("..value..")"
end

-- Dissect: Override Block Min
ice_icefutures_bgw_sbe_v7_0.override_block_min.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.override_block_min.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.override_block_min.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.override_block_min, range, value, display)

  return offset + length, value
end

-- Physical Code Data
ice_icefutures_bgw_sbe_v7_0.physical_code_data = {}

-- Display: Physical Code Data
ice_icefutures_bgw_sbe_v7_0.physical_code_data.display = function(value)
  return "Physical Code Data: "..value
end

-- Dissect runtime sized field: Physical Code Data
ice_icefutures_bgw_sbe_v7_0.physical_code_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.physical_code_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.physical_code_data, range, value, display)

  return offset + size, value
end

-- Physical Code Length
ice_icefutures_bgw_sbe_v7_0.physical_code_length = {}

-- Size: Physical Code Length
ice_icefutures_bgw_sbe_v7_0.physical_code_length.size = 2

-- Display: Physical Code Length
ice_icefutures_bgw_sbe_v7_0.physical_code_length.display = function(value)
  return "Physical Code Length: "..value
end

-- Dissect: Physical Code Length
ice_icefutures_bgw_sbe_v7_0.physical_code_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.physical_code_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.physical_code_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.physical_code_length, range, value, display)

  return offset + length, value
end

-- Port
ice_icefutures_bgw_sbe_v7_0.port = {}

-- Size: Port
ice_icefutures_bgw_sbe_v7_0.port.size = 2

-- Display: Port
ice_icefutures_bgw_sbe_v7_0.port.display = function(value)
  return "Port: "..value
end

-- Dissect: Port
ice_icefutures_bgw_sbe_v7_0.port.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.port.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.port.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.port, range, value, display)

  return offset + length, value
end

-- Position Effect
ice_icefutures_bgw_sbe_v7_0.position_effect = {}

-- Size: Position Effect
ice_icefutures_bgw_sbe_v7_0.position_effect.size = 1

-- Display: Position Effect
ice_icefutures_bgw_sbe_v7_0.position_effect.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Position Effect: No Value"
  end

  if value == "O" then
    return "Position Effect: Open (O)"
  end
  if value == "C" then
    return "Position Effect: Close (C)"
  end

  return "Position Effect: Unknown("..value..")"
end

-- Dissect: Position Effect
ice_icefutures_bgw_sbe_v7_0.position_effect.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.position_effect.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_icefutures_bgw_sbe_v7_0.position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.position_effect, range, value, display)

  return offset + length, value
end

-- Price Decimal 9
ice_icefutures_bgw_sbe_v7_0.price_decimal_9 = {}

-- Size: Price Decimal 9
ice_icefutures_bgw_sbe_v7_0.price_decimal_9.size = 8

-- Display: Price Decimal 9
ice_icefutures_bgw_sbe_v7_0.price_decimal_9.display = function(value)
  return "Price Decimal 9: "..value
end

-- Dissect: Price Decimal 9
ice_icefutures_bgw_sbe_v7_0.price_decimal_9.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.price_decimal_9.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.price_decimal_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.price_decimal_9, range, value, display)

  return offset + length, value
end

-- Price Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null = {}

-- Size: Price Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.size = 8

-- Display: Price Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.display = function(value)
  return "Price Decimal 9 Null: "..value
end

-- Dissect: Price Decimal 9 Null
ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.price_decimal_9_null, range, value, display)

  return offset + length, value
end

-- Price Denomination Data
ice_icefutures_bgw_sbe_v7_0.price_denomination_data = {}

-- Display: Price Denomination Data
ice_icefutures_bgw_sbe_v7_0.price_denomination_data.display = function(value)
  return "Price Denomination Data: "..value
end

-- Dissect runtime sized field: Price Denomination Data
ice_icefutures_bgw_sbe_v7_0.price_denomination_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.price_denomination_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.price_denomination_data, range, value, display)

  return offset + size, value
end

-- Price Denomination Length
ice_icefutures_bgw_sbe_v7_0.price_denomination_length = {}

-- Size: Price Denomination Length
ice_icefutures_bgw_sbe_v7_0.price_denomination_length.size = 2

-- Display: Price Denomination Length
ice_icefutures_bgw_sbe_v7_0.price_denomination_length.display = function(value)
  return "Price Denomination Length: "..value
end

-- Dissect: Price Denomination Length
ice_icefutures_bgw_sbe_v7_0.price_denomination_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.price_denomination_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.price_denomination_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.price_denomination_length, range, value, display)

  return offset + length, value
end

-- Price Type
ice_icefutures_bgw_sbe_v7_0.price_type = {}

-- Size: Price Type
ice_icefutures_bgw_sbe_v7_0.price_type.size = 1

-- Display: Price Type
ice_icefutures_bgw_sbe_v7_0.price_type.display = function(value)
  if value == 2 then
    return "Price Type: Per Contract (2)"
  end
  if value == 10 then
    return "Price Type: Fixed Cabinet Trade Price (10)"
  end
  if value == 100 then
    return "Price Type: Fixed Rate (100)"
  end
  if value == 101 then
    return "Price Type: Npv (101)"
  end
  if value == 102 then
    return "Price Type: Rate Differential (102)"
  end
  if value == 103 then
    return "Price Type: Npv Differential (103)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
ice_icefutures_bgw_sbe_v7_0.price_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.price_type, range, value, display)

  return offset + length, value
end

-- Price Unit Data
ice_icefutures_bgw_sbe_v7_0.price_unit_data = {}

-- Display: Price Unit Data
ice_icefutures_bgw_sbe_v7_0.price_unit_data.display = function(value)
  return "Price Unit Data: "..value
end

-- Dissect runtime sized field: Price Unit Data
ice_icefutures_bgw_sbe_v7_0.price_unit_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.price_unit_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.price_unit_data, range, value, display)

  return offset + size, value
end

-- Price Unit Length
ice_icefutures_bgw_sbe_v7_0.price_unit_length = {}

-- Size: Price Unit Length
ice_icefutures_bgw_sbe_v7_0.price_unit_length.size = 2

-- Display: Price Unit Length
ice_icefutures_bgw_sbe_v7_0.price_unit_length.display = function(value)
  return "Price Unit Length: "..value
end

-- Dissect: Price Unit Length
ice_icefutures_bgw_sbe_v7_0.price_unit_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.price_unit_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.price_unit_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.price_unit_length, range, value, display)

  return offset + length, value
end

-- Product Desc Data
ice_icefutures_bgw_sbe_v7_0.product_desc_data = {}

-- Display: Product Desc Data
ice_icefutures_bgw_sbe_v7_0.product_desc_data.display = function(value)
  return "Product Desc Data: "..value
end

-- Dissect runtime sized field: Product Desc Data
ice_icefutures_bgw_sbe_v7_0.product_desc_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.product_desc_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_desc_data, range, value, display)

  return offset + size, value
end

-- Product Desc Length
ice_icefutures_bgw_sbe_v7_0.product_desc_length = {}

-- Size: Product Desc Length
ice_icefutures_bgw_sbe_v7_0.product_desc_length.size = 2

-- Display: Product Desc Length
ice_icefutures_bgw_sbe_v7_0.product_desc_length.display = function(value)
  return "Product Desc Length: "..value
end

-- Dissect: Product Desc Length
ice_icefutures_bgw_sbe_v7_0.product_desc_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.product_desc_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.product_desc_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_desc_length, range, value, display)

  return offset + length, value
end

-- Product Group Data
ice_icefutures_bgw_sbe_v7_0.product_group_data = {}

-- Display: Product Group Data
ice_icefutures_bgw_sbe_v7_0.product_group_data.display = function(value)
  return "Product Group Data: "..value
end

-- Dissect runtime sized field: Product Group Data
ice_icefutures_bgw_sbe_v7_0.product_group_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.product_group_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_group_data, range, value, display)

  return offset + size, value
end

-- Product Group Length
ice_icefutures_bgw_sbe_v7_0.product_group_length = {}

-- Size: Product Group Length
ice_icefutures_bgw_sbe_v7_0.product_group_length.size = 2

-- Display: Product Group Length
ice_icefutures_bgw_sbe_v7_0.product_group_length.display = function(value)
  return "Product Group Length: "..value
end

-- Dissect: Product Group Length
ice_icefutures_bgw_sbe_v7_0.product_group_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.product_group_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.product_group_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_group_length, range, value, display)

  return offset + length, value
end

-- Product I D int 32
ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32 = {}

-- Size: Product I D int 32
ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32.size = 4

-- Display: Product I D int 32
ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32.display = function(value)
  return "Product I D int 32: "..value
end

-- Dissect: Product I D int 32
ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_i_d_int_32, range, value, display)

  return offset + length, value
end

-- Product I D int 32 Null
ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32_null = {}

-- Size: Product I D int 32 Null
ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32_null.size = 4

-- Display: Product I D int 32 Null
ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32_null.display = function(value)
  return "Product I D int 32 Null: "..value
end

-- Dissect: Product I D int 32 Null
ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32_null.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_i_d_int_32_null, range, value, display)

  return offset + length, value
end

-- Product Name Data
ice_icefutures_bgw_sbe_v7_0.product_name_data = {}

-- Display: Product Name Data
ice_icefutures_bgw_sbe_v7_0.product_name_data.display = function(value)
  return "Product Name Data: "..value
end

-- Dissect runtime sized field: Product Name Data
ice_icefutures_bgw_sbe_v7_0.product_name_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.product_name_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_name_data, range, value, display)

  return offset + size, value
end

-- Product Name Length
ice_icefutures_bgw_sbe_v7_0.product_name_length = {}

-- Size: Product Name Length
ice_icefutures_bgw_sbe_v7_0.product_name_length.size = 2

-- Display: Product Name Length
ice_icefutures_bgw_sbe_v7_0.product_name_length.display = function(value)
  return "Product Name Length: "..value
end

-- Dissect: Product Name Length
ice_icefutures_bgw_sbe_v7_0.product_name_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.product_name_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.product_name_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_name_length, range, value, display)

  return offset + length, value
end

-- Product Type
ice_icefutures_bgw_sbe_v7_0.product_type = {}

-- Size: Product Type
ice_icefutures_bgw_sbe_v7_0.product_type.size = 12

-- Display: Product Type
ice_icefutures_bgw_sbe_v7_0.product_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Type: No Value"
  end

  return "Product Type: "..value
end

-- Dissect: Product Type
ice_icefutures_bgw_sbe_v7_0.product_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.product_type.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_type, range, value, display)

  return offset + length, value
end

-- Put Or Call
ice_icefutures_bgw_sbe_v7_0.put_or_call = {}

-- Size: Put Or Call
ice_icefutures_bgw_sbe_v7_0.put_or_call.size = 1

-- Display: Put Or Call
ice_icefutures_bgw_sbe_v7_0.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: False (0)"
  end
  if value == 1 then
    return "Put Or Call: True (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
ice_icefutures_bgw_sbe_v7_0.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quote Ack Status
ice_icefutures_bgw_sbe_v7_0.quote_ack_status = {}

-- Size: Quote Ack Status
ice_icefutures_bgw_sbe_v7_0.quote_ack_status.size = 2

-- Display: Quote Ack Status
ice_icefutures_bgw_sbe_v7_0.quote_ack_status.display = function(value)
  if value == 0 then
    return "Quote Ack Status: Accepted (0)"
  end
  if value == 4 then
    return "Quote Ack Status: Cancelled All (4)"
  end
  if value == 5 then
    return "Quote Ack Status: Rejected (5)"
  end
  if value == 200 then
    return "Quote Ack Status: Partially Cancelled (200)"
  end
  if value == 300 then
    return "Quote Ack Status: Unreasonable Quotes (300)"
  end

  return "Quote Ack Status: Unknown("..value..")"
end

-- Dissect: Quote Ack Status
ice_icefutures_bgw_sbe_v7_0.quote_ack_status.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.quote_ack_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.quote_ack_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_ack_status, range, value, display)

  return offset + length, value
end

-- Quote Cancel Type
ice_icefutures_bgw_sbe_v7_0.quote_cancel_type = {}

-- Size: Quote Cancel Type
ice_icefutures_bgw_sbe_v7_0.quote_cancel_type.size = 1

-- Display: Quote Cancel Type
ice_icefutures_bgw_sbe_v7_0.quote_cancel_type.display = function(value)
  if value == 3 then
    return "Quote Cancel Type: Cancel By Underlying Market (3)"
  end
  if value == 4 then
    return "Quote Cancel Type: Cancel All (4)"
  end
  if value == 5 then
    return "Quote Cancel Type: Cancel By Product Id (5)"
  end

  return "Quote Cancel Type: Unknown("..value..")"
end

-- Dissect: Quote Cancel Type
ice_icefutures_bgw_sbe_v7_0.quote_cancel_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.quote_cancel_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.quote_cancel_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_cancel_type, range, value, display)

  return offset + length, value
end

-- Quote Entry Exchange Code
ice_icefutures_bgw_sbe_v7_0.quote_entry_exchange_code = {}

-- Size: Quote Entry Exchange Code
ice_icefutures_bgw_sbe_v7_0.quote_entry_exchange_code.size = 4

-- Display: Quote Entry Exchange Code
ice_icefutures_bgw_sbe_v7_0.quote_entry_exchange_code.display = function(value)
  return "Quote Entry Exchange Code: "..value
end

-- Dissect: Quote Entry Exchange Code
ice_icefutures_bgw_sbe_v7_0.quote_entry_exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.quote_entry_exchange_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.quote_entry_exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_entry_exchange_code, range, value, display)

  return offset + length, value
end

-- Quote Entry Id
ice_icefutures_bgw_sbe_v7_0.quote_entry_id = {}

-- Size: Quote Entry Id
ice_icefutures_bgw_sbe_v7_0.quote_entry_id.size = 4

-- Display: Quote Entry Id
ice_icefutures_bgw_sbe_v7_0.quote_entry_id.display = function(value)
  return "Quote Entry Id: "..value
end

-- Dissect: Quote Entry Id
ice_icefutures_bgw_sbe_v7_0.quote_entry_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.quote_entry_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.quote_entry_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_entry_id, range, value, display)

  return offset + length, value
end

-- Quote Entry Reject Reason
ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason = {}

-- Size: Quote Entry Reject Reason
ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason.size = 1

-- Display: Quote Entry Reject Reason
ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason.display = function(value)
  if value == 99 then
    return "Quote Entry Reject Reason: Other (99)"
  end
  if value == 102 then
    return "Quote Entry Reject Reason: Risk Protection Active (102)"
  end
  if value == 113 then
    return "Quote Entry Reject Reason: Risk Protection Active For Sell Side (113)"
  end

  return "Quote Entry Reject Reason: Unknown("..value..")"
end

-- Dissect: Quote Entry Reject Reason
ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_entry_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Entry Reject Reason Text
ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason_text = {}

-- Size: Quote Entry Reject Reason Text
ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason_text.size = 100

-- Display: Quote Entry Reject Reason Text
ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Quote Entry Reject Reason Text: No Value"
  end

  return "Quote Entry Reject Reason Text: "..value
end

-- Dissect: Quote Entry Reject Reason Text
ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason_text.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_entry_reject_reason_text, range, value, display)

  return offset + length, value
end

-- Quote Id
ice_icefutures_bgw_sbe_v7_0.quote_id = {}

-- Size: Quote Id
ice_icefutures_bgw_sbe_v7_0.quote_id.size = 8

-- Display: Quote Id
ice_icefutures_bgw_sbe_v7_0.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
ice_icefutures_bgw_sbe_v7_0.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.quote_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Quote Reject Reason
ice_icefutures_bgw_sbe_v7_0.quote_reject_reason = {}

-- Size: Quote Reject Reason
ice_icefutures_bgw_sbe_v7_0.quote_reject_reason.size = 1

-- Display: Quote Reject Reason
ice_icefutures_bgw_sbe_v7_0.quote_reject_reason.display = function(value)
  if value == 0 then
    return "Quote Reject Reason: Accepted (0)"
  end
  if value == 99 then
    return "Quote Reject Reason: Other (99)"
  end
  if value == 100 then
    return "Quote Reject Reason: Validation Failure (100)"
  end
  if value == 101 then
    return "Quote Reject Reason: Invalid User Id (101)"
  end
  if value == 102 then
    return "Quote Reject Reason: Risk Protection Active (102)"
  end
  if value == 104 then
    return "Quote Reject Reason: No Clearing Account For Trader (104)"
  end
  if value == 105 then
    return "Quote Reject Reason: No Mass Quote Sets (105)"
  end
  if value == 106 then
    return "Quote Reject Reason: First Set Mass Quote Is Empty (106)"
  end
  if value == 107 then
    return "Quote Reject Reason: Invalid Clearing Account Status (107)"
  end
  if value == 108 then
    return "Quote Reject Reason: Invalid Clearing Limits (108)"
  end
  if value == 109 then
    return "Quote Reject Reason: Invalid Market Id (109)"
  end
  if value == 110 then
    return "Quote Reject Reason: Exceeds Allowed Mass Quote Sets (110)"
  end
  if value == 111 then
    return "Quote Reject Reason: Exceeds Allowed Mass Quotes (111)"
  end
  if value == 112 then
    return "Quote Reject Reason: Invalid Mass Quote Id (112)"
  end

  return "Quote Reject Reason: Unknown("..value..")"
end

-- Dissect: Quote Reject Reason
ice_icefutures_bgw_sbe_v7_0.quote_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.quote_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.quote_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Set Id
ice_icefutures_bgw_sbe_v7_0.quote_set_id = {}

-- Size: Quote Set Id
ice_icefutures_bgw_sbe_v7_0.quote_set_id.size = 4

-- Display: Quote Set Id
ice_icefutures_bgw_sbe_v7_0.quote_set_id.display = function(value)
  return "Quote Set Id: "..value
end

-- Dissect: Quote Set Id
ice_icefutures_bgw_sbe_v7_0.quote_set_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.quote_set_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.quote_set_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_set_id, range, value, display)

  return offset + length, value
end

-- Raw Data
ice_icefutures_bgw_sbe_v7_0.raw_data = {}

-- Size: Raw Data
ice_icefutures_bgw_sbe_v7_0.raw_data.size = 50

-- Display: Raw Data
ice_icefutures_bgw_sbe_v7_0.raw_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Raw Data: No Value"
  end

  return "Raw Data: "..value
end

-- Dissect: Raw Data
ice_icefutures_bgw_sbe_v7_0.raw_data.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.raw_data.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.raw_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.raw_data, range, value, display)

  return offset + length, value
end

-- Ref Sequence Id
ice_icefutures_bgw_sbe_v7_0.ref_sequence_id = {}

-- Size: Ref Sequence Id
ice_icefutures_bgw_sbe_v7_0.ref_sequence_id.size = 4

-- Display: Ref Sequence Id
ice_icefutures_bgw_sbe_v7_0.ref_sequence_id.display = function(value)
  return "Ref Sequence Id: "..value
end

-- Dissect: Ref Sequence Id
ice_icefutures_bgw_sbe_v7_0.ref_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.ref_sequence_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.ref_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.ref_sequence_id, range, value, display)

  return offset + length, value
end

-- Ref Sprd Product Id
ice_icefutures_bgw_sbe_v7_0.ref_sprd_product_id = {}

-- Size: Ref Sprd Product Id
ice_icefutures_bgw_sbe_v7_0.ref_sprd_product_id.size = 4

-- Display: Ref Sprd Product Id
ice_icefutures_bgw_sbe_v7_0.ref_sprd_product_id.display = function(value)
  return "Ref Sprd Product Id: "..value
end

-- Dissect: Ref Sprd Product Id
ice_icefutures_bgw_sbe_v7_0.ref_sprd_product_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.ref_sprd_product_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.ref_sprd_product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.ref_sprd_product_id, range, value, display)

  return offset + length, value
end

-- Reject Reason
ice_icefutures_bgw_sbe_v7_0.reject_reason = {}

-- Size: Reject Reason
ice_icefutures_bgw_sbe_v7_0.reject_reason.size = 1

-- Display: Reject Reason
ice_icefutures_bgw_sbe_v7_0.reject_reason.display = function(value)
  if value == 0 then
    return "Reject Reason: Too Late To Cancel (0)"
  end
  if value == 1 then
    return "Reject Reason: Unknown Symbol (1)"
  end
  if value == 2 then
    return "Reject Reason: Exchange Closed (2)"
  end
  if value == 3 then
    return "Reject Reason: Order Exceeds Limit (3)"
  end
  if value == 4 then
    return "Reject Reason: Unable To Process Request (4)"
  end
  if value == 5 then
    return "Reject Reason: Unknown Order (5)"
  end
  if value == 6 then
    return "Reject Reason: Duplicate Order (6)"
  end
  if value == 7 then
    return "Reject Reason: Missing Permissions (7)"
  end
  if value == 9 then
    return "Reject Reason: User Defined (9)"
  end
  if value == 10 then
    return "Reject Reason: Cancel Or Replace Pending (10)"
  end
  if value == 11 then
    return "Reject Reason: Unsupported (11)"
  end
  if value == 12 then
    return "Reject Reason: Risk Protection Active (12)"
  end

  return "Reject Reason: Unknown("..value..")"
end

-- Dissect: Reject Reason
ice_icefutures_bgw_sbe_v7_0.reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reject_reason, range, value, display)

  return offset + length, value
end

-- Reject Response To
ice_icefutures_bgw_sbe_v7_0.reject_response_to = {}

-- Size: Reject Response To
ice_icefutures_bgw_sbe_v7_0.reject_response_to.size = 1

-- Display: Reject Response To
ice_icefutures_bgw_sbe_v7_0.reject_response_to.display = function(value)
  if value == 1 then
    return "Reject Response To: Cancel (1)"
  end
  if value == 2 then
    return "Reject Response To: Cancel Replace (2)"
  end
  if value == 3 then
    return "Reject Response To: New Order (3)"
  end

  return "Reject Response To: Unknown("..value..")"
end

-- Dissect: Reject Response To
ice_icefutures_bgw_sbe_v7_0.reject_response_to.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.reject_response_to.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.reject_response_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reject_response_to, range, value, display)

  return offset + length, value
end

-- Rfc Status
ice_icefutures_bgw_sbe_v7_0.rfc_status = {}

-- Size: Rfc Status
ice_icefutures_bgw_sbe_v7_0.rfc_status.size = 1

-- Display: Rfc Status
ice_icefutures_bgw_sbe_v7_0.rfc_status.display = function(value)
  if value == 0 then
    return "Rfc Status: None (0)"
  end
  if value == 1 then
    return "Rfc Status: Success (1)"
  end
  if value == 2 then
    return "Rfc Status: Partial Success Bid Failure (2)"
  end
  if value == 3 then
    return "Rfc Status: Partial Success Offer Failure (3)"
  end
  if value == 4 then
    return "Rfc Status: Failure (4)"
  end

  return "Rfc Status: Unknown("..value..")"
end

-- Dissect: Rfc Status
ice_icefutures_bgw_sbe_v7_0.rfc_status.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.rfc_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.rfc_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.rfc_status, range, value, display)

  return offset + length, value
end

-- Rfq Futures Allowed
ice_icefutures_bgw_sbe_v7_0.rfq_futures_allowed = {}

-- Size: Rfq Futures Allowed
ice_icefutures_bgw_sbe_v7_0.rfq_futures_allowed.size = 1

-- Display: Rfq Futures Allowed
ice_icefutures_bgw_sbe_v7_0.rfq_futures_allowed.display = function(value)
  if value == 0 then
    return "Rfq Futures Allowed: False (0)"
  end
  if value == 1 then
    return "Rfq Futures Allowed: True (1)"
  end

  return "Rfq Futures Allowed: Unknown("..value..")"
end

-- Dissect: Rfq Futures Allowed
ice_icefutures_bgw_sbe_v7_0.rfq_futures_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.rfq_futures_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.rfq_futures_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.rfq_futures_allowed, range, value, display)

  return offset + length, value
end

-- Rfq Options Allowed
ice_icefutures_bgw_sbe_v7_0.rfq_options_allowed = {}

-- Size: Rfq Options Allowed
ice_icefutures_bgw_sbe_v7_0.rfq_options_allowed.size = 1

-- Display: Rfq Options Allowed
ice_icefutures_bgw_sbe_v7_0.rfq_options_allowed.display = function(value)
  if value == 0 then
    return "Rfq Options Allowed: False (0)"
  end
  if value == 1 then
    return "Rfq Options Allowed: True (1)"
  end

  return "Rfq Options Allowed: Unknown("..value..")"
end

-- Dissect: Rfq Options Allowed
ice_icefutures_bgw_sbe_v7_0.rfq_options_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.rfq_options_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.rfq_options_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.rfq_options_allowed, range, value, display)

  return offset + length, value
end

-- Rfq Req Id
ice_icefutures_bgw_sbe_v7_0.rfq_req_id = {}

-- Size: Rfq Req Id
ice_icefutures_bgw_sbe_v7_0.rfq_req_id.size = 8

-- Display: Rfq Req Id
ice_icefutures_bgw_sbe_v7_0.rfq_req_id.display = function(value)
  return "Rfq Req Id: "..value
end

-- Dissect: Rfq Req Id
ice_icefutures_bgw_sbe_v7_0.rfq_req_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.rfq_req_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.rfq_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.rfq_req_id, range, value, display)

  return offset + length, value
end

-- Rfq System Id
ice_icefutures_bgw_sbe_v7_0.rfq_system_id = {}

-- Size: Rfq System Id
ice_icefutures_bgw_sbe_v7_0.rfq_system_id.size = 8

-- Display: Rfq System Id
ice_icefutures_bgw_sbe_v7_0.rfq_system_id.display = function(value)
  return "Rfq System Id: "..value
end

-- Dissect: Rfq System Id
ice_icefutures_bgw_sbe_v7_0.rfq_system_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.rfq_system_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.rfq_system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.rfq_system_id, range, value, display)

  return offset + length, value
end

-- Risk Protection Reset
ice_icefutures_bgw_sbe_v7_0.risk_protection_reset = {}

-- Size: Risk Protection Reset
ice_icefutures_bgw_sbe_v7_0.risk_protection_reset.size = 1

-- Display: Risk Protection Reset
ice_icefutures_bgw_sbe_v7_0.risk_protection_reset.display = function(value)
  if value == 0 then
    return "Risk Protection Reset: False (0)"
  end
  if value == 1 then
    return "Risk Protection Reset: True (1)"
  end

  return "Risk Protection Reset: Unknown("..value..")"
end

-- Dissect: Risk Protection Reset
ice_icefutures_bgw_sbe_v7_0.risk_protection_reset.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.risk_protection_reset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.risk_protection_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.risk_protection_reset, range, value, display)

  return offset + length, value
end

-- Schema Id
ice_icefutures_bgw_sbe_v7_0.schema_id = {}

-- Size: Schema Id
ice_icefutures_bgw_sbe_v7_0.schema_id.size = 2

-- Display: Schema Id
ice_icefutures_bgw_sbe_v7_0.schema_id.display = function(value)
  if value == 7 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
ice_icefutures_bgw_sbe_v7_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Screen Last Trade Date
ice_icefutures_bgw_sbe_v7_0.screen_last_trade_date = {}

-- Size: Screen Last Trade Date
ice_icefutures_bgw_sbe_v7_0.screen_last_trade_date.size = 2

-- Display: Screen Last Trade Date
ice_icefutures_bgw_sbe_v7_0.screen_last_trade_date.display = function(value)
  return "Screen Last Trade Date: "..value
end

-- Dissect: Screen Last Trade Date
ice_icefutures_bgw_sbe_v7_0.screen_last_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.screen_last_trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.screen_last_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.screen_last_trade_date, range, value, display)

  return offset + length, value
end

-- Screen Tick Value
ice_icefutures_bgw_sbe_v7_0.screen_tick_value = {}

-- Size: Screen Tick Value
ice_icefutures_bgw_sbe_v7_0.screen_tick_value.size = 8

-- Display: Screen Tick Value
ice_icefutures_bgw_sbe_v7_0.screen_tick_value.display = function(value)
  return "Screen Tick Value: "..value
end

-- Dissect: Screen Tick Value
ice_icefutures_bgw_sbe_v7_0.screen_tick_value.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.screen_tick_value.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.screen_tick_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.screen_tick_value, range, value, display)

  return offset + length, value
end

-- Secondary Exec Id
ice_icefutures_bgw_sbe_v7_0.secondary_exec_id = {}

-- Size: Secondary Exec Id
ice_icefutures_bgw_sbe_v7_0.secondary_exec_id.size = 8

-- Display: Secondary Exec Id
ice_icefutures_bgw_sbe_v7_0.secondary_exec_id.display = function(value)
  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
ice_icefutures_bgw_sbe_v7_0.secondary_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.secondary_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.secondary_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Security Alt Id
ice_icefutures_bgw_sbe_v7_0.security_alt_id = {}

-- Size: Security Alt Id
ice_icefutures_bgw_sbe_v7_0.security_alt_id.size = 30

-- Display: Security Alt Id
ice_icefutures_bgw_sbe_v7_0.security_alt_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id: No Value"
  end

  return "Security Alt Id: "..value
end

-- Dissect: Security Alt Id
ice_icefutures_bgw_sbe_v7_0.security_alt_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_alt_id.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.security_alt_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_alt_id, range, value, display)

  return offset + length, value
end

-- Security Alt Id Source
ice_icefutures_bgw_sbe_v7_0.security_alt_id_source = {}

-- Size: Security Alt Id Source
ice_icefutures_bgw_sbe_v7_0.security_alt_id_source.size = 3

-- Display: Security Alt Id Source
ice_icefutures_bgw_sbe_v7_0.security_alt_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id Source: No Value"
  end

  return "Security Alt Id Source: "..value
end

-- Dissect: Security Alt Id Source
ice_icefutures_bgw_sbe_v7_0.security_alt_id_source.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_alt_id_source.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.security_alt_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Security Desc Data
ice_icefutures_bgw_sbe_v7_0.security_desc_data = {}

-- Display: Security Desc Data
ice_icefutures_bgw_sbe_v7_0.security_desc_data.display = function(value)
  return "Security Desc Data: "..value
end

-- Dissect runtime sized field: Security Desc Data
ice_icefutures_bgw_sbe_v7_0.security_desc_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.security_desc_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_desc_data, range, value, display)

  return offset + size, value
end

-- Security Desc Length
ice_icefutures_bgw_sbe_v7_0.security_desc_length = {}

-- Size: Security Desc Length
ice_icefutures_bgw_sbe_v7_0.security_desc_length.size = 2

-- Display: Security Desc Length
ice_icefutures_bgw_sbe_v7_0.security_desc_length.display = function(value)
  return "Security Desc Length: "..value
end

-- Dissect: Security Desc Length
ice_icefutures_bgw_sbe_v7_0.security_desc_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_desc_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.security_desc_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_desc_length, range, value, display)

  return offset + length, value
end

-- Security Exchange Data
ice_icefutures_bgw_sbe_v7_0.security_exchange_data = {}

-- Display: Security Exchange Data
ice_icefutures_bgw_sbe_v7_0.security_exchange_data.display = function(value)
  return "Security Exchange Data: "..value
end

-- Dissect runtime sized field: Security Exchange Data
ice_icefutures_bgw_sbe_v7_0.security_exchange_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.security_exchange_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_exchange_data, range, value, display)

  return offset + size, value
end

-- Security Exchange Length
ice_icefutures_bgw_sbe_v7_0.security_exchange_length = {}

-- Size: Security Exchange Length
ice_icefutures_bgw_sbe_v7_0.security_exchange_length.size = 2

-- Display: Security Exchange Length
ice_icefutures_bgw_sbe_v7_0.security_exchange_length.display = function(value)
  return "Security Exchange Length: "..value
end

-- Dissect: Security Exchange Length
ice_icefutures_bgw_sbe_v7_0.security_exchange_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_exchange_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.security_exchange_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_exchange_length, range, value, display)

  return offset + length, value
end

-- Security Id Data
ice_icefutures_bgw_sbe_v7_0.security_id_data = {}

-- Display: Security Id Data
ice_icefutures_bgw_sbe_v7_0.security_id_data.display = function(value)
  return "Security Id Data: "..value
end

-- Dissect runtime sized field: Security Id Data
ice_icefutures_bgw_sbe_v7_0.security_id_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.security_id_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_id_data, range, value, display)

  return offset + size, value
end

-- Security Id Length
ice_icefutures_bgw_sbe_v7_0.security_id_length = {}

-- Size: Security Id Length
ice_icefutures_bgw_sbe_v7_0.security_id_length.size = 2

-- Display: Security Id Length
ice_icefutures_bgw_sbe_v7_0.security_id_length.display = function(value)
  return "Security Id Length: "..value
end

-- Dissect: Security Id Length
ice_icefutures_bgw_sbe_v7_0.security_id_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_id_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.security_id_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_id_length, range, value, display)

  return offset + length, value
end

-- Security Req Id
ice_icefutures_bgw_sbe_v7_0.security_req_id = {}

-- Size: Security Req Id
ice_icefutures_bgw_sbe_v7_0.security_req_id.size = 4

-- Display: Security Req Id
ice_icefutures_bgw_sbe_v7_0.security_req_id.display = function(value)
  return "Security Req Id: "..value
end

-- Dissect: Security Req Id
ice_icefutures_bgw_sbe_v7_0.security_req_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_req_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.security_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_req_id, range, value, display)

  return offset + length, value
end

-- Security Request Type
ice_icefutures_bgw_sbe_v7_0.security_request_type = {}

-- Size: Security Request Type
ice_icefutures_bgw_sbe_v7_0.security_request_type.size = 1

-- Display: Security Request Type
ice_icefutures_bgw_sbe_v7_0.security_request_type.display = function(value)
  if value == 1 then
    return "Security Request Type: Create Strategy (1)"
  end
  if value == 3 then
    return "Security Request Type: Request Listof Futures (3)"
  end
  if value == 100 then
    return "Security Request Type: Request Listof Options (100)"
  end
  if value == 101 then
    return "Security Request Type: Request Listof Strategies (101)"
  end
  if value == 102 then
    return "Security Request Type: Create Flex Option (102)"
  end
  if value == 103 then
    return "Security Request Type: Create Flex Expiry (103)"
  end
  if value == 104 then
    return "Security Request Type: Request List Of Products (104)"
  end

  return "Security Request Type: Unknown("..value..")"
end

-- Dissect: Security Request Type
ice_icefutures_bgw_sbe_v7_0.security_request_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_request_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.security_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_request_type, range, value, display)

  return offset + length, value
end

-- Security Response Id
ice_icefutures_bgw_sbe_v7_0.security_response_id = {}

-- Size: Security Response Id
ice_icefutures_bgw_sbe_v7_0.security_response_id.size = 4

-- Display: Security Response Id
ice_icefutures_bgw_sbe_v7_0.security_response_id.display = function(value)
  return "Security Response Id: "..value
end

-- Dissect: Security Response Id
ice_icefutures_bgw_sbe_v7_0.security_response_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_response_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.security_response_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_response_id, range, value, display)

  return offset + length, value
end

-- Security Response Type
ice_icefutures_bgw_sbe_v7_0.security_response_type = {}

-- Size: Security Response Type
ice_icefutures_bgw_sbe_v7_0.security_response_type.size = 1

-- Display: Security Response Type
ice_icefutures_bgw_sbe_v7_0.security_response_type.display = function(value)
  if value == 1 then
    return "Security Response Type: Accepted Security As Defined (1)"
  end
  if value == 4 then
    return "Security Response Type: Accepted Security Per Request (4)"
  end
  if value == 5 then
    return "Security Response Type: Rejected Security Per Request (5)"
  end
  if value == 10 then
    return "Security Response Type: Security Already Defined (10)"
  end

  return "Security Response Type: Unknown("..value..")"
end

-- Dissect: Security Response Type
ice_icefutures_bgw_sbe_v7_0.security_response_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_response_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.security_response_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_response_type, range, value, display)

  return offset + length, value
end

-- Security Sub Type int 16
ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16 = {}

-- Size: Security Sub Type int 16
ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16.size = 2

-- Display: Security Sub Type int 16
ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16.display = function(value)
  return "Security Sub Type int 16: "..value
end

-- Dissect: Security Sub Type int 16
ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_sub_type_int_16, range, value, display)

  return offset + length, value
end

-- Security Sub Type int 16 Null
ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16_null = {}

-- Size: Security Sub Type int 16 Null
ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16_null.size = 2

-- Display: Security Sub Type int 16 Null
ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16_null.display = function(value)
  return "Security Sub Type int 16 Null: "..value
end

-- Dissect: Security Sub Type int 16 Null
ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16_null.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_sub_type_int_16_null, range, value, display)

  return offset + length, value
end

-- Security Trading Status
ice_icefutures_bgw_sbe_v7_0.security_trading_status = {}

-- Size: Security Trading Status
ice_icefutures_bgw_sbe_v7_0.security_trading_status.size = 1

-- Display: Security Trading Status
ice_icefutures_bgw_sbe_v7_0.security_trading_status.display = function(value)
  if value == 2 then
    return "Security Trading Status: Trading Halt Suspended (2)"
  end
  if value == 4 then
    return "Security Trading Status: No Open No Resume Pre Close (4)"
  end
  if value == 17 then
    return "Security Trading Status: Ready To Trade Open (17)"
  end
  if value == 18 then
    return "Security Trading Status: Not Available For Trading Close (18)"
  end
  if value == 19 then
    return "Security Trading Status: Not Traded (19)"
  end
  if value == 20 then
    return "Security Trading Status: Unknown Or Invalid Expired (20)"
  end
  if value == 21 then
    return "Security Trading Status: Pre Open (21)"
  end
  if value == 100 then
    return "Security Trading Status: Trading As Strategy Leg Only Open (100)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
ice_icefutures_bgw_sbe_v7_0.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Type Security Type Enum
ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum = {}

-- Size: Security Type Security Type Enum
ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum.size = 1

-- Display: Security Type Security Type Enum
ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum.display = function(value)
  if value == 1 then
    return "Security Type Security Type Enum: Fut (1)"
  end
  if value == 2 then
    return "Security Type Security Type Enum: Opt (2)"
  end
  if value == 3 then
    return "Security Type Security Type Enum: Common Stock (3)"
  end
  if value == 4 then
    return "Security Type Security Type Enum: Mleg (4)"
  end

  return "Security Type Security Type Enum: Unknown("..value..")"
end

-- Dissect: Security Type Security Type Enum
ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_type_security_type_enum, range, value, display)

  return offset + length, value
end

-- Security Type Security Type Enum Null
ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum_null = {}

-- Size: Security Type Security Type Enum Null
ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum_null.size = 1

-- Display: Security Type Security Type Enum Null
ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum_null.display = function(value)
  if value == 1 then
    return "Security Type Security Type Enum Null: Fut (1)"
  end
  if value == 2 then
    return "Security Type Security Type Enum Null: Opt (2)"
  end
  if value == 3 then
    return "Security Type Security Type Enum Null: Common Stock (3)"
  end
  if value == 4 then
    return "Security Type Security Type Enum Null: Mleg (4)"
  end

  return "Security Type Security Type Enum Null: Unknown("..value..")"
end

-- Dissect: Security Type Security Type Enum Null
ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum_null.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_type_security_type_enum_null, range, value, display)

  return offset + length, value
end

-- Self Block Allowed
ice_icefutures_bgw_sbe_v7_0.self_block_allowed = {}

-- Size: Self Block Allowed
ice_icefutures_bgw_sbe_v7_0.self_block_allowed.size = 1

-- Display: Self Block Allowed
ice_icefutures_bgw_sbe_v7_0.self_block_allowed.display = function(value)
  if value == 0 then
    return "Self Block Allowed: False (0)"
  end
  if value == 1 then
    return "Self Block Allowed: True (1)"
  end

  return "Self Block Allowed: Unknown("..value..")"
end

-- Dissect: Self Block Allowed
ice_icefutures_bgw_sbe_v7_0.self_block_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.self_block_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.self_block_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.self_block_allowed, range, value, display)

  return offset + length, value
end

-- Self Match Prevention Id
ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id = {}

-- Size: Self Match Prevention Id
ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.size = 8

-- Display: Self Match Prevention Id
ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.display = function(value)
  return "Self Match Prevention Id: "..value
end

-- Dissect: Self Match Prevention Id
ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.self_match_prevention_id, range, value, display)

  return offset + length, value
end

-- Self Match Prevention Instruction
ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction = {}

-- Size: Self Match Prevention Instruction
ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.size = 1

-- Display: Self Match Prevention Instruction
ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Self Match Prevention Instruction: No Value"
  end

  if value == "R" then
    return "Self Match Prevention Instruction: Cancel Resting Order (R)"
  end
  if value == "T" then
    return "Self Match Prevention Instruction: Cancel Taking Order (T)"
  end
  if value == "B" then
    return "Self Match Prevention Instruction: Cancel Both Orders (B)"
  end

  return "Self Match Prevention Instruction: Unknown("..value..")"
end

-- Dissect: Self Match Prevention Instruction
ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.self_match_prevention_instruction, range, value, display)

  return offset + length, value
end

-- Send Time
ice_icefutures_bgw_sbe_v7_0.send_time = {}

-- Size: Send Time
ice_icefutures_bgw_sbe_v7_0.send_time.size = 8

-- Display: Send Time
ice_icefutures_bgw_sbe_v7_0.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
ice_icefutures_bgw_sbe_v7_0.send_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = ice_icefutures_bgw_sbe_v7_0.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.send_time, range, value, display)

  return offset + length, value
end

-- Sequence Id
ice_icefutures_bgw_sbe_v7_0.sequence_id = {}

-- Size: Sequence Id
ice_icefutures_bgw_sbe_v7_0.sequence_id.size = 4

-- Display: Sequence Id
ice_icefutures_bgw_sbe_v7_0.sequence_id.display = function(value)
  return "Sequence Id: "..value
end

-- Dissect: Sequence Id
ice_icefutures_bgw_sbe_v7_0.sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.sequence_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.sequence_id, range, value, display)

  return offset + length, value
end

-- Settl Method
ice_icefutures_bgw_sbe_v7_0.settl_method = {}

-- Size: Settl Method
ice_icefutures_bgw_sbe_v7_0.settl_method.size = 1

-- Display: Settl Method
ice_icefutures_bgw_sbe_v7_0.settl_method.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Settl Method: No Value"
  end

  if value == "C" then
    return "Settl Method: Cash Financial (C)"
  end
  if value == "P" then
    return "Settl Method: Physical (P)"
  end

  return "Settl Method: Unknown("..value..")"
end

-- Dissect: Settl Method
ice_icefutures_bgw_sbe_v7_0.settl_method.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.settl_method.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_icefutures_bgw_sbe_v7_0.settl_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.settl_method, range, value, display)

  return offset + length, value
end

-- Severity Level
ice_icefutures_bgw_sbe_v7_0.severity_level = {}

-- Size: Severity Level
ice_icefutures_bgw_sbe_v7_0.severity_level.size = 1

-- Display: Severity Level
ice_icefutures_bgw_sbe_v7_0.severity_level.display = function(value)
  if value == 1 then
    return "Severity Level: Info (1)"
  end
  if value == 2 then
    return "Severity Level: Warning (2)"
  end
  if value == 3 then
    return "Severity Level: Error (3)"
  end
  if value == 4 then
    return "Severity Level: Fatal (4)"
  end

  return "Severity Level: Unknown("..value..")"
end

-- Dissect: Severity Level
ice_icefutures_bgw_sbe_v7_0.severity_level.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.severity_level.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.severity_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.severity_level, range, value, display)

  return offset + length, value
end

-- Side Side Enum
ice_icefutures_bgw_sbe_v7_0.side_side_enum = {}

-- Size: Side Side Enum
ice_icefutures_bgw_sbe_v7_0.side_side_enum.size = 1

-- Display: Side Side Enum
ice_icefutures_bgw_sbe_v7_0.side_side_enum.display = function(value)
  if value == 1 then
    return "Side Side Enum: Buy (1)"
  end
  if value == 2 then
    return "Side Side Enum: Sell (2)"
  end

  return "Side Side Enum: Unknown("..value..")"
end

-- Dissect: Side Side Enum
ice_icefutures_bgw_sbe_v7_0.side_side_enum.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.side_side_enum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.side_side_enum.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.side_side_enum, range, value, display)

  return offset + length, value
end

-- Side Side Enum Null
ice_icefutures_bgw_sbe_v7_0.side_side_enum_null = {}

-- Size: Side Side Enum Null
ice_icefutures_bgw_sbe_v7_0.side_side_enum_null.size = 1

-- Display: Side Side Enum Null
ice_icefutures_bgw_sbe_v7_0.side_side_enum_null.display = function(value)
  if value == 1 then
    return "Side Side Enum Null: Buy (1)"
  end
  if value == 2 then
    return "Side Side Enum Null: Sell (2)"
  end

  return "Side Side Enum Null: Unknown("..value..")"
end

-- Dissect: Side Side Enum Null
ice_icefutures_bgw_sbe_v7_0.side_side_enum_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.side_side_enum_null.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.side_side_enum_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.side_side_enum_null, range, value, display)

  return offset + length, value
end

-- Start Date
ice_icefutures_bgw_sbe_v7_0.start_date = {}

-- Size: Start Date
ice_icefutures_bgw_sbe_v7_0.start_date.size = 2

-- Display: Start Date
ice_icefutures_bgw_sbe_v7_0.start_date.display = function(value)
  return "Start Date: "..value
end

-- Dissect: Start Date
ice_icefutures_bgw_sbe_v7_0.start_date.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.start_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.start_date, range, value, display)

  return offset + length, value
end

-- Status
ice_icefutures_bgw_sbe_v7_0.status = {}

-- Size: Status
ice_icefutures_bgw_sbe_v7_0.status.size = 1

-- Display: Status
ice_icefutures_bgw_sbe_v7_0.status.display = function(value)
  if value == 0 then
    return "Status: Success (0)"
  end
  if value == 1 then
    return "Status: Partial Success (1)"
  end
  if value == 2 then
    return "Status: Failure (2)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
ice_icefutures_bgw_sbe_v7_0.status.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.status, range, value, display)

  return offset + length, value
end

-- Stop Px
ice_icefutures_bgw_sbe_v7_0.stop_px = {}

-- Size: Stop Px
ice_icefutures_bgw_sbe_v7_0.stop_px.size = 8

-- Display: Stop Px
ice_icefutures_bgw_sbe_v7_0.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Dissect: Stop Px
ice_icefutures_bgw_sbe_v7_0.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.stop_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Stops Allowed
ice_icefutures_bgw_sbe_v7_0.stops_allowed = {}

-- Size: Stops Allowed
ice_icefutures_bgw_sbe_v7_0.stops_allowed.size = 1

-- Display: Stops Allowed
ice_icefutures_bgw_sbe_v7_0.stops_allowed.display = function(value)
  if value == 0 then
    return "Stops Allowed: False (0)"
  end
  if value == 1 then
    return "Stops Allowed: True (1)"
  end

  return "Stops Allowed: Unknown("..value..")"
end

-- Dissect: Stops Allowed
ice_icefutures_bgw_sbe_v7_0.stops_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.stops_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.stops_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.stops_allowed, range, value, display)

  return offset + length, value
end

-- Strategy Security Id Data
ice_icefutures_bgw_sbe_v7_0.strategy_security_id_data = {}

-- Display: Strategy Security Id Data
ice_icefutures_bgw_sbe_v7_0.strategy_security_id_data.display = function(value)
  return "Strategy Security Id Data: "..value
end

-- Dissect runtime sized field: Strategy Security Id Data
ice_icefutures_bgw_sbe_v7_0.strategy_security_id_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.strategy_security_id_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.strategy_security_id_data, range, value, display)

  return offset + size, value
end

-- Strategy Security Id Length
ice_icefutures_bgw_sbe_v7_0.strategy_security_id_length = {}

-- Size: Strategy Security Id Length
ice_icefutures_bgw_sbe_v7_0.strategy_security_id_length.size = 2

-- Display: Strategy Security Id Length
ice_icefutures_bgw_sbe_v7_0.strategy_security_id_length.display = function(value)
  return "Strategy Security Id Length: "..value
end

-- Dissect: Strategy Security Id Length
ice_icefutures_bgw_sbe_v7_0.strategy_security_id_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.strategy_security_id_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.strategy_security_id_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.strategy_security_id_length, range, value, display)

  return offset + length, value
end

-- Strike Exercise Style
ice_icefutures_bgw_sbe_v7_0.strike_exercise_style = {}

-- Size: Strike Exercise Style
ice_icefutures_bgw_sbe_v7_0.strike_exercise_style.size = 1

-- Display: Strike Exercise Style
ice_icefutures_bgw_sbe_v7_0.strike_exercise_style.display = function(value)
  if value == 0 then
    return "Strike Exercise Style: European (0)"
  end
  if value == 1 then
    return "Strike Exercise Style: American (1)"
  end
  if value == 3 then
    return "Strike Exercise Style: Asian (3)"
  end

  return "Strike Exercise Style: Unknown("..value..")"
end

-- Dissect: Strike Exercise Style
ice_icefutures_bgw_sbe_v7_0.strike_exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.strike_exercise_style.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.strike_exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.strike_exercise_style, range, value, display)

  return offset + length, value
end

-- Strike Price
ice_icefutures_bgw_sbe_v7_0.strike_price = {}

-- Size: Strike Price
ice_icefutures_bgw_sbe_v7_0.strike_price.size = 8

-- Display: Strike Price
ice_icefutures_bgw_sbe_v7_0.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
ice_icefutures_bgw_sbe_v7_0.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.strike_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strip Id
ice_icefutures_bgw_sbe_v7_0.strip_id = {}

-- Size: Strip Id
ice_icefutures_bgw_sbe_v7_0.strip_id.size = 4

-- Display: Strip Id
ice_icefutures_bgw_sbe_v7_0.strip_id.display = function(value)
  return "Strip Id: "..value
end

-- Dissect: Strip Id
ice_icefutures_bgw_sbe_v7_0.strip_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.strip_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.strip_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.strip_id, range, value, display)

  return offset + length, value
end

-- Strip Name Data
ice_icefutures_bgw_sbe_v7_0.strip_name_data = {}

-- Display: Strip Name Data
ice_icefutures_bgw_sbe_v7_0.strip_name_data.display = function(value)
  return "Strip Name Data: "..value
end

-- Dissect runtime sized field: Strip Name Data
ice_icefutures_bgw_sbe_v7_0.strip_name_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.strip_name_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.strip_name_data, range, value, display)

  return offset + size, value
end

-- Strip Name Length
ice_icefutures_bgw_sbe_v7_0.strip_name_length = {}

-- Size: Strip Name Length
ice_icefutures_bgw_sbe_v7_0.strip_name_length.size = 2

-- Display: Strip Name Length
ice_icefutures_bgw_sbe_v7_0.strip_name_length.display = function(value)
  return "Strip Name Length: "..value
end

-- Dissect: Strip Name Length
ice_icefutures_bgw_sbe_v7_0.strip_name_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.strip_name_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.strip_name_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.strip_name_length, range, value, display)

  return offset + length, value
end

-- Strip Type
ice_icefutures_bgw_sbe_v7_0.strip_type = {}

-- Size: Strip Type
ice_icefutures_bgw_sbe_v7_0.strip_type.size = 2

-- Display: Strip Type
ice_icefutures_bgw_sbe_v7_0.strip_type.display = function(value)
  return "Strip Type: "..value
end

-- Dissect: Strip Type
ice_icefutures_bgw_sbe_v7_0.strip_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.strip_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.strip_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.strip_type, range, value, display)

  return offset + length, value
end

-- Success
ice_icefutures_bgw_sbe_v7_0.success = {}

-- Size: Success
ice_icefutures_bgw_sbe_v7_0.success.size = 1

-- Display: Success
ice_icefutures_bgw_sbe_v7_0.success.display = function(value)
  if value == 0 then
    return "Success: False (0)"
  end
  if value == 1 then
    return "Success: True (1)"
  end

  return "Success: Unknown("..value..")"
end

-- Dissect: Success
ice_icefutures_bgw_sbe_v7_0.success.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.success.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.success.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.success, range, value, display)

  return offset + length, value
end

-- Supported Schema Version
ice_icefutures_bgw_sbe_v7_0.supported_schema_version = {}

-- Size: Supported Schema Version
ice_icefutures_bgw_sbe_v7_0.supported_schema_version.size = 20

-- Display: Supported Schema Version
ice_icefutures_bgw_sbe_v7_0.supported_schema_version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Supported Schema Version: No Value"
  end

  return "Supported Schema Version: "..value
end

-- Dissect: Supported Schema Version
ice_icefutures_bgw_sbe_v7_0.supported_schema_version.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.supported_schema_version.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.supported_schema_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.supported_schema_version, range, value, display)

  return offset + length, value
end

-- Symbol int 32
ice_icefutures_bgw_sbe_v7_0.symbol_int_32 = {}

-- Size: Symbol int 32
ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size = 4

-- Display: Symbol int 32
ice_icefutures_bgw_sbe_v7_0.symbol_int_32.display = function(value)
  return "Symbol int 32: "..value
end

-- Dissect: Symbol int 32
ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.symbol_int_32, range, value, display)

  return offset + length, value
end

-- Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null = {}

-- Size: Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null.size = 4

-- Display: Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null.display = function(value)
  return "Symbol int 32 Null: "..value
end

-- Dissect: Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.symbol_int_32_null, range, value, display)

  return offset + length, value
end

-- System Id
ice_icefutures_bgw_sbe_v7_0.system_id = {}

-- Size: System Id
ice_icefutures_bgw_sbe_v7_0.system_id.size = 8

-- Display: System Id
ice_icefutures_bgw_sbe_v7_0.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
ice_icefutures_bgw_sbe_v7_0.system_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.system_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.system_id, range, value, display)

  return offset + length, value
end

-- System Sequence Id
ice_icefutures_bgw_sbe_v7_0.system_sequence_id = {}

-- Size: System Sequence Id
ice_icefutures_bgw_sbe_v7_0.system_sequence_id.size = 4

-- Display: System Sequence Id
ice_icefutures_bgw_sbe_v7_0.system_sequence_id.display = function(value)
  return "System Sequence Id: "..value
end

-- Dissect: System Sequence Id
ice_icefutures_bgw_sbe_v7_0.system_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.system_sequence_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.system_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.system_sequence_id, range, value, display)

  return offset + length, value
end

-- Template Id
ice_icefutures_bgw_sbe_v7_0.template_id = {}

-- Size: Template Id
ice_icefutures_bgw_sbe_v7_0.template_id.size = 2

-- Display: Template Id
ice_icefutures_bgw_sbe_v7_0.template_id.display = function(value)
  if value == 0 then
    return "Template Id: Simple Open Framing Header Message (0)"
  end
  if value == 1 then
    return "Template Id: Logon Request Message (1)"
  end
  if value == 101 then
    return "Template Id: Logon Report Message (101)"
  end
  if value == 13 then
    return "Template Id: Logout Request Message (13)"
  end
  if value == 113 then
    return "Template Id: Logout Report Message (113)"
  end
  if value == 51 then
    return "Template Id: Heart Beat Message (51)"
  end
  if value == 114 then
    return "Template Id: Error Message (114)"
  end
  if value == 116 then
    return "Template Id: News Message (116)"
  end
  if value == 112 then
    return "Template Id: Security Definition Report Strategy Message (112)"
  end
  if value == 115 then
    return "Template Id: Security Definition Report Message (115)"
  end
  if value == 155 then
    return "Template Id: Security Definition Reject Message (155)"
  end
  if value == 15 then
    return "Template Id: Security Definition Request Message (15)"
  end
  if value == 154 then
    return "Template Id: Security Definition Report Product Message (154)"
  end
  if value == 2001 then
    return "Template Id: Ip Request Message (2001)"
  end
  if value == 2002 then
    return "Template Id: Ip Report Message (2002)"
  end
  if value == 2 then
    return "Template Id: Trader Logon Request Message (2)"
  end
  if value == 102 then
    return "Template Id: Trader Logon Report Message (102)"
  end
  if value == 3 then
    return "Template Id: Trader Logout Request Message (3)"
  end
  if value == 103 then
    return "Template Id: Trader Logout Report Message (103)"
  end
  if value == 4 then
    return "Template Id: New Order Request Message (4)"
  end
  if value == 5 then
    return "Template Id: Cancel Replace Request Message (5)"
  end
  if value == 6 then
    return "Template Id: Cancel Request Message (6)"
  end
  if value == 7 then
    return "Template Id: Quote Request Message (7)"
  end
  if value == 8 then
    return "Template Id: New Order Cross Request Message (8)"
  end
  if value == 9 then
    return "Template Id: Order Mass Cancel Request Message (9)"
  end
  if value == 10 then
    return "Template Id: Mass Quote Request Message (10)"
  end
  if value == 11 then
    return "Template Id: Quote Cancel Request Message (11)"
  end
  if value == 12 then
    return "Template Id: Security Definition Request Create Strategy Message (12)"
  end
  if value == 14 then
    return "Template Id: Security Definition Request Create Flex Message (14)"
  end
  if value == 104 then
    return "Template Id: Execution Report New Message (104)"
  end
  if value == 105 then
    return "Template Id: Execution Report Modify Message (105)"
  end
  if value == 106 then
    return "Template Id: Execution Report Cancel Message (106)"
  end
  if value == 151 then
    return "Template Id: Execution Report Reject Message (151)"
  end
  if value == 152 then
    return "Template Id: Execution Report Snapshot Message (152)"
  end
  if value == 153 then
    return "Template Id: Execution Report Trade Message (153)"
  end
  if value == 107 then
    return "Template Id: Quote Report Message (107)"
  end
  if value == 108 then
    return "Template Id: New Order Cross Report Message (108)"
  end
  if value == 109 then
    return "Template Id: Order Mass Cancel Report Message (109)"
  end
  if value == 110 then
    return "Template Id: Mass Quote Report Message (110)"
  end
  if value == 16 then
    return "Template Id: Resend Request Message (16)"
  end
  if value == 117 then
    return "Template Id: Resend Report Message (117)"
  end
  if value == 111 then
    return "Template Id: Sequence Reset Message (111)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
ice_icefutures_bgw_sbe_v7_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Test Market Indicator Boolean Enum
ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum = {}

-- Size: Test Market Indicator Boolean Enum
ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum.size = 1

-- Display: Test Market Indicator Boolean Enum
ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum.display = function(value)
  if value == 0 then
    return "Test Market Indicator Boolean Enum: False (0)"
  end
  if value == 1 then
    return "Test Market Indicator Boolean Enum: True (1)"
  end

  return "Test Market Indicator Boolean Enum: Unknown("..value..")"
end

-- Dissect: Test Market Indicator Boolean Enum
ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.test_market_indicator_boolean_enum, range, value, display)

  return offset + length, value
end

-- Test Market Indicator Boolean Enum Null
ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum_null = {}

-- Size: Test Market Indicator Boolean Enum Null
ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum_null.size = 1

-- Display: Test Market Indicator Boolean Enum Null
ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum_null.display = function(value)
  if value == 0 then
    return "Test Market Indicator Boolean Enum Null: False (0)"
  end
  if value == 1 then
    return "Test Market Indicator Boolean Enum Null: True (1)"
  end

  return "Test Market Indicator Boolean Enum Null: Unknown("..value..")"
end

-- Dissect: Test Market Indicator Boolean Enum Null
ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum_null.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.test_market_indicator_boolean_enum_null, range, value, display)

  return offset + length, value
end

-- Text Data
ice_icefutures_bgw_sbe_v7_0.text_data = {}

-- Display: Text Data
ice_icefutures_bgw_sbe_v7_0.text_data.display = function(value)
  return "Text Data: "..value
end

-- Dissect runtime sized field: Text Data
ice_icefutures_bgw_sbe_v7_0.text_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.text_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.text_data, range, value, display)

  return offset + size, value
end

-- Text Length
ice_icefutures_bgw_sbe_v7_0.text_length = {}

-- Size: Text Length
ice_icefutures_bgw_sbe_v7_0.text_length.size = 2

-- Display: Text Length
ice_icefutures_bgw_sbe_v7_0.text_length.display = function(value)
  return "Text Length: "..value
end

-- Dissect: Text Length
ice_icefutures_bgw_sbe_v7_0.text_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.text_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.text_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.text_length, range, value, display)

  return offset + length, value
end

-- Tick Value
ice_icefutures_bgw_sbe_v7_0.tick_value = {}

-- Size: Tick Value
ice_icefutures_bgw_sbe_v7_0.tick_value.size = 8

-- Display: Tick Value
ice_icefutures_bgw_sbe_v7_0.tick_value.display = function(value)
  return "Tick Value: "..value
end

-- Dissect: Tick Value
ice_icefutures_bgw_sbe_v7_0.tick_value.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.tick_value.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = ice_icefutures_bgw_sbe_v7_0.tick_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.tick_value, range, value, display)

  return offset + length, value
end

-- Time In Force Time In Force Enum
ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum = {}

-- Size: Time In Force Time In Force Enum
ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.size = 1

-- Display: Time In Force Time In Force Enum
ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.display = function(value)
  if value == 0 then
    return "Time In Force Time In Force Enum: Day (0)"
  end
  if value == 1 then
    return "Time In Force Time In Force Enum: Gtc (1)"
  end
  if value == 3 then
    return "Time In Force Time In Force Enum: Fak (3)"
  end
  if value == 4 then
    return "Time In Force Time In Force Enum: Fok (4)"
  end
  if value == 6 then
    return "Time In Force Time In Force Enum: Gtd (6)"
  end

  return "Time In Force Time In Force Enum: Unknown("..value..")"
end

-- Dissect: Time In Force Time In Force Enum
ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.time_in_force_time_in_force_enum, range, value, display)

  return offset + length, value
end

-- Time In Force Time In Force Enum Null
ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum_null = {}

-- Size: Time In Force Time In Force Enum Null
ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum_null.size = 1

-- Display: Time In Force Time In Force Enum Null
ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum_null.display = function(value)
  if value == 0 then
    return "Time In Force Time In Force Enum Null: Day (0)"
  end
  if value == 1 then
    return "Time In Force Time In Force Enum Null: Gtc (1)"
  end
  if value == 3 then
    return "Time In Force Time In Force Enum Null: Fak (3)"
  end
  if value == 4 then
    return "Time In Force Time In Force Enum Null: Fok (4)"
  end
  if value == 6 then
    return "Time In Force Time In Force Enum Null: Gtd (6)"
  end

  return "Time In Force Time In Force Enum Null: Unknown("..value..")"
end

-- Dissect: Time In Force Time In Force Enum Null
ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum_null.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.time_in_force_time_in_force_enum_null, range, value, display)

  return offset + length, value
end

-- Time Priority
ice_icefutures_bgw_sbe_v7_0.time_priority = {}

-- Size: Time Priority
ice_icefutures_bgw_sbe_v7_0.time_priority.size = 8

-- Display: Time Priority
ice_icefutures_bgw_sbe_v7_0.time_priority.display = function(value)
  return "Time Priority: "..value
end

-- Dissect: Time Priority
ice_icefutures_bgw_sbe_v7_0.time_priority.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.time_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = ice_icefutures_bgw_sbe_v7_0.time_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.time_priority, range, value, display)

  return offset + length, value
end

-- Trade Type
ice_icefutures_bgw_sbe_v7_0.trade_type = {}

-- Size: Trade Type
ice_icefutures_bgw_sbe_v7_0.trade_type.size = 3

-- Display: Trade Type
ice_icefutures_bgw_sbe_v7_0.trade_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Type: No Value"
  end

  return "Trade Type: "..value
end

-- Dissect: Trade Type
ice_icefutures_bgw_sbe_v7_0.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.trade_type.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Capacity
ice_icefutures_bgw_sbe_v7_0.trading_capacity = {}

-- Size: Trading Capacity
ice_icefutures_bgw_sbe_v7_0.trading_capacity.size = 1

-- Display: Trading Capacity
ice_icefutures_bgw_sbe_v7_0.trading_capacity.display = function(value)
  if value == 0 then
    return "Trading Capacity: Deal (0)"
  end
  if value == 1 then
    return "Trading Capacity: Mtch (1)"
  end
  if value == 2 then
    return "Trading Capacity: Aotc (2)"
  end

  return "Trading Capacity: Unknown("..value..")"
end

-- Dissect: Trading Capacity
ice_icefutures_bgw_sbe_v7_0.trading_capacity.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.trading_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.trading_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Transact Details
ice_icefutures_bgw_sbe_v7_0.transact_details = {}

-- Size: Transact Details
ice_icefutures_bgw_sbe_v7_0.transact_details.size = 100

-- Display: Transact Details
ice_icefutures_bgw_sbe_v7_0.transact_details.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Transact Details: No Value"
  end

  return "Transact Details: "..value
end

-- Dissect: Transact Details
ice_icefutures_bgw_sbe_v7_0.transact_details.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.transact_details.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.transact_details.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.transact_details, range, value, display)

  return offset + length, value
end

-- Transact Time Utc Timestamp
ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp = {}

-- Size: Transact Time Utc Timestamp
ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.size = 8

-- Display: Transact Time Utc Timestamp
ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.display = function(value)
  return "Transact Time Utc Timestamp: "..value
end

-- Dissect: Transact Time Utc Timestamp
ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.transact_time_utc_timestamp, range, value, display)

  return offset + length, value
end

-- Transact Time Utc Timestamp Null
ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp_null = {}

-- Size: Transact Time Utc Timestamp Null
ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp_null.size = 8

-- Display: Transact Time Utc Timestamp Null
ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp_null.display = function(value)
  return "Transact Time Utc Timestamp Null: "..value
end

-- Dissect: Transact Time Utc Timestamp Null
ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp_null.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.transact_time_utc_timestamp_null, range, value, display)

  return offset + length, value
end

-- Uds Futures Allowed
ice_icefutures_bgw_sbe_v7_0.uds_futures_allowed = {}

-- Size: Uds Futures Allowed
ice_icefutures_bgw_sbe_v7_0.uds_futures_allowed.size = 1

-- Display: Uds Futures Allowed
ice_icefutures_bgw_sbe_v7_0.uds_futures_allowed.display = function(value)
  if value == 0 then
    return "Uds Futures Allowed: False (0)"
  end
  if value == 1 then
    return "Uds Futures Allowed: True (1)"
  end

  return "Uds Futures Allowed: Unknown("..value..")"
end

-- Dissect: Uds Futures Allowed
ice_icefutures_bgw_sbe_v7_0.uds_futures_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.uds_futures_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.uds_futures_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.uds_futures_allowed, range, value, display)

  return offset + length, value
end

-- Uds Options Allowed
ice_icefutures_bgw_sbe_v7_0.uds_options_allowed = {}

-- Size: Uds Options Allowed
ice_icefutures_bgw_sbe_v7_0.uds_options_allowed.size = 1

-- Display: Uds Options Allowed
ice_icefutures_bgw_sbe_v7_0.uds_options_allowed.display = function(value)
  if value == 0 then
    return "Uds Options Allowed: False (0)"
  end
  if value == 1 then
    return "Uds Options Allowed: True (1)"
  end

  return "Uds Options Allowed: Unknown("..value..")"
end

-- Dissect: Uds Options Allowed
ice_icefutures_bgw_sbe_v7_0.uds_options_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.uds_options_allowed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.uds_options_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.uds_options_allowed, range, value, display)

  return offset + length, value
end

-- Underlying Product
ice_icefutures_bgw_sbe_v7_0.underlying_product = {}

-- Size: Underlying Product
ice_icefutures_bgw_sbe_v7_0.underlying_product.size = 4

-- Display: Underlying Product
ice_icefutures_bgw_sbe_v7_0.underlying_product.display = function(value)
  return "Underlying Product: "..value
end

-- Dissect: Underlying Product
ice_icefutures_bgw_sbe_v7_0.underlying_product.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.underlying_product.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.underlying_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.underlying_product, range, value, display)

  return offset + length, value
end

-- Underlying Security Id
ice_icefutures_bgw_sbe_v7_0.underlying_security_id = {}

-- Size: Underlying Security Id
ice_icefutures_bgw_sbe_v7_0.underlying_security_id.size = 4

-- Display: Underlying Security Id
ice_icefutures_bgw_sbe_v7_0.underlying_security_id.display = function(value)
  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
ice_icefutures_bgw_sbe_v7_0.underlying_security_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.underlying_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.underlying_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.underlying_security_id, range, value, display)

  return offset + length, value
end

-- Underlying Strategy Symbol
ice_icefutures_bgw_sbe_v7_0.underlying_strategy_symbol = {}

-- Size: Underlying Strategy Symbol
ice_icefutures_bgw_sbe_v7_0.underlying_strategy_symbol.size = 4

-- Display: Underlying Strategy Symbol
ice_icefutures_bgw_sbe_v7_0.underlying_strategy_symbol.display = function(value)
  return "Underlying Strategy Symbol: "..value
end

-- Dissect: Underlying Strategy Symbol
ice_icefutures_bgw_sbe_v7_0.underlying_strategy_symbol.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.underlying_strategy_symbol.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.underlying_strategy_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.underlying_strategy_symbol, range, value, display)

  return offset + length, value
end

-- Underlying Symbol int 32
ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32 = {}

-- Size: Underlying Symbol int 32
ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32.size = 4

-- Display: Underlying Symbol int 32
ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32.display = function(value)
  return "Underlying Symbol int 32: "..value
end

-- Dissect: Underlying Symbol int 32
ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.underlying_symbol_int_32, range, value, display)

  return offset + length, value
end

-- Underlying Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32_null = {}

-- Size: Underlying Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32_null.size = 4

-- Display: Underlying Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32_null.display = function(value)
  return "Underlying Symbol int 32 Null: "..value
end

-- Dissect: Underlying Symbol int 32 Null
ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32_null.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32_null.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32_null.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.underlying_symbol_int_32_null, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Data
ice_icefutures_bgw_sbe_v7_0.unit_of_measure_data = {}

-- Display: Unit Of Measure Data
ice_icefutures_bgw_sbe_v7_0.unit_of_measure_data.display = function(value)
  return "Unit Of Measure Data: "..value
end

-- Dissect runtime sized field: Unit Of Measure Data
ice_icefutures_bgw_sbe_v7_0.unit_of_measure_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ice_icefutures_bgw_sbe_v7_0.unit_of_measure_data.display(value, packet, parent, size)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.unit_of_measure_data, range, value, display)

  return offset + size, value
end

-- Unit Of Measure Length
ice_icefutures_bgw_sbe_v7_0.unit_of_measure_length = {}

-- Size: Unit Of Measure Length
ice_icefutures_bgw_sbe_v7_0.unit_of_measure_length.size = 2

-- Display: Unit Of Measure Length
ice_icefutures_bgw_sbe_v7_0.unit_of_measure_length.display = function(value)
  return "Unit Of Measure Length: "..value
end

-- Dissect: Unit Of Measure Length
ice_icefutures_bgw_sbe_v7_0.unit_of_measure_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.unit_of_measure_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.unit_of_measure_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.unit_of_measure_length, range, value, display)

  return offset + length, value
end

-- User Id
ice_icefutures_bgw_sbe_v7_0.user_id = {}

-- Size: User Id
ice_icefutures_bgw_sbe_v7_0.user_id.size = 20

-- Display: User Id
ice_icefutures_bgw_sbe_v7_0.user_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Id: No Value"
  end

  return "User Id: "..value
end

-- Dissect: User Id
ice_icefutures_bgw_sbe_v7_0.user_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.user_id.size
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

  local display = ice_icefutures_bgw_sbe_v7_0.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.user_id, range, value, display)

  return offset + length, value
end

-- Version
ice_icefutures_bgw_sbe_v7_0.version = {}

-- Size: Version
ice_icefutures_bgw_sbe_v7_0.version.size = 2

-- Display: Version
ice_icefutures_bgw_sbe_v7_0.version.display = function(value)
  if value == 0 then
    return "Version: Version 4.2"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
ice_icefutures_bgw_sbe_v7_0.version.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.version, range, value, display)

  return offset + length, value
end

-- Waiver Indicator
ice_icefutures_bgw_sbe_v7_0.waiver_indicator = {}

-- Size: Waiver Indicator
ice_icefutures_bgw_sbe_v7_0.waiver_indicator.size = 1

-- Display: Waiver Indicator
ice_icefutures_bgw_sbe_v7_0.waiver_indicator.display = function(value)
  if value == 1 then
    return "Waiver Indicator: Lrgs (1)"
  end
  if value == 2 then
    return "Waiver Indicator: Size (2)"
  end
  if value == 3 then
    return "Waiver Indicator: Ilqd (3)"
  end

  return "Waiver Indicator: Unknown("..value..")"
end

-- Dissect: Waiver Indicator
ice_icefutures_bgw_sbe_v7_0.waiver_indicator.dissect = function(buffer, offset, packet, parent)
  local length = ice_icefutures_bgw_sbe_v7_0.waiver_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.waiver_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.waiver_indicator, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Ice IceFutures Bgw Sbe 7.0
-----------------------------------------------------------------------

-- Sequence Reset Message
ice_icefutures_bgw_sbe_v7_0.sequence_reset_message = {}

-- Size: Sequence Reset Message
ice_icefutures_bgw_sbe_v7_0.sequence_reset_message.size =
  ice_icefutures_bgw_sbe_v7_0.new_seq_no.size + 
  ice_icefutures_bgw_sbe_v7_0.gap_fill_flag.size

-- Display: Sequence Reset Message
ice_icefutures_bgw_sbe_v7_0.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
ice_icefutures_bgw_sbe_v7_0.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: uint32
  index, new_seq_no = ice_icefutures_bgw_sbe_v7_0.new_seq_no.dissect(buffer, index, packet, parent)

  -- Gap Fill Flag: BooleanEnumNULL
  index, gap_fill_flag = ice_icefutures_bgw_sbe_v7_0.gap_fill_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
ice_icefutures_bgw_sbe_v7_0.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.sequence_reset_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Text
ice_icefutures_bgw_sbe_v7_0.text = {}

-- Calculate size of: Text
ice_icefutures_bgw_sbe_v7_0.text.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.text_length.size

  local text_length = buffer(offset + index - 2, 2):le_uint()

  if text_length > 0 then
    -- Parse runtime size of: Text Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Text
ice_icefutures_bgw_sbe_v7_0.text.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Text
ice_icefutures_bgw_sbe_v7_0.text.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text Length: uint16
  index, text_length = ice_icefutures_bgw_sbe_v7_0.text_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Text Data
  local text_data = nil

  local text_data_exists = text_length > 0

  if text_data_exists then

    -- Runtime Size Of: Text Data
    index, text_data = ice_icefutures_bgw_sbe_v7_0.text_data.dissect(buffer, index, packet, parent, text_length)
  end

  -- Composite value
  local text = text_data

  return index, text
end

-- Dissect: Text
ice_icefutures_bgw_sbe_v7_0.text.dissect = function(buffer, offset, packet, parent)
  if show.text then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.text, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.text.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.text.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.text.fields(buffer, offset, packet, parent)
  end
end

-- Resend Report Message
ice_icefutures_bgw_sbe_v7_0.resend_report_message = {}

-- Calculate size of: Resend Report Message
ice_icefutures_bgw_sbe_v7_0.resend_report_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.begin_seq_no.size

  index = index + ice_icefutures_bgw_sbe_v7_0.end_seq_no.size

  index = index + ice_icefutures_bgw_sbe_v7_0.status.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: Resend Report Message
ice_icefutures_bgw_sbe_v7_0.resend_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Resend Report Message
ice_icefutures_bgw_sbe_v7_0.resend_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq No: uint32
  index, begin_seq_no = ice_icefutures_bgw_sbe_v7_0.begin_seq_no.dissect(buffer, index, packet, parent)

  -- End Seq No: uint32
  index, end_seq_no = ice_icefutures_bgw_sbe_v7_0.end_seq_no.dissect(buffer, index, packet, parent)

  -- Status: RequestStatusEnum
  index, status = ice_icefutures_bgw_sbe_v7_0.status.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Resend Report Message
ice_icefutures_bgw_sbe_v7_0.resend_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.resend_report_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.resend_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.resend_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.resend_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Resend Request Message
ice_icefutures_bgw_sbe_v7_0.resend_request_message = {}

-- Size: Resend Request Message
ice_icefutures_bgw_sbe_v7_0.resend_request_message.size =
  ice_icefutures_bgw_sbe_v7_0.begin_seq_no.size + 
  ice_icefutures_bgw_sbe_v7_0.end_seq_no.size

-- Display: Resend Request Message
ice_icefutures_bgw_sbe_v7_0.resend_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Resend Request Message
ice_icefutures_bgw_sbe_v7_0.resend_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq No: uint32
  index, begin_seq_no = ice_icefutures_bgw_sbe_v7_0.begin_seq_no.dissect(buffer, index, packet, parent)

  -- End Seq No: uint32
  index, end_seq_no = ice_icefutures_bgw_sbe_v7_0.end_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Resend Request Message
ice_icefutures_bgw_sbe_v7_0.resend_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.resend_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.resend_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.resend_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.resend_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Report Message no Quote Sets Group
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_group = {}

-- Size: Mass Quote Report Message no Quote Sets Group
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_group.size =
  ice_icefutures_bgw_sbe_v7_0.quote_set_id.size + 
  ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.quote_entry_id.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason.size + 
  ice_icefutures_bgw_sbe_v7_0.quote_entry_exchange_code.size + 
  ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason_text.size

-- Display: Mass Quote Report Message no Quote Sets Group
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Report Message no Quote Sets Group
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_group.fields = function(buffer, offset, packet, parent, mass_quote_report_message_no_quote_sets_group_index)
  local index = offset

  -- Implicit Mass Quote Report Message no Quote Sets Group Index
  if mass_quote_report_message_no_quote_sets_group_index ~= nil and show.mass_quote_report_message_no_quote_sets_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_report_message_no_quote_sets_group_index, mass_quote_report_message_no_quote_sets_group_index)
    iteration:set_generated()
  end

  -- Quote Set Id: int32
  index, quote_set_id = ice_icefutures_bgw_sbe_v7_0.quote_set_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol int 32: int32
  index, underlying_symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32.dissect(buffer, index, packet, parent)

  -- Quote Entry Id: int32
  index, quote_entry_id = ice_icefutures_bgw_sbe_v7_0.quote_entry_id.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Quote Entry Reject Reason: QuoteEntryRejectReasonEnumNULL
  index, quote_entry_reject_reason = ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason.dissect(buffer, index, packet, parent)

  -- Quote Entry Exchange Code: int32NULL
  index, quote_entry_exchange_code = ice_icefutures_bgw_sbe_v7_0.quote_entry_exchange_code.dissect(buffer, index, packet, parent)

  -- Quote Entry Reject Reason Text: string100NULL
  index, quote_entry_reject_reason_text = ice_icefutures_bgw_sbe_v7_0.quote_entry_reject_reason_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Report Message no Quote Sets Group
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_group.dissect = function(buffer, offset, packet, parent, mass_quote_report_message_no_quote_sets_group_index)
  if show.mass_quote_report_message_no_quote_sets_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_report_message_no_quote_sets_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_group.fields(buffer, offset, packet, parent, mass_quote_report_message_no_quote_sets_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_group.fields(buffer, offset, packet, parent, mass_quote_report_message_no_quote_sets_group_index)
  end
end

-- Group Size Encoding
ice_icefutures_bgw_sbe_v7_0.group_size_encoding = {}

-- Size: Group Size Encoding
ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size =
  ice_icefutures_bgw_sbe_v7_0.block_length.size + 
  ice_icefutures_bgw_sbe_v7_0.num_in_group.size

-- Display: Group Size Encoding
ice_icefutures_bgw_sbe_v7_0.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
ice_icefutures_bgw_sbe_v7_0.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = ice_icefutures_bgw_sbe_v7_0.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint16
  index, num_in_group = ice_icefutures_bgw_sbe_v7_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.group_size_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.group_size_encoding, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Report Message no Quote Sets Groups
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_groups = {}

-- Calculate size of: Mass Quote Report Message no Quote Sets Groups
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local mass_quote_report_message_no_quote_sets_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + mass_quote_report_message_no_quote_sets_group_count * 121

  return index
end

-- Display: Mass Quote Report Message no Quote Sets Groups
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Report Message no Quote Sets Groups
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Mass Quote Report Message no Quote Sets Group
  for mass_quote_report_message_no_quote_sets_group_index = 1, num_in_group do
    index, mass_quote_report_message_no_quote_sets_group = ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_group.dissect(buffer, index, packet, parent, mass_quote_report_message_no_quote_sets_group_index)
  end

  return index
end

-- Dissect: Mass Quote Report Message no Quote Sets Groups
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_groups.dissect = function(buffer, offset, packet, parent)
  if show.mass_quote_report_message_no_quote_sets_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_report_message_no_quote_sets_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_groups.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Report Message
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message = {}

-- Calculate size of: Mass Quote Report Message
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.quote_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.originator_user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.risk_protection_reset.size

  index = index + ice_icefutures_bgw_sbe_v7_0.quote_ack_status.size

  index = index + ice_icefutures_bgw_sbe_v7_0.quote_reject_reason.size

  index = index + ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_groups.size(buffer, offset + index)

  return index
end

-- Display: Mass Quote Report Message
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Report Message
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Id: int64
  index, quote_id = ice_icefutures_bgw_sbe_v7_0.quote_id.dissect(buffer, index, packet, parent)

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Risk Protection Reset: BooleanEnumNULL
  index, risk_protection_reset = ice_icefutures_bgw_sbe_v7_0.risk_protection_reset.dissect(buffer, index, packet, parent)

  -- Quote Ack Status: QuoteAckStatusEnum
  index, quote_ack_status = ice_icefutures_bgw_sbe_v7_0.quote_ack_status.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: QuoteRejectReasonEnumNULL
  index, quote_reject_reason = ice_icefutures_bgw_sbe_v7_0.quote_reject_reason.dissect(buffer, index, packet, parent)

  -- Transact Time Utc Timestamp Null: UTCTimestampNULL
  index, transact_time_utc_timestamp_null = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp_null.dissect(buffer, index, packet, parent)

  -- Me Acceptance Time Utc Timestamp Null: UTCTimestampNULL
  index, me_acceptance_time_utc_timestamp_null = ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp_null.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  -- Mass Quote Report Message no Quote Sets Groups: Struct of 2 fields
  index, mass_quote_report_message_no_quote_sets_groups = ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message_no_quote_sets_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Report Message
ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_report_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Report Message
ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_report_message = {}

-- Calculate size of: Order Mass Cancel Report Message
ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_report_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.originator_user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.size

  index = index + ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.mass_cancel_request_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.mass_cancel_response.size

  index = index + ice_icefutures_bgw_sbe_v7_0.mass_cancel_reject_reason.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: Order Mass Cancel Report Message
ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Report Message
ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Symbol int 32 Null: int32NULL
  index, symbol_int_32_null = ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Transact Time Utc Timestamp: UTCTimestamp
  index, transact_time_utc_timestamp = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.dissect(buffer, index, packet, parent)

  -- Market Type I D int 32 Null: int32NULL
  index, market_type_i_d_int_32_null = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32_null.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Type: MassCancelRequestTypeEnum
  index, mass_cancel_request_type = ice_icefutures_bgw_sbe_v7_0.mass_cancel_request_type.dissect(buffer, index, packet, parent)

  -- Mass Cancel Response: MassCancelResponseEnum
  index, mass_cancel_response = ice_icefutures_bgw_sbe_v7_0.mass_cancel_response.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: MassCancelRejectEnumNULL
  index, mass_cancel_reject_reason = ice_icefutures_bgw_sbe_v7_0.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel Report Message
ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.order_mass_cancel_report_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_report_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Cross Report Message
ice_icefutures_bgw_sbe_v7_0.new_order_cross_report_message = {}

-- Calculate size of: New Order Cross Report Message
ice_icefutures_bgw_sbe_v7_0.new_order_cross_report_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.originator_user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64.size

  index = index + ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.size

  index = index + ice_icefutures_bgw_sbe_v7_0.rfc_status.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: New Order Cross Report Message
ice_icefutures_bgw_sbe_v7_0.new_order_cross_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Report Message
ice_icefutures_bgw_sbe_v7_0.new_order_cross_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Cross I D int 64: int64
  index, cross_i_d_int_64 = ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64.dissect(buffer, index, packet, parent)

  -- Transact Time Utc Timestamp: UTCTimestamp
  index, transact_time_utc_timestamp = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.dissect(buffer, index, packet, parent)

  -- Rfc Status: RFCStatusEnum
  index, rfc_status = ice_icefutures_bgw_sbe_v7_0.rfc_status.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross Report Message
ice_icefutures_bgw_sbe_v7_0.new_order_cross_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_report_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.new_order_cross_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.new_order_cross_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.new_order_cross_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Report Message
ice_icefutures_bgw_sbe_v7_0.quote_report_message = {}

-- Size: Quote Report Message
ice_icefutures_bgw_sbe_v7_0.quote_report_message.size =
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.side_side_enum_null.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.rfq_req_id.size + 
  ice_icefutures_bgw_sbe_v7_0.rfq_system_id.size + 
  ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.size + 
  ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9_null.size + 
  ice_icefutures_bgw_sbe_v7_0.quote_ack_status.size + 
  ice_icefutures_bgw_sbe_v7_0.quote_reject_reason.size

-- Display: Quote Report Message
ice_icefutures_bgw_sbe_v7_0.quote_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Report Message
ice_icefutures_bgw_sbe_v7_0.quote_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Side Side Enum Null: SideEnumNULL
  index, side_side_enum_null = ice_icefutures_bgw_sbe_v7_0.side_side_enum_null.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Rfq Req Id: int64
  index, rfq_req_id = ice_icefutures_bgw_sbe_v7_0.rfq_req_id.dissect(buffer, index, packet, parent)

  -- Rfq System Id: int64
  index, rfq_system_id = ice_icefutures_bgw_sbe_v7_0.rfq_system_id.dissect(buffer, index, packet, parent)

  -- Transact Time Utc Timestamp: UTCTimestamp
  index, transact_time_utc_timestamp = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.dissect(buffer, index, packet, parent)

  -- Order Qty Decimal 9 Null: Decimal9NULL
  index, order_qty_decimal_9_null = ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Quote Ack Status: QuoteAckStatusEnum
  index, quote_ack_status = ice_icefutures_bgw_sbe_v7_0.quote_ack_status.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: QuoteRejectReasonEnumNULL
  index, quote_reject_reason = ice_icefutures_bgw_sbe_v7_0.quote_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Report Message
ice_icefutures_bgw_sbe_v7_0.quote_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_report_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.quote_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.quote_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.quote_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
ice_icefutures_bgw_sbe_v7_0.trade_flags = {}

-- Size: Trade Flags
ice_icefutures_bgw_sbe_v7_0.trade_flags.size = 1

-- Display: Trade Flags
ice_icefutures_bgw_sbe_v7_0.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Liquidity Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Liquidity Indicator"
  end
  -- Is Deal Adjust Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Deal Adjust Indicator"
  end
  -- Is Reserved 2 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Reserved 2"
  end
  -- Is Reserved 3 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Reserved 3"
  end
  -- Is Reserved 4 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Reserved 4"
  end
  -- Is Reserved 5 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Reserved 5"
  end
  -- Is Reserved 6 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Reserved 6"
  end
  -- Is Reserved 7 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Reserved 7"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
ice_icefutures_bgw_sbe_v7_0.trade_flags.bits = function(range, value, packet, parent)

  -- Liquidity Indicator: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.liquidity_indicator, range, value)

  -- Deal Adjust Indicator: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.deal_adjust_indicator, range, value)

  -- Reserved 2: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_2, range, value)

  -- Reserved 3: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_3, range, value)

  -- Reserved 4: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_4, range, value)

  -- Reserved 5: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_5, range, value)

  -- Reserved 6: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_6, range, value)

  -- Reserved 7: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_7, range, value)
end

-- Dissect: Trade Flags
ice_icefutures_bgw_sbe_v7_0.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = ice_icefutures_bgw_sbe_v7_0.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.trade_flags, range, display)

  if show.trade_flags then
    ice_icefutures_bgw_sbe_v7_0.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Orig Order Id
ice_icefutures_bgw_sbe_v7_0.orig_order_id = {}

-- Size: Orig Order Id
ice_icefutures_bgw_sbe_v7_0.orig_order_id.size =
  ice_icefutures_bgw_sbe_v7_0.original_system_id.size + 
  ice_icefutures_bgw_sbe_v7_0.original_creation_timestamp.size

-- Display: Orig Order Id
ice_icefutures_bgw_sbe_v7_0.orig_order_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orig Order Id
ice_icefutures_bgw_sbe_v7_0.orig_order_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Original System Id: 8 Byte Signed Fixed Width Integer
  index, original_system_id = ice_icefutures_bgw_sbe_v7_0.original_system_id.dissect(buffer, index, packet, parent)

  -- Original Creation Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, original_creation_timestamp = ice_icefutures_bgw_sbe_v7_0.original_creation_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orig Order Id
ice_icefutures_bgw_sbe_v7_0.orig_order_id.dissect = function(buffer, offset, packet, parent)
  if show.orig_order_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.orig_order_id, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.orig_order_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.orig_order_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.orig_order_id.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Message
ice_icefutures_bgw_sbe_v7_0.execution_report_trade_message = {}

-- Size: Execution Report Trade Message
ice_icefutures_bgw_sbe_v7_0.execution_report_trade_message.size =
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.exec_i_d_int_64.size + 
  ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.side_side_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.order_id.size + 
  ice_icefutures_bgw_sbe_v7_0.orig_order_id.size + 
  ice_icefutures_bgw_sbe_v7_0.leaves_qty.size + 
  ice_icefutures_bgw_sbe_v7_0.cum_qty.size + 
  ice_icefutures_bgw_sbe_v7_0.last_px.size + 
  ice_icefutures_bgw_sbe_v7_0.last_shares.size + 
  ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.size + 
  ice_icefutures_bgw_sbe_v7_0.num_of_lots.size + 
  ice_icefutures_bgw_sbe_v7_0.exec_type.size + 
  ice_icefutures_bgw_sbe_v7_0.trade_flags.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null.size + 
  ice_icefutures_bgw_sbe_v7_0.memo.size + 
  ice_icefutures_bgw_sbe_v7_0.exec_ref_id.size + 
  ice_icefutures_bgw_sbe_v7_0.no_leg_executions.size + 
  ice_icefutures_bgw_sbe_v7_0.secondary_exec_id.size + 
  ice_icefutures_bgw_sbe_v7_0.link_exec_id.size + 
  ice_icefutures_bgw_sbe_v7_0.last_par_px.size + 
  ice_icefutures_bgw_sbe_v7_0.delivery_start_date.size + 
  ice_icefutures_bgw_sbe_v7_0.delivery_end_date.size + 
  ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64_null.size + 
  ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum_null.size + 
  ice_icefutures_bgw_sbe_v7_0.waiver_indicator.size + 
  ice_icefutures_bgw_sbe_v7_0.trade_type.size

-- Display: Execution Report Trade Message
ice_icefutures_bgw_sbe_v7_0.execution_report_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Message
ice_icefutures_bgw_sbe_v7_0.execution_report_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Exec I D int 64: int64
  index, exec_i_d_int_64 = ice_icefutures_bgw_sbe_v7_0.exec_i_d_int_64.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Ord Type Order Type Enum: OrderTypeEnum
  index, ord_type_order_type_enum = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.dissect(buffer, index, packet, parent)

  -- Side Side Enum: SideEnum
  index, side_side_enum = ice_icefutures_bgw_sbe_v7_0.side_side_enum.dissect(buffer, index, packet, parent)

  -- Order Id: int64
  index, order_id = ice_icefutures_bgw_sbe_v7_0.order_id.dissect(buffer, index, packet, parent)

  -- Orig Order Id: Struct of 2 fields
  index, orig_order_id = ice_icefutures_bgw_sbe_v7_0.orig_order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Decimal9
  index, leaves_qty = ice_icefutures_bgw_sbe_v7_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Decimal9
  index, cum_qty = ice_icefutures_bgw_sbe_v7_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Last Px: Decimal9NULL
  index, last_px = ice_icefutures_bgw_sbe_v7_0.last_px.dissect(buffer, index, packet, parent)

  -- Last Shares: Decimal9
  index, last_shares = ice_icefutures_bgw_sbe_v7_0.last_shares.dissect(buffer, index, packet, parent)

  -- Transact Time Utc Timestamp: UTCTimestamp
  index, transact_time_utc_timestamp = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.dissect(buffer, index, packet, parent)

  -- Num Of Lots: int64NULL
  index, num_of_lots = ice_icefutures_bgw_sbe_v7_0.num_of_lots.dissect(buffer, index, packet, parent)

  -- Exec Type: ExecTypeEnum
  index, exec_type = ice_icefutures_bgw_sbe_v7_0.exec_type.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 8 fields
  index, trade_flags = ice_icefutures_bgw_sbe_v7_0.trade_flags.dissect(buffer, index, packet, parent)

  -- Clearing Firm int 32 Null: int32NULL
  index, clearing_firm_int_32_null = ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null.dissect(buffer, index, packet, parent)

  -- Clearing Account string 14 Null: string14NULL
  index, clearing_account_string_14_null = ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null.dissect(buffer, index, packet, parent)

  -- Memo: string30NULL
  index, memo = ice_icefutures_bgw_sbe_v7_0.memo.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: int64NULL
  index, exec_ref_id = ice_icefutures_bgw_sbe_v7_0.exec_ref_id.dissect(buffer, index, packet, parent)

  -- No Leg Executions: int16NULL
  index, no_leg_executions = ice_icefutures_bgw_sbe_v7_0.no_leg_executions.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: int64NULL
  index, secondary_exec_id = ice_icefutures_bgw_sbe_v7_0.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Link Exec Id: int64NULL
  index, link_exec_id = ice_icefutures_bgw_sbe_v7_0.link_exec_id.dissect(buffer, index, packet, parent)

  -- Last Par Px: Decimal9NULL
  index, last_par_px = ice_icefutures_bgw_sbe_v7_0.last_par_px.dissect(buffer, index, packet, parent)

  -- Delivery Start Date: UTCTimestampNULL
  index, delivery_start_date = ice_icefutures_bgw_sbe_v7_0.delivery_start_date.dissect(buffer, index, packet, parent)

  -- Delivery End Date: UTCTimestampNULL
  index, delivery_end_date = ice_icefutures_bgw_sbe_v7_0.delivery_end_date.dissect(buffer, index, packet, parent)

  -- Cross I D int 64 Null: int64NULL
  index, cross_i_d_int_64_null = ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64_null.dissect(buffer, index, packet, parent)

  -- Cross Type Cross Type Enum Null: CrossTypeEnumNULL
  index, cross_type_cross_type_enum_null = ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum_null.dissect(buffer, index, packet, parent)

  -- Waiver Indicator: WaiverIndicatorEnumNULL
  index, waiver_indicator = ice_icefutures_bgw_sbe_v7_0.waiver_indicator.dissect(buffer, index, packet, parent)

  -- Trade Type: string3NULL
  index, trade_type = ice_icefutures_bgw_sbe_v7_0.trade_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Message
ice_icefutures_bgw_sbe_v7_0.execution_report_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_trade_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.execution_report_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.execution_report_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.execution_report_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Exec I D order Exec Id
ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id = {}

-- Size: Exec I D order Exec Id
ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.size =
  ice_icefutures_bgw_sbe_v7_0.system_id.size + 
  ice_icefutures_bgw_sbe_v7_0.system_sequence_id.size + 
  ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.size

-- Display: Exec I D order Exec Id
ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exec I D order Exec Id
ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- System Id: int64
  index, system_id = ice_icefutures_bgw_sbe_v7_0.system_id.dissect(buffer, index, packet, parent)

  -- System Sequence Id: int32
  index, system_sequence_id = ice_icefutures_bgw_sbe_v7_0.system_sequence_id.dissect(buffer, index, packet, parent)

  -- Transact Time Utc Timestamp: UTCTimestamp
  index, transact_time_utc_timestamp = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Exec I D order Exec Id
ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.dissect = function(buffer, offset, packet, parent)
  if show.exec_i_d_order_exec_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.exec_i_d_order_exec_id, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Snapshot Message
ice_icefutures_bgw_sbe_v7_0.execution_report_snapshot_message = {}

-- Size: Execution Report Snapshot Message
ice_icefutures_bgw_sbe_v7_0.execution_report_snapshot_message.size =
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.size + 
  ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.side_side_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.orig_order_id.size + 
  ice_icefutures_bgw_sbe_v7_0.max_show.size + 
  ice_icefutures_bgw_sbe_v7_0.leaves_qty.size + 
  ice_icefutures_bgw_sbe_v7_0.cum_qty.size + 
  ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.size + 
  ice_icefutures_bgw_sbe_v7_0.stop_px.size + 
  ice_icefutures_bgw_sbe_v7_0.expire_date.size + 
  ice_icefutures_bgw_sbe_v7_0.time_priority.size + 
  ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.order_status.size + 
  ice_icefutures_bgw_sbe_v7_0.order_state.size + 
  ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null.size + 
  ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.size + 
  ice_icefutures_bgw_sbe_v7_0.trading_capacity.size + 
  ice_icefutures_bgw_sbe_v7_0.liquidity_provision.size + 
  ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.size + 
  ice_icefutures_bgw_sbe_v7_0.investment_decision.size + 
  ice_icefutures_bgw_sbe_v7_0.execution_decision.size + 
  ice_icefutures_bgw_sbe_v7_0.client_id_code.size + 
  ice_icefutures_bgw_sbe_v7_0.mifid_id.size + 
  ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.size + 
  ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.size + 
  ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.size + 
  ice_icefutures_bgw_sbe_v7_0.exec_inst.size + 
  ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst.size + 
  ice_icefutures_bgw_sbe_v7_0.position_effect.size + 
  ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null.size + 
  ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.size + 
  ice_icefutures_bgw_sbe_v7_0.memo.size + 
  ice_icefutures_bgw_sbe_v7_0.allocation_account.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41_null.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41_null.size

-- Display: Execution Report Snapshot Message
ice_icefutures_bgw_sbe_v7_0.execution_report_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Snapshot Message
ice_icefutures_bgw_sbe_v7_0.execution_report_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Exec I D order Exec Id: Struct of 3 fields
  index, exec_i_d_order_exec_id = ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Ord Type Order Type Enum: OrderTypeEnum
  index, ord_type_order_type_enum = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.dissect(buffer, index, packet, parent)

  -- Side Side Enum: SideEnum
  index, side_side_enum = ice_icefutures_bgw_sbe_v7_0.side_side_enum.dissect(buffer, index, packet, parent)

  -- Orig Order Id: Struct of 2 fields
  index, orig_order_id = ice_icefutures_bgw_sbe_v7_0.orig_order_id.dissect(buffer, index, packet, parent)

  -- Max Show: Decimal9NULL
  index, max_show = ice_icefutures_bgw_sbe_v7_0.max_show.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Decimal9
  index, leaves_qty = ice_icefutures_bgw_sbe_v7_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Decimal9
  index, cum_qty = ice_icefutures_bgw_sbe_v7_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Price Decimal 9 Null: Decimal9NULL
  index, price_decimal_9_null = ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Stop Px: Decimal9NULL
  index, stop_px = ice_icefutures_bgw_sbe_v7_0.stop_px.dissect(buffer, index, packet, parent)

  -- Expire Date: UTCDateOnlyNULL
  index, expire_date = ice_icefutures_bgw_sbe_v7_0.expire_date.dissect(buffer, index, packet, parent)

  -- Time Priority: UTCTimestamp
  index, time_priority = ice_icefutures_bgw_sbe_v7_0.time_priority.dissect(buffer, index, packet, parent)

  -- Time In Force Time In Force Enum: TimeInForceEnum
  index, time_in_force_time_in_force_enum = ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.dissect(buffer, index, packet, parent)

  -- Order Status: OrderStatusEnumNULL
  index, order_status = ice_icefutures_bgw_sbe_v7_0.order_status.dissect(buffer, index, packet, parent)

  -- Order State: OrderStateEnumNULL
  index, order_state = ice_icefutures_bgw_sbe_v7_0.order_state.dissect(buffer, index, packet, parent)

  -- Give Up Clearing Firm: int32NULL
  index, give_up_clearing_firm = ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Firm int 32 Null: int32NULL
  index, clearing_firm_int_32_null = ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null.dissect(buffer, index, packet, parent)

  -- Direct Electronic Access: BooleanEnumNULL
  index, direct_electronic_access = ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.dissect(buffer, index, packet, parent)

  -- Trading Capacity: TradingCapacityEnumNULL
  index, trading_capacity = ice_icefutures_bgw_sbe_v7_0.trading_capacity.dissect(buffer, index, packet, parent)

  -- Liquidity Provision: BooleanEnumNULL
  index, liquidity_provision = ice_icefutures_bgw_sbe_v7_0.liquidity_provision.dissect(buffer, index, packet, parent)

  -- Commodity Deriv Indicator: BooleanEnumNULL
  index, commodity_deriv_indicator = ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.dissect(buffer, index, packet, parent)

  -- Investment Decision: int64NULL
  index, investment_decision = ice_icefutures_bgw_sbe_v7_0.investment_decision.dissect(buffer, index, packet, parent)

  -- Execution Decision: int64NULL
  index, execution_decision = ice_icefutures_bgw_sbe_v7_0.execution_decision.dissect(buffer, index, packet, parent)

  -- Client Id Code: int64NULL
  index, client_id_code = ice_icefutures_bgw_sbe_v7_0.client_id_code.dissect(buffer, index, packet, parent)

  -- Mifid Id: int64NULL
  index, mifid_id = ice_icefutures_bgw_sbe_v7_0.mifid_id.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: int64NULL
  index, self_match_prevention_id = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: SelfMatchPreventionInstructionEnumNULL
  index, self_match_prevention_instruction = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: BooleanEnumNULL
  index, manual_order_indicator = ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Exec Inst: ExecInstEnumNULL
  index, exec_inst = ice_icefutures_bgw_sbe_v7_0.exec_inst.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: CustOrderHandlingInstEnumNULL
  index, cust_order_handling_inst = ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Position Effect: PositionEffectEnumNULL
  index, position_effect = ice_icefutures_bgw_sbe_v7_0.position_effect.dissect(buffer, index, packet, parent)

  -- Alloc Handl Inst: AllocHandlInstEnumNULL
  index, alloc_handl_inst = ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.dissect(buffer, index, packet, parent)

  -- Clearing Account string 14 Null: string14NULL
  index, clearing_account_string_14_null = ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null.dissect(buffer, index, packet, parent)

  -- Customer Account Ref Id: string12NULL
  index, customer_account_ref_id = ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.dissect(buffer, index, packet, parent)

  -- Memo: string30NULL
  index, memo = ice_icefutures_bgw_sbe_v7_0.memo.dissect(buffer, index, packet, parent)

  -- Allocation Account: string20NULL
  index, allocation_account = ice_icefutures_bgw_sbe_v7_0.allocation_account.dissect(buffer, index, packet, parent)

  -- On Behalf Of Comp Id: string41NULL
  index, on_behalf_of_comp_id = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent)

  -- On Behalf Of Sub I D string 41 Null: string41NULL
  index, on_behalf_of_sub_i_d_string_41_null = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41_null.dissect(buffer, index, packet, parent)

  -- On Behalf Of Location I D string 41 Null: string41NULL
  index, on_behalf_of_location_i_d_string_41_null = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41_null.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Snapshot Message
ice_icefutures_bgw_sbe_v7_0.execution_report_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_snapshot_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.execution_report_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.execution_report_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.execution_report_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Reject Message
ice_icefutures_bgw_sbe_v7_0.execution_report_reject_message = {}

-- Calculate size of: Execution Report Reject Message
ice_icefutures_bgw_sbe_v7_0.execution_report_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.originator_user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.side_side_enum.size

  index = index + ice_icefutures_bgw_sbe_v7_0.orig_order_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.order_status.size

  index = index + ice_icefutures_bgw_sbe_v7_0.reject_response_to.size

  index = index + ice_icefutures_bgw_sbe_v7_0.reject_reason.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.memo.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Reject Message
ice_icefutures_bgw_sbe_v7_0.execution_report_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Reject Message
ice_icefutures_bgw_sbe_v7_0.execution_report_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Exec I D order Exec Id: Struct of 3 fields
  index, exec_i_d_order_exec_id = ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Ord Type Order Type Enum Null: OrderTypeEnumNULL
  index, ord_type_order_type_enum_null = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum_null.dissect(buffer, index, packet, parent)

  -- Side Side Enum: SideEnum
  index, side_side_enum = ice_icefutures_bgw_sbe_v7_0.side_side_enum.dissect(buffer, index, packet, parent)

  -- Orig Order Id: Struct of 2 fields
  index, orig_order_id = ice_icefutures_bgw_sbe_v7_0.orig_order_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord I D int 64 Null: int64NULL
  index, orig_cl_ord_i_d_int_64_null = ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null.dissect(buffer, index, packet, parent)

  -- Order Status: OrderStatusEnumNULL
  index, order_status = ice_icefutures_bgw_sbe_v7_0.order_status.dissect(buffer, index, packet, parent)

  -- Reject Response To: RejectResponseToEnum
  index, reject_response_to = ice_icefutures_bgw_sbe_v7_0.reject_response_to.dissect(buffer, index, packet, parent)

  -- Reject Reason: RejectEnumNULL
  index, reject_reason = ice_icefutures_bgw_sbe_v7_0.reject_reason.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Memo: string30NULL
  index, memo = ice_icefutures_bgw_sbe_v7_0.memo.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Reject Message
ice_icefutures_bgw_sbe_v7_0.execution_report_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_reject_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.execution_report_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.execution_report_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.execution_report_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Cancel Message
ice_icefutures_bgw_sbe_v7_0.execution_report_cancel_message = {}

-- Calculate size of: Execution Report Cancel Message
ice_icefutures_bgw_sbe_v7_0.execution_report_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.originator_user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.size

  index = index + ice_icefutures_bgw_sbe_v7_0.side_side_enum.size

  index = index + ice_icefutures_bgw_sbe_v7_0.orig_order_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.cancel_reason.size

  index = index + ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Cancel Message
ice_icefutures_bgw_sbe_v7_0.execution_report_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Cancel Message
ice_icefutures_bgw_sbe_v7_0.execution_report_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Exec I D order Exec Id: Struct of 3 fields
  index, exec_i_d_order_exec_id = ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Ord Type Order Type Enum: OrderTypeEnum
  index, ord_type_order_type_enum = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.dissect(buffer, index, packet, parent)

  -- Side Side Enum: SideEnum
  index, side_side_enum = ice_icefutures_bgw_sbe_v7_0.side_side_enum.dissect(buffer, index, packet, parent)

  -- Orig Order Id: Struct of 2 fields
  index, orig_order_id = ice_icefutures_bgw_sbe_v7_0.orig_order_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord I D int 64 Null: int64NULL
  index, orig_cl_ord_i_d_int_64_null = ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null.dissect(buffer, index, packet, parent)

  -- Me Acceptance Time Utc Timestamp: UTCTimestamp
  index, me_acceptance_time_utc_timestamp = ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Cancel Reason: CancelReasonEnumNULL
  index, cancel_reason = ice_icefutures_bgw_sbe_v7_0.cancel_reason.dissect(buffer, index, packet, parent)

  -- Cross I D int 64 Null: int64NULL
  index, cross_i_d_int_64_null = ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64_null.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Cancel Message
ice_icefutures_bgw_sbe_v7_0.execution_report_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_cancel_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.execution_report_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.execution_report_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.execution_report_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modification Flags
ice_icefutures_bgw_sbe_v7_0.order_modification_flags = {}

-- Size: Order Modification Flags
ice_icefutures_bgw_sbe_v7_0.order_modification_flags.size = 1

-- Display: Order Modification Flags
ice_icefutures_bgw_sbe_v7_0.order_modification_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Stop Limit Price Changed flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Stop Limit Price Changed"
  end
  -- Is Stop Elected flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Stop Elected"
  end
  -- Is Reserved 2 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Reserved 2"
  end
  -- Is Reserved 3 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Reserved 3"
  end
  -- Is Reserved 4 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Reserved 4"
  end
  -- Is Reserved 5 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Reserved 5"
  end
  -- Is Reserved 6 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Reserved 6"
  end
  -- Is Reserved 7 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Reserved 7"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Modification Flags
ice_icefutures_bgw_sbe_v7_0.order_modification_flags.bits = function(range, value, packet, parent)

  -- Stop Limit Price Changed: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.stop_limit_price_changed, range, value)

  -- Stop Elected: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.stop_elected, range, value)

  -- Reserved 2: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_2, range, value)

  -- Reserved 3: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_3, range, value)

  -- Reserved 4: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_4, range, value)

  -- Reserved 5: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_5, range, value)

  -- Reserved 6: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_6, range, value)

  -- Reserved 7: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_7, range, value)
end

-- Dissect: Order Modification Flags
ice_icefutures_bgw_sbe_v7_0.order_modification_flags.dissect = function(buffer, offset, packet, parent)
  local size = ice_icefutures_bgw_sbe_v7_0.order_modification_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.order_modification_flags.display(range, value, packet, parent)
  local element = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.order_modification_flags, range, display)

  if show.order_modification_flags then
    ice_icefutures_bgw_sbe_v7_0.order_modification_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Execution Report Modify Message
ice_icefutures_bgw_sbe_v7_0.execution_report_modify_message = {}

-- Size: Execution Report Modify Message
ice_icefutures_bgw_sbe_v7_0.execution_report_modify_message.size =
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.size + 
  ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.side_side_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.orig_order_id.size + 
  ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null.size + 
  ice_icefutures_bgw_sbe_v7_0.leaves_qty.size + 
  ice_icefutures_bgw_sbe_v7_0.cum_qty.size + 
  ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.size + 
  ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp.size + 
  ice_icefutures_bgw_sbe_v7_0.time_priority.size + 
  ice_icefutures_bgw_sbe_v7_0.exec_type.size + 
  ice_icefutures_bgw_sbe_v7_0.order_status.size + 
  ice_icefutures_bgw_sbe_v7_0.order_state.size + 
  ice_icefutures_bgw_sbe_v7_0.exec_restatement_reason.size + 
  ice_icefutures_bgw_sbe_v7_0.order_modification_flags.size + 
  ice_icefutures_bgw_sbe_v7_0.memo.size

-- Display: Execution Report Modify Message
ice_icefutures_bgw_sbe_v7_0.execution_report_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Modify Message
ice_icefutures_bgw_sbe_v7_0.execution_report_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Exec I D order Exec Id: Struct of 3 fields
  index, exec_i_d_order_exec_id = ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Ord Type Order Type Enum: OrderTypeEnum
  index, ord_type_order_type_enum = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.dissect(buffer, index, packet, parent)

  -- Side Side Enum: SideEnum
  index, side_side_enum = ice_icefutures_bgw_sbe_v7_0.side_side_enum.dissect(buffer, index, packet, parent)

  -- Orig Order Id: Struct of 2 fields
  index, orig_order_id = ice_icefutures_bgw_sbe_v7_0.orig_order_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord I D int 64 Null: int64NULL
  index, orig_cl_ord_i_d_int_64_null = ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64_null.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Decimal9
  index, leaves_qty = ice_icefutures_bgw_sbe_v7_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: Decimal9
  index, cum_qty = ice_icefutures_bgw_sbe_v7_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Price Decimal 9 Null: Decimal9NULL
  index, price_decimal_9_null = ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Me Acceptance Time Utc Timestamp: UTCTimestamp
  index, me_acceptance_time_utc_timestamp = ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp.dissect(buffer, index, packet, parent)

  -- Time Priority: UTCTimestamp
  index, time_priority = ice_icefutures_bgw_sbe_v7_0.time_priority.dissect(buffer, index, packet, parent)

  -- Exec Type: ExecTypeEnum
  index, exec_type = ice_icefutures_bgw_sbe_v7_0.exec_type.dissect(buffer, index, packet, parent)

  -- Order Status: OrderStatusEnumNULL
  index, order_status = ice_icefutures_bgw_sbe_v7_0.order_status.dissect(buffer, index, packet, parent)

  -- Order State: OrderStateEnumNULL
  index, order_state = ice_icefutures_bgw_sbe_v7_0.order_state.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: ExecRestatementReasonEnumNULL
  index, exec_restatement_reason = ice_icefutures_bgw_sbe_v7_0.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Order Modification Flags: Struct of 8 fields
  index, order_modification_flags = ice_icefutures_bgw_sbe_v7_0.order_modification_flags.dissect(buffer, index, packet, parent)

  -- Memo: string30NULL
  index, memo = ice_icefutures_bgw_sbe_v7_0.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Modify Message
ice_icefutures_bgw_sbe_v7_0.execution_report_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_modify_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.execution_report_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.execution_report_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.execution_report_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report New Message
ice_icefutures_bgw_sbe_v7_0.execution_report_new_message = {}

-- Size: Execution Report New Message
ice_icefutures_bgw_sbe_v7_0.execution_report_new_message.size =
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.size + 
  ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.side_side_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.orig_order_id.size + 
  ice_icefutures_bgw_sbe_v7_0.leaves_qty.size + 
  ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.size + 
  ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp.size + 
  ice_icefutures_bgw_sbe_v7_0.time_priority.size + 
  ice_icefutures_bgw_sbe_v7_0.order_status.size + 
  ice_icefutures_bgw_sbe_v7_0.memo.size

-- Display: Execution Report New Message
ice_icefutures_bgw_sbe_v7_0.execution_report_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report New Message
ice_icefutures_bgw_sbe_v7_0.execution_report_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Exec I D order Exec Id: Struct of 3 fields
  index, exec_i_d_order_exec_id = ice_icefutures_bgw_sbe_v7_0.exec_i_d_order_exec_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Ord Type Order Type Enum: OrderTypeEnum
  index, ord_type_order_type_enum = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.dissect(buffer, index, packet, parent)

  -- Side Side Enum: SideEnum
  index, side_side_enum = ice_icefutures_bgw_sbe_v7_0.side_side_enum.dissect(buffer, index, packet, parent)

  -- Orig Order Id: Struct of 2 fields
  index, orig_order_id = ice_icefutures_bgw_sbe_v7_0.orig_order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Decimal9
  index, leaves_qty = ice_icefutures_bgw_sbe_v7_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Price Decimal 9 Null: Decimal9NULL
  index, price_decimal_9_null = ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Me Acceptance Time Utc Timestamp: UTCTimestamp
  index, me_acceptance_time_utc_timestamp = ice_icefutures_bgw_sbe_v7_0.me_acceptance_time_utc_timestamp.dissect(buffer, index, packet, parent)

  -- Time Priority: UTCTimestamp
  index, time_priority = ice_icefutures_bgw_sbe_v7_0.time_priority.dissect(buffer, index, packet, parent)

  -- Order Status: OrderStatusEnumNULL
  index, order_status = ice_icefutures_bgw_sbe_v7_0.order_status.dissect(buffer, index, packet, parent)

  -- Memo: string30NULL
  index, memo = ice_icefutures_bgw_sbe_v7_0.memo.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New Message
ice_icefutures_bgw_sbe_v7_0.execution_report_new_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.execution_report_new_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.execution_report_new_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.execution_report_new_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.execution_report_new_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Request Create Flex Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_flex_message = {}

-- Size: Security Definition Request Create Flex Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_flex_message.size =
  ice_icefutures_bgw_sbe_v7_0.security_req_id.size + 
  ice_icefutures_bgw_sbe_v7_0.security_request_type.size + 
  ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.maturity_date.size + 
  ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32_null.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null.size + 
  ice_icefutures_bgw_sbe_v7_0.strike_price.size

-- Display: Security Definition Request Create Flex Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_flex_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request Create Flex Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_flex_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Req Id: int32
  index, security_req_id = ice_icefutures_bgw_sbe_v7_0.security_req_id.dissect(buffer, index, packet, parent)

  -- Security Request Type: SecurityRequestTypeEnum
  index, security_request_type = ice_icefutures_bgw_sbe_v7_0.security_request_type.dissect(buffer, index, packet, parent)

  -- Market Type I D int 32: int32
  index, market_type_i_d_int_32 = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.dissect(buffer, index, packet, parent)

  -- Security Type Security Type Enum: SecurityTypeEnum
  index, security_type_security_type_enum = ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum.dissect(buffer, index, packet, parent)

  -- Maturity Date: UTCDateOnlyNULL
  index, maturity_date = ice_icefutures_bgw_sbe_v7_0.maturity_date.dissect(buffer, index, packet, parent)

  -- Product I D int 32 Null: int32NULL
  index, product_i_d_int_32_null = ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32_null.dissect(buffer, index, packet, parent)

  -- Symbol int 32 Null: int32NULL
  index, symbol_int_32_null = ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null.dissect(buffer, index, packet, parent)

  -- Strike Price: Decimal9NULL
  index, strike_price = ice_icefutures_bgw_sbe_v7_0.strike_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Create Flex Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_flex_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_create_flex_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_flex_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_flex_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_flex_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Request Create Strategy Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_group = {}

-- Size: Security Definition Request Create Strategy Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_group.size =
  ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_security_type.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_side.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16_null.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16_null.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_price.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_option_delta.size

-- Display: Security Definition Request Create Strategy Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request Create Strategy Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_group.fields = function(buffer, offset, packet, parent, security_definition_request_create_strategy_message_no_legs_group_index)
  local index = offset

  -- Implicit Security Definition Request Create Strategy Message no Legs Group Index
  if security_definition_request_create_strategy_message_no_legs_group_index ~= nil and show.security_definition_request_create_strategy_message_no_legs_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_create_strategy_message_no_legs_group_index, security_definition_request_create_strategy_message_no_legs_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol int 32: int32
  index, leg_symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32.dissect(buffer, index, packet, parent)

  -- Leg Security Type: SecurityTypeEnum
  index, leg_security_type = ice_icefutures_bgw_sbe_v7_0.leg_security_type.dissect(buffer, index, packet, parent)

  -- Leg Side: SideEnum
  index, leg_side = ice_icefutures_bgw_sbe_v7_0.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Denominator int 16 Null: int16NULL
  index, leg_ratio_qty_denominator_int_16_null = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16_null.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Numerator int 16 Null: int16NULL
  index, leg_ratio_qty_numerator_int_16_null = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16_null.dissect(buffer, index, packet, parent)

  -- Leg Price: Decimal9NULL
  index, leg_price = ice_icefutures_bgw_sbe_v7_0.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Option Delta: int32NULL
  index, leg_option_delta = ice_icefutures_bgw_sbe_v7_0.leg_option_delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Create Strategy Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_group.dissect = function(buffer, offset, packet, parent, security_definition_request_create_strategy_message_no_legs_group_index)
  if show.security_definition_request_create_strategy_message_no_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_create_strategy_message_no_legs_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_group.fields(buffer, offset, packet, parent, security_definition_request_create_strategy_message_no_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_group.fields(buffer, offset, packet, parent, security_definition_request_create_strategy_message_no_legs_group_index)
  end
end

-- Security Definition Request Create Strategy Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_groups = {}

-- Calculate size of: Security Definition Request Create Strategy Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local security_definition_request_create_strategy_message_no_legs_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + security_definition_request_create_strategy_message_no_legs_group_count * 22

  return index
end

-- Display: Security Definition Request Create Strategy Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request Create Strategy Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Security Definition Request Create Strategy Message no Legs Group
  for security_definition_request_create_strategy_message_no_legs_group_index = 1, num_in_group do
    index, security_definition_request_create_strategy_message_no_legs_group = ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_group.dissect(buffer, index, packet, parent, security_definition_request_create_strategy_message_no_legs_group_index)
  end

  return index
end

-- Dissect: Security Definition Request Create Strategy Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.security_definition_request_create_strategy_message_no_legs_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_create_strategy_message_no_legs_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Request Create Strategy Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message = {}

-- Calculate size of: Security Definition Request Create Strategy Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.security_req_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_request_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.start_date.size

  index = index + ice_icefutures_bgw_sbe_v7_0.end_date.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Request Create Strategy Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request Create Strategy Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Req Id: int32
  index, security_req_id = ice_icefutures_bgw_sbe_v7_0.security_req_id.dissect(buffer, index, packet, parent)

  -- Security Request Type: SecurityRequestTypeEnum
  index, security_request_type = ice_icefutures_bgw_sbe_v7_0.security_request_type.dissect(buffer, index, packet, parent)

  -- Market Type I D int 32: int32
  index, market_type_i_d_int_32 = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.dissect(buffer, index, packet, parent)

  -- Security Sub Type int 16 Null: int16NULL
  index, security_sub_type_int_16_null = ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16_null.dissect(buffer, index, packet, parent)

  -- Product I D int 32 Null: int32NULL
  index, product_i_d_int_32_null = ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32_null.dissect(buffer, index, packet, parent)

  -- Start Date: UTCDateOnlyNULL
  index, start_date = ice_icefutures_bgw_sbe_v7_0.start_date.dissect(buffer, index, packet, parent)

  -- End Date: UTCDateOnlyNULL
  index, end_date = ice_icefutures_bgw_sbe_v7_0.end_date.dissect(buffer, index, packet, parent)

  -- Security Type Security Type Enum: SecurityTypeEnum
  index, security_type_security_type_enum = ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum.dissect(buffer, index, packet, parent)

  -- Security Definition Request Create Strategy Message no Legs Groups: Struct of 2 fields
  index, security_definition_request_create_strategy_message_no_legs_groups = ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message_no_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Create Strategy Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_create_strategy_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancel Request Message no Quote Entries Group
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_group = {}

-- Size: Quote Cancel Request Message no Quote Entries Group
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_group.size =
  ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32_null.size + 
  ice_icefutures_bgw_sbe_v7_0.underlying_security_id.size + 
  ice_icefutures_bgw_sbe_v7_0.underlying_product.size

-- Display: Quote Cancel Request Message no Quote Entries Group
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Request Message no Quote Entries Group
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_group.fields = function(buffer, offset, packet, parent, quote_cancel_request_message_no_quote_entries_group_index)
  local index = offset

  -- Implicit Quote Cancel Request Message no Quote Entries Group Index
  if quote_cancel_request_message_no_quote_entries_group_index ~= nil and show.quote_cancel_request_message_no_quote_entries_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_cancel_request_message_no_quote_entries_group_index, quote_cancel_request_message_no_quote_entries_group_index)
    iteration:set_generated()
  end

  -- Underlying Symbol int 32 Null: int32NULL
  index, underlying_symbol_int_32_null = ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32_null.dissect(buffer, index, packet, parent)

  -- Underlying Security Id: int32NULL
  index, underlying_security_id = ice_icefutures_bgw_sbe_v7_0.underlying_security_id.dissect(buffer, index, packet, parent)

  -- Underlying Product: int32NULL
  index, underlying_product = ice_icefutures_bgw_sbe_v7_0.underlying_product.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Request Message no Quote Entries Group
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_group.dissect = function(buffer, offset, packet, parent, quote_cancel_request_message_no_quote_entries_group_index)
  if show.quote_cancel_request_message_no_quote_entries_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_cancel_request_message_no_quote_entries_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_group.fields(buffer, offset, packet, parent, quote_cancel_request_message_no_quote_entries_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_group.fields(buffer, offset, packet, parent, quote_cancel_request_message_no_quote_entries_group_index)
  end
end

-- Quote Cancel Request Message no Quote Entries Groups
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_groups = {}

-- Calculate size of: Quote Cancel Request Message no Quote Entries Groups
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local quote_cancel_request_message_no_quote_entries_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + quote_cancel_request_message_no_quote_entries_group_count * 12

  return index
end

-- Display: Quote Cancel Request Message no Quote Entries Groups
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Request Message no Quote Entries Groups
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Quote Cancel Request Message no Quote Entries Group
  for quote_cancel_request_message_no_quote_entries_group_index = 1, num_in_group do
    index, quote_cancel_request_message_no_quote_entries_group = ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_group.dissect(buffer, index, packet, parent, quote_cancel_request_message_no_quote_entries_group_index)
  end

  return index
end

-- Dissect: Quote Cancel Request Message no Quote Entries Groups
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_groups.dissect = function(buffer, offset, packet, parent)
  if show.quote_cancel_request_message_no_quote_entries_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_cancel_request_message_no_quote_entries_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_groups.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message = {}

-- Calculate size of: Quote Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.quote_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.quote_cancel_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.originator_user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_groups.size(buffer, offset + index)

  return index
end

-- Display: Quote Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Id: int64
  index, quote_id = ice_icefutures_bgw_sbe_v7_0.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Cancel Type: QuoteCancelTypeEnum
  index, quote_cancel_type = ice_icefutures_bgw_sbe_v7_0.quote_cancel_type.dissect(buffer, index, packet, parent)

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Quote Cancel Request Message no Quote Entries Groups: Struct of 2 fields
  index, quote_cancel_request_message_no_quote_entries_groups = ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message_no_quote_entries_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_cancel_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Request Message no Quote Sets Group
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_group = {}

-- Size: Mass Quote Request Message no Quote Sets Group
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_group.size =
  ice_icefutures_bgw_sbe_v7_0.quote_set_id.size + 
  ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.quote_entry_id.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.bid_px.size + 
  ice_icefutures_bgw_sbe_v7_0.offer_px.size + 
  ice_icefutures_bgw_sbe_v7_0.bid_sz.size + 
  ice_icefutures_bgw_sbe_v7_0.offer_sz.size

-- Display: Mass Quote Request Message no Quote Sets Group
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Request Message no Quote Sets Group
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_group.fields = function(buffer, offset, packet, parent, mass_quote_request_message_no_quote_sets_group_index)
  local index = offset

  -- Implicit Mass Quote Request Message no Quote Sets Group Index
  if mass_quote_request_message_no_quote_sets_group_index ~= nil and show.mass_quote_request_message_no_quote_sets_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_request_message_no_quote_sets_group_index, mass_quote_request_message_no_quote_sets_group_index)
    iteration:set_generated()
  end

  -- Quote Set Id: int32
  index, quote_set_id = ice_icefutures_bgw_sbe_v7_0.quote_set_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol int 32: int32
  index, underlying_symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32.dissect(buffer, index, packet, parent)

  -- Quote Entry Id: int32
  index, quote_entry_id = ice_icefutures_bgw_sbe_v7_0.quote_entry_id.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Bid Px: Decimal9
  index, bid_px = ice_icefutures_bgw_sbe_v7_0.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Px: Decimal9
  index, offer_px = ice_icefutures_bgw_sbe_v7_0.offer_px.dissect(buffer, index, packet, parent)

  -- Bid Sz: Decimal9
  index, bid_sz = ice_icefutures_bgw_sbe_v7_0.bid_sz.dissect(buffer, index, packet, parent)

  -- Offer Sz: Decimal9
  index, offer_sz = ice_icefutures_bgw_sbe_v7_0.offer_sz.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Request Message no Quote Sets Group
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_group.dissect = function(buffer, offset, packet, parent, mass_quote_request_message_no_quote_sets_group_index)
  if show.mass_quote_request_message_no_quote_sets_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_request_message_no_quote_sets_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_group.fields(buffer, offset, packet, parent, mass_quote_request_message_no_quote_sets_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_group.fields(buffer, offset, packet, parent, mass_quote_request_message_no_quote_sets_group_index)
  end
end

-- Mass Quote Request Message no Quote Sets Groups
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_groups = {}

-- Calculate size of: Mass Quote Request Message no Quote Sets Groups
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local mass_quote_request_message_no_quote_sets_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + mass_quote_request_message_no_quote_sets_group_count * 48

  return index
end

-- Display: Mass Quote Request Message no Quote Sets Groups
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Request Message no Quote Sets Groups
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Mass Quote Request Message no Quote Sets Group
  for mass_quote_request_message_no_quote_sets_group_index = 1, num_in_group do
    index, mass_quote_request_message_no_quote_sets_group = ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_group.dissect(buffer, index, packet, parent, mass_quote_request_message_no_quote_sets_group_index)
  end

  return index
end

-- Dissect: Mass Quote Request Message no Quote Sets Groups
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_groups.dissect = function(buffer, offset, packet, parent)
  if show.mass_quote_request_message_no_quote_sets_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_request_message_no_quote_sets_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_groups.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Request Message
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message = {}

-- Calculate size of: Mass Quote Request Message
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.quote_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.risk_protection_reset.size

  index = index + ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.size

  index = index + ice_icefutures_bgw_sbe_v7_0.originator_user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.size

  index = index + ice_icefutures_bgw_sbe_v7_0.trading_capacity.size

  index = index + ice_icefutures_bgw_sbe_v7_0.liquidity_provision.size

  index = index + ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.size

  index = index + ice_icefutures_bgw_sbe_v7_0.investment_decision.size

  index = index + ice_icefutures_bgw_sbe_v7_0.execution_decision.size

  index = index + ice_icefutures_bgw_sbe_v7_0.client_id_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.mifid_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_groups.size(buffer, offset + index)

  return index
end

-- Display: Mass Quote Request Message
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Request Message
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Id: int64
  index, quote_id = ice_icefutures_bgw_sbe_v7_0.quote_id.dissect(buffer, index, packet, parent)

  -- Risk Protection Reset: BooleanEnumNULL
  index, risk_protection_reset = ice_icefutures_bgw_sbe_v7_0.risk_protection_reset.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: int64NULL
  index, self_match_prevention_id = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: SelfMatchPreventionInstructionEnumNULL
  index, self_match_prevention_instruction = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Direct Electronic Access: BooleanEnumNULL
  index, direct_electronic_access = ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.dissect(buffer, index, packet, parent)

  -- Trading Capacity: TradingCapacityEnumNULL
  index, trading_capacity = ice_icefutures_bgw_sbe_v7_0.trading_capacity.dissect(buffer, index, packet, parent)

  -- Liquidity Provision: BooleanEnumNULL
  index, liquidity_provision = ice_icefutures_bgw_sbe_v7_0.liquidity_provision.dissect(buffer, index, packet, parent)

  -- Commodity Deriv Indicator: BooleanEnumNULL
  index, commodity_deriv_indicator = ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.dissect(buffer, index, packet, parent)

  -- Investment Decision: int64NULL
  index, investment_decision = ice_icefutures_bgw_sbe_v7_0.investment_decision.dissect(buffer, index, packet, parent)

  -- Execution Decision: int64NULL
  index, execution_decision = ice_icefutures_bgw_sbe_v7_0.execution_decision.dissect(buffer, index, packet, parent)

  -- Client Id Code: int64NULL
  index, client_id_code = ice_icefutures_bgw_sbe_v7_0.client_id_code.dissect(buffer, index, packet, parent)

  -- Mifid Id: int64NULL
  index, mifid_id = ice_icefutures_bgw_sbe_v7_0.mifid_id.dissect(buffer, index, packet, parent)

  -- Mass Quote Request Message no Quote Sets Groups: Struct of 2 fields
  index, mass_quote_request_message_no_quote_sets_groups = ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message_no_quote_sets_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Request Message
ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.mass_quote_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_request_message = {}

-- Size: Order Mass Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_request_message.size =
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum_null.size + 
  ice_icefutures_bgw_sbe_v7_0.side_side_enum_null.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null.size + 
  ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size + 
  ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32_null.size + 
  ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.size + 
  ice_icefutures_bgw_sbe_v7_0.mass_cancel_request_type.size + 
  ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum_null.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41_null.size

-- Display: Order Mass Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Ord Type Order Type Enum Null: OrderTypeEnumNULL
  index, ord_type_order_type_enum_null = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum_null.dissect(buffer, index, packet, parent)

  -- Side Side Enum Null: SideEnumNULL
  index, side_side_enum_null = ice_icefutures_bgw_sbe_v7_0.side_side_enum_null.dissect(buffer, index, packet, parent)

  -- Symbol int 32 Null: int32NULL
  index, symbol_int_32_null = ice_icefutures_bgw_sbe_v7_0.symbol_int_32_null.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Market Type I D int 32 Null: int32NULL
  index, market_type_i_d_int_32_null = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32_null.dissect(buffer, index, packet, parent)

  -- Price Decimal 9 Null: Decimal9NULL
  index, price_decimal_9_null = ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Type: MassCancelRequestTypeEnum
  index, mass_cancel_request_type = ice_icefutures_bgw_sbe_v7_0.mass_cancel_request_type.dissect(buffer, index, packet, parent)

  -- Time In Force Time In Force Enum Null: TimeInForceEnumNULL
  index, time_in_force_time_in_force_enum_null = ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum_null.dissect(buffer, index, packet, parent)

  -- On Behalf Of Sub I D string 41 Null: string41NULL
  index, on_behalf_of_sub_i_d_string_41_null = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41_null.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.order_mass_cancel_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Cross Request Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_group = {}

-- Size: New Order Cross Request Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_group.size =
  ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32_null.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_security_id_source.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_opt_attribute.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_qty.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_price.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_security_type.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_memo_field.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_security_id.size

-- Display: New Order Cross Request Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Request Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_group.fields = function(buffer, offset, packet, parent, new_order_cross_request_message_no_legs_group_index)
  local index = offset

  -- Implicit New Order Cross Request Message no Legs Group Index
  if new_order_cross_request_message_no_legs_group_index ~= nil and show.new_order_cross_request_message_no_legs_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_legs_group_index, new_order_cross_request_message_no_legs_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol int 32 Null: int32NULL
  index, leg_symbol_int_32_null = ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32_null.dissect(buffer, index, packet, parent)

  -- Leg Security Id Source: int8NULL
  index, leg_security_id_source = ice_icefutures_bgw_sbe_v7_0.leg_security_id_source.dissect(buffer, index, packet, parent)

  -- Leg Opt Attribute: int32NULL
  index, leg_opt_attribute = ice_icefutures_bgw_sbe_v7_0.leg_opt_attribute.dissect(buffer, index, packet, parent)

  -- Leg Qty: Decimal9NULL
  index, leg_qty = ice_icefutures_bgw_sbe_v7_0.leg_qty.dissect(buffer, index, packet, parent)

  -- Leg Price: Decimal9NULL
  index, leg_price = ice_icefutures_bgw_sbe_v7_0.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Security Type: SecurityTypeEnum
  index, leg_security_type = ice_icefutures_bgw_sbe_v7_0.leg_security_type.dissect(buffer, index, packet, parent)

  -- Leg Memo Field: string12NULL
  index, leg_memo_field = ice_icefutures_bgw_sbe_v7_0.leg_memo_field.dissect(buffer, index, packet, parent)

  -- Leg Security Id: string75NULL
  index, leg_security_id = ice_icefutures_bgw_sbe_v7_0.leg_security_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross Request Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_group.dissect = function(buffer, offset, packet, parent, new_order_cross_request_message_no_legs_group_index)
  if show.new_order_cross_request_message_no_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_legs_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_group.fields(buffer, offset, packet, parent, new_order_cross_request_message_no_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_group.fields(buffer, offset, packet, parent, new_order_cross_request_message_no_legs_group_index)
  end
end

-- New Order Cross Request Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_groups = {}

-- Calculate size of: New Order Cross Request Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local new_order_cross_request_message_no_legs_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + new_order_cross_request_message_no_legs_group_count * 113

  return index
end

-- Display: New Order Cross Request Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Request Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: New Order Cross Request Message no Legs Group
  for new_order_cross_request_message_no_legs_group_index = 1, num_in_group do
    index, new_order_cross_request_message_no_legs_group = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_group.dissect(buffer, index, packet, parent, new_order_cross_request_message_no_legs_group_index)
  end

  return index
end

-- Dissect: New Order Cross Request Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.new_order_cross_request_message_no_legs_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_legs_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- New Order Cross Request Message no Sides Group
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_group = {}

-- Size: New Order Cross Request Message no Sides Group
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_group.size =
  ice_icefutures_bgw_sbe_v7_0.side_side_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size + 
  ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.size + 
  ice_icefutures_bgw_sbe_v7_0.trading_capacity.size + 
  ice_icefutures_bgw_sbe_v7_0.liquidity_provision.size + 
  ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.size + 
  ice_icefutures_bgw_sbe_v7_0.investment_decision.size + 
  ice_icefutures_bgw_sbe_v7_0.execution_decision.size + 
  ice_icefutures_bgw_sbe_v7_0.client_id_code.size + 
  ice_icefutures_bgw_sbe_v7_0.mifid_id.size + 
  ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.size + 
  ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.size + 
  ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.size + 
  ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst.size + 
  ice_icefutures_bgw_sbe_v7_0.position_effect.size + 
  ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14.size + 
  ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.size + 
  ice_icefutures_bgw_sbe_v7_0.memo.size + 
  ice_icefutures_bgw_sbe_v7_0.allocation_account.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.size

-- Display: New Order Cross Request Message no Sides Group
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Request Message no Sides Group
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_group.fields = function(buffer, offset, packet, parent, new_order_cross_request_message_no_sides_group_index)
  local index = offset

  -- Implicit New Order Cross Request Message no Sides Group Index
  if new_order_cross_request_message_no_sides_group_index ~= nil and show.new_order_cross_request_message_no_sides_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_sides_group_index, new_order_cross_request_message_no_sides_group_index)
    iteration:set_generated()
  end

  -- Side Side Enum: SideEnum
  index, side_side_enum = ice_icefutures_bgw_sbe_v7_0.side_side_enum.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Give Up Clearing Firm: int32NULL
  index, give_up_clearing_firm = ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Firm int 32: int32
  index, clearing_firm_int_32 = ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32.dissect(buffer, index, packet, parent)

  -- Direct Electronic Access: BooleanEnumNULL
  index, direct_electronic_access = ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.dissect(buffer, index, packet, parent)

  -- Trading Capacity: TradingCapacityEnumNULL
  index, trading_capacity = ice_icefutures_bgw_sbe_v7_0.trading_capacity.dissect(buffer, index, packet, parent)

  -- Liquidity Provision: BooleanEnumNULL
  index, liquidity_provision = ice_icefutures_bgw_sbe_v7_0.liquidity_provision.dissect(buffer, index, packet, parent)

  -- Commodity Deriv Indicator: BooleanEnumNULL
  index, commodity_deriv_indicator = ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.dissect(buffer, index, packet, parent)

  -- Investment Decision: int64NULL
  index, investment_decision = ice_icefutures_bgw_sbe_v7_0.investment_decision.dissect(buffer, index, packet, parent)

  -- Execution Decision: int64NULL
  index, execution_decision = ice_icefutures_bgw_sbe_v7_0.execution_decision.dissect(buffer, index, packet, parent)

  -- Client Id Code: int64NULL
  index, client_id_code = ice_icefutures_bgw_sbe_v7_0.client_id_code.dissect(buffer, index, packet, parent)

  -- Mifid Id: int64NULL
  index, mifid_id = ice_icefutures_bgw_sbe_v7_0.mifid_id.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: int64NULL
  index, self_match_prevention_id = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: SelfMatchPreventionInstructionEnumNULL
  index, self_match_prevention_instruction = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: BooleanEnumNULL
  index, manual_order_indicator = ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: CustOrderHandlingInstEnumNULL
  index, cust_order_handling_inst = ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Position Effect: PositionEffectEnumNULL
  index, position_effect = ice_icefutures_bgw_sbe_v7_0.position_effect.dissect(buffer, index, packet, parent)

  -- Alloc Handl Inst: AllocHandlInstEnumNULL
  index, alloc_handl_inst = ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.dissect(buffer, index, packet, parent)

  -- Clearing Account string 14: string14
  index, clearing_account_string_14 = ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14.dissect(buffer, index, packet, parent)

  -- Customer Account Ref Id: string12NULL
  index, customer_account_ref_id = ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.dissect(buffer, index, packet, parent)

  -- Memo: string30NULL
  index, memo = ice_icefutures_bgw_sbe_v7_0.memo.dissect(buffer, index, packet, parent)

  -- Allocation Account: string20NULL
  index, allocation_account = ice_icefutures_bgw_sbe_v7_0.allocation_account.dissect(buffer, index, packet, parent)

  -- On Behalf Of Comp Id: string41NULL
  index, on_behalf_of_comp_id = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent)

  -- On Behalf Of Sub I D string 41: string41
  index, on_behalf_of_sub_i_d_string_41 = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.dissect(buffer, index, packet, parent)

  -- On Behalf Of Location I D string 41: string41
  index, on_behalf_of_location_i_d_string_41 = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross Request Message no Sides Group
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_group.dissect = function(buffer, offset, packet, parent, new_order_cross_request_message_no_sides_group_index)
  if show.new_order_cross_request_message_no_sides_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_sides_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_group.fields(buffer, offset, packet, parent, new_order_cross_request_message_no_sides_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_group.fields(buffer, offset, packet, parent, new_order_cross_request_message_no_sides_group_index)
  end
end

-- New Order Cross Request Message no Sides Groups
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_groups = {}

-- Calculate size of: New Order Cross Request Message no Sides Groups
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local new_order_cross_request_message_no_sides_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + new_order_cross_request_message_no_sides_group_count * 265

  return index
end

-- Display: New Order Cross Request Message no Sides Groups
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Request Message no Sides Groups
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: New Order Cross Request Message no Sides Group
  for new_order_cross_request_message_no_sides_group_index = 1, num_in_group do
    index, new_order_cross_request_message_no_sides_group = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_group.dissect(buffer, index, packet, parent, new_order_cross_request_message_no_sides_group_index)
  end

  return index
end

-- Dissect: New Order Cross Request Message no Sides Groups
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_groups.dissect = function(buffer, offset, packet, parent)
  if show.new_order_cross_request_message_no_sides_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message_no_sides_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_groups.fields(buffer, offset, packet, parent)
  end
end

-- New Order Cross Request Message
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message = {}

-- Calculate size of: New Order Cross Request Message
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.price_decimal_9.size

  index = index + ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9.size

  index = index + ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.originator_user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.size

  index = index + ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64.size

  index = index + ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum.size

  index = index + ice_icefutures_bgw_sbe_v7_0.trade_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exec_inst.size

  index = index + ice_icefutures_bgw_sbe_v7_0.price_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.bypass_mqr.size

  index = index + ice_icefutures_bgw_sbe_v7_0.hedge_only.size

  index = index + ice_icefutures_bgw_sbe_v7_0.benchmark_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.bench_mark_price_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.size

  index = index + ice_icefutures_bgw_sbe_v7_0.transact_details.size

  index = index + ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.size

  index = index + ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_groups.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: New Order Cross Request Message
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Request Message
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Decimal 9: Decimal9
  index, price_decimal_9 = ice_icefutures_bgw_sbe_v7_0.price_decimal_9.dissect(buffer, index, packet, parent)

  -- Order Qty Decimal 9: Decimal9
  index, order_qty_decimal_9 = ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Ord Type Order Type Enum: OrderTypeEnum
  index, ord_type_order_type_enum = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.dissect(buffer, index, packet, parent)

  -- Cross I D int 64: int64
  index, cross_i_d_int_64 = ice_icefutures_bgw_sbe_v7_0.cross_i_d_int_64.dissect(buffer, index, packet, parent)

  -- Cross Type Cross Type Enum: CrossTypeEnum
  index, cross_type_cross_type_enum = ice_icefutures_bgw_sbe_v7_0.cross_type_cross_type_enum.dissect(buffer, index, packet, parent)

  -- Trade Type: string3NULL
  index, trade_type = ice_icefutures_bgw_sbe_v7_0.trade_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: ExecInstEnumNULL
  index, exec_inst = ice_icefutures_bgw_sbe_v7_0.exec_inst.dissect(buffer, index, packet, parent)

  -- Price Type: PriceTypeEnumNULL
  index, price_type = ice_icefutures_bgw_sbe_v7_0.price_type.dissect(buffer, index, packet, parent)

  -- Bypass Mqr: BooleanEnumNULL
  index, bypass_mqr = ice_icefutures_bgw_sbe_v7_0.bypass_mqr.dissect(buffer, index, packet, parent)

  -- Hedge Only: BooleanEnumNULL
  index, hedge_only = ice_icefutures_bgw_sbe_v7_0.hedge_only.dissect(buffer, index, packet, parent)

  -- Benchmark Price: Decimal9NULL
  index, benchmark_price = ice_icefutures_bgw_sbe_v7_0.benchmark_price.dissect(buffer, index, packet, parent)

  -- Bench Mark Price Type: BenchmarkPriceTypeEnumNULL
  index, bench_mark_price_type = ice_icefutures_bgw_sbe_v7_0.bench_mark_price_type.dissect(buffer, index, packet, parent)

  -- Time In Force Time In Force Enum: TimeInForceEnum
  index, time_in_force_time_in_force_enum = ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.dissect(buffer, index, packet, parent)

  -- Transact Details: string100NULL
  index, transact_details = ice_icefutures_bgw_sbe_v7_0.transact_details.dissect(buffer, index, packet, parent)

  -- Transact Time Utc Timestamp: UTCTimestamp
  index, transact_time_utc_timestamp = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.dissect(buffer, index, packet, parent)

  -- New Order Cross Request Message no Sides Groups: Struct of 2 fields
  index, new_order_cross_request_message_no_sides_groups = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_sides_groups.dissect(buffer, index, packet, parent)

  -- New Order Cross Request Message no Legs Groups: Struct of 2 fields
  index, new_order_cross_request_message_no_legs_groups = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message_no_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross Request Message
ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_cross_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request Message
ice_icefutures_bgw_sbe_v7_0.quote_request_message = {}

-- Size: Quote Request Message
ice_icefutures_bgw_sbe_v7_0.quote_request_message.size =
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.side_side_enum_null.size + 
  ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9_null.size + 
  ice_icefutures_bgw_sbe_v7_0.rfq_req_id.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.size

-- Display: Quote Request Message
ice_icefutures_bgw_sbe_v7_0.quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Message
ice_icefutures_bgw_sbe_v7_0.quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Side Side Enum Null: SideEnumNULL
  index, side_side_enum_null = ice_icefutures_bgw_sbe_v7_0.side_side_enum_null.dissect(buffer, index, packet, parent)

  -- Order Qty Decimal 9 Null: Decimal9NULL
  index, order_qty_decimal_9_null = ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Rfq Req Id: int64
  index, rfq_req_id = ice_icefutures_bgw_sbe_v7_0.rfq_req_id.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Clearing Firm int 32 Null: int32NULL
  index, clearing_firm_int_32_null = ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32_null.dissect(buffer, index, packet, parent)

  -- Clearing Account string 14 Null: string14NULL
  index, clearing_account_string_14_null = ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14_null.dissect(buffer, index, packet, parent)

  -- On Behalf Of Comp Id: string41NULL
  index, on_behalf_of_comp_id = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent)

  -- On Behalf Of Sub I D string 41: string41
  index, on_behalf_of_sub_i_d_string_41 = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.dissect(buffer, index, packet, parent)

  -- On Behalf Of Location I D string 41: string41
  index, on_behalf_of_location_i_d_string_41 = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
ice_icefutures_bgw_sbe_v7_0.quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.quote_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.cancel_request_message = {}

-- Size: Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.cancel_request_message.size =
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size + 
  ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64.size + 
  ice_icefutures_bgw_sbe_v7_0.side_side_enum.size

-- Display: Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord I D int 64: int64
  index, orig_cl_ord_i_d_int_64 = ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64.dissect(buffer, index, packet, parent)

  -- Side Side Enum: SideEnum
  index, side_side_enum = ice_icefutures_bgw_sbe_v7_0.side_side_enum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Request Message
ice_icefutures_bgw_sbe_v7_0.cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cancel_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Replace Request Message
ice_icefutures_bgw_sbe_v7_0.cancel_replace_request_message = {}

-- Size: Cancel Replace Request Message
ice_icefutures_bgw_sbe_v7_0.cancel_replace_request_message.size =
  ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.size + 
  ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.side_side_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.size + 
  ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size + 
  ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64.size + 
  ice_icefutures_bgw_sbe_v7_0.max_show.size + 
  ice_icefutures_bgw_sbe_v7_0.stop_px.size + 
  ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.size + 
  ice_icefutures_bgw_sbe_v7_0.expire_date.size + 
  ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.size + 
  ice_icefutures_bgw_sbe_v7_0.exec_inst.size + 
  ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.size + 
  ice_icefutures_bgw_sbe_v7_0.trading_capacity.size + 
  ice_icefutures_bgw_sbe_v7_0.liquidity_provision.size + 
  ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.size + 
  ice_icefutures_bgw_sbe_v7_0.investment_decision.size + 
  ice_icefutures_bgw_sbe_v7_0.execution_decision.size + 
  ice_icefutures_bgw_sbe_v7_0.client_id_code.size + 
  ice_icefutures_bgw_sbe_v7_0.mifid_id.size + 
  ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.size + 
  ice_icefutures_bgw_sbe_v7_0.price_type.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14.size + 
  ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.size + 
  ice_icefutures_bgw_sbe_v7_0.memo.size + 
  ice_icefutures_bgw_sbe_v7_0.allocation_account.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.size

-- Display: Cancel Replace Request Message
ice_icefutures_bgw_sbe_v7_0.cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Replace Request Message
ice_icefutures_bgw_sbe_v7_0.cancel_replace_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Decimal 9 Null: Decimal9NULL
  index, price_decimal_9_null = ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Order Qty Decimal 9: Decimal9
  index, order_qty_decimal_9 = ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Time In Force Time In Force Enum: TimeInForceEnum
  index, time_in_force_time_in_force_enum = ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.dissect(buffer, index, packet, parent)

  -- Side Side Enum: SideEnum
  index, side_side_enum = ice_icefutures_bgw_sbe_v7_0.side_side_enum.dissect(buffer, index, packet, parent)

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Ord Type Order Type Enum: OrderTypeEnum
  index, ord_type_order_type_enum = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: BooleanEnumNULL
  index, manual_order_indicator = ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord I D int 64: int64
  index, orig_cl_ord_i_d_int_64 = ice_icefutures_bgw_sbe_v7_0.orig_cl_ord_i_d_int_64.dissect(buffer, index, packet, parent)

  -- Max Show: Decimal9NULL
  index, max_show = ice_icefutures_bgw_sbe_v7_0.max_show.dissect(buffer, index, packet, parent)

  -- Stop Px: Decimal9NULL
  index, stop_px = ice_icefutures_bgw_sbe_v7_0.stop_px.dissect(buffer, index, packet, parent)

  -- Give Up Clearing Firm: int32NULL
  index, give_up_clearing_firm = ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Firm int 32: int32
  index, clearing_firm_int_32 = ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: int64NULL
  index, self_match_prevention_id = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Expire Date: UTCDateOnlyNULL
  index, expire_date = ice_icefutures_bgw_sbe_v7_0.expire_date.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: SelfMatchPreventionInstructionEnumNULL
  index, self_match_prevention_instruction = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Exec Inst: ExecInstEnumNULL
  index, exec_inst = ice_icefutures_bgw_sbe_v7_0.exec_inst.dissect(buffer, index, packet, parent)

  -- Direct Electronic Access: BooleanEnumNULL
  index, direct_electronic_access = ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.dissect(buffer, index, packet, parent)

  -- Trading Capacity: TradingCapacityEnumNULL
  index, trading_capacity = ice_icefutures_bgw_sbe_v7_0.trading_capacity.dissect(buffer, index, packet, parent)

  -- Liquidity Provision: BooleanEnumNULL
  index, liquidity_provision = ice_icefutures_bgw_sbe_v7_0.liquidity_provision.dissect(buffer, index, packet, parent)

  -- Commodity Deriv Indicator: BooleanEnumNULL
  index, commodity_deriv_indicator = ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.dissect(buffer, index, packet, parent)

  -- Investment Decision: int64NULL
  index, investment_decision = ice_icefutures_bgw_sbe_v7_0.investment_decision.dissect(buffer, index, packet, parent)

  -- Execution Decision: int64NULL
  index, execution_decision = ice_icefutures_bgw_sbe_v7_0.execution_decision.dissect(buffer, index, packet, parent)

  -- Client Id Code: int64NULL
  index, client_id_code = ice_icefutures_bgw_sbe_v7_0.client_id_code.dissect(buffer, index, packet, parent)

  -- Mifid Id: int64NULL
  index, mifid_id = ice_icefutures_bgw_sbe_v7_0.mifid_id.dissect(buffer, index, packet, parent)

  -- Alloc Handl Inst: AllocHandlInstEnumNULL
  index, alloc_handl_inst = ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.dissect(buffer, index, packet, parent)

  -- Price Type: PriceTypeEnumNULL
  index, price_type = ice_icefutures_bgw_sbe_v7_0.price_type.dissect(buffer, index, packet, parent)

  -- Clearing Account string 14: string14
  index, clearing_account_string_14 = ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14.dissect(buffer, index, packet, parent)

  -- Customer Account Ref Id: string12NULL
  index, customer_account_ref_id = ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.dissect(buffer, index, packet, parent)

  -- Memo: string30NULL
  index, memo = ice_icefutures_bgw_sbe_v7_0.memo.dissect(buffer, index, packet, parent)

  -- Allocation Account: string20NULL
  index, allocation_account = ice_icefutures_bgw_sbe_v7_0.allocation_account.dissect(buffer, index, packet, parent)

  -- On Behalf Of Comp Id: string41NULL
  index, on_behalf_of_comp_id = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent)

  -- On Behalf Of Sub I D string 41: string41
  index, on_behalf_of_sub_i_d_string_41 = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.dissect(buffer, index, packet, parent)

  -- On Behalf Of Location I D string 41: string41
  index, on_behalf_of_location_i_d_string_41 = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Replace Request Message
ice_icefutures_bgw_sbe_v7_0.cancel_replace_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cancel_replace_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.cancel_replace_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.cancel_replace_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.cancel_replace_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Request Message
ice_icefutures_bgw_sbe_v7_0.new_order_request_message = {}

-- Size: New Order Request Message
ice_icefutures_bgw_sbe_v7_0.new_order_request_message.size =
  ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.size + 
  ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9.size + 
  ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.side_side_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.size + 
  ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.size + 
  ice_icefutures_bgw_sbe_v7_0.cl_ord_id.size + 
  ice_icefutures_bgw_sbe_v7_0.max_show.size + 
  ice_icefutures_bgw_sbe_v7_0.stop_px.size + 
  ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.size + 
  ice_icefutures_bgw_sbe_v7_0.expire_date.size + 
  ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.size + 
  ice_icefutures_bgw_sbe_v7_0.exec_inst.size + 
  ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.size + 
  ice_icefutures_bgw_sbe_v7_0.trading_capacity.size + 
  ice_icefutures_bgw_sbe_v7_0.liquidity_provision.size + 
  ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.size + 
  ice_icefutures_bgw_sbe_v7_0.investment_decision.size + 
  ice_icefutures_bgw_sbe_v7_0.execution_decision.size + 
  ice_icefutures_bgw_sbe_v7_0.client_id_code.size + 
  ice_icefutures_bgw_sbe_v7_0.mifid_id.size + 
  ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst.size + 
  ice_icefutures_bgw_sbe_v7_0.position_effect.size + 
  ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.size + 
  ice_icefutures_bgw_sbe_v7_0.price_type.size + 
  ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14.size + 
  ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.size + 
  ice_icefutures_bgw_sbe_v7_0.memo.size + 
  ice_icefutures_bgw_sbe_v7_0.allocation_account.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.size + 
  ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.size

-- Display: New Order Request Message
ice_icefutures_bgw_sbe_v7_0.new_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Request Message
ice_icefutures_bgw_sbe_v7_0.new_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Decimal 9 Null: Decimal9NULL
  index, price_decimal_9_null = ice_icefutures_bgw_sbe_v7_0.price_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Order Qty Decimal 9: Decimal9
  index, order_qty_decimal_9 = ice_icefutures_bgw_sbe_v7_0.order_qty_decimal_9.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Time In Force Time In Force Enum: TimeInForceEnum
  index, time_in_force_time_in_force_enum = ice_icefutures_bgw_sbe_v7_0.time_in_force_time_in_force_enum.dissect(buffer, index, packet, parent)

  -- Side Side Enum: SideEnum
  index, side_side_enum = ice_icefutures_bgw_sbe_v7_0.side_side_enum.dissect(buffer, index, packet, parent)

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Ord Type Order Type Enum: OrderTypeEnum
  index, ord_type_order_type_enum = ice_icefutures_bgw_sbe_v7_0.ord_type_order_type_enum.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: BooleanEnumNULL
  index, manual_order_indicator = ice_icefutures_bgw_sbe_v7_0.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: int64
  index, cl_ord_id = ice_icefutures_bgw_sbe_v7_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Max Show: Decimal9NULL
  index, max_show = ice_icefutures_bgw_sbe_v7_0.max_show.dissect(buffer, index, packet, parent)

  -- Stop Px: Decimal9NULL
  index, stop_px = ice_icefutures_bgw_sbe_v7_0.stop_px.dissect(buffer, index, packet, parent)

  -- Give Up Clearing Firm: int32NULL
  index, give_up_clearing_firm = ice_icefutures_bgw_sbe_v7_0.give_up_clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Firm int 32: int32
  index, clearing_firm_int_32 = ice_icefutures_bgw_sbe_v7_0.clearing_firm_int_32.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: int64NULL
  index, self_match_prevention_id = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Expire Date: UTCDateOnlyNULL
  index, expire_date = ice_icefutures_bgw_sbe_v7_0.expire_date.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: SelfMatchPreventionInstructionEnumNULL
  index, self_match_prevention_instruction = ice_icefutures_bgw_sbe_v7_0.self_match_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Exec Inst: ExecInstEnumNULL
  index, exec_inst = ice_icefutures_bgw_sbe_v7_0.exec_inst.dissect(buffer, index, packet, parent)

  -- Direct Electronic Access: BooleanEnumNULL
  index, direct_electronic_access = ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.dissect(buffer, index, packet, parent)

  -- Trading Capacity: TradingCapacityEnumNULL
  index, trading_capacity = ice_icefutures_bgw_sbe_v7_0.trading_capacity.dissect(buffer, index, packet, parent)

  -- Liquidity Provision: BooleanEnumNULL
  index, liquidity_provision = ice_icefutures_bgw_sbe_v7_0.liquidity_provision.dissect(buffer, index, packet, parent)

  -- Commodity Deriv Indicator: BooleanEnumNULL
  index, commodity_deriv_indicator = ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.dissect(buffer, index, packet, parent)

  -- Investment Decision: int64NULL
  index, investment_decision = ice_icefutures_bgw_sbe_v7_0.investment_decision.dissect(buffer, index, packet, parent)

  -- Execution Decision: int64NULL
  index, execution_decision = ice_icefutures_bgw_sbe_v7_0.execution_decision.dissect(buffer, index, packet, parent)

  -- Client Id Code: int64NULL
  index, client_id_code = ice_icefutures_bgw_sbe_v7_0.client_id_code.dissect(buffer, index, packet, parent)

  -- Mifid Id: int64NULL
  index, mifid_id = ice_icefutures_bgw_sbe_v7_0.mifid_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: CustOrderHandlingInstEnumNULL
  index, cust_order_handling_inst = ice_icefutures_bgw_sbe_v7_0.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Position Effect: PositionEffectEnumNULL
  index, position_effect = ice_icefutures_bgw_sbe_v7_0.position_effect.dissect(buffer, index, packet, parent)

  -- Alloc Handl Inst: AllocHandlInstEnumNULL
  index, alloc_handl_inst = ice_icefutures_bgw_sbe_v7_0.alloc_handl_inst.dissect(buffer, index, packet, parent)

  -- Price Type: PriceTypeEnumNULL
  index, price_type = ice_icefutures_bgw_sbe_v7_0.price_type.dissect(buffer, index, packet, parent)

  -- Clearing Account string 14: string14
  index, clearing_account_string_14 = ice_icefutures_bgw_sbe_v7_0.clearing_account_string_14.dissect(buffer, index, packet, parent)

  -- Customer Account Ref Id: string12NULL
  index, customer_account_ref_id = ice_icefutures_bgw_sbe_v7_0.customer_account_ref_id.dissect(buffer, index, packet, parent)

  -- Memo: string30NULL
  index, memo = ice_icefutures_bgw_sbe_v7_0.memo.dissect(buffer, index, packet, parent)

  -- Allocation Account: string20NULL
  index, allocation_account = ice_icefutures_bgw_sbe_v7_0.allocation_account.dissect(buffer, index, packet, parent)

  -- On Behalf Of Comp Id: string41NULL
  index, on_behalf_of_comp_id = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_comp_id.dissect(buffer, index, packet, parent)

  -- On Behalf Of Sub I D string 41: string41
  index, on_behalf_of_sub_i_d_string_41 = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_sub_i_d_string_41.dissect(buffer, index, packet, parent)

  -- On Behalf Of Location I D string 41: string41
  index, on_behalf_of_location_i_d_string_41 = ice_icefutures_bgw_sbe_v7_0.on_behalf_of_location_i_d_string_41.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Request Message
ice_icefutures_bgw_sbe_v7_0.new_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.new_order_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.new_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.new_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.new_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Trader Logout Report Message
ice_icefutures_bgw_sbe_v7_0.trader_logout_report_message = {}

-- Calculate size of: Trader Logout Report Message
ice_icefutures_bgw_sbe_v7_0.trader_logout_report_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.originator_user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: Trader Logout Report Message
ice_icefutures_bgw_sbe_v7_0.trader_logout_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trader Logout Report Message
ice_icefutures_bgw_sbe_v7_0.trader_logout_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trader Logout Report Message
ice_icefutures_bgw_sbe_v7_0.trader_logout_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.trader_logout_report_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.trader_logout_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.trader_logout_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.trader_logout_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trader Logout Request Message
ice_icefutures_bgw_sbe_v7_0.trader_logout_request_message = {}

-- Size: Trader Logout Request Message
ice_icefutures_bgw_sbe_v7_0.trader_logout_request_message.size =
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size

-- Display: Trader Logout Request Message
ice_icefutures_bgw_sbe_v7_0.trader_logout_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trader Logout Request Message
ice_icefutures_bgw_sbe_v7_0.trader_logout_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trader Logout Request Message
ice_icefutures_bgw_sbe_v7_0.trader_logout_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.trader_logout_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.trader_logout_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.trader_logout_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.trader_logout_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Trader Logon Report Message
ice_icefutures_bgw_sbe_v7_0.trader_logon_report_message = {}

-- Calculate size of: Trader Logon Report Message
ice_icefutures_bgw_sbe_v7_0.trader_logon_report_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.originator_user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.client_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: Trader Logon Report Message
ice_icefutures_bgw_sbe_v7_0.trader_logon_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trader Logon Report Message
ice_icefutures_bgw_sbe_v7_0.trader_logon_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Client Id: int32
  index, client_id = ice_icefutures_bgw_sbe_v7_0.client_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trader Logon Report Message
ice_icefutures_bgw_sbe_v7_0.trader_logon_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.trader_logon_report_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.trader_logon_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.trader_logon_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.trader_logon_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trader Logon Request Message
ice_icefutures_bgw_sbe_v7_0.trader_logon_request_message = {}

-- Size: Trader Logon Request Message
ice_icefutures_bgw_sbe_v7_0.trader_logon_request_message.size =
  ice_icefutures_bgw_sbe_v7_0.originator_user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.size + 
  ice_icefutures_bgw_sbe_v7_0.trading_capacity.size + 
  ice_icefutures_bgw_sbe_v7_0.liquidity_provision.size + 
  ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.size + 
  ice_icefutures_bgw_sbe_v7_0.investment_decision.size + 
  ice_icefutures_bgw_sbe_v7_0.execution_decision.size + 
  ice_icefutures_bgw_sbe_v7_0.client_id_code.size + 
  ice_icefutures_bgw_sbe_v7_0.mifid_id.size + 
  ice_icefutures_bgw_sbe_v7_0.raw_data.size

-- Display: Trader Logon Request Message
ice_icefutures_bgw_sbe_v7_0.trader_logon_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trader Logon Request Message
ice_icefutures_bgw_sbe_v7_0.trader_logon_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Originator User Id: string20
  index, originator_user_id = ice_icefutures_bgw_sbe_v7_0.originator_user_id.dissect(buffer, index, packet, parent)

  -- Direct Electronic Access: BooleanEnumNULL
  index, direct_electronic_access = ice_icefutures_bgw_sbe_v7_0.direct_electronic_access.dissect(buffer, index, packet, parent)

  -- Trading Capacity: TradingCapacityEnumNULL
  index, trading_capacity = ice_icefutures_bgw_sbe_v7_0.trading_capacity.dissect(buffer, index, packet, parent)

  -- Liquidity Provision: BooleanEnumNULL
  index, liquidity_provision = ice_icefutures_bgw_sbe_v7_0.liquidity_provision.dissect(buffer, index, packet, parent)

  -- Commodity Deriv Indicator: BooleanEnumNULL
  index, commodity_deriv_indicator = ice_icefutures_bgw_sbe_v7_0.commodity_deriv_indicator.dissect(buffer, index, packet, parent)

  -- Investment Decision: int64NULL
  index, investment_decision = ice_icefutures_bgw_sbe_v7_0.investment_decision.dissect(buffer, index, packet, parent)

  -- Execution Decision: int64NULL
  index, execution_decision = ice_icefutures_bgw_sbe_v7_0.execution_decision.dissect(buffer, index, packet, parent)

  -- Client Id Code: int64NULL
  index, client_id_code = ice_icefutures_bgw_sbe_v7_0.client_id_code.dissect(buffer, index, packet, parent)

  -- Mifid Id: int64NULL
  index, mifid_id = ice_icefutures_bgw_sbe_v7_0.mifid_id.dissect(buffer, index, packet, parent)

  -- Raw Data: string50
  index, raw_data = ice_icefutures_bgw_sbe_v7_0.raw_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trader Logon Request Message
ice_icefutures_bgw_sbe_v7_0.trader_logon_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.trader_logon_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.trader_logon_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.trader_logon_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.trader_logon_request_message.fields(buffer, offset, packet, parent)
  end
end

-- I P Report Message no Users Group
ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_group = {}

-- Size: I P Report Message no Users Group
ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_group.size =
  ice_icefutures_bgw_sbe_v7_0.user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.success.size + 
  ice_icefutures_bgw_sbe_v7_0.ip_address.size + 
  ice_icefutures_bgw_sbe_v7_0.port.size + 
  ice_icefutures_bgw_sbe_v7_0.ip_session_token.size

-- Display: I P Report Message no Users Group
ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: I P Report Message no Users Group
ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_group.fields = function(buffer, offset, packet, parent, i_p_report_message_no_users_group_index)
  local index = offset

  -- Implicit I P Report Message no Users Group Index
  if i_p_report_message_no_users_group_index ~= nil and show.i_p_report_message_no_users_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_report_message_no_users_group_index, i_p_report_message_no_users_group_index)
    iteration:set_generated()
  end

  -- User Id: string20
  index, user_id = ice_icefutures_bgw_sbe_v7_0.user_id.dissect(buffer, index, packet, parent)

  -- Success: BooleanEnumNULL
  index, success = ice_icefutures_bgw_sbe_v7_0.success.dissect(buffer, index, packet, parent)

  -- Ip Address: string15NULL
  index, ip_address = ice_icefutures_bgw_sbe_v7_0.ip_address.dissect(buffer, index, packet, parent)

  -- Port: int16NULL
  index, port = ice_icefutures_bgw_sbe_v7_0.port.dissect(buffer, index, packet, parent)

  -- Ip Session Token: string50NULL
  index, ip_session_token = ice_icefutures_bgw_sbe_v7_0.ip_session_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: I P Report Message no Users Group
ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_group.dissect = function(buffer, offset, packet, parent, i_p_report_message_no_users_group_index)
  if show.i_p_report_message_no_users_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_report_message_no_users_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_group.fields(buffer, offset, packet, parent, i_p_report_message_no_users_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_group.fields(buffer, offset, packet, parent, i_p_report_message_no_users_group_index)
  end
end

-- I P Report Message no Users Groups
ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_groups = {}

-- Calculate size of: I P Report Message no Users Groups
ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local i_p_report_message_no_users_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + i_p_report_message_no_users_group_count * 88

  return index
end

-- Display: I P Report Message no Users Groups
ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: I P Report Message no Users Groups
ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: I P Report Message no Users Group
  for i_p_report_message_no_users_group_index = 1, num_in_group do
    index, i_p_report_message_no_users_group = ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_group.dissect(buffer, index, packet, parent, i_p_report_message_no_users_group_index)
  end

  return index
end

-- Dissect: I P Report Message no Users Groups
ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_groups.dissect = function(buffer, offset, packet, parent)
  if show.i_p_report_message_no_users_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_report_message_no_users_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_groups.fields(buffer, offset, packet, parent)
  end
end

-- Ip Report Message
ice_icefutures_bgw_sbe_v7_0.ip_report_message = {}

-- Calculate size of: Ip Report Message
ice_icefutures_bgw_sbe_v7_0.ip_report_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_groups.size(buffer, offset + index)

  return index
end

-- Display: Ip Report Message
ice_icefutures_bgw_sbe_v7_0.ip_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ip Report Message
ice_icefutures_bgw_sbe_v7_0.ip_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  -- I P Report Message no Users Groups: Struct of 2 fields
  index, i_p_report_message_no_users_groups = ice_icefutures_bgw_sbe_v7_0.i_p_report_message_no_users_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ip Report Message
ice_icefutures_bgw_sbe_v7_0.ip_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.ip_report_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.ip_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.ip_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.ip_report_message.fields(buffer, offset, packet, parent)
  end
end

-- I P Request Message no Users Group
ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_group = {}

-- Size: I P Request Message no Users Group
ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_group.size =
  ice_icefutures_bgw_sbe_v7_0.user_id.size

-- Display: I P Request Message no Users Group
ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: I P Request Message no Users Group
ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_group.fields = function(buffer, offset, packet, parent, i_p_request_message_no_users_group_index)
  local index = offset

  -- Implicit I P Request Message no Users Group Index
  if i_p_request_message_no_users_group_index ~= nil and show.i_p_request_message_no_users_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_request_message_no_users_group_index, i_p_request_message_no_users_group_index)
    iteration:set_generated()
  end

  -- User Id: string20
  index, user_id = ice_icefutures_bgw_sbe_v7_0.user_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: I P Request Message no Users Group
ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_group.dissect = function(buffer, offset, packet, parent, i_p_request_message_no_users_group_index)
  if show.i_p_request_message_no_users_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_request_message_no_users_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_group.fields(buffer, offset, packet, parent, i_p_request_message_no_users_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_group.fields(buffer, offset, packet, parent, i_p_request_message_no_users_group_index)
  end
end

-- I P Request Message no Users Groups
ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_groups = {}

-- Calculate size of: I P Request Message no Users Groups
ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local i_p_request_message_no_users_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + i_p_request_message_no_users_group_count * 20

  return index
end

-- Display: I P Request Message no Users Groups
ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: I P Request Message no Users Groups
ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: I P Request Message no Users Group
  for i_p_request_message_no_users_group_index = 1, num_in_group do
    index, i_p_request_message_no_users_group = ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_group.dissect(buffer, index, packet, parent, i_p_request_message_no_users_group_index)
  end

  return index
end

-- Dissect: I P Request Message no Users Groups
ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_groups.dissect = function(buffer, offset, packet, parent)
  if show.i_p_request_message_no_users_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.i_p_request_message_no_users_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_groups.fields(buffer, offset, packet, parent)
  end
end

-- Ip Request Message
ice_icefutures_bgw_sbe_v7_0.ip_request_message = {}

-- Calculate size of: Ip Request Message
ice_icefutures_bgw_sbe_v7_0.ip_request_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.client_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_groups.size(buffer, offset + index)

  return index
end

-- Display: Ip Request Message
ice_icefutures_bgw_sbe_v7_0.ip_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ip Request Message
ice_icefutures_bgw_sbe_v7_0.ip_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Id: int32
  index, client_id = ice_icefutures_bgw_sbe_v7_0.client_id.dissect(buffer, index, packet, parent)

  -- I P Request Message no Users Groups: Struct of 2 fields
  index, i_p_request_message_no_users_groups = ice_icefutures_bgw_sbe_v7_0.i_p_request_message_no_users_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ip Request Message
ice_icefutures_bgw_sbe_v7_0.ip_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.ip_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.ip_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.ip_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.ip_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Product Group
ice_icefutures_bgw_sbe_v7_0.product_group = {}

-- Calculate size of: Product Group
ice_icefutures_bgw_sbe_v7_0.product_group.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.product_group_length.size

  local product_group_length = buffer(offset + index - 2, 2):le_uint()

  if product_group_length > 0 then
    -- Parse runtime size of: Product Group Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Product Group
ice_icefutures_bgw_sbe_v7_0.product_group.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Product Group
ice_icefutures_bgw_sbe_v7_0.product_group.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Group Length: uint16
  index, product_group_length = ice_icefutures_bgw_sbe_v7_0.product_group_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Product Group Data
  local product_group_data = nil

  local product_group_data_exists = product_group_length > 0

  if product_group_data_exists then

    -- Runtime Size Of: Product Group Data
    index, product_group_data = ice_icefutures_bgw_sbe_v7_0.product_group_data.dissect(buffer, index, packet, parent, product_group_length)
  end

  -- Composite value
  local product_group = product_group_data

  return index, product_group
end

-- Dissect: Product Group
ice_icefutures_bgw_sbe_v7_0.product_group.dissect = function(buffer, offset, packet, parent)
  if show.product_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_group, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.product_group.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.product_group.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.product_group.fields(buffer, offset, packet, parent)
  end
end

-- Product Desc
ice_icefutures_bgw_sbe_v7_0.product_desc = {}

-- Calculate size of: Product Desc
ice_icefutures_bgw_sbe_v7_0.product_desc.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.product_desc_length.size

  local product_desc_length = buffer(offset + index - 2, 2):le_uint()

  if product_desc_length > 0 then
    -- Parse runtime size of: Product Desc Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Product Desc
ice_icefutures_bgw_sbe_v7_0.product_desc.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Product Desc
ice_icefutures_bgw_sbe_v7_0.product_desc.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Desc Length: uint16
  index, product_desc_length = ice_icefutures_bgw_sbe_v7_0.product_desc_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Product Desc Data
  local product_desc_data = nil

  local product_desc_data_exists = product_desc_length > 0

  if product_desc_data_exists then

    -- Runtime Size Of: Product Desc Data
    index, product_desc_data = ice_icefutures_bgw_sbe_v7_0.product_desc_data.dissect(buffer, index, packet, parent, product_desc_length)
  end

  -- Composite value
  local product_desc = product_desc_data

  return index, product_desc
end

-- Dissect: Product Desc
ice_icefutures_bgw_sbe_v7_0.product_desc.dissect = function(buffer, offset, packet, parent)
  if show.product_desc then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_desc, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.product_desc.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.product_desc.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.product_desc.fields(buffer, offset, packet, parent)
  end
end

-- Product Name
ice_icefutures_bgw_sbe_v7_0.product_name = {}

-- Calculate size of: Product Name
ice_icefutures_bgw_sbe_v7_0.product_name.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.product_name_length.size

  local product_name_length = buffer(offset + index - 2, 2):le_uint()

  if product_name_length > 0 then
    -- Parse runtime size of: Product Name Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Product Name
ice_icefutures_bgw_sbe_v7_0.product_name.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Product Name
ice_icefutures_bgw_sbe_v7_0.product_name.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Name Length: uint16
  index, product_name_length = ice_icefutures_bgw_sbe_v7_0.product_name_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Product Name Data
  local product_name_data = nil

  local product_name_data_exists = product_name_length > 0

  if product_name_data_exists then

    -- Runtime Size Of: Product Name Data
    index, product_name_data = ice_icefutures_bgw_sbe_v7_0.product_name_data.dissect(buffer, index, packet, parent, product_name_length)
  end

  -- Composite value
  local product_name = product_name_data

  return index, product_name
end

-- Dissect: Product Name
ice_icefutures_bgw_sbe_v7_0.product_name.dissect = function(buffer, offset, packet, parent)
  if show.product_name then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.product_name, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.product_name.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.product_name.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.product_name.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Report Product Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_product_message = {}

-- Calculate size of: Security Definition Report Product Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_product_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.security_req_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_response_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_response_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.no_rpts.size

  index = index + ice_icefutures_bgw_sbe_v7_0.list_seq_no.size

  index = index + ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.product_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum.size

  index = index + ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum.size

  index = index + ice_icefutures_bgw_sbe_v7_0.stops_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.options_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.uds_options_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.uds_futures_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.mass_quotes_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.rfq_futures_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.rfq_options_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.crossing_order_futures_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.crossing_order_options_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.self_block_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.product_name.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.product_desc.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.product_group.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Report Product Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_product_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Product Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_product_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Req Id: int32
  index, security_req_id = ice_icefutures_bgw_sbe_v7_0.security_req_id.dissect(buffer, index, packet, parent)

  -- Security Response Type: SecurityResponseTypeEnum
  index, security_response_type = ice_icefutures_bgw_sbe_v7_0.security_response_type.dissect(buffer, index, packet, parent)

  -- Security Response Id: int32
  index, security_response_id = ice_icefutures_bgw_sbe_v7_0.security_response_id.dissect(buffer, index, packet, parent)

  -- Market Type I D int 32: int32
  index, market_type_i_d_int_32 = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.dissect(buffer, index, packet, parent)

  -- No Rpts: int32
  index, no_rpts = ice_icefutures_bgw_sbe_v7_0.no_rpts.dissect(buffer, index, packet, parent)

  -- List Seq No: int32
  index, list_seq_no = ice_icefutures_bgw_sbe_v7_0.list_seq_no.dissect(buffer, index, packet, parent)

  -- Product I D int 32: int32
  index, product_i_d_int_32 = ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32.dissect(buffer, index, packet, parent)

  -- Product Type: string12NULL
  index, product_type = ice_icefutures_bgw_sbe_v7_0.product_type.dissect(buffer, index, packet, parent)

  -- Mifid Regulated Market Boolean Enum: BooleanEnum
  index, mifid_regulated_market_boolean_enum = ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum.dissect(buffer, index, packet, parent)

  -- Test Market Indicator Boolean Enum: BooleanEnum
  index, test_market_indicator_boolean_enum = ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum.dissect(buffer, index, packet, parent)

  -- Stops Allowed: BooleanEnumNULL
  index, stops_allowed = ice_icefutures_bgw_sbe_v7_0.stops_allowed.dissect(buffer, index, packet, parent)

  -- Options Allowed: BooleanEnumNULL
  index, options_allowed = ice_icefutures_bgw_sbe_v7_0.options_allowed.dissect(buffer, index, packet, parent)

  -- Uds Options Allowed: BooleanEnumNULL
  index, uds_options_allowed = ice_icefutures_bgw_sbe_v7_0.uds_options_allowed.dissect(buffer, index, packet, parent)

  -- Uds Futures Allowed: BooleanEnumNULL
  index, uds_futures_allowed = ice_icefutures_bgw_sbe_v7_0.uds_futures_allowed.dissect(buffer, index, packet, parent)

  -- Mass Quotes Allowed: BooleanEnumNULL
  index, mass_quotes_allowed = ice_icefutures_bgw_sbe_v7_0.mass_quotes_allowed.dissect(buffer, index, packet, parent)

  -- Rfq Futures Allowed: BooleanEnumNULL
  index, rfq_futures_allowed = ice_icefutures_bgw_sbe_v7_0.rfq_futures_allowed.dissect(buffer, index, packet, parent)

  -- Rfq Options Allowed: BooleanEnumNULL
  index, rfq_options_allowed = ice_icefutures_bgw_sbe_v7_0.rfq_options_allowed.dissect(buffer, index, packet, parent)

  -- Crossing Order Futures Allowed: BooleanEnumNULL
  index, crossing_order_futures_allowed = ice_icefutures_bgw_sbe_v7_0.crossing_order_futures_allowed.dissect(buffer, index, packet, parent)

  -- Crossing Order Options Allowed: BooleanEnumNULL
  index, crossing_order_options_allowed = ice_icefutures_bgw_sbe_v7_0.crossing_order_options_allowed.dissect(buffer, index, packet, parent)

  -- Self Block Allowed: BooleanEnumNULL
  index, self_block_allowed = ice_icefutures_bgw_sbe_v7_0.self_block_allowed.dissect(buffer, index, packet, parent)

  -- Product Name: Struct of 2 fields
  index, product_name = ice_icefutures_bgw_sbe_v7_0.product_name.dissect(buffer, index, packet, parent)

  -- Product Desc: Struct of 2 fields
  index, product_desc = ice_icefutures_bgw_sbe_v7_0.product_desc.dissect(buffer, index, packet, parent)

  -- Product Group: Struct of 2 fields
  index, product_group = ice_icefutures_bgw_sbe_v7_0.product_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Report Product Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_product_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_product_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_product_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_product_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_product_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Request Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_message = {}

-- Size: Security Definition Request Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_message.size =
  ice_icefutures_bgw_sbe_v7_0.security_req_id.size + 
  ice_icefutures_bgw_sbe_v7_0.security_request_type.size + 
  ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.size

-- Display: Security Definition Request Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Req Id: int32
  index, security_req_id = ice_icefutures_bgw_sbe_v7_0.security_req_id.dissect(buffer, index, packet, parent)

  -- Security Request Type: SecurityRequestTypeEnum
  index, security_request_type = ice_icefutures_bgw_sbe_v7_0.security_request_type.dissect(buffer, index, packet, parent)

  -- Market Type I D int 32: int32
  index, market_type_i_d_int_32 = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Message
ice_icefutures_bgw_sbe_v7_0.security_definition_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Reject Message
ice_icefutures_bgw_sbe_v7_0.security_definition_reject_message = {}

-- Calculate size of: Security Definition Reject Message
ice_icefutures_bgw_sbe_v7_0.security_definition_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.security_req_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_response_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_request_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Reject Message
ice_icefutures_bgw_sbe_v7_0.security_definition_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Reject Message
ice_icefutures_bgw_sbe_v7_0.security_definition_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Req Id: int32
  index, security_req_id = ice_icefutures_bgw_sbe_v7_0.security_req_id.dissect(buffer, index, packet, parent)

  -- Security Response Type: SecurityResponseTypeEnum
  index, security_response_type = ice_icefutures_bgw_sbe_v7_0.security_response_type.dissect(buffer, index, packet, parent)

  -- Security Request Type: SecurityRequestTypeEnum
  index, security_request_type = ice_icefutures_bgw_sbe_v7_0.security_request_type.dissect(buffer, index, packet, parent)

  -- Market Type I D int 32: int32
  index, market_type_i_d_int_32 = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.dissect(buffer, index, packet, parent)

  -- Security Type Security Type Enum Null: SecurityTypeEnumNULL
  index, security_type_security_type_enum_null = ice_icefutures_bgw_sbe_v7_0.security_type_security_type_enum_null.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Reject Message
ice_icefutures_bgw_sbe_v7_0.security_definition_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_reject_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Home Exchange
ice_icefutures_bgw_sbe_v7_0.home_exchange = {}

-- Calculate size of: Home Exchange
ice_icefutures_bgw_sbe_v7_0.home_exchange.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.home_exchange_length.size

  local home_exchange_length = buffer(offset + index - 2, 2):le_uint()

  if home_exchange_length > 0 then
    -- Parse runtime size of: Home Exchange Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Home Exchange
ice_icefutures_bgw_sbe_v7_0.home_exchange.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Home Exchange
ice_icefutures_bgw_sbe_v7_0.home_exchange.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Home Exchange Length: uint16
  index, home_exchange_length = ice_icefutures_bgw_sbe_v7_0.home_exchange_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Home Exchange Data
  local home_exchange_data = nil

  local home_exchange_data_exists = home_exchange_length > 0

  if home_exchange_data_exists then

    -- Runtime Size Of: Home Exchange Data
    index, home_exchange_data = ice_icefutures_bgw_sbe_v7_0.home_exchange_data.dissect(buffer, index, packet, parent, home_exchange_length)
  end

  -- Composite value
  local home_exchange = home_exchange_data

  return index, home_exchange
end

-- Dissect: Home Exchange
ice_icefutures_bgw_sbe_v7_0.home_exchange.dissect = function(buffer, offset, packet, parent)
  if show.home_exchange then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.home_exchange, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.home_exchange.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.home_exchange.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.home_exchange.fields(buffer, offset, packet, parent)
  end
end

-- Physical Code
ice_icefutures_bgw_sbe_v7_0.physical_code = {}

-- Calculate size of: Physical Code
ice_icefutures_bgw_sbe_v7_0.physical_code.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.physical_code_length.size

  local physical_code_length = buffer(offset + index - 2, 2):le_uint()

  if physical_code_length > 0 then
    -- Parse runtime size of: Physical Code Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Physical Code
ice_icefutures_bgw_sbe_v7_0.physical_code.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Physical Code
ice_icefutures_bgw_sbe_v7_0.physical_code.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Physical Code Length: uint16
  index, physical_code_length = ice_icefutures_bgw_sbe_v7_0.physical_code_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Physical Code Data
  local physical_code_data = nil

  local physical_code_data_exists = physical_code_length > 0

  if physical_code_data_exists then

    -- Runtime Size Of: Physical Code Data
    index, physical_code_data = ice_icefutures_bgw_sbe_v7_0.physical_code_data.dissect(buffer, index, packet, parent, physical_code_length)
  end

  -- Composite value
  local physical_code = physical_code_data

  return index, physical_code
end

-- Dissect: Physical Code
ice_icefutures_bgw_sbe_v7_0.physical_code.dissect = function(buffer, offset, packet, parent)
  if show.physical_code then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.physical_code, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.physical_code.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.physical_code.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.physical_code.fields(buffer, offset, packet, parent)
  end
end

-- Security Exchange
ice_icefutures_bgw_sbe_v7_0.security_exchange = {}

-- Calculate size of: Security Exchange
ice_icefutures_bgw_sbe_v7_0.security_exchange.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.security_exchange_length.size

  local security_exchange_length = buffer(offset + index - 2, 2):le_uint()

  if security_exchange_length > 0 then
    -- Parse runtime size of: Security Exchange Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Security Exchange
ice_icefutures_bgw_sbe_v7_0.security_exchange.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Security Exchange
ice_icefutures_bgw_sbe_v7_0.security_exchange.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Exchange Length: uint16
  index, security_exchange_length = ice_icefutures_bgw_sbe_v7_0.security_exchange_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Security Exchange Data
  local security_exchange_data = nil

  local security_exchange_data_exists = security_exchange_length > 0

  if security_exchange_data_exists then

    -- Runtime Size Of: Security Exchange Data
    index, security_exchange_data = ice_icefutures_bgw_sbe_v7_0.security_exchange_data.dissect(buffer, index, packet, parent, security_exchange_length)
  end

  -- Composite value
  local security_exchange = security_exchange_data

  return index, security_exchange
end

-- Dissect: Security Exchange
ice_icefutures_bgw_sbe_v7_0.security_exchange.dissect = function(buffer, offset, packet, parent)
  if show.security_exchange then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_exchange, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.security_exchange.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_exchange.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_exchange.fields(buffer, offset, packet, parent)
  end
end

-- Hub Alias
ice_icefutures_bgw_sbe_v7_0.hub_alias = {}

-- Calculate size of: Hub Alias
ice_icefutures_bgw_sbe_v7_0.hub_alias.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.hub_alias_length.size

  local hub_alias_length = buffer(offset + index - 2, 2):le_uint()

  if hub_alias_length > 0 then
    -- Parse runtime size of: Hub Alias Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Hub Alias
ice_icefutures_bgw_sbe_v7_0.hub_alias.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Hub Alias
ice_icefutures_bgw_sbe_v7_0.hub_alias.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hub Alias Length: uint16
  index, hub_alias_length = ice_icefutures_bgw_sbe_v7_0.hub_alias_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Hub Alias Data
  local hub_alias_data = nil

  local hub_alias_data_exists = hub_alias_length > 0

  if hub_alias_data_exists then

    -- Runtime Size Of: Hub Alias Data
    index, hub_alias_data = ice_icefutures_bgw_sbe_v7_0.hub_alias_data.dissect(buffer, index, packet, parent, hub_alias_length)
  end

  -- Composite value
  local hub_alias = hub_alias_data

  return index, hub_alias
end

-- Dissect: Hub Alias
ice_icefutures_bgw_sbe_v7_0.hub_alias.dissect = function(buffer, offset, packet, parent)
  if show.hub_alias then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_alias, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.hub_alias.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.hub_alias.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.hub_alias.fields(buffer, offset, packet, parent)
  end
end

-- Hub Name
ice_icefutures_bgw_sbe_v7_0.hub_name = {}

-- Calculate size of: Hub Name
ice_icefutures_bgw_sbe_v7_0.hub_name.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.hub_name_length.size

  local hub_name_length = buffer(offset + index - 2, 2):le_uint()

  if hub_name_length > 0 then
    -- Parse runtime size of: Hub Name Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Hub Name
ice_icefutures_bgw_sbe_v7_0.hub_name.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Hub Name
ice_icefutures_bgw_sbe_v7_0.hub_name.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hub Name Length: uint16
  index, hub_name_length = ice_icefutures_bgw_sbe_v7_0.hub_name_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Hub Name Data
  local hub_name_data = nil

  local hub_name_data_exists = hub_name_length > 0

  if hub_name_data_exists then

    -- Runtime Size Of: Hub Name Data
    index, hub_name_data = ice_icefutures_bgw_sbe_v7_0.hub_name_data.dissect(buffer, index, packet, parent, hub_name_length)
  end

  -- Composite value
  local hub_name = hub_name_data

  return index, hub_name
end

-- Dissect: Hub Name
ice_icefutures_bgw_sbe_v7_0.hub_name.dissect = function(buffer, offset, packet, parent)
  if show.hub_name then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.hub_name, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.hub_name.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.hub_name.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.hub_name.fields(buffer, offset, packet, parent)
  end
end

-- Strip Name
ice_icefutures_bgw_sbe_v7_0.strip_name = {}

-- Calculate size of: Strip Name
ice_icefutures_bgw_sbe_v7_0.strip_name.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.strip_name_length.size

  local strip_name_length = buffer(offset + index - 2, 2):le_uint()

  if strip_name_length > 0 then
    -- Parse runtime size of: Strip Name Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Strip Name
ice_icefutures_bgw_sbe_v7_0.strip_name.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Strip Name
ice_icefutures_bgw_sbe_v7_0.strip_name.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strip Name Length: uint16
  index, strip_name_length = ice_icefutures_bgw_sbe_v7_0.strip_name_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Strip Name Data
  local strip_name_data = nil

  local strip_name_data_exists = strip_name_length > 0

  if strip_name_data_exists then

    -- Runtime Size Of: Strip Name Data
    index, strip_name_data = ice_icefutures_bgw_sbe_v7_0.strip_name_data.dissect(buffer, index, packet, parent, strip_name_length)
  end

  -- Composite value
  local strip_name = strip_name_data

  return index, strip_name
end

-- Dissect: Strip Name
ice_icefutures_bgw_sbe_v7_0.strip_name.dissect = function(buffer, offset, packet, parent)
  if show.strip_name then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.strip_name, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.strip_name.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.strip_name.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.strip_name.fields(buffer, offset, packet, parent)
  end
end

-- Price Unit
ice_icefutures_bgw_sbe_v7_0.price_unit = {}

-- Calculate size of: Price Unit
ice_icefutures_bgw_sbe_v7_0.price_unit.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.price_unit_length.size

  local price_unit_length = buffer(offset + index - 2, 2):le_uint()

  if price_unit_length > 0 then
    -- Parse runtime size of: Price Unit Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Price Unit
ice_icefutures_bgw_sbe_v7_0.price_unit.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Price Unit
ice_icefutures_bgw_sbe_v7_0.price_unit.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Unit Length: uint16
  index, price_unit_length = ice_icefutures_bgw_sbe_v7_0.price_unit_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Price Unit Data
  local price_unit_data = nil

  local price_unit_data_exists = price_unit_length > 0

  if price_unit_data_exists then

    -- Runtime Size Of: Price Unit Data
    index, price_unit_data = ice_icefutures_bgw_sbe_v7_0.price_unit_data.dissect(buffer, index, packet, parent, price_unit_length)
  end

  -- Composite value
  local price_unit = price_unit_data

  return index, price_unit
end

-- Dissect: Price Unit
ice_icefutures_bgw_sbe_v7_0.price_unit.dissect = function(buffer, offset, packet, parent)
  if show.price_unit then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.price_unit, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.price_unit.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.price_unit.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.price_unit.fields(buffer, offset, packet, parent)
  end
end

-- Security Desc
ice_icefutures_bgw_sbe_v7_0.security_desc = {}

-- Calculate size of: Security Desc
ice_icefutures_bgw_sbe_v7_0.security_desc.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.security_desc_length.size

  local security_desc_length = buffer(offset + index - 2, 2):le_uint()

  if security_desc_length > 0 then
    -- Parse runtime size of: Security Desc Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Security Desc
ice_icefutures_bgw_sbe_v7_0.security_desc.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Security Desc
ice_icefutures_bgw_sbe_v7_0.security_desc.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Desc Length: uint16
  index, security_desc_length = ice_icefutures_bgw_sbe_v7_0.security_desc_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Security Desc Data
  local security_desc_data = nil

  local security_desc_data_exists = security_desc_length > 0

  if security_desc_data_exists then

    -- Runtime Size Of: Security Desc Data
    index, security_desc_data = ice_icefutures_bgw_sbe_v7_0.security_desc_data.dissect(buffer, index, packet, parent, security_desc_length)
  end

  -- Composite value
  local security_desc = security_desc_data

  return index, security_desc
end

-- Dissect: Security Desc
ice_icefutures_bgw_sbe_v7_0.security_desc.dissect = function(buffer, offset, packet, parent)
  if show.security_desc then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_desc, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.security_desc.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_desc.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_desc.fields(buffer, offset, packet, parent)
  end
end

-- Cleared Alias
ice_icefutures_bgw_sbe_v7_0.cleared_alias = {}

-- Calculate size of: Cleared Alias
ice_icefutures_bgw_sbe_v7_0.cleared_alias.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.cleared_alias_length.size

  local cleared_alias_length = buffer(offset + index - 2, 2):le_uint()

  if cleared_alias_length > 0 then
    -- Parse runtime size of: Cleared Alias Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Cleared Alias
ice_icefutures_bgw_sbe_v7_0.cleared_alias.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Cleared Alias
ice_icefutures_bgw_sbe_v7_0.cleared_alias.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cleared Alias Length: uint16
  index, cleared_alias_length = ice_icefutures_bgw_sbe_v7_0.cleared_alias_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Cleared Alias Data
  local cleared_alias_data = nil

  local cleared_alias_data_exists = cleared_alias_length > 0

  if cleared_alias_data_exists then

    -- Runtime Size Of: Cleared Alias Data
    index, cleared_alias_data = ice_icefutures_bgw_sbe_v7_0.cleared_alias_data.dissect(buffer, index, packet, parent, cleared_alias_length)
  end

  -- Composite value
  local cleared_alias = cleared_alias_data

  return index, cleared_alias
end

-- Dissect: Cleared Alias
ice_icefutures_bgw_sbe_v7_0.cleared_alias.dissect = function(buffer, offset, packet, parent)
  if show.cleared_alias then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.cleared_alias, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.cleared_alias.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.cleared_alias.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.cleared_alias.fields(buffer, offset, packet, parent)
  end
end

-- Price Denomination
ice_icefutures_bgw_sbe_v7_0.price_denomination = {}

-- Calculate size of: Price Denomination
ice_icefutures_bgw_sbe_v7_0.price_denomination.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.price_denomination_length.size

  local price_denomination_length = buffer(offset + index - 2, 2):le_uint()

  if price_denomination_length > 0 then
    -- Parse runtime size of: Price Denomination Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Price Denomination
ice_icefutures_bgw_sbe_v7_0.price_denomination.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Price Denomination
ice_icefutures_bgw_sbe_v7_0.price_denomination.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Denomination Length: uint16
  index, price_denomination_length = ice_icefutures_bgw_sbe_v7_0.price_denomination_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Price Denomination Data
  local price_denomination_data = nil

  local price_denomination_data_exists = price_denomination_length > 0

  if price_denomination_data_exists then

    -- Runtime Size Of: Price Denomination Data
    index, price_denomination_data = ice_icefutures_bgw_sbe_v7_0.price_denomination_data.dissect(buffer, index, packet, parent, price_denomination_length)
  end

  -- Composite value
  local price_denomination = price_denomination_data

  return index, price_denomination
end

-- Dissect: Price Denomination
ice_icefutures_bgw_sbe_v7_0.price_denomination.dissect = function(buffer, offset, packet, parent)
  if show.price_denomination then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.price_denomination, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.price_denomination.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.price_denomination.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.price_denomination.fields(buffer, offset, packet, parent)
  end
end

-- Unit Of Measure
ice_icefutures_bgw_sbe_v7_0.unit_of_measure = {}

-- Calculate size of: Unit Of Measure
ice_icefutures_bgw_sbe_v7_0.unit_of_measure.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.unit_of_measure_length.size

  local unit_of_measure_length = buffer(offset + index - 2, 2):le_uint()

  if unit_of_measure_length > 0 then
    -- Parse runtime size of: Unit Of Measure Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Unit Of Measure
ice_icefutures_bgw_sbe_v7_0.unit_of_measure.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Unit Of Measure
ice_icefutures_bgw_sbe_v7_0.unit_of_measure.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Of Measure Length: uint16
  index, unit_of_measure_length = ice_icefutures_bgw_sbe_v7_0.unit_of_measure_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Unit Of Measure Data
  local unit_of_measure_data = nil

  local unit_of_measure_data_exists = unit_of_measure_length > 0

  if unit_of_measure_data_exists then

    -- Runtime Size Of: Unit Of Measure Data
    index, unit_of_measure_data = ice_icefutures_bgw_sbe_v7_0.unit_of_measure_data.dissect(buffer, index, packet, parent, unit_of_measure_length)
  end

  -- Composite value
  local unit_of_measure = unit_of_measure_data

  return index, unit_of_measure
end

-- Dissect: Unit Of Measure
ice_icefutures_bgw_sbe_v7_0.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  if show.unit_of_measure then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.unit_of_measure, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.unit_of_measure.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.unit_of_measure.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.unit_of_measure.fields(buffer, offset, packet, parent)
  end
end

-- Security Id
ice_icefutures_bgw_sbe_v7_0.security_id = {}

-- Calculate size of: Security Id
ice_icefutures_bgw_sbe_v7_0.security_id.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.security_id_length.size

  local security_id_length = buffer(offset + index - 2, 2):le_uint()

  if security_id_length > 0 then
    -- Parse runtime size of: Security Id Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Security Id
ice_icefutures_bgw_sbe_v7_0.security_id.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Security Id
ice_icefutures_bgw_sbe_v7_0.security_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id Length: uint16
  index, security_id_length = ice_icefutures_bgw_sbe_v7_0.security_id_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Security Id Data
  local security_id_data = nil

  local security_id_data_exists = security_id_length > 0

  if security_id_data_exists then

    -- Runtime Size Of: Security Id Data
    index, security_id_data = ice_icefutures_bgw_sbe_v7_0.security_id_data.dissect(buffer, index, packet, parent, security_id_length)
  end

  -- Composite value
  local security_id = security_id_data

  return index, security_id
end

-- Dissect: Security Id
ice_icefutures_bgw_sbe_v7_0.security_id.dissect = function(buffer, offset, packet, parent)
  if show.security_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_id, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.security_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_id.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_id.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Report Message no Security Alt I D Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_group = {}

-- Size: Security Definition Report Message no Security Alt I D Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_group.size =
  ice_icefutures_bgw_sbe_v7_0.security_alt_id.size + 
  ice_icefutures_bgw_sbe_v7_0.security_alt_id_source.size

-- Display: Security Definition Report Message no Security Alt I D Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Message no Security Alt I D Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_group.fields = function(buffer, offset, packet, parent, security_definition_report_message_no_security_alt_i_d_group_index)
  local index = offset

  -- Implicit Security Definition Report Message no Security Alt I D Group Index
  if security_definition_report_message_no_security_alt_i_d_group_index ~= nil and show.security_definition_report_message_no_security_alt_i_d_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_security_alt_i_d_group_index, security_definition_report_message_no_security_alt_i_d_group_index)
    iteration:set_generated()
  end

  -- Security Alt Id: string30NULL
  index, security_alt_id = ice_icefutures_bgw_sbe_v7_0.security_alt_id.dissect(buffer, index, packet, parent)

  -- Security Alt Id Source: string3NULL
  index, security_alt_id_source = ice_icefutures_bgw_sbe_v7_0.security_alt_id_source.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Report Message no Security Alt I D Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_group.dissect = function(buffer, offset, packet, parent, security_definition_report_message_no_security_alt_i_d_group_index)
  if show.security_definition_report_message_no_security_alt_i_d_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_security_alt_i_d_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_group.fields(buffer, offset, packet, parent, security_definition_report_message_no_security_alt_i_d_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_group.fields(buffer, offset, packet, parent, security_definition_report_message_no_security_alt_i_d_group_index)
  end
end

-- Security Definition Report Message no Security Alt I D Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_groups = {}

-- Calculate size of: Security Definition Report Message no Security Alt I D Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local security_definition_report_message_no_security_alt_i_d_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + security_definition_report_message_no_security_alt_i_d_group_count * 33

  return index
end

-- Display: Security Definition Report Message no Security Alt I D Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Message no Security Alt I D Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Security Definition Report Message no Security Alt I D Group
  for security_definition_report_message_no_security_alt_i_d_group_index = 1, num_in_group do
    index, security_definition_report_message_no_security_alt_i_d_group = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_group.dissect(buffer, index, packet, parent, security_definition_report_message_no_security_alt_i_d_group_index)
  end

  return index
end

-- Dissect: Security Definition Report Message no Security Alt I D Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_groups.dissect = function(buffer, offset, packet, parent)
  if show.security_definition_report_message_no_security_alt_i_d_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_security_alt_i_d_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Report Message no Block Details Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_group = {}

-- Size: Security Definition Report Message no Block Details Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_group.size =
  ice_icefutures_bgw_sbe_v7_0.block_details_block_type.size + 
  ice_icefutures_bgw_sbe_v7_0.block_details_trade_type.size + 
  ice_icefutures_bgw_sbe_v7_0.block_details_min_qty.size

-- Display: Security Definition Report Message no Block Details Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Message no Block Details Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_group.fields = function(buffer, offset, packet, parent, security_definition_report_message_no_block_details_group_index)
  local index = offset

  -- Implicit Security Definition Report Message no Block Details Group Index
  if security_definition_report_message_no_block_details_group_index ~= nil and show.security_definition_report_message_no_block_details_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_block_details_group_index, security_definition_report_message_no_block_details_group_index)
    iteration:set_generated()
  end

  -- Block Details Block Type: BlockTypeEnum
  index, block_details_block_type = ice_icefutures_bgw_sbe_v7_0.block_details_block_type.dissect(buffer, index, packet, parent)

  -- Block Details Trade Type: string3NULL
  index, block_details_trade_type = ice_icefutures_bgw_sbe_v7_0.block_details_trade_type.dissect(buffer, index, packet, parent)

  -- Block Details Min Qty: Decimal9
  index, block_details_min_qty = ice_icefutures_bgw_sbe_v7_0.block_details_min_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Report Message no Block Details Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_group.dissect = function(buffer, offset, packet, parent, security_definition_report_message_no_block_details_group_index)
  if show.security_definition_report_message_no_block_details_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_block_details_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_group.fields(buffer, offset, packet, parent, security_definition_report_message_no_block_details_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_group.fields(buffer, offset, packet, parent, security_definition_report_message_no_block_details_group_index)
  end
end

-- Security Definition Report Message no Block Details Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_groups = {}

-- Calculate size of: Security Definition Report Message no Block Details Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local security_definition_report_message_no_block_details_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + security_definition_report_message_no_block_details_group_count * 12

  return index
end

-- Display: Security Definition Report Message no Block Details Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Message no Block Details Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Security Definition Report Message no Block Details Group
  for security_definition_report_message_no_block_details_group_index = 1, num_in_group do
    index, security_definition_report_message_no_block_details_group = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_group.dissect(buffer, index, packet, parent, security_definition_report_message_no_block_details_group_index)
  end

  return index
end

-- Dissect: Security Definition Report Message no Block Details Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_groups.dissect = function(buffer, offset, packet, parent)
  if show.security_definition_report_message_no_block_details_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message_no_block_details_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Report Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message = {}

-- Calculate size of: Security Definition Report Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.security_req_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_response_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_response_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_silo.size

  index = index + ice_icefutures_bgw_sbe_v7_0.no_rpts.size

  index = index + ice_icefutures_bgw_sbe_v7_0.list_seq_no.size

  index = index + ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.cfi_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.maturity_date.size

  index = index + ice_icefutures_bgw_sbe_v7_0.screen_last_trade_date.size

  index = index + ice_icefutures_bgw_sbe_v7_0.contract_multiplier.size

  index = index + ice_icefutures_bgw_sbe_v7_0.start_date.size

  index = index + ice_icefutures_bgw_sbe_v7_0.end_date.size

  index = index + ice_icefutures_bgw_sbe_v7_0.put_or_call.size

  index = index + ice_icefutures_bgw_sbe_v7_0.strike_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_trading_status.size

  index = index + ice_icefutures_bgw_sbe_v7_0.currency.size

  index = index + ice_icefutures_bgw_sbe_v7_0.settl_method.size

  index = index + ice_icefutures_bgw_sbe_v7_0.strike_exercise_style.size

  index = index + ice_icefutures_bgw_sbe_v7_0.increment_qty.size

  index = index + ice_icefutures_bgw_sbe_v7_0.increment_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.min_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.max_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9.size

  index = index + ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9.size

  index = index + ice_icefutures_bgw_sbe_v7_0.screen_tick_value.size

  index = index + ice_icefutures_bgw_sbe_v7_0.block_tick_value.size

  index = index + ice_icefutures_bgw_sbe_v7_0.lot_size.size

  index = index + ice_icefutures_bgw_sbe_v7_0.contract_size.size

  index = index + ice_icefutures_bgw_sbe_v7_0.num_of_decimal_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.num_of_decimal_qty.size

  index = index + ice_icefutures_bgw_sbe_v7_0.granularity.size

  index = index + ice_icefutures_bgw_sbe_v7_0.base_num_lots.size

  index = index + ice_icefutures_bgw_sbe_v7_0.tick_value.size

  index = index + ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.clearable.size

  index = index + ice_icefutures_bgw_sbe_v7_0.hedge_product_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.hedge_market_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.hedge_only.size

  index = index + ice_icefutures_bgw_sbe_v7_0.is_dividend_adjusted.size

  index = index + ice_icefutures_bgw_sbe_v7_0.denominator.size

  index = index + ice_icefutures_bgw_sbe_v7_0.initial_margin.size

  index = index + ice_icefutures_bgw_sbe_v7_0.implied_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.num_of_decimal_strike_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16.size

  index = index + ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9.size

  index = index + ice_icefutures_bgw_sbe_v7_0.strip_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.strip_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.block_only.size

  index = index + ice_icefutures_bgw_sbe_v7_0.flex_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.gt_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.aon_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.flex_strike_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.hub_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.override_block_min.size

  index = index + ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.ref_sprd_product_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.market_transparency_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.non_commoditized_market.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_groups.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_groups.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.security_id.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.unit_of_measure.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.price_denomination.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.cleared_alias.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.security_desc.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.price_unit.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.strip_name.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.hub_name.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.hub_alias.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.security_exchange.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.physical_code.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.home_exchange.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Report Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Req Id: int32
  index, security_req_id = ice_icefutures_bgw_sbe_v7_0.security_req_id.dissect(buffer, index, packet, parent)

  -- Security Response Type: SecurityResponseTypeEnum
  index, security_response_type = ice_icefutures_bgw_sbe_v7_0.security_response_type.dissect(buffer, index, packet, parent)

  -- Security Response Id: int32
  index, security_response_id = ice_icefutures_bgw_sbe_v7_0.security_response_id.dissect(buffer, index, packet, parent)

  -- Market Type I D int 32: int32
  index, market_type_i_d_int_32 = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Exchange Silo: ExchangeSiloEnum
  index, exchange_silo = ice_icefutures_bgw_sbe_v7_0.exchange_silo.dissect(buffer, index, packet, parent)

  -- No Rpts: int32
  index, no_rpts = ice_icefutures_bgw_sbe_v7_0.no_rpts.dissect(buffer, index, packet, parent)

  -- List Seq No: int32
  index, list_seq_no = ice_icefutures_bgw_sbe_v7_0.list_seq_no.dissect(buffer, index, packet, parent)

  -- Underlying Symbol int 32: int32
  index, underlying_symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.underlying_symbol_int_32.dissect(buffer, index, packet, parent)

  -- Cfi Code: string12
  index, cfi_code = ice_icefutures_bgw_sbe_v7_0.cfi_code.dissect(buffer, index, packet, parent)

  -- Security Sub Type int 16 Null: int16NULL
  index, security_sub_type_int_16_null = ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16_null.dissect(buffer, index, packet, parent)

  -- Maturity Date: UTCDateOnlyNULL
  index, maturity_date = ice_icefutures_bgw_sbe_v7_0.maturity_date.dissect(buffer, index, packet, parent)

  -- Screen Last Trade Date: UTCDateOnlyNULL
  index, screen_last_trade_date = ice_icefutures_bgw_sbe_v7_0.screen_last_trade_date.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: int32
  index, contract_multiplier = ice_icefutures_bgw_sbe_v7_0.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Start Date: UTCDateOnlyNULL
  index, start_date = ice_icefutures_bgw_sbe_v7_0.start_date.dissect(buffer, index, packet, parent)

  -- End Date: UTCDateOnlyNULL
  index, end_date = ice_icefutures_bgw_sbe_v7_0.end_date.dissect(buffer, index, packet, parent)

  -- Put Or Call: BooleanEnumNULL
  index, put_or_call = ice_icefutures_bgw_sbe_v7_0.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: Decimal9NULL
  index, strike_price = ice_icefutures_bgw_sbe_v7_0.strike_price.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatusEnum
  index, security_trading_status = ice_icefutures_bgw_sbe_v7_0.security_trading_status.dissect(buffer, index, packet, parent)

  -- Currency: string12NULL
  index, currency = ice_icefutures_bgw_sbe_v7_0.currency.dissect(buffer, index, packet, parent)

  -- Settl Method: SettlMethodEnum
  index, settl_method = ice_icefutures_bgw_sbe_v7_0.settl_method.dissect(buffer, index, packet, parent)

  -- Strike Exercise Style: StrikeExerciseStyleEnumNULL
  index, strike_exercise_style = ice_icefutures_bgw_sbe_v7_0.strike_exercise_style.dissect(buffer, index, packet, parent)

  -- Increment Qty: Decimal9
  index, increment_qty = ice_icefutures_bgw_sbe_v7_0.increment_qty.dissect(buffer, index, packet, parent)

  -- Increment Price: Decimal9
  index, increment_price = ice_icefutures_bgw_sbe_v7_0.increment_price.dissect(buffer, index, packet, parent)

  -- Min Price: Decimal9
  index, min_price = ice_icefutures_bgw_sbe_v7_0.min_price.dissect(buffer, index, packet, parent)

  -- Max Price: Decimal9
  index, max_price = ice_icefutures_bgw_sbe_v7_0.max_price.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Price Decimal 9: Decimal9
  index, off_exchange_increment_price_decimal_9 = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Qty Decimal 9: Decimal9
  index, off_exchange_increment_qty_decimal_9 = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9.dissect(buffer, index, packet, parent)

  -- Screen Tick Value: Decimal9
  index, screen_tick_value = ice_icefutures_bgw_sbe_v7_0.screen_tick_value.dissect(buffer, index, packet, parent)

  -- Block Tick Value: Decimal9
  index, block_tick_value = ice_icefutures_bgw_sbe_v7_0.block_tick_value.dissect(buffer, index, packet, parent)

  -- Lot Size: int32
  index, lot_size = ice_icefutures_bgw_sbe_v7_0.lot_size.dissect(buffer, index, packet, parent)

  -- Contract Size: int32
  index, contract_size = ice_icefutures_bgw_sbe_v7_0.contract_size.dissect(buffer, index, packet, parent)

  -- Num Of Decimal Price: int8
  index, num_of_decimal_price = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_price.dissect(buffer, index, packet, parent)

  -- Num Of Decimal Qty: int8
  index, num_of_decimal_qty = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_qty.dissect(buffer, index, packet, parent)

  -- Granularity: string12
  index, granularity = ice_icefutures_bgw_sbe_v7_0.granularity.dissect(buffer, index, packet, parent)

  -- Base Num Lots: int32NULL
  index, base_num_lots = ice_icefutures_bgw_sbe_v7_0.base_num_lots.dissect(buffer, index, packet, parent)

  -- Tick Value: Decimal9
  index, tick_value = ice_icefutures_bgw_sbe_v7_0.tick_value.dissect(buffer, index, packet, parent)

  -- Product I D int 32: int32
  index, product_i_d_int_32 = ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32.dissect(buffer, index, packet, parent)

  -- Clearable: BooleanEnum
  index, clearable = ice_icefutures_bgw_sbe_v7_0.clearable.dissect(buffer, index, packet, parent)

  -- Hedge Product Id: int32NULL
  index, hedge_product_id = ice_icefutures_bgw_sbe_v7_0.hedge_product_id.dissect(buffer, index, packet, parent)

  -- Hedge Market Id: int32NULL
  index, hedge_market_id = ice_icefutures_bgw_sbe_v7_0.hedge_market_id.dissect(buffer, index, packet, parent)

  -- Hedge Only: BooleanEnumNULL
  index, hedge_only = ice_icefutures_bgw_sbe_v7_0.hedge_only.dissect(buffer, index, packet, parent)

  -- Is Dividend Adjusted: BooleanEnumNULL
  index, is_dividend_adjusted = ice_icefutures_bgw_sbe_v7_0.is_dividend_adjusted.dissect(buffer, index, packet, parent)

  -- Denominator: int32
  index, denominator = ice_icefutures_bgw_sbe_v7_0.denominator.dissect(buffer, index, packet, parent)

  -- Initial Margin: int32
  index, initial_margin = ice_icefutures_bgw_sbe_v7_0.initial_margin.dissect(buffer, index, packet, parent)

  -- Implied Type: charTypeNULL
  index, implied_type = ice_icefutures_bgw_sbe_v7_0.implied_type.dissect(buffer, index, packet, parent)

  -- Num Of Decimal Strike Price: int8NULL
  index, num_of_decimal_strike_price = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_strike_price.dissect(buffer, index, packet, parent)

  -- Num Of Cycles int 16: int16
  index, num_of_cycles_int_16 = ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16.dissect(buffer, index, packet, parent)

  -- Lot Size Multiplier Decimal 9: Decimal9
  index, lot_size_multiplier_decimal_9 = ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9.dissect(buffer, index, packet, parent)

  -- Strip Type: int16
  index, strip_type = ice_icefutures_bgw_sbe_v7_0.strip_type.dissect(buffer, index, packet, parent)

  -- Strip Id: int32
  index, strip_id = ice_icefutures_bgw_sbe_v7_0.strip_id.dissect(buffer, index, packet, parent)

  -- Block Only: BooleanEnumNULL
  index, block_only = ice_icefutures_bgw_sbe_v7_0.block_only.dissect(buffer, index, packet, parent)

  -- Flex Allowed: BooleanEnumNULL
  index, flex_allowed = ice_icefutures_bgw_sbe_v7_0.flex_allowed.dissect(buffer, index, packet, parent)

  -- Gt Allowed: BooleanEnumNULL
  index, gt_allowed = ice_icefutures_bgw_sbe_v7_0.gt_allowed.dissect(buffer, index, packet, parent)

  -- Aon Allowed: BooleanEnumNULL
  index, aon_allowed = ice_icefutures_bgw_sbe_v7_0.aon_allowed.dissect(buffer, index, packet, parent)

  -- Mifid Regulated Market Boolean Enum Null: BooleanEnumNULL
  index, mifid_regulated_market_boolean_enum_null = ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum_null.dissect(buffer, index, packet, parent)

  -- Flex Strike Allowed: BooleanEnumNULL
  index, flex_strike_allowed = ice_icefutures_bgw_sbe_v7_0.flex_strike_allowed.dissect(buffer, index, packet, parent)

  -- Hub Id: int32
  index, hub_id = ice_icefutures_bgw_sbe_v7_0.hub_id.dissect(buffer, index, packet, parent)

  -- Override Block Min: BooleanEnumNULL
  index, override_block_min = ice_icefutures_bgw_sbe_v7_0.override_block_min.dissect(buffer, index, packet, parent)

  -- Test Market Indicator Boolean Enum Null: BooleanEnumNULL
  index, test_market_indicator_boolean_enum_null = ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum_null.dissect(buffer, index, packet, parent)

  -- Ref Sprd Product Id: int32NULL
  index, ref_sprd_product_id = ice_icefutures_bgw_sbe_v7_0.ref_sprd_product_id.dissect(buffer, index, packet, parent)

  -- Market Transparency Type: BooleanEnumNULL
  index, market_transparency_type = ice_icefutures_bgw_sbe_v7_0.market_transparency_type.dissect(buffer, index, packet, parent)

  -- Non Commoditized Market: BooleanEnumNULL
  index, non_commoditized_market = ice_icefutures_bgw_sbe_v7_0.non_commoditized_market.dissect(buffer, index, packet, parent)

  -- Security Definition Report Message no Block Details Groups: Struct of 2 fields
  index, security_definition_report_message_no_block_details_groups = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_block_details_groups.dissect(buffer, index, packet, parent)

  -- Security Definition Report Message no Security Alt I D Groups: Struct of 2 fields
  index, security_definition_report_message_no_security_alt_i_d_groups = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message_no_security_alt_i_d_groups.dissect(buffer, index, packet, parent)

  -- Security Id: Struct of 2 fields
  index, security_id = ice_icefutures_bgw_sbe_v7_0.security_id.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Struct of 2 fields
  index, unit_of_measure = ice_icefutures_bgw_sbe_v7_0.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Price Denomination: Struct of 2 fields
  index, price_denomination = ice_icefutures_bgw_sbe_v7_0.price_denomination.dissect(buffer, index, packet, parent)

  -- Cleared Alias: Struct of 2 fields
  index, cleared_alias = ice_icefutures_bgw_sbe_v7_0.cleared_alias.dissect(buffer, index, packet, parent)

  -- Security Desc: Struct of 2 fields
  index, security_desc = ice_icefutures_bgw_sbe_v7_0.security_desc.dissect(buffer, index, packet, parent)

  -- Price Unit: Struct of 2 fields
  index, price_unit = ice_icefutures_bgw_sbe_v7_0.price_unit.dissect(buffer, index, packet, parent)

  -- Strip Name: Struct of 2 fields
  index, strip_name = ice_icefutures_bgw_sbe_v7_0.strip_name.dissect(buffer, index, packet, parent)

  -- Hub Name: Struct of 2 fields
  index, hub_name = ice_icefutures_bgw_sbe_v7_0.hub_name.dissect(buffer, index, packet, parent)

  -- Hub Alias: Struct of 2 fields
  index, hub_alias = ice_icefutures_bgw_sbe_v7_0.hub_alias.dissect(buffer, index, packet, parent)

  -- Security Exchange: Struct of 2 fields
  index, security_exchange = ice_icefutures_bgw_sbe_v7_0.security_exchange.dissect(buffer, index, packet, parent)

  -- Physical Code: Struct of 2 fields
  index, physical_code = ice_icefutures_bgw_sbe_v7_0.physical_code.dissect(buffer, index, packet, parent)

  -- Home Exchange: Struct of 2 fields
  index, home_exchange = ice_icefutures_bgw_sbe_v7_0.home_exchange.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Report Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Security Id
ice_icefutures_bgw_sbe_v7_0.strategy_security_id = {}

-- Calculate size of: Strategy Security Id
ice_icefutures_bgw_sbe_v7_0.strategy_security_id.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.strategy_security_id_length.size

  local strategy_security_id_length = buffer(offset + index - 2, 2):le_uint()

  if strategy_security_id_length > 0 then
    -- Parse runtime size of: Strategy Security Id Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Strategy Security Id
ice_icefutures_bgw_sbe_v7_0.strategy_security_id.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Strategy Security Id
ice_icefutures_bgw_sbe_v7_0.strategy_security_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strategy Security Id Length: uint16
  index, strategy_security_id_length = ice_icefutures_bgw_sbe_v7_0.strategy_security_id_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Strategy Security Id Data
  local strategy_security_id_data = nil

  local strategy_security_id_data_exists = strategy_security_id_length > 0

  if strategy_security_id_data_exists then

    -- Runtime Size Of: Strategy Security Id Data
    index, strategy_security_id_data = ice_icefutures_bgw_sbe_v7_0.strategy_security_id_data.dissect(buffer, index, packet, parent, strategy_security_id_length)
  end

  -- Composite value
  local strategy_security_id = strategy_security_id_data

  return index, strategy_security_id
end

-- Dissect: Strategy Security Id
ice_icefutures_bgw_sbe_v7_0.strategy_security_id.dissect = function(buffer, offset, packet, parent)
  if show.strategy_security_id then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.strategy_security_id, buffer(offset, 0))
    local index, value = ice_icefutures_bgw_sbe_v7_0.strategy_security_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.strategy_security_id.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.strategy_security_id.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Report Strategy Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_group = {}

-- Size: Security Definition Report Strategy Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_group.size =
  ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_security_type.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_security_sub_type.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_side.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_price.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_option_delta.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_denominator.size + 
  ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_numerator.size

-- Display: Security Definition Report Strategy Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Strategy Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_group.fields = function(buffer, offset, packet, parent, security_definition_report_strategy_message_no_legs_group_index)
  local index = offset

  -- Implicit Security Definition Report Strategy Message no Legs Group Index
  if security_definition_report_strategy_message_no_legs_group_index ~= nil and show.security_definition_report_strategy_message_no_legs_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_legs_group_index, security_definition_report_strategy_message_no_legs_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol int 32: int32
  index, leg_symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.leg_symbol_int_32.dissect(buffer, index, packet, parent)

  -- Leg Security Type: SecurityTypeEnum
  index, leg_security_type = ice_icefutures_bgw_sbe_v7_0.leg_security_type.dissect(buffer, index, packet, parent)

  -- Leg Security Sub Type: int16NULL
  index, leg_security_sub_type = ice_icefutures_bgw_sbe_v7_0.leg_security_sub_type.dissect(buffer, index, packet, parent)

  -- Leg Side: SideEnum
  index, leg_side = ice_icefutures_bgw_sbe_v7_0.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Price: Decimal9NULL
  index, leg_price = ice_icefutures_bgw_sbe_v7_0.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Option Delta: int32NULL
  index, leg_option_delta = ice_icefutures_bgw_sbe_v7_0.leg_option_delta.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Denominator int 16: int16
  index, leg_ratio_qty_denominator_int_16 = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_denominator_int_16.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Numerator int 16: int16
  index, leg_ratio_qty_numerator_int_16 = ice_icefutures_bgw_sbe_v7_0.leg_ratio_qty_numerator_int_16.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Denominator: int16
  index, leg_ratio_price_denominator = ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_denominator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Numerator: int16
  index, leg_ratio_price_numerator = ice_icefutures_bgw_sbe_v7_0.leg_ratio_price_numerator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Report Strategy Message no Legs Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_group.dissect = function(buffer, offset, packet, parent, security_definition_report_strategy_message_no_legs_group_index)
  if show.security_definition_report_strategy_message_no_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_legs_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_group.fields(buffer, offset, packet, parent, security_definition_report_strategy_message_no_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_group.fields(buffer, offset, packet, parent, security_definition_report_strategy_message_no_legs_group_index)
  end
end

-- Security Definition Report Strategy Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_groups = {}

-- Calculate size of: Security Definition Report Strategy Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local security_definition_report_strategy_message_no_legs_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + security_definition_report_strategy_message_no_legs_group_count * 28

  return index
end

-- Display: Security Definition Report Strategy Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Strategy Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Security Definition Report Strategy Message no Legs Group
  for security_definition_report_strategy_message_no_legs_group_index = 1, num_in_group do
    index, security_definition_report_strategy_message_no_legs_group = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_group.dissect(buffer, index, packet, parent, security_definition_report_strategy_message_no_legs_group_index)
  end

  return index
end

-- Dissect: Security Definition Report Strategy Message no Legs Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.security_definition_report_strategy_message_no_legs_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_legs_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Report Strategy Message no Security Alt I D Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_group = {}

-- Size: Security Definition Report Strategy Message no Security Alt I D Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_group.size =
  ice_icefutures_bgw_sbe_v7_0.security_alt_id.size + 
  ice_icefutures_bgw_sbe_v7_0.security_alt_id_source.size

-- Display: Security Definition Report Strategy Message no Security Alt I D Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Strategy Message no Security Alt I D Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_group.fields = function(buffer, offset, packet, parent, security_definition_report_strategy_message_no_security_alt_i_d_group_index)
  local index = offset

  -- Implicit Security Definition Report Strategy Message no Security Alt I D Group Index
  if security_definition_report_strategy_message_no_security_alt_i_d_group_index ~= nil and show.security_definition_report_strategy_message_no_security_alt_i_d_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_security_alt_i_d_group_index, security_definition_report_strategy_message_no_security_alt_i_d_group_index)
    iteration:set_generated()
  end

  -- Security Alt Id: string30NULL
  index, security_alt_id = ice_icefutures_bgw_sbe_v7_0.security_alt_id.dissect(buffer, index, packet, parent)

  -- Security Alt Id Source: string3NULL
  index, security_alt_id_source = ice_icefutures_bgw_sbe_v7_0.security_alt_id_source.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Report Strategy Message no Security Alt I D Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_group.dissect = function(buffer, offset, packet, parent, security_definition_report_strategy_message_no_security_alt_i_d_group_index)
  if show.security_definition_report_strategy_message_no_security_alt_i_d_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_security_alt_i_d_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_group.fields(buffer, offset, packet, parent, security_definition_report_strategy_message_no_security_alt_i_d_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_group.fields(buffer, offset, packet, parent, security_definition_report_strategy_message_no_security_alt_i_d_group_index)
  end
end

-- Security Definition Report Strategy Message no Security Alt I D Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_groups = {}

-- Calculate size of: Security Definition Report Strategy Message no Security Alt I D Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local security_definition_report_strategy_message_no_security_alt_i_d_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + security_definition_report_strategy_message_no_security_alt_i_d_group_count * 33

  return index
end

-- Display: Security Definition Report Strategy Message no Security Alt I D Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Strategy Message no Security Alt I D Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Security Definition Report Strategy Message no Security Alt I D Group
  for security_definition_report_strategy_message_no_security_alt_i_d_group_index = 1, num_in_group do
    index, security_definition_report_strategy_message_no_security_alt_i_d_group = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_group.dissect(buffer, index, packet, parent, security_definition_report_strategy_message_no_security_alt_i_d_group_index)
  end

  return index
end

-- Dissect: Security Definition Report Strategy Message no Security Alt I D Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_groups.dissect = function(buffer, offset, packet, parent)
  if show.security_definition_report_strategy_message_no_security_alt_i_d_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_security_alt_i_d_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Report Strategy Message no Block Details Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_group = {}

-- Size: Security Definition Report Strategy Message no Block Details Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_group.size =
  ice_icefutures_bgw_sbe_v7_0.block_details_block_type.size + 
  ice_icefutures_bgw_sbe_v7_0.block_details_trade_type.size + 
  ice_icefutures_bgw_sbe_v7_0.block_details_min_qty.size

-- Display: Security Definition Report Strategy Message no Block Details Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Strategy Message no Block Details Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_group.fields = function(buffer, offset, packet, parent, security_definition_report_strategy_message_no_block_details_group_index)
  local index = offset

  -- Implicit Security Definition Report Strategy Message no Block Details Group Index
  if security_definition_report_strategy_message_no_block_details_group_index ~= nil and show.security_definition_report_strategy_message_no_block_details_group_index then
    local iteration = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_block_details_group_index, security_definition_report_strategy_message_no_block_details_group_index)
    iteration:set_generated()
  end

  -- Block Details Block Type: BlockTypeEnum
  index, block_details_block_type = ice_icefutures_bgw_sbe_v7_0.block_details_block_type.dissect(buffer, index, packet, parent)

  -- Block Details Trade Type: string3NULL
  index, block_details_trade_type = ice_icefutures_bgw_sbe_v7_0.block_details_trade_type.dissect(buffer, index, packet, parent)

  -- Block Details Min Qty: Decimal9
  index, block_details_min_qty = ice_icefutures_bgw_sbe_v7_0.block_details_min_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Report Strategy Message no Block Details Group
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_group.dissect = function(buffer, offset, packet, parent, security_definition_report_strategy_message_no_block_details_group_index)
  if show.security_definition_report_strategy_message_no_block_details_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_block_details_group, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_group.fields(buffer, offset, packet, parent, security_definition_report_strategy_message_no_block_details_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_group.fields(buffer, offset, packet, parent, security_definition_report_strategy_message_no_block_details_group_index)
  end
end

-- Security Definition Report Strategy Message no Block Details Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_groups = {}

-- Calculate size of: Security Definition Report Strategy Message no Block Details Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_groups.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.group_size_encoding.size

  -- Calculate field size from count
  local security_definition_report_strategy_message_no_block_details_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + security_definition_report_strategy_message_no_block_details_group_count * 12

  return index
end

-- Display: Security Definition Report Strategy Message no Block Details Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Strategy Message no Block Details Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = ice_icefutures_bgw_sbe_v7_0.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 2, 2):le_uint()

  -- Repeating: Security Definition Report Strategy Message no Block Details Group
  for security_definition_report_strategy_message_no_block_details_group_index = 1, num_in_group do
    index, security_definition_report_strategy_message_no_block_details_group = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_group.dissect(buffer, index, packet, parent, security_definition_report_strategy_message_no_block_details_group_index)
  end

  return index
end

-- Dissect: Security Definition Report Strategy Message no Block Details Groups
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_groups.dissect = function(buffer, offset, packet, parent)
  if show.security_definition_report_strategy_message_no_block_details_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message_no_block_details_groups, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Report Strategy Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message = {}

-- Calculate size of: Security Definition Report Strategy Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.security_req_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_response_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_response_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.no_rpts.size

  index = index + ice_icefutures_bgw_sbe_v7_0.list_seq_no.size

  index = index + ice_icefutures_bgw_sbe_v7_0.symbol_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.underlying_strategy_symbol.size

  index = index + ice_icefutures_bgw_sbe_v7_0.maturity_date.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_trading_status.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_silo.size

  index = index + ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.size

  index = index + ice_icefutures_bgw_sbe_v7_0.leg_deals_suppressed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.increment_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.increment_qty.size

  index = index + ice_icefutures_bgw_sbe_v7_0.min_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.max_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.num_of_decimal_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.num_of_decimal_qty.size

  index = index + ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32.size

  index = index + ice_icefutures_bgw_sbe_v7_0.base_num_lots.size

  index = index + ice_icefutures_bgw_sbe_v7_0.denominator.size

  index = index + ice_icefutures_bgw_sbe_v7_0.implied_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.num_of_decimal_strike_price.size

  index = index + ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9_null.size

  index = index + ice_icefutures_bgw_sbe_v7_0.block_only.size

  index = index + ice_icefutures_bgw_sbe_v7_0.flex_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.gt_allowed.size

  index = index + ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum.size

  index = index + ice_icefutures_bgw_sbe_v7_0.strip_type.size

  index = index + ice_icefutures_bgw_sbe_v7_0.hub_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.override_block_min.size

  index = index + ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum.size

  index = index + ice_icefutures_bgw_sbe_v7_0.screen_tick_value.size

  index = index + ice_icefutures_bgw_sbe_v7_0.block_tick_value.size

  index = index + ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_groups.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_groups.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_groups.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.security_id.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.unit_of_measure.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.price_denomination.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.cleared_alias.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.security_desc.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.price_unit.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.strip_name.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.hub_name.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.hub_alias.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.security_exchange.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.strategy_security_id.size(buffer, offset + index)

  index = index + ice_icefutures_bgw_sbe_v7_0.physical_code.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Report Strategy Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Report Strategy Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Req Id: int32
  index, security_req_id = ice_icefutures_bgw_sbe_v7_0.security_req_id.dissect(buffer, index, packet, parent)

  -- Security Response Type: SecurityResponseTypeEnum
  index, security_response_type = ice_icefutures_bgw_sbe_v7_0.security_response_type.dissect(buffer, index, packet, parent)

  -- Security Response Id: int32
  index, security_response_id = ice_icefutures_bgw_sbe_v7_0.security_response_id.dissect(buffer, index, packet, parent)

  -- Market Type I D int 32: int32
  index, market_type_i_d_int_32 = ice_icefutures_bgw_sbe_v7_0.market_type_i_d_int_32.dissect(buffer, index, packet, parent)

  -- No Rpts: int32
  index, no_rpts = ice_icefutures_bgw_sbe_v7_0.no_rpts.dissect(buffer, index, packet, parent)

  -- List Seq No: int32
  index, list_seq_no = ice_icefutures_bgw_sbe_v7_0.list_seq_no.dissect(buffer, index, packet, parent)

  -- Symbol int 32: int32
  index, symbol_int_32 = ice_icefutures_bgw_sbe_v7_0.symbol_int_32.dissect(buffer, index, packet, parent)

  -- Underlying Strategy Symbol: int32
  index, underlying_strategy_symbol = ice_icefutures_bgw_sbe_v7_0.underlying_strategy_symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: UTCDateOnlyNULL
  index, maturity_date = ice_icefutures_bgw_sbe_v7_0.maturity_date.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatusEnum
  index, security_trading_status = ice_icefutures_bgw_sbe_v7_0.security_trading_status.dissect(buffer, index, packet, parent)

  -- Security Sub Type int 16: int16
  index, security_sub_type_int_16 = ice_icefutures_bgw_sbe_v7_0.security_sub_type_int_16.dissect(buffer, index, packet, parent)

  -- Exchange Silo: ExchangeSiloEnum
  index, exchange_silo = ice_icefutures_bgw_sbe_v7_0.exchange_silo.dissect(buffer, index, packet, parent)

  -- Transact Time Utc Timestamp: UTCTimestamp
  index, transact_time_utc_timestamp = ice_icefutures_bgw_sbe_v7_0.transact_time_utc_timestamp.dissect(buffer, index, packet, parent)

  -- Leg Deals Suppressed: BooleanEnum
  index, leg_deals_suppressed = ice_icefutures_bgw_sbe_v7_0.leg_deals_suppressed.dissect(buffer, index, packet, parent)

  -- Increment Price: Decimal9
  index, increment_price = ice_icefutures_bgw_sbe_v7_0.increment_price.dissect(buffer, index, packet, parent)

  -- Increment Qty: Decimal9
  index, increment_qty = ice_icefutures_bgw_sbe_v7_0.increment_qty.dissect(buffer, index, packet, parent)

  -- Min Price: Decimal9
  index, min_price = ice_icefutures_bgw_sbe_v7_0.min_price.dissect(buffer, index, packet, parent)

  -- Max Price: Decimal9
  index, max_price = ice_icefutures_bgw_sbe_v7_0.max_price.dissect(buffer, index, packet, parent)

  -- Num Of Decimal Price: int8
  index, num_of_decimal_price = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_price.dissect(buffer, index, packet, parent)

  -- Num Of Decimal Qty: int8
  index, num_of_decimal_qty = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_qty.dissect(buffer, index, packet, parent)

  -- Product I D int 32: int32
  index, product_i_d_int_32 = ice_icefutures_bgw_sbe_v7_0.product_i_d_int_32.dissect(buffer, index, packet, parent)

  -- Base Num Lots: int32NULL
  index, base_num_lots = ice_icefutures_bgw_sbe_v7_0.base_num_lots.dissect(buffer, index, packet, parent)

  -- Denominator: int32
  index, denominator = ice_icefutures_bgw_sbe_v7_0.denominator.dissect(buffer, index, packet, parent)

  -- Implied Type: charTypeNULL
  index, implied_type = ice_icefutures_bgw_sbe_v7_0.implied_type.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Price Decimal 9 Null: Decimal9NULL
  index, off_exchange_increment_price_decimal_9_null = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_price_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Qty Decimal 9 Null: Decimal9NULL
  index, off_exchange_increment_qty_decimal_9_null = ice_icefutures_bgw_sbe_v7_0.off_exchange_increment_qty_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Num Of Decimal Strike Price: int8NULL
  index, num_of_decimal_strike_price = ice_icefutures_bgw_sbe_v7_0.num_of_decimal_strike_price.dissect(buffer, index, packet, parent)

  -- Num Of Cycles int 16 Null: int16NULL
  index, num_of_cycles_int_16_null = ice_icefutures_bgw_sbe_v7_0.num_of_cycles_int_16_null.dissect(buffer, index, packet, parent)

  -- Lot Size Multiplier Decimal 9 Null: Decimal9NULL
  index, lot_size_multiplier_decimal_9_null = ice_icefutures_bgw_sbe_v7_0.lot_size_multiplier_decimal_9_null.dissect(buffer, index, packet, parent)

  -- Block Only: BooleanEnumNULL
  index, block_only = ice_icefutures_bgw_sbe_v7_0.block_only.dissect(buffer, index, packet, parent)

  -- Flex Allowed: BooleanEnumNULL
  index, flex_allowed = ice_icefutures_bgw_sbe_v7_0.flex_allowed.dissect(buffer, index, packet, parent)

  -- Gt Allowed: BooleanEnumNULL
  index, gt_allowed = ice_icefutures_bgw_sbe_v7_0.gt_allowed.dissect(buffer, index, packet, parent)

  -- Mifid Regulated Market Boolean Enum: BooleanEnum
  index, mifid_regulated_market_boolean_enum = ice_icefutures_bgw_sbe_v7_0.mifid_regulated_market_boolean_enum.dissect(buffer, index, packet, parent)

  -- Strip Type: int16
  index, strip_type = ice_icefutures_bgw_sbe_v7_0.strip_type.dissect(buffer, index, packet, parent)

  -- Hub Id: int32
  index, hub_id = ice_icefutures_bgw_sbe_v7_0.hub_id.dissect(buffer, index, packet, parent)

  -- Override Block Min: BooleanEnumNULL
  index, override_block_min = ice_icefutures_bgw_sbe_v7_0.override_block_min.dissect(buffer, index, packet, parent)

  -- Test Market Indicator Boolean Enum: BooleanEnum
  index, test_market_indicator_boolean_enum = ice_icefutures_bgw_sbe_v7_0.test_market_indicator_boolean_enum.dissect(buffer, index, packet, parent)

  -- Screen Tick Value: Decimal9
  index, screen_tick_value = ice_icefutures_bgw_sbe_v7_0.screen_tick_value.dissect(buffer, index, packet, parent)

  -- Block Tick Value: Decimal9
  index, block_tick_value = ice_icefutures_bgw_sbe_v7_0.block_tick_value.dissect(buffer, index, packet, parent)

  -- Security Definition Report Strategy Message no Block Details Groups: Struct of 2 fields
  index, security_definition_report_strategy_message_no_block_details_groups = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_block_details_groups.dissect(buffer, index, packet, parent)

  -- Security Definition Report Strategy Message no Security Alt I D Groups: Struct of 2 fields
  index, security_definition_report_strategy_message_no_security_alt_i_d_groups = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_security_alt_i_d_groups.dissect(buffer, index, packet, parent)

  -- Security Definition Report Strategy Message no Legs Groups: Struct of 2 fields
  index, security_definition_report_strategy_message_no_legs_groups = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message_no_legs_groups.dissect(buffer, index, packet, parent)

  -- Security Id: Struct of 2 fields
  index, security_id = ice_icefutures_bgw_sbe_v7_0.security_id.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Struct of 2 fields
  index, unit_of_measure = ice_icefutures_bgw_sbe_v7_0.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Price Denomination: Struct of 2 fields
  index, price_denomination = ice_icefutures_bgw_sbe_v7_0.price_denomination.dissect(buffer, index, packet, parent)

  -- Cleared Alias: Struct of 2 fields
  index, cleared_alias = ice_icefutures_bgw_sbe_v7_0.cleared_alias.dissect(buffer, index, packet, parent)

  -- Security Desc: Struct of 2 fields
  index, security_desc = ice_icefutures_bgw_sbe_v7_0.security_desc.dissect(buffer, index, packet, parent)

  -- Price Unit: Struct of 2 fields
  index, price_unit = ice_icefutures_bgw_sbe_v7_0.price_unit.dissect(buffer, index, packet, parent)

  -- Strip Name: Struct of 2 fields
  index, strip_name = ice_icefutures_bgw_sbe_v7_0.strip_name.dissect(buffer, index, packet, parent)

  -- Hub Name: Struct of 2 fields
  index, hub_name = ice_icefutures_bgw_sbe_v7_0.hub_name.dissect(buffer, index, packet, parent)

  -- Hub Alias: Struct of 2 fields
  index, hub_alias = ice_icefutures_bgw_sbe_v7_0.hub_alias.dissect(buffer, index, packet, parent)

  -- Security Exchange: Struct of 2 fields
  index, security_exchange = ice_icefutures_bgw_sbe_v7_0.security_exchange.dissect(buffer, index, packet, parent)

  -- Strategy Security Id: Struct of 2 fields
  index, strategy_security_id = ice_icefutures_bgw_sbe_v7_0.strategy_security_id.dissect(buffer, index, packet, parent)

  -- Physical Code: Struct of 2 fields
  index, physical_code = ice_icefutures_bgw_sbe_v7_0.physical_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Report Strategy Message
ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.security_definition_report_strategy_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message.fields(buffer, offset, packet, parent)
  end
end

-- News Message
ice_icefutures_bgw_sbe_v7_0.news_message = {}

-- Calculate size of: News Message
ice_icefutures_bgw_sbe_v7_0.news_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: News Message
ice_icefutures_bgw_sbe_v7_0.news_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: News Message
ice_icefutures_bgw_sbe_v7_0.news_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: string20
  index, user_id = ice_icefutures_bgw_sbe_v7_0.user_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: News Message
ice_icefutures_bgw_sbe_v7_0.news_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.news_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.news_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.news_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.news_message.fields(buffer, offset, packet, parent)
  end
end

-- Error Message
ice_icefutures_bgw_sbe_v7_0.error_message = {}

-- Calculate size of: Error Message
ice_icefutures_bgw_sbe_v7_0.error_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.ref_sequence_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.severity_level.size

  index = index + ice_icefutures_bgw_sbe_v7_0.supported_schema_version.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: Error Message
ice_icefutures_bgw_sbe_v7_0.error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Message
ice_icefutures_bgw_sbe_v7_0.error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ref Sequence Id: uint32
  index, ref_sequence_id = ice_icefutures_bgw_sbe_v7_0.ref_sequence_id.dissect(buffer, index, packet, parent)

  -- Severity Level: SeverityLevelEnumNULL
  index, severity_level = ice_icefutures_bgw_sbe_v7_0.severity_level.dissect(buffer, index, packet, parent)

  -- Supported Schema Version: string20
  index, supported_schema_version = ice_icefutures_bgw_sbe_v7_0.supported_schema_version.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Message
ice_icefutures_bgw_sbe_v7_0.error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.error_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.error_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Report Message
ice_icefutures_bgw_sbe_v7_0.logout_report_message = {}

-- Calculate size of: Logout Report Message
ice_icefutures_bgw_sbe_v7_0.logout_report_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: Logout Report Message
ice_icefutures_bgw_sbe_v7_0.logout_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Report Message
ice_icefutures_bgw_sbe_v7_0.logout_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: string20
  index, user_id = ice_icefutures_bgw_sbe_v7_0.user_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Report Message
ice_icefutures_bgw_sbe_v7_0.logout_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.logout_report_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.logout_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.logout_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.logout_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request Message
ice_icefutures_bgw_sbe_v7_0.logout_request_message = {}

-- Size: Logout Request Message
ice_icefutures_bgw_sbe_v7_0.logout_request_message.size =
  ice_icefutures_bgw_sbe_v7_0.user_id.size

-- Display: Logout Request Message
ice_icefutures_bgw_sbe_v7_0.logout_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request Message
ice_icefutures_bgw_sbe_v7_0.logout_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: string20
  index, user_id = ice_icefutures_bgw_sbe_v7_0.user_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Request Message
ice_icefutures_bgw_sbe_v7_0.logout_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.logout_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.logout_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.logout_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.logout_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Report Message
ice_icefutures_bgw_sbe_v7_0.logon_report_message = {}

-- Calculate size of: Logon Report Message
ice_icefutures_bgw_sbe_v7_0.logon_report_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_icefutures_bgw_sbe_v7_0.user_id.size

  index = index + ice_icefutures_bgw_sbe_v7_0.heart_beat_interval.size

  index = index + ice_icefutures_bgw_sbe_v7_0.severity_level.size

  index = index + ice_icefutures_bgw_sbe_v7_0.exchange_code.size

  index = index + ice_icefutures_bgw_sbe_v7_0.text.size(buffer, offset + index)

  return index
end

-- Display: Logon Report Message
ice_icefutures_bgw_sbe_v7_0.logon_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Report Message
ice_icefutures_bgw_sbe_v7_0.logon_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: string20
  index, user_id = ice_icefutures_bgw_sbe_v7_0.user_id.dissect(buffer, index, packet, parent)

  -- Heart Beat Interval: uint16NULL
  index, heart_beat_interval = ice_icefutures_bgw_sbe_v7_0.heart_beat_interval.dissect(buffer, index, packet, parent)

  -- Severity Level: SeverityLevelEnumNULL
  index, severity_level = ice_icefutures_bgw_sbe_v7_0.severity_level.dissect(buffer, index, packet, parent)

  -- Exchange Code: int32NULL
  index, exchange_code = ice_icefutures_bgw_sbe_v7_0.exchange_code.dissect(buffer, index, packet, parent)

  -- Text: Struct of 2 fields
  index, text = ice_icefutures_bgw_sbe_v7_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Report Message
ice_icefutures_bgw_sbe_v7_0.logon_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.logon_report_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.logon_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.logon_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.logon_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Request Message
ice_icefutures_bgw_sbe_v7_0.logon_request_message = {}

-- Size: Logon Request Message
ice_icefutures_bgw_sbe_v7_0.logon_request_message.size =
  ice_icefutures_bgw_sbe_v7_0.user_id.size + 
  ice_icefutures_bgw_sbe_v7_0.client_id.size + 
  ice_icefutures_bgw_sbe_v7_0.heart_beat_interval.size + 
  ice_icefutures_bgw_sbe_v7_0.application_name.size + 
  ice_icefutures_bgw_sbe_v7_0.application_version.size + 
  ice_icefutures_bgw_sbe_v7_0.application_vendor.size + 
  ice_icefutures_bgw_sbe_v7_0.raw_data.size + 
  ice_icefutures_bgw_sbe_v7_0.ip_session_token.size

-- Display: Logon Request Message
ice_icefutures_bgw_sbe_v7_0.logon_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Request Message
ice_icefutures_bgw_sbe_v7_0.logon_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: string20
  index, user_id = ice_icefutures_bgw_sbe_v7_0.user_id.dissect(buffer, index, packet, parent)

  -- Client Id: int32
  index, client_id = ice_icefutures_bgw_sbe_v7_0.client_id.dissect(buffer, index, packet, parent)

  -- Heart Beat Interval: uint16NULL
  index, heart_beat_interval = ice_icefutures_bgw_sbe_v7_0.heart_beat_interval.dissect(buffer, index, packet, parent)

  -- Application Name: string30
  index, application_name = ice_icefutures_bgw_sbe_v7_0.application_name.dissect(buffer, index, packet, parent)

  -- Application Version: string50
  index, application_version = ice_icefutures_bgw_sbe_v7_0.application_version.dissect(buffer, index, packet, parent)

  -- Application Vendor: string30
  index, application_vendor = ice_icefutures_bgw_sbe_v7_0.application_vendor.dissect(buffer, index, packet, parent)

  -- Raw Data: string50
  index, raw_data = ice_icefutures_bgw_sbe_v7_0.raw_data.dissect(buffer, index, packet, parent)

  -- Ip Session Token: string50NULL
  index, ip_session_token = ice_icefutures_bgw_sbe_v7_0.ip_session_token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request Message
ice_icefutures_bgw_sbe_v7_0.logon_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.logon_request_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.logon_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.logon_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.logon_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Framing Header
ice_icefutures_bgw_sbe_v7_0.framing_header = {}

-- Size: Framing Header
ice_icefutures_bgw_sbe_v7_0.framing_header.size =
  ice_icefutures_bgw_sbe_v7_0.message_length.size + 
  ice_icefutures_bgw_sbe_v7_0.encoding_type.size

-- Display: Framing Header
ice_icefutures_bgw_sbe_v7_0.framing_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Framing Header
ice_icefutures_bgw_sbe_v7_0.framing_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: uint16
  index, message_length = ice_icefutures_bgw_sbe_v7_0.message_length.dissect(buffer, index, packet, parent)

  -- Encoding Type: uint16
  index, encoding_type = ice_icefutures_bgw_sbe_v7_0.encoding_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Framing Header
ice_icefutures_bgw_sbe_v7_0.framing_header.dissect = function(buffer, offset, packet, parent)
  if show.framing_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.framing_header, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.framing_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.framing_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.framing_header.fields(buffer, offset, packet, parent)
  end
end

-- Simple Open Framing Header Message
ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header_message = {}

-- Size: Simple Open Framing Header Message
ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header_message.size =
  ice_icefutures_bgw_sbe_v7_0.framing_header.size

-- Display: Simple Open Framing Header Message
ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Open Framing Header Message
ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Framing Header: Struct of 2 fields
  index, framing_header = ice_icefutures_bgw_sbe_v7_0.framing_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Open Framing Header Message
ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.simple_open_framing_header_message, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
ice_icefutures_bgw_sbe_v7_0.payload = {}

-- Dissect: Payload
ice_icefutures_bgw_sbe_v7_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Simple Open Framing Header Message
  if template_id == 0 then
    return ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Request Message
  if template_id == 1 then
    return ice_icefutures_bgw_sbe_v7_0.logon_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Report Message
  if template_id == 101 then
    return ice_icefutures_bgw_sbe_v7_0.logon_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if template_id == 13 then
    return ice_icefutures_bgw_sbe_v7_0.logout_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Report Message
  if template_id == 113 then
    return ice_icefutures_bgw_sbe_v7_0.logout_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heart Beat Message
  if template_id == 51 then
    return offset
  end
  -- Dissect Error Message
  if template_id == 114 then
    return ice_icefutures_bgw_sbe_v7_0.error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect News Message
  if template_id == 116 then
    return ice_icefutures_bgw_sbe_v7_0.news_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Report Strategy Message
  if template_id == 112 then
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_strategy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Report Message
  if template_id == 115 then
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Reject Message
  if template_id == 155 then
    return ice_icefutures_bgw_sbe_v7_0.security_definition_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Request Message
  if template_id == 15 then
    return ice_icefutures_bgw_sbe_v7_0.security_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Report Product Message
  if template_id == 154 then
    return ice_icefutures_bgw_sbe_v7_0.security_definition_report_product_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ip Request Message
  if template_id == 2001 then
    return ice_icefutures_bgw_sbe_v7_0.ip_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ip Report Message
  if template_id == 2002 then
    return ice_icefutures_bgw_sbe_v7_0.ip_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trader Logon Request Message
  if template_id == 2 then
    return ice_icefutures_bgw_sbe_v7_0.trader_logon_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trader Logon Report Message
  if template_id == 102 then
    return ice_icefutures_bgw_sbe_v7_0.trader_logon_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trader Logout Request Message
  if template_id == 3 then
    return ice_icefutures_bgw_sbe_v7_0.trader_logout_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trader Logout Report Message
  if template_id == 103 then
    return ice_icefutures_bgw_sbe_v7_0.trader_logout_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Request Message
  if template_id == 4 then
    return ice_icefutures_bgw_sbe_v7_0.new_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Replace Request Message
  if template_id == 5 then
    return ice_icefutures_bgw_sbe_v7_0.cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Request Message
  if template_id == 6 then
    return ice_icefutures_bgw_sbe_v7_0.cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Message
  if template_id == 7 then
    return ice_icefutures_bgw_sbe_v7_0.quote_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Request Message
  if template_id == 8 then
    return ice_icefutures_bgw_sbe_v7_0.new_order_cross_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Cancel Request Message
  if template_id == 9 then
    return ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Request Message
  if template_id == 10 then
    return ice_icefutures_bgw_sbe_v7_0.mass_quote_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancel Request Message
  if template_id == 11 then
    return ice_icefutures_bgw_sbe_v7_0.quote_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Request Create Strategy Message
  if template_id == 12 then
    return ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_strategy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Request Create Flex Message
  if template_id == 14 then
    return ice_icefutures_bgw_sbe_v7_0.security_definition_request_create_flex_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New Message
  if template_id == 104 then
    return ice_icefutures_bgw_sbe_v7_0.execution_report_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Modify Message
  if template_id == 105 then
    return ice_icefutures_bgw_sbe_v7_0.execution_report_modify_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Cancel Message
  if template_id == 106 then
    return ice_icefutures_bgw_sbe_v7_0.execution_report_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Reject Message
  if template_id == 151 then
    return ice_icefutures_bgw_sbe_v7_0.execution_report_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Snapshot Message
  if template_id == 152 then
    return ice_icefutures_bgw_sbe_v7_0.execution_report_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Message
  if template_id == 153 then
    return ice_icefutures_bgw_sbe_v7_0.execution_report_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Report Message
  if template_id == 107 then
    return ice_icefutures_bgw_sbe_v7_0.quote_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Report Message
  if template_id == 108 then
    return ice_icefutures_bgw_sbe_v7_0.new_order_cross_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Cancel Report Message
  if template_id == 109 then
    return ice_icefutures_bgw_sbe_v7_0.order_mass_cancel_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Report Message
  if template_id == 110 then
    return ice_icefutures_bgw_sbe_v7_0.mass_quote_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Resend Request Message
  if template_id == 16 then
    return ice_icefutures_bgw_sbe_v7_0.resend_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Resend Report Message
  if template_id == 117 then
    return ice_icefutures_bgw_sbe_v7_0.resend_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Reset Message
  if template_id == 111 then
    return ice_icefutures_bgw_sbe_v7_0.sequence_reset_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Header Flags
ice_icefutures_bgw_sbe_v7_0.header_flags = {}

-- Size: Header Flags
ice_icefutures_bgw_sbe_v7_0.header_flags.size = 1

-- Display: Header Flags
ice_icefutures_bgw_sbe_v7_0.header_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Poss Resend flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Poss Resend"
  end
  -- Is Poss Dupe flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Poss Dupe"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Header Flags
ice_icefutures_bgw_sbe_v7_0.header_flags.bits = function(range, value, packet, parent)

  -- Reserved Bits: 6 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.reserved_bits, range, value)

  -- Poss Resend: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.poss_resend, range, value)

  -- Poss Dupe: 1 Bit
  parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.poss_dupe, range, value)
end

-- Dissect: Header Flags
ice_icefutures_bgw_sbe_v7_0.header_flags.dissect = function(buffer, offset, packet, parent)
  local size = ice_icefutures_bgw_sbe_v7_0.header_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = ice_icefutures_bgw_sbe_v7_0.header_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_ice_icefutures_bgw_sbe_v7_0.fields.header_flags, range, display)

  if show.header_flags then
    ice_icefutures_bgw_sbe_v7_0.header_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Message Header
ice_icefutures_bgw_sbe_v7_0.message_header = {}

-- Size: Message Header
ice_icefutures_bgw_sbe_v7_0.message_header.size =
  ice_icefutures_bgw_sbe_v7_0.block_length.size + 
  ice_icefutures_bgw_sbe_v7_0.template_id.size + 
  ice_icefutures_bgw_sbe_v7_0.schema_id.size + 
  ice_icefutures_bgw_sbe_v7_0.version.size + 
  ice_icefutures_bgw_sbe_v7_0.sequence_id.size + 
  ice_icefutures_bgw_sbe_v7_0.send_time.size + 
  ice_icefutures_bgw_sbe_v7_0.header_flags.size

-- Display: Message Header
ice_icefutures_bgw_sbe_v7_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
ice_icefutures_bgw_sbe_v7_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = ice_icefutures_bgw_sbe_v7_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 42 values
  index, template_id = ice_icefutures_bgw_sbe_v7_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = ice_icefutures_bgw_sbe_v7_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = ice_icefutures_bgw_sbe_v7_0.version.dissect(buffer, index, packet, parent)

  -- Sequence Id: 4 Byte Unsigned Fixed Width Integer
  index, sequence_id = ice_icefutures_bgw_sbe_v7_0.sequence_id.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = ice_icefutures_bgw_sbe_v7_0.send_time.dissect(buffer, index, packet, parent)

  -- Header Flags: Struct of 3 fields
  index, header_flags = ice_icefutures_bgw_sbe_v7_0.header_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
ice_icefutures_bgw_sbe_v7_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.message_header, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Simple Open Framing Header
ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header = {}

-- Size: Simple Open Framing Header
ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header.size =
  ice_icefutures_bgw_sbe_v7_0.message_length.size + 
  ice_icefutures_bgw_sbe_v7_0.encoding_type.size

-- Display: Simple Open Framing Header
ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Open Framing Header
ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: uint16
  index, message_length = ice_icefutures_bgw_sbe_v7_0.message_length.dissect(buffer, index, packet, parent)

  -- Encoding Type: uint16
  index, encoding_type = ice_icefutures_bgw_sbe_v7_0.encoding_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Open Framing Header
ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header.dissect = function(buffer, offset, packet, parent)
  if show.simple_open_framing_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.simple_open_framing_header, buffer(offset, 0))
    local index = ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header.fields(buffer, offset, packet, parent)
  end
end

-- Simple Open Frame
ice_icefutures_bgw_sbe_v7_0.simple_open_frame = {}

-- Display: Simple Open Frame
ice_icefutures_bgw_sbe_v7_0.simple_open_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Open Frame
ice_icefutures_bgw_sbe_v7_0.simple_open_frame.fields = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  local index = offset

  -- Simple Open Framing Header: Struct of 2 fields
  index, simple_open_framing_header = ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 7 fields
  index, message_header = ice_icefutures_bgw_sbe_v7_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 19, 2):le_uint()

  -- Payload: Runtime Type with 42 branches
  index = ice_icefutures_bgw_sbe_v7_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Simple Open Frame
ice_icefutures_bgw_sbe_v7_0.simple_open_frame.dissect = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  local index = offset + size_of_simple_open_frame

  -- Optionally add group/struct element to protocol tree
  if show.simple_open_frame then
    parent = parent:add(omi_ice_icefutures_bgw_sbe_v7_0.fields.simple_open_frame, buffer(offset, 0))
    local current = ice_icefutures_bgw_sbe_v7_0.simple_open_frame.fields(buffer, offset, packet, parent, size_of_simple_open_frame)
    parent:set_len(size_of_simple_open_frame)
    local display = ice_icefutures_bgw_sbe_v7_0.simple_open_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    ice_icefutures_bgw_sbe_v7_0.simple_open_frame.fields(buffer, offset, packet, parent, size_of_simple_open_frame)

    return index
  end
end

-- Remaining Bytes For: Simple Open Frame
local simple_open_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header.size then
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

-- Packet
ice_icefutures_bgw_sbe_v7_0.packet = {}

-- Verify required size of Tcp packet
ice_icefutures_bgw_sbe_v7_0.packet.requiredsize = function(buffer)
  return buffer:len() >= ice_icefutures_bgw_sbe_v7_0.simple_open_framing_header.size + ice_icefutures_bgw_sbe_v7_0.message_header.size
end

-- Dissect Packet
ice_icefutures_bgw_sbe_v7_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Simple Open Frame
  local end_of_payload = buffer:len()

  -- Simple Open Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_simple_open_frame = simple_open_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = ice_icefutures_bgw_sbe_v7_0.simple_open_frame.dissect(buffer, index, packet, parent, size_of_simple_open_frame)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_ice_icefutures_bgw_sbe_v7_0.init()
end

-- Dissector for Ice IceFutures Bgw Sbe 7.0
function omi_ice_icefutures_bgw_sbe_v7_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_ice_icefutures_bgw_sbe_v7_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_ice_icefutures_bgw_sbe_v7_0, buffer(), omi_ice_icefutures_bgw_sbe_v7_0.description, "("..buffer:len().." Bytes)")
  return ice_icefutures_bgw_sbe_v7_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
ice_icefutures_bgw_sbe_v7_0.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 7 then
    return true
  end

  return false
end

-- Verify Version Field
ice_icefutures_bgw_sbe_v7_0.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(10, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Ice IceFutures Bgw Sbe 7.0 (Tcp)
local function omi_ice_icefutures_bgw_sbe_v7_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not ice_icefutures_bgw_sbe_v7_0.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not ice_icefutures_bgw_sbe_v7_0.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not ice_icefutures_bgw_sbe_v7_0.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_ice_icefutures_bgw_sbe_v7_0
  omi_ice_icefutures_bgw_sbe_v7_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Ice IceFutures Bgw Sbe 7.0
omi_ice_icefutures_bgw_sbe_v7_0:register_heuristic("tcp", omi_ice_icefutures_bgw_sbe_v7_0_tcp_heuristic)

-- Register Ice IceFutures Bgw Sbe 7.0 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_ice_icefutures_bgw_sbe_v7_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Intercontinental Exchange
--   Version: 7.0
--   Date: Friday, October 24, 2025
--   Specification: ICE Binary Order and Utility Service API Message Specification - Version 2.6.3 - Final - 10.24.2025.pdf
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
