-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures iLink3 Sbe 8.5 Protocol
local omi_cme_futures_ilink3_sbe_v8_5 = Proto("Cme.Futures.iLink3.Sbe.v8.5.Lua", "Cme Futures iLink3 Sbe 8.5")

-- Protocol table
local cme_futures_ilink3_sbe_v8_5 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Futures iLink3 Sbe 8.5 Fields
omi_cme_futures_ilink3_sbe_v8_5.fields.access_key_id = ProtoField.new("Access Key Id", "cme.futures.ilink3.sbe.v8.5.accesskeyid", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.affected_order_id = ProtoField.new("Affected Order Id", "cme.futures.ilink3.sbe.v8.5.affectedorderid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.affected_orders_group = ProtoField.new("Affected Orders Group", "cme.futures.ilink3.sbe.v8.5.affectedordersgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.affected_orders_groups = ProtoField.new("Affected Orders Groups", "cme.futures.ilink3.sbe.v8.5.affectedordersgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "cme.futures.ilink3.sbe.v8.5.aggressorindicator", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.aon = ProtoField.new("Aon", "cme.futures.ilink3.sbe.v8.5.aon", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_cme_futures_ilink3_sbe_v8_5.fields.auto_quote_request = ProtoField.new("Auto Quote Request", "cme.futures.ilink3.sbe.v8.5.autoquoterequest", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.avg_px_group_id = ProtoField.new("Avg Px Group Id", "cme.futures.ilink3.sbe.v8.5.avgpxgroupid", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.avg_px_indicator = ProtoField.new("Avg Px Indicator", "cme.futures.ilink3.sbe.v8.5.avgpxindicator", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.bid_px = ProtoField.new("Bid Px", "cme.futures.ilink3.sbe.v8.5.bidpx", ftypes.DOUBLE)
omi_cme_futures_ilink3_sbe_v8_5.fields.bid_size = ProtoField.new("Bid Size", "cme.futures.ilink3.sbe.v8.5.bidsize", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.block_length = ProtoField.new("Block Length", "cme.futures.ilink3.sbe.v8.5.blocklength", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "cme.futures.ilink3.sbe.v8.5.businessrejectreason", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "cme.futures.ilink3.sbe.v8.5.businessrejectrefid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.cancelled_symbol = ProtoField.new("Cancelled Symbol", "cme.futures.ilink3.sbe.v8.5.cancelledsymbol", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.clearing_account_type = ProtoField.new("Clearing Account Type", "cme.futures.ilink3.sbe.v8.5.clearingaccounttype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.clearing_trade_price_type = ProtoField.new("Clearing Trade Price Type", "cme.futures.ilink3.sbe.v8.5.clearingtradepricetype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.clordid = ProtoField.new("ClOrdId", "cme.futures.ilink3.sbe.v8.5.clordid", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.cmta_giveup_cd = ProtoField.new("Cmta Giveup Cd", "cme.futures.ilink3.sbe.v8.5.cmtagiveupcd", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.credentials = ProtoField.new("Credentials", "cme.futures.ilink3.sbe.v8.5.credentials", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.cross_id = ProtoField.new("Cross Id", "cme.futures.ilink3.sbe.v8.5.crossid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.cross_id_optional = ProtoField.new("Cross Id Optional", "cme.futures.ilink3.sbe.v8.5.crossidoptional", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.cross_type = ProtoField.new("Cross Type", "cme.futures.ilink3.sbe.v8.5.crosstype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.cum_qty = ProtoField.new("Cum Qty", "cme.futures.ilink3.sbe.v8.5.cumqty", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.currency = ProtoField.new("Currency", "cme.futures.ilink3.sbe.v8.5.currency", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.cust_order_capacity = ProtoField.new("Cust Order Capacity", "cme.futures.ilink3.sbe.v8.5.custordercapacity", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "cme.futures.ilink3.sbe.v8.5.custorderhandlinginst", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.cxl_quantity = ProtoField.new("Cxl Quantity", "cme.futures.ilink3.sbe.v8.5.cxlquantity", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "cme.futures.ilink3.sbe.v8.5.cxlrejreason", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.data_length = ProtoField.new("Data Length", "cme.futures.ilink3.sbe.v8.5.datalength", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.day = ProtoField.new("Day", "cme.futures.ilink3.sbe.v8.5.day", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.delay_duration = ProtoField.new("Delay Duration", "cme.futures.ilink3.sbe.v8.5.delayduration", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.delay_to_time = ProtoField.new("Delay To Time", "cme.futures.ilink3.sbe.v8.5.delaytotime", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.display_qty = ProtoField.new("Display Qty", "cme.futures.ilink3.sbe.v8.5.displayqty", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.dk_reason = ProtoField.new("Dk Reason", "cme.futures.ilink3.sbe.v8.5.dkreason", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.encoding_type = ProtoField.new("Encoding Type", "cme.futures.ilink3.sbe.v8.5.encodingtype", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.end_date = ProtoField.new("End Date", "cme.futures.ilink3.sbe.v8.5.enddate", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.error_codes = ProtoField.new("Error Codes", "cme.futures.ilink3.sbe.v8.5.errorcodes", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.exchange_quote_req_id = ProtoField.new("Exchange Quote Req Id", "cme.futures.ilink3.sbe.v8.5.exchangequotereqid", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.exec_ack_status = ProtoField.new("Exec Ack Status", "cme.futures.ilink3.sbe.v8.5.execackstatus", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.exec_id = ProtoField.new("Exec Id", "cme.futures.ilink3.sbe.v8.5.execid", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.exec_inst = ProtoField.new("Exec Inst", "cme.futures.ilink3.sbe.v8.5.execinst", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "cme.futures.ilink3.sbe.v8.5.execrestatementreason", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.exec_type = ProtoField.new("Exec Type", "cme.futures.ilink3.sbe.v8.5.exectype", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_mode = ProtoField.new("Execution Mode", "cme.futures.ilink3.sbe.v8.5.executionmode", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_outright_order_event_group = ProtoField.new("Execution Report Trade Addendum Outright Order Event Group", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumoutrightordereventgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_outright_order_event_groups = ProtoField.new("Execution Report Trade Addendum Outright Order Event Groups", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumoutrightordereventgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_group = ProtoField.new("Execution Report Trade Addendum Spread Leg Group", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumspreadleggroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_groups = ProtoField.new("Execution Report Trade Addendum Spread Leg Groups", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumspreadleggroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_order_event_group = ProtoField.new("Execution Report Trade Addendum Spread Leg Order Event Group", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumspreadlegordereventgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_order_event_groups = ProtoField.new("Execution Report Trade Addendum Spread Leg Order Event Groups", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumspreadlegordereventgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_order_event_group = ProtoField.new("Execution Report Trade Addendum Spread Order Event Group", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumspreadordereventgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_order_event_groups = ProtoField.new("Execution Report Trade Addendum Spread Order Event Groups", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumspreadordereventgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_outright_order_event_group = ProtoField.new("Execution Report Trade Outright Order Event Group", "cme.futures.ilink3.sbe.v8.5.executionreporttradeoutrightordereventgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_outright_order_event_groups = ProtoField.new("Execution Report Trade Outright Order Event Groups", "cme.futures.ilink3.sbe.v8.5.executionreporttradeoutrightordereventgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_group = ProtoField.new("Execution Report Trade Spread Leg Group", "cme.futures.ilink3.sbe.v8.5.executionreporttradespreadleggroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_groups = ProtoField.new("Execution Report Trade Spread Leg Groups", "cme.futures.ilink3.sbe.v8.5.executionreporttradespreadleggroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_order_event_group = ProtoField.new("Execution Report Trade Spread Leg Order Event Group", "cme.futures.ilink3.sbe.v8.5.executionreporttradespreadlegordereventgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_order_event_groups = ProtoField.new("Execution Report Trade Spread Leg Order Event Groups", "cme.futures.ilink3.sbe.v8.5.executionreporttradespreadlegordereventgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_order_event_group = ProtoField.new("Execution Report Trade Spread Order Event Group", "cme.futures.ilink3.sbe.v8.5.executionreporttradespreadordereventgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_order_event_groups = ProtoField.new("Execution Report Trade Spread Order Event Groups", "cme.futures.ilink3.sbe.v8.5.executionreporttradespreadordereventgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.executor = ProtoField.new("Executor", "cme.futures.ilink3.sbe.v8.5.executor", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.expiration_cycle = ProtoField.new("Expiration Cycle", "cme.futures.ilink3.sbe.v8.5.expirationcycle", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.expire_date = ProtoField.new("Expire Date", "cme.futures.ilink3.sbe.v8.5.expiredate", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.exponent = ProtoField.new("Exponent", "cme.futures.ilink3.sbe.v8.5.exponent", ftypes.INT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.fault_tolerance_indicator = ProtoField.new("Fault Tolerance Indicator", "cme.futures.ilink3.sbe.v8.5.faulttoleranceindicator", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.fill_exec_id = ProtoField.new("Fill Exec Id", "cme.futures.ilink3.sbe.v8.5.fillexecid", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.fill_px = ProtoField.new("Fill Px", "cme.futures.ilink3.sbe.v8.5.fillpx", ftypes.DOUBLE)
omi_cme_futures_ilink3_sbe_v8_5.fields.fill_qty = ProtoField.new("Fill Qty", "cme.futures.ilink3.sbe.v8.5.fillqty", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.fill_yield_type = ProtoField.new("Fill Yield Type", "cme.futures.ilink3.sbe.v8.5.fillyieldtype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.fills_group = ProtoField.new("Fills Group", "cme.futures.ilink3.sbe.v8.5.fillsgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.fills_groups = ProtoField.new("Fills Groups", "cme.futures.ilink3.sbe.v8.5.fillsgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.financial_instrument_full_name = ProtoField.new("Financial Instrument Full Name", "cme.futures.ilink3.sbe.v8.5.financialinstrumentfullname", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.firm = ProtoField.new("Firm", "cme.futures.ilink3.sbe.v8.5.firm", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.from_seq_no = ProtoField.new("From Seq No", "cme.futures.ilink3.sbe.v8.5.fromseqno", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.group_size = ProtoField.new("Group Size", "cme.futures.ilink3.sbe.v8.5.groupsize", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.hmac_signature = ProtoField.new("Hmac Signature", "cme.futures.ilink3.sbe.v8.5.hmacsignature", ftypes.BYTES)
omi_cme_futures_ilink3_sbe_v8_5.fields.host_cross_id = ProtoField.new("Host Cross Id", "cme.futures.ilink3.sbe.v8.5.hostcrossid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.idm_short_code = ProtoField.new("Idm Short Code", "cme.futures.ilink3.sbe.v8.5.idmshortcode", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.keep_alive_interval = ProtoField.new("Keep Alive Interval", "cme.futures.ilink3.sbe.v8.5.keepaliveinterval", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.keep_alive_interval_lapsed = ProtoField.new("Keep Alive Interval Lapsed", "cme.futures.ilink3.sbe.v8.5.keepaliveintervallapsed", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.last_fragment = ProtoField.new("Last Fragment", "cme.futures.ilink3.sbe.v8.5.lastfragment", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.last_px = ProtoField.new("Last Px", "cme.futures.ilink3.sbe.v8.5.lastpx", ftypes.DOUBLE)
omi_cme_futures_ilink3_sbe_v8_5.fields.last_qty = ProtoField.new("Last Qty", "cme.futures.ilink3.sbe.v8.5.lastqty", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.last_rpt_requested = ProtoField.new("Last Rpt Requested", "cme.futures.ilink3.sbe.v8.5.lastrptrequested", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.last_uuid = ProtoField.new("Last Uuid", "cme.futures.ilink3.sbe.v8.5.lastuuid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.leaves_qty = ProtoField.new("Leaves Qty", "cme.futures.ilink3.sbe.v8.5.leavesqty", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.leg_exec_id = ProtoField.new("Leg Exec Id", "cme.futures.ilink3.sbe.v8.5.legexecid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.leg_exec_ref_id = ProtoField.new("Leg Exec Ref Id", "cme.futures.ilink3.sbe.v8.5.legexecrefid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.leg_last_px = ProtoField.new("Leg Last Px", "cme.futures.ilink3.sbe.v8.5.leglastpx", ftypes.DOUBLE)
omi_cme_futures_ilink3_sbe_v8_5.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "cme.futures.ilink3.sbe.v8.5.leglastqty", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.leg_option_delta = ProtoField.new("Leg Option Delta", "cme.futures.ilink3.sbe.v8.5.legoptiondelta", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.leg_price = ProtoField.new("Leg Price", "cme.futures.ilink3.sbe.v8.5.legprice", ftypes.DOUBLE)
omi_cme_futures_ilink3_sbe_v8_5.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.futures.ilink3.sbe.v8.5.legratioqty", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.leg_security_id = ProtoField.new("Leg Security Id", "cme.futures.ilink3.sbe.v8.5.legsecurityid", ftypes.INT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.leg_side = ProtoField.new("Leg Side", "cme.futures.ilink3.sbe.v8.5.legside", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.leg_trade_id = ProtoField.new("Leg Trade Id", "cme.futures.ilink3.sbe.v8.5.legtradeid", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.leg_trade_ref_id = ProtoField.new("Leg Trade Ref Id", "cme.futures.ilink3.sbe.v8.5.legtraderefid", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "cme.futures.ilink3.sbe.v8.5.liquidityflag", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.list_update_action = ProtoField.new("List Update Action", "cme.futures.ilink3.sbe.v8.5.listupdateaction", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.location = ProtoField.new("Location", "cme.futures.ilink3.sbe.v8.5.location", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.location_optional = ProtoField.new("Location Optional", "cme.futures.ilink3.sbe.v8.5.locationoptional", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.managed_order = ProtoField.new("Managed Order", "cme.futures.ilink3.sbe.v8.5.managedorder", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.mantissa = ProtoField.new("Mantissa", "cme.futures.ilink3.sbe.v8.5.mantissa", ftypes.INT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.mantissa_32 = ProtoField.new("Mantissa 32", "cme.futures.ilink3.sbe.v8.5.mantissa32", ftypes.INT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.manual_order_indicator = ProtoField.new("Manual Order Indicator", "cme.futures.ilink3.sbe.v8.5.manualorderindicator", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.manual_order_indicator_optional = ProtoField.new("Manual Order Indicator Optional", "cme.futures.ilink3.sbe.v8.5.manualorderindicatoroptional", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.market_segment_id = ProtoField.new("Market Segment Id", "cme.futures.ilink3.sbe.v8.5.marketsegmentid", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_action_ord_typ = ProtoField.new("Mass Action Ord Typ", "cme.futures.ilink3.sbe.v8.5.massactionordtyp", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_action_reject_reason = ProtoField.new("Mass Action Reject Reason", "cme.futures.ilink3.sbe.v8.5.massactionrejectreason", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_action_report_id = ProtoField.new("Mass Action Report Id", "cme.futures.ilink3.sbe.v8.5.massactionreportid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_action_response = ProtoField.new("Mass Action Response", "cme.futures.ilink3.sbe.v8.5.massactionresponse", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_action_scope = ProtoField.new("Mass Action Scope", "cme.futures.ilink3.sbe.v8.5.massactionscope", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_cancel_request_type = ProtoField.new("Mass Cancel Request Type", "cme.futures.ilink3.sbe.v8.5.masscancelrequesttype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_cancel_tif = ProtoField.new("Mass Cancel Tif", "cme.futures.ilink3.sbe.v8.5.masscanceltif", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_ack_entry_group = ProtoField.new("Mass Quote Ack Entry Group", "cme.futures.ilink3.sbe.v8.5.massquoteackentrygroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_ack_entry_groups = ProtoField.new("Mass Quote Ack Entry Groups", "cme.futures.ilink3.sbe.v8.5.massquoteackentrygroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_entry_group = ProtoField.new("Mass Quote Entry Group", "cme.futures.ilink3.sbe.v8.5.massquoteentrygroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_entry_groups = ProtoField.new("Mass Quote Entry Groups", "cme.futures.ilink3.sbe.v8.5.massquoteentrygroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_status_req_id = ProtoField.new("Mass Status Req Id", "cme.futures.ilink3.sbe.v8.5.massstatusreqid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_status_req_id_optional = ProtoField.new("Mass Status Req Id Optional", "cme.futures.ilink3.sbe.v8.5.massstatusreqidoptional", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_status_req_type = ProtoField.new("Mass Status Req Type", "cme.futures.ilink3.sbe.v8.5.massstatusreqtype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_status_tif = ProtoField.new("Mass Status Tif", "cme.futures.ilink3.sbe.v8.5.massstatustif", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.futures.ilink3.sbe.v8.5.maturitymonthyear", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.max_no_of_substitutions = ProtoField.new("Max No Of Substitutions", "cme.futures.ilink3.sbe.v8.5.maxnoofsubstitutions", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.md_trade_entry_id = ProtoField.new("Md Trade Entry Id", "cme.futures.ilink3.sbe.v8.5.mdtradeentryid", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.memo = ProtoField.new("Memo", "cme.futures.ilink3.sbe.v8.5.memo", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.message_header = ProtoField.new("Message Header", "cme.futures.ilink3.sbe.v8.5.messageheader", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.message_length = ProtoField.new("Message Length", "cme.futures.ilink3.sbe.v8.5.messagelength", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.min_qty = ProtoField.new("Min Qty", "cme.futures.ilink3.sbe.v8.5.minqty", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.mm_protection_reset = ProtoField.new("Mm Protection Reset", "cme.futures.ilink3.sbe.v8.5.mmprotectionreset", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.month = ProtoField.new("Month", "cme.futures.ilink3.sbe.v8.5.month", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.msg_count = ProtoField.new("Msg Count", "cme.futures.ilink3.sbe.v8.5.msgcount", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.msg_count_16 = ProtoField.new("Msg Count 16", "cme.futures.ilink3.sbe.v8.5.msgcount16", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.next_seq_no = ProtoField.new("Next Seq No", "cme.futures.ilink3.sbe.v8.5.nextseqno", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.nh = ProtoField.new("Nh", "cme.futures.ilink3.sbe.v8.5.nh", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_cme_futures_ilink3_sbe_v8_5.fields.no_processed_entries = ProtoField.new("No Processed Entries", "cme.futures.ilink3.sbe.v8.5.noprocessedentries", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.no_processed_quotes = ProtoField.new("No Processed Quotes", "cme.futures.ilink3.sbe.v8.5.noprocessedquotes", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.num_in_group = ProtoField.new("Num In Group", "cme.futures.ilink3.sbe.v8.5.numingroup", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.ob = ProtoField.new("Ob", "cme.futures.ilink3.sbe.v8.5.ob", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cme_futures_ilink3_sbe_v8_5.fields.offer_px = ProtoField.new("Offer Px", "cme.futures.ilink3.sbe.v8.5.offerpx", ftypes.DOUBLE)
omi_cme_futures_ilink3_sbe_v8_5.fields.offer_size = ProtoField.new("Offer Size", "cme.futures.ilink3.sbe.v8.5.offersize", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.ofm_override = ProtoField.new("Ofm Override", "cme.futures.ilink3.sbe.v8.5.ofmoverride", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.option_delta = ProtoField.new("Option Delta", "cme.futures.ilink3.sbe.v8.5.optiondelta", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "cme.futures.ilink3.sbe.v8.5.ordrejreason", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status = ProtoField.new("Ord Status", "cme.futures.ilink3.sbe.v8.5.ordstatus", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status_req_id = ProtoField.new("Ord Status Req Id", "cme.futures.ilink3.sbe.v8.5.ordstatusreqid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status_req_id_optional = ProtoField.new("Ord Status Req Id Optional", "cme.futures.ilink3.sbe.v8.5.ordstatusreqidoptional", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status_req_type = ProtoField.new("Ord Status Req Type", "cme.futures.ilink3.sbe.v8.5.ordstatusreqtype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status_trd = ProtoField.new("Ord Status Trd", "cme.futures.ilink3.sbe.v8.5.ordstatustrd", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status_trd_cxl = ProtoField.new("Ord Status Trd Cxl", "cme.futures.ilink3.sbe.v8.5.ordstatustrdcxl", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.ord_type = ProtoField.new("Ord Type", "cme.futures.ilink3.sbe.v8.5.ordtype", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.ord_type_optional = ProtoField.new("Ord Type Optional", "cme.futures.ilink3.sbe.v8.5.ordtypeoptional", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_exec_id = ProtoField.new("Order Event Exec Id", "cme.futures.ilink3.sbe.v8.5.ordereventexecid", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_px = ProtoField.new("Order Event Px", "cme.futures.ilink3.sbe.v8.5.ordereventpx", ftypes.DOUBLE)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_qty = ProtoField.new("Order Event Qty", "cme.futures.ilink3.sbe.v8.5.ordereventqty", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_reason = ProtoField.new("Order Event Reason", "cme.futures.ilink3.sbe.v8.5.ordereventreason", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_text = ProtoField.new("Order Event Text", "cme.futures.ilink3.sbe.v8.5.ordereventtext", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_type = ProtoField.new("Order Event Type", "cme.futures.ilink3.sbe.v8.5.ordereventtype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_id = ProtoField.new("Order Id", "cme.futures.ilink3.sbe.v8.5.orderid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_qty = ProtoField.new("Order Qty", "cme.futures.ilink3.sbe.v8.5.orderqty", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_qty_optional = ProtoField.new("Order Qty Optional", "cme.futures.ilink3.sbe.v8.5.orderqtyoptional", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_request_id = ProtoField.new("Order Request Id", "cme.futures.ilink3.sbe.v8.5.orderrequestid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.orig_secondary_execution_id = ProtoField.new("Orig Secondary Execution Id", "cme.futures.ilink3.sbe.v8.5.origsecondaryexecutionid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.orig_side_trade_id = ProtoField.new("Orig Side Trade Id", "cme.futures.ilink3.sbe.v8.5.origsidetradeid", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.origclordid = ProtoField.new("OrigClOrdId", "cme.futures.ilink3.sbe.v8.5.origclordid", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.original_order_event_exec_id = ProtoField.new("Original Order Event Exec Id", "cme.futures.ilink3.sbe.v8.5.originalordereventexecid", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.ownership = ProtoField.new("Ownership", "cme.futures.ilink3.sbe.v8.5.ownership", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.packet = ProtoField.new("Packet", "cme.futures.ilink3.sbe.v8.5.packet", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_detail_definition_status = ProtoField.new("Party Detail Definition Status", "cme.futures.ilink3.sbe.v8.5.partydetaildefinitionstatus", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_detail_id = ProtoField.new("Party Detail Id", "cme.futures.ilink3.sbe.v8.5.partydetailid", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_detail_request_status = ProtoField.new("Party Detail Request Status", "cme.futures.ilink3.sbe.v8.5.partydetailrequeststatus", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_detail_role = ProtoField.new("Party Detail Role", "cme.futures.ilink3.sbe.v8.5.partydetailrole", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_group = ProtoField.new("Party Details Group", "cme.futures.ilink3.sbe.v8.5.partydetailsgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_groups = ProtoField.new("Party Details Groups", "cme.futures.ilink3.sbe.v8.5.partydetailsgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_list_report_id = ProtoField.new("Party Details List Report Id", "cme.futures.ilink3.sbe.v8.5.partydetailslistreportid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_list_req_id = ProtoField.new("Party Details List Req Id", "cme.futures.ilink3.sbe.v8.5.partydetailslistreqid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_list_req_id_optional = ProtoField.new("Party Details List Req Id Optional", "cme.futures.ilink3.sbe.v8.5.partydetailslistreqidoptional", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_i_ds_group = ProtoField.new("Party I Ds Group", "cme.futures.ilink3.sbe.v8.5.partyidsgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_i_ds_groups = ProtoField.new("Party I Ds Groups", "cme.futures.ilink3.sbe.v8.5.partyidsgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_id = ProtoField.new("Party Id", "cme.futures.ilink3.sbe.v8.5.partyid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_id_source = ProtoField.new("Party Id Source", "cme.futures.ilink3.sbe.v8.5.partyidsource", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_role = ProtoField.new("Party Role", "cme.futures.ilink3.sbe.v8.5.partyrole", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.payload = ProtoField.new("Payload", "cme.futures.ilink3.sbe.v8.5.payload", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.poss_retrans_flag = ProtoField.new("Poss Retrans Flag", "cme.futures.ilink3.sbe.v8.5.possretransflag", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.previous_seq_no = ProtoField.new("Previous Seq No", "cme.futures.ilink3.sbe.v8.5.previousseqno", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.previous_uuid = ProtoField.new("Previous Uuid", "cme.futures.ilink3.sbe.v8.5.previousuuid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.price = ProtoField.new("Price", "cme.futures.ilink3.sbe.v8.5.price", ftypes.DOUBLE)
omi_cme_futures_ilink3_sbe_v8_5.fields.price_optional = ProtoField.new("Price Optional", "cme.futures.ilink3.sbe.v8.5.priceoptional", ftypes.DOUBLE)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_ack_status = ProtoField.new("Quote Ack Status", "cme.futures.ilink3.sbe.v8.5.quoteackstatus", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_entry_group = ProtoField.new("Quote Cancel Ack Entry Group", "cme.futures.ilink3.sbe.v8.5.quotecancelackentrygroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_entry_groups = ProtoField.new("Quote Cancel Ack Entry Groups", "cme.futures.ilink3.sbe.v8.5.quotecancelackentrygroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_set_group = ProtoField.new("Quote Cancel Ack Set Group", "cme.futures.ilink3.sbe.v8.5.quotecancelacksetgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_set_groups = ProtoField.new("Quote Cancel Ack Set Groups", "cme.futures.ilink3.sbe.v8.5.quotecancelacksetgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_entry_group = ProtoField.new("Quote Cancel Entry Group", "cme.futures.ilink3.sbe.v8.5.quotecancelentrygroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_entry_groups = ProtoField.new("Quote Cancel Entry Groups", "cme.futures.ilink3.sbe.v8.5.quotecancelentrygroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_set_group = ProtoField.new("Quote Cancel Set Group", "cme.futures.ilink3.sbe.v8.5.quotecancelsetgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_set_groups = ProtoField.new("Quote Cancel Set Groups", "cme.futures.ilink3.sbe.v8.5.quotecancelsetgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_type = ProtoField.new("Quote Cancel Type", "cme.futures.ilink3.sbe.v8.5.quotecanceltype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cxl_status = ProtoField.new("Quote Cxl Status", "cme.futures.ilink3.sbe.v8.5.quotecxlstatus", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_entry_id = ProtoField.new("Quote Entry Id", "cme.futures.ilink3.sbe.v8.5.quoteentryid", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_entry_reject_reason = ProtoField.new("Quote Entry Reject Reason", "cme.futures.ilink3.sbe.v8.5.quoteentryrejectreason", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_error_code = ProtoField.new("Quote Error Code", "cme.futures.ilink3.sbe.v8.5.quoteerrorcode", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_id = ProtoField.new("Quote Id", "cme.futures.ilink3.sbe.v8.5.quoteid", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "cme.futures.ilink3.sbe.v8.5.quoterejectreason", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.futures.ilink3.sbe.v8.5.quotereqid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_req_id_optional = ProtoField.new("Quote Req Id Optional", "cme.futures.ilink3.sbe.v8.5.quotereqidoptional", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_set_id = ProtoField.new("Quote Set Id", "cme.futures.ilink3.sbe.v8.5.quotesetid", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_type = ProtoField.new("Quote Type", "cme.futures.ilink3.sbe.v8.5.quotetype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.reason = ProtoField.new("Reason", "cme.futures.ilink3.sbe.v8.5.reason", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "cme.futures.ilink3.sbe.v8.5.refmsgtype", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "cme.futures.ilink3.sbe.v8.5.refseqnum", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.ref_tag_id = ProtoField.new("Ref Tag Id", "cme.futures.ilink3.sbe.v8.5.reftagid", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.futures.ilink3.sbe.v8.5.relatedsymgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.futures.ilink3.sbe.v8.5.relatedsymgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.request_result = ProtoField.new("Request Result", "cme.futures.ilink3.sbe.v8.5.requestresult", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.request_time = ProtoField.new("Request Time", "cme.futures.ilink3.sbe.v8.5.requesttime", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.request_timestamp = ProtoField.new("Request Timestamp", "cme.futures.ilink3.sbe.v8.5.requesttimestamp", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_i_ds_group = ProtoField.new("Requesting Party I Ds Group", "cme.futures.ilink3.sbe.v8.5.requestingpartyidsgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_i_ds_groups = ProtoField.new("Requesting Party I Ds Groups", "cme.futures.ilink3.sbe.v8.5.requestingpartyidsgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_id = ProtoField.new("Requesting Party Id", "cme.futures.ilink3.sbe.v8.5.requestingpartyid", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_id_source = ProtoField.new("Requesting Party Id Source", "cme.futures.ilink3.sbe.v8.5.requestingpartyidsource", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_role = ProtoField.new("Requesting Party Role", "cme.futures.ilink3.sbe.v8.5.requestingpartyrole", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.reserved = ProtoField.new("Reserved", "cme.futures.ilink3.sbe.v8.5.reserved", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.reserved_1 = ProtoField.new("Reserved 1", "cme.futures.ilink3.sbe.v8.5.reserved1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_cme_futures_ilink3_sbe_v8_5.fields.reserved_2 = ProtoField.new("Reserved 2", "cme.futures.ilink3.sbe.v8.5.reserved2", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_cme_futures_ilink3_sbe_v8_5.fields.reserved_3 = ProtoField.new("Reserved 3", "cme.futures.ilink3.sbe.v8.5.reserved3", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_cme_futures_ilink3_sbe_v8_5.fields.reserved_4 = ProtoField.new("Reserved 4", "cme.futures.ilink3.sbe.v8.5.reserved4", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_cme_futures_ilink3_sbe_v8_5.fields.reserved_5 = ProtoField.new("Reserved 5", "cme.futures.ilink3.sbe.v8.5.reserved5", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_cme_futures_ilink3_sbe_v8_5.fields.rfq_side = ProtoField.new("Rfq Side", "cme.futures.ilink3.sbe.v8.5.rfqside", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.risk_free_rate = ProtoField.new("Risk Free Rate", "cme.futures.ilink3.sbe.v8.5.riskfreerate", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.ilink3.sbe.v8.5.schemaid", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.sec_exec_id = ProtoField.new("Sec Exec Id", "cme.futures.ilink3.sbe.v8.5.secexecid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.secret_key_secure_id_expiration = ProtoField.new("Secret Key Secure Id Expiration", "cme.futures.ilink3.sbe.v8.5.secretkeysecureidexpiration", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_request_leg_group = ProtoField.new("Security Definition Request Leg Group", "cme.futures.ilink3.sbe.v8.5.securitydefinitionrequestleggroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_request_leg_groups = ProtoField.new("Security Definition Request Leg Groups", "cme.futures.ilink3.sbe.v8.5.securitydefinitionrequestleggroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_response_leg_group = ProtoField.new("Security Definition Response Leg Group", "cme.futures.ilink3.sbe.v8.5.securitydefinitionresponseleggroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_response_leg_groups = ProtoField.new("Security Definition Response Leg Groups", "cme.futures.ilink3.sbe.v8.5.securitydefinitionresponseleggroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_group = ProtoField.new("Security Group", "cme.futures.ilink3.sbe.v8.5.securitygroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_id = ProtoField.new("Security Id", "cme.futures.ilink3.sbe.v8.5.securityid", ftypes.INT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_id_optional = ProtoField.new("Security Id Optional", "cme.futures.ilink3.sbe.v8.5.securityidoptional", ftypes.INT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_req_id = ProtoField.new("Security Req Id", "cme.futures.ilink3.sbe.v8.5.securityreqid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_response_id = ProtoField.new("Security Response Id", "cme.futures.ilink3.sbe.v8.5.securityresponseid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_response_type = ProtoField.new("Security Response Type", "cme.futures.ilink3.sbe.v8.5.securityresponsetype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.futures.ilink3.sbe.v8.5.securitysubtype", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_type = ProtoField.new("Security Type", "cme.futures.ilink3.sbe.v8.5.securitytype", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.self_match_prevention_id = ProtoField.new("Self Match Prevention Id", "cme.futures.ilink3.sbe.v8.5.selfmatchpreventionid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.self_match_prevention_instruction = ProtoField.new("Self Match Prevention Instruction", "cme.futures.ilink3.sbe.v8.5.selfmatchpreventioninstruction", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.sender_id = ProtoField.new("Sender Id", "cme.futures.ilink3.sbe.v8.5.senderid", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.sender_id_optional = ProtoField.new("Sender Id Optional", "cme.futures.ilink3.sbe.v8.5.senderidoptional", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.sending_time_epoch = ProtoField.new("Sending Time Epoch", "cme.futures.ilink3.sbe.v8.5.sendingtimeepoch", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.seq_num = ProtoField.new("Seq Num", "cme.futures.ilink3.sbe.v8.5.seqnum", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.session = ProtoField.new("Session", "cme.futures.ilink3.sbe.v8.5.session", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.short_sale_type = ProtoField.new("Short Sale Type", "cme.futures.ilink3.sbe.v8.5.shortsaletype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.side = ProtoField.new("Side", "cme.futures.ilink3.sbe.v8.5.side", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.side_optional = ProtoField.new("Side Optional", "cme.futures.ilink3.sbe.v8.5.sideoptional", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.side_time_in_force = ProtoField.new("Side Time In Force", "cme.futures.ilink3.sbe.v8.5.sidetimeinforce", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.side_trade_id = ProtoField.new("Side Trade Id", "cme.futures.ilink3.sbe.v8.5.sidetradeid", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.sides_group = ProtoField.new("Sides Group", "cme.futures.ilink3.sbe.v8.5.sidesgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.sides_groups = ProtoField.new("Sides Groups", "cme.futures.ilink3.sbe.v8.5.sidesgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.simple_open_frame = ProtoField.new("Simple Open Frame", "cme.futures.ilink3.sbe.v8.5.simpleopenframe", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.simple_open_framing_header = ProtoField.new("Simple Open Framing Header", "cme.futures.ilink3.sbe.v8.5.simpleopenframingheader", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.source_repo_id = ProtoField.new("Source Repo Id", "cme.futures.ilink3.sbe.v8.5.sourcerepoid", ftypes.INT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.split_msg = ProtoField.new("Split Msg", "cme.futures.ilink3.sbe.v8.5.splitmsg", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.start_date = ProtoField.new("Start Date", "cme.futures.ilink3.sbe.v8.5.startdate", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.stop_px = ProtoField.new("Stop Px", "cme.futures.ilink3.sbe.v8.5.stoppx", ftypes.DOUBLE)
omi_cme_futures_ilink3_sbe_v8_5.fields.symbol = ProtoField.new("Symbol", "cme.futures.ilink3.sbe.v8.5.symbol", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.template_id = ProtoField.new("Template Id", "cme.futures.ilink3.sbe.v8.5.templateid", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.termination_type = ProtoField.new("Termination Type", "cme.futures.ilink3.sbe.v8.5.terminationtype", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.text = ProtoField.new("Text", "cme.futures.ilink3.sbe.v8.5.text", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.time_in_force = ProtoField.new("Time In Force", "cme.futures.ilink3.sbe.v8.5.timeinforce", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.time_to_expiration = ProtoField.new("Time To Expiration", "cme.futures.ilink3.sbe.v8.5.timetoexpiration", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.tot_no_quote_entries = ProtoField.new("Tot No Quote Entries", "cme.futures.ilink3.sbe.v8.5.totnoquoteentries", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.tot_no_quote_entries_optional = ProtoField.new("Tot No Quote Entries Optional", "cme.futures.ilink3.sbe.v8.5.totnoquoteentriesoptional", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.tot_num_parties = ProtoField.new("Tot Num Parties", "cme.futures.ilink3.sbe.v8.5.totnumparties", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "cme.futures.ilink3.sbe.v8.5.totalaffectedorders", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.total_num_securities = ProtoField.new("Total Num Securities", "cme.futures.ilink3.sbe.v8.5.totalnumsecurities", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.trade_addendum = ProtoField.new("Trade Addendum", "cme.futures.ilink3.sbe.v8.5.tradeaddendum", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.trade_date = ProtoField.new("Trade Date", "cme.futures.ilink3.sbe.v8.5.tradedate", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.trade_link_id = ProtoField.new("Trade Link Id", "cme.futures.ilink3.sbe.v8.5.tradelinkid", ftypes.UINT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.trading_system_name = ProtoField.new("Trading System Name", "cme.futures.ilink3.sbe.v8.5.tradingsystemname", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.trading_system_vendor = ProtoField.new("Trading System Vendor", "cme.futures.ilink3.sbe.v8.5.tradingsystemvendor", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.trading_system_version = ProtoField.new("Trading System Version", "cme.futures.ilink3.sbe.v8.5.tradingsystemversion", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.trans_bkd_time = ProtoField.new("Trans Bkd Time", "cme.futures.ilink3.sbe.v8.5.transbkdtime", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.ilink3.sbe.v8.5.transacttime", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.trd_reg_publication_reason = ProtoField.new("Trd Reg Publication Reason", "cme.futures.ilink3.sbe.v8.5.trdregpublicationreason", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.trd_reg_publication_type = ProtoField.new("Trd Reg Publication Type", "cme.futures.ilink3.sbe.v8.5.trdregpublicationtype", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.trd_reg_publications_group = ProtoField.new("Trd Reg Publications Group", "cme.futures.ilink3.sbe.v8.5.trdregpublicationsgroup", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.trd_reg_publications_groups = ProtoField.new("Trd Reg Publications Groups", "cme.futures.ilink3.sbe.v8.5.trdregpublicationsgroups", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.underlying_px = ProtoField.new("Underlying Px", "cme.futures.ilink3.sbe.v8.5.underlyingpx", ftypes.DOUBLE)
omi_cme_futures_ilink3_sbe_v8_5.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "cme.futures.ilink3.sbe.v8.5.underlyingsecurityid", ftypes.INT32)
omi_cme_futures_ilink3_sbe_v8_5.fields.unsolicited_cancel_type = ProtoField.new("Unsolicited Cancel Type", "cme.futures.ilink3.sbe.v8.5.unsolicitedcanceltype", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.uuid = ProtoField.new("Uuid", "cme.futures.ilink3.sbe.v8.5.uuid", ftypes.UINT64)
omi_cme_futures_ilink3_sbe_v8_5.fields.var_data = ProtoField.new("Var Data", "cme.futures.ilink3.sbe.v8.5.vardata", ftypes.BYTES)
omi_cme_futures_ilink3_sbe_v8_5.fields.version = ProtoField.new("Version", "cme.futures.ilink3.sbe.v8.5.version", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.volatility = ProtoField.new("Volatility", "cme.futures.ilink3.sbe.v8.5.volatility", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.week = ProtoField.new("Week", "cme.futures.ilink3.sbe.v8.5.week", ftypes.UINT8)
omi_cme_futures_ilink3_sbe_v8_5.fields.year = ProtoField.new("Year", "cme.futures.ilink3.sbe.v8.5.year", ftypes.UINT16)

-- Cme Futures iLink3 Sbe 8.5 messages
omi_cme_futures_ilink3_sbe_v8_5.fields.business_reject = ProtoField.new("Business Reject", "cme.futures.ilink3.sbe.v8.5.businessreject", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.establish = ProtoField.new("Establish", "cme.futures.ilink3.sbe.v8.5.establish", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.establishment_ack = ProtoField.new("Establishment Ack", "cme.futures.ilink3.sbe.v8.5.establishmentack", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.establishment_reject = ProtoField.new("Establishment Reject", "cme.futures.ilink3.sbe.v8.5.establishmentreject", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_ack = ProtoField.new("Execution Ack", "cme.futures.ilink3.sbe.v8.5.executionack", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_cancel = ProtoField.new("Execution Report Cancel", "cme.futures.ilink3.sbe.v8.5.executionreportcancel", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_elimination = ProtoField.new("Execution Report Elimination", "cme.futures.ilink3.sbe.v8.5.executionreportelimination", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_modify = ProtoField.new("Execution Report Modify", "cme.futures.ilink3.sbe.v8.5.executionreportmodify", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_new = ProtoField.new("Execution Report New", "cme.futures.ilink3.sbe.v8.5.executionreportnew", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_reject = ProtoField.new("Execution Report Reject", "cme.futures.ilink3.sbe.v8.5.executionreportreject", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_status = ProtoField.new("Execution Report Status", "cme.futures.ilink3.sbe.v8.5.executionreportstatus", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_outright = ProtoField.new("Execution Report Trade Addendum Outright", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumoutright", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread = ProtoField.new("Execution Report Trade Addendum Spread", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumspread", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg = ProtoField.new("Execution Report Trade Addendum Spread Leg", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumspreadleg", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_outright = ProtoField.new("Execution Report Trade Outright", "cme.futures.ilink3.sbe.v8.5.executionreporttradeoutright", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread = ProtoField.new("Execution Report Trade Spread", "cme.futures.ilink3.sbe.v8.5.executionreporttradespread", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg = ProtoField.new("Execution Report Trade Spread Leg", "cme.futures.ilink3.sbe.v8.5.executionreporttradespreadleg", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote = ProtoField.new("Mass Quote", "cme.futures.ilink3.sbe.v8.5.massquote", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_ack = ProtoField.new("Mass Quote Ack", "cme.futures.ilink3.sbe.v8.5.massquoteack", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.negotiate = ProtoField.new("Negotiate", "cme.futures.ilink3.sbe.v8.5.negotiate", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.negotiation_reject = ProtoField.new("Negotiation Reject", "cme.futures.ilink3.sbe.v8.5.negotiationreject", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.negotiation_response = ProtoField.new("Negotiation Response", "cme.futures.ilink3.sbe.v8.5.negotiationresponse", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.new_order_cross = ProtoField.new("New Order Cross", "cme.futures.ilink3.sbe.v8.5.newordercross", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.new_order_single = ProtoField.new("New Order Single", "cme.futures.ilink3.sbe.v8.5.newordersingle", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.not_applied = ProtoField.new("Not Applied", "cme.futures.ilink3.sbe.v8.5.notapplied", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_cancel_reject = ProtoField.new("Order Cancel Reject", "cme.futures.ilink3.sbe.v8.5.ordercancelreject", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_cancel_replace_reject = ProtoField.new("Order Cancel Replace Reject", "cme.futures.ilink3.sbe.v8.5.ordercancelreplacereject", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_cancel_replace_request = ProtoField.new("Order Cancel Replace Request", "cme.futures.ilink3.sbe.v8.5.ordercancelreplacerequest", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_cancel_request = ProtoField.new("Order Cancel Request", "cme.futures.ilink3.sbe.v8.5.ordercancelrequest", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_mass_action_report = ProtoField.new("Order Mass Action Report", "cme.futures.ilink3.sbe.v8.5.ordermassactionreport", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_mass_action_request = ProtoField.new("Order Mass Action Request", "cme.futures.ilink3.sbe.v8.5.ordermassactionrequest", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_mass_status_request = ProtoField.new("Order Mass Status Request", "cme.futures.ilink3.sbe.v8.5.ordermassstatusrequest", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.order_status_request = ProtoField.new("Order Status Request", "cme.futures.ilink3.sbe.v8.5.orderstatusrequest", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_definition_request = ProtoField.new("Party Details Definition Request", "cme.futures.ilink3.sbe.v8.5.partydetailsdefinitionrequest", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_definition_request_ack = ProtoField.new("Party Details Definition Request Ack", "cme.futures.ilink3.sbe.v8.5.partydetailsdefinitionrequestack", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_list_report = ProtoField.new("Party Details List Report", "cme.futures.ilink3.sbe.v8.5.partydetailslistreport", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_list_request = ProtoField.new("Party Details List Request", "cme.futures.ilink3.sbe.v8.5.partydetailslistrequest", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel = ProtoField.new("Quote Cancel", "cme.futures.ilink3.sbe.v8.5.quotecancel", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack = ProtoField.new("Quote Cancel Ack", "cme.futures.ilink3.sbe.v8.5.quotecancelack", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.request_for_quote = ProtoField.new("Request For Quote", "cme.futures.ilink3.sbe.v8.5.requestforquote", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.request_for_quote_ack = ProtoField.new("Request For Quote Ack", "cme.futures.ilink3.sbe.v8.5.requestforquoteack", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.retransmission = ProtoField.new("Retransmission", "cme.futures.ilink3.sbe.v8.5.retransmission", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.retransmit_reject = ProtoField.new("Retransmit Reject", "cme.futures.ilink3.sbe.v8.5.retransmitreject", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.retransmit_request = ProtoField.new("Retransmit Request", "cme.futures.ilink3.sbe.v8.5.retransmitrequest", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_request = ProtoField.new("Security Definition Request", "cme.futures.ilink3.sbe.v8.5.securitydefinitionrequest", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_response = ProtoField.new("Security Definition Response", "cme.futures.ilink3.sbe.v8.5.securitydefinitionresponse", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.sequence = ProtoField.new("Sequence", "cme.futures.ilink3.sbe.v8.5.sequence", ftypes.STRING)
omi_cme_futures_ilink3_sbe_v8_5.fields.terminate = ProtoField.new("Terminate", "cme.futures.ilink3.sbe.v8.5.terminate", ftypes.STRING)

-- Cme Futures iLink3 Sbe 8.5 generated fields
omi_cme_futures_ilink3_sbe_v8_5.fields.affected_orders_group_index = ProtoField.new("Affected Orders Group Index", "cme.futures.ilink3.sbe.v8.5.affectedordersgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_outright_order_event_group_index = ProtoField.new("Execution Report Trade Addendum Outright Order Event Group Index", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumoutrightordereventgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_group_index = ProtoField.new("Execution Report Trade Addendum Spread Leg Group Index", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumspreadleggroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_order_event_group_index = ProtoField.new("Execution Report Trade Addendum Spread Leg Order Event Group Index", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumspreadlegordereventgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_order_event_group_index = ProtoField.new("Execution Report Trade Addendum Spread Order Event Group Index", "cme.futures.ilink3.sbe.v8.5.executionreporttradeaddendumspreadordereventgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_outright_order_event_group_index = ProtoField.new("Execution Report Trade Outright Order Event Group Index", "cme.futures.ilink3.sbe.v8.5.executionreporttradeoutrightordereventgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_group_index = ProtoField.new("Execution Report Trade Spread Leg Group Index", "cme.futures.ilink3.sbe.v8.5.executionreporttradespreadleggroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_order_event_group_index = ProtoField.new("Execution Report Trade Spread Leg Order Event Group Index", "cme.futures.ilink3.sbe.v8.5.executionreporttradespreadlegordereventgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_order_event_group_index = ProtoField.new("Execution Report Trade Spread Order Event Group Index", "cme.futures.ilink3.sbe.v8.5.executionreporttradespreadordereventgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.fills_group_index = ProtoField.new("Fills Group Index", "cme.futures.ilink3.sbe.v8.5.fillsgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_ack_entry_group_index = ProtoField.new("Mass Quote Ack Entry Group Index", "cme.futures.ilink3.sbe.v8.5.massquoteackentrygroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_entry_group_index = ProtoField.new("Mass Quote Entry Group Index", "cme.futures.ilink3.sbe.v8.5.massquoteentrygroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_group_index = ProtoField.new("Party Details Group Index", "cme.futures.ilink3.sbe.v8.5.partydetailsgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.party_i_ds_group_index = ProtoField.new("Party I Ds Group Index", "cme.futures.ilink3.sbe.v8.5.partyidsgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_entry_group_index = ProtoField.new("Quote Cancel Ack Entry Group Index", "cme.futures.ilink3.sbe.v8.5.quotecancelackentrygroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_set_group_index = ProtoField.new("Quote Cancel Ack Set Group Index", "cme.futures.ilink3.sbe.v8.5.quotecancelacksetgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_entry_group_index = ProtoField.new("Quote Cancel Entry Group Index", "cme.futures.ilink3.sbe.v8.5.quotecancelentrygroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_set_group_index = ProtoField.new("Quote Cancel Set Group Index", "cme.futures.ilink3.sbe.v8.5.quotecancelsetgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.related_sym_group_index = ProtoField.new("Related Sym Group Index", "cme.futures.ilink3.sbe.v8.5.relatedsymgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_i_ds_group_index = ProtoField.new("Requesting Party I Ds Group Index", "cme.futures.ilink3.sbe.v8.5.requestingpartyidsgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_request_leg_group_index = ProtoField.new("Security Definition Request Leg Group Index", "cme.futures.ilink3.sbe.v8.5.securitydefinitionrequestleggroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_response_leg_group_index = ProtoField.new("Security Definition Response Leg Group Index", "cme.futures.ilink3.sbe.v8.5.securitydefinitionresponseleggroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.sides_group_index = ProtoField.new("Sides Group Index", "cme.futures.ilink3.sbe.v8.5.sidesgroupindex", ftypes.UINT16)
omi_cme_futures_ilink3_sbe_v8_5.fields.trd_reg_publications_group_index = ProtoField.new("Trd Reg Publications Group Index", "cme.futures.ilink3.sbe.v8.5.trdregpublicationsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cme Futures iLink3 Sbe 8.5 Element Dissection Options
show.affected_orders_group = true
show.affected_orders_groups = true
show.business_reject = true
show.credentials = true
show.establish = true
show.establishment_ack = true
show.establishment_reject = true
show.exec_inst = true
show.execution_ack = true
show.execution_report_cancel = true
show.execution_report_elimination = true
show.execution_report_modify = true
show.execution_report_new = true
show.execution_report_reject = true
show.execution_report_status = true
show.execution_report_trade_addendum_outright = true
show.execution_report_trade_addendum_outright_order_event_group = true
show.execution_report_trade_addendum_outright_order_event_groups = true
show.execution_report_trade_addendum_spread = true
show.execution_report_trade_addendum_spread_leg = true
show.execution_report_trade_addendum_spread_leg_group = true
show.execution_report_trade_addendum_spread_leg_groups = true
show.execution_report_trade_addendum_spread_leg_order_event_group = true
show.execution_report_trade_addendum_spread_leg_order_event_groups = true
show.execution_report_trade_addendum_spread_order_event_group = true
show.execution_report_trade_addendum_spread_order_event_groups = true
show.execution_report_trade_outright = true
show.execution_report_trade_outright_order_event_group = true
show.execution_report_trade_outright_order_event_groups = true
show.execution_report_trade_spread = true
show.execution_report_trade_spread_leg = true
show.execution_report_trade_spread_leg_group = true
show.execution_report_trade_spread_leg_groups = true
show.execution_report_trade_spread_leg_order_event_group = true
show.execution_report_trade_spread_leg_order_event_groups = true
show.execution_report_trade_spread_order_event_group = true
show.execution_report_trade_spread_order_event_groups = true
show.fills_group = true
show.fills_groups = true
show.group_size = true
show.leg_option_delta = true
show.mass_quote = true
show.mass_quote_ack = true
show.mass_quote_ack_entry_group = true
show.mass_quote_ack_entry_groups = true
show.mass_quote_entry_group = true
show.mass_quote_entry_groups = true
show.maturity_month_year = true
show.message_header = true
show.negotiate = true
show.negotiation_reject = true
show.negotiation_response = true
show.new_order_cross = true
show.new_order_single = true
show.not_applied = true
show.option_delta = true
show.order_cancel_reject = true
show.order_cancel_replace_reject = true
show.order_cancel_replace_request = true
show.order_cancel_request = true
show.order_mass_action_report = true
show.order_mass_action_request = true
show.order_mass_status_request = true
show.order_status_request = true
show.packet = true
show.party_details_definition_request = true
show.party_details_definition_request_ack = true
show.party_details_group = true
show.party_details_groups = true
show.party_details_list_report = true
show.party_details_list_request = true
show.party_i_ds_group = true
show.party_i_ds_groups = true
show.quote_cancel = true
show.quote_cancel_ack = true
show.quote_cancel_ack_entry_group = true
show.quote_cancel_ack_entry_groups = true
show.quote_cancel_ack_set_group = true
show.quote_cancel_ack_set_groups = true
show.quote_cancel_entry_group = true
show.quote_cancel_entry_groups = true
show.quote_cancel_set_group = true
show.quote_cancel_set_groups = true
show.related_sym_group = true
show.related_sym_groups = true
show.request_for_quote = true
show.request_for_quote_ack = true
show.requesting_party_i_ds_group = true
show.requesting_party_i_ds_groups = true
show.retransmission = true
show.retransmit_reject = true
show.retransmit_request = true
show.risk_free_rate = true
show.security_definition_request = true
show.security_definition_request_leg_group = true
show.security_definition_request_leg_groups = true
show.security_definition_response = true
show.security_definition_response_leg_group = true
show.security_definition_response_leg_groups = true
show.sequence = true
show.sides_group = true
show.sides_groups = true
show.simple_open_frame = true
show.simple_open_framing_header = true
show.terminate = true
show.time_to_expiration = true
show.trd_reg_publications_group = true
show.trd_reg_publications_groups = true
show.volatility = true
show.payload = false

-- Register Cme Futures iLink3 Sbe 8.5 Show Options
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_affected_orders_group = Pref.bool("Show Affected Orders Group", show.affected_orders_group, "Parse and add Affected Orders Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_affected_orders_groups = Pref.bool("Show Affected Orders Groups", show.affected_orders_groups, "Parse and add Affected Orders Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_business_reject = Pref.bool("Show Business Reject", show.business_reject, "Parse and add Business Reject to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_credentials = Pref.bool("Show Credentials", show.credentials, "Parse and add Credentials to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_establish = Pref.bool("Show Establish", show.establish, "Parse and add Establish to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_establishment_ack = Pref.bool("Show Establishment Ack", show.establishment_ack, "Parse and add Establishment Ack to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_establishment_reject = Pref.bool("Show Establishment Reject", show.establishment_reject, "Parse and add Establishment Reject to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_exec_inst = Pref.bool("Show Exec Inst", show.exec_inst, "Parse and add Exec Inst to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_ack = Pref.bool("Show Execution Ack", show.execution_ack, "Parse and add Execution Ack to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_cancel = Pref.bool("Show Execution Report Cancel", show.execution_report_cancel, "Parse and add Execution Report Cancel to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_elimination = Pref.bool("Show Execution Report Elimination", show.execution_report_elimination, "Parse and add Execution Report Elimination to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_modify = Pref.bool("Show Execution Report Modify", show.execution_report_modify, "Parse and add Execution Report Modify to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_new = Pref.bool("Show Execution Report New", show.execution_report_new, "Parse and add Execution Report New to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_reject = Pref.bool("Show Execution Report Reject", show.execution_report_reject, "Parse and add Execution Report Reject to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_status = Pref.bool("Show Execution Report Status", show.execution_report_status, "Parse and add Execution Report Status to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_outright = Pref.bool("Show Execution Report Trade Addendum Outright", show.execution_report_trade_addendum_outright, "Parse and add Execution Report Trade Addendum Outright to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_outright_order_event_group = Pref.bool("Show Execution Report Trade Addendum Outright Order Event Group", show.execution_report_trade_addendum_outright_order_event_group, "Parse and add Execution Report Trade Addendum Outright Order Event Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_outright_order_event_groups = Pref.bool("Show Execution Report Trade Addendum Outright Order Event Groups", show.execution_report_trade_addendum_outright_order_event_groups, "Parse and add Execution Report Trade Addendum Outright Order Event Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread = Pref.bool("Show Execution Report Trade Addendum Spread", show.execution_report_trade_addendum_spread, "Parse and add Execution Report Trade Addendum Spread to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg = Pref.bool("Show Execution Report Trade Addendum Spread Leg", show.execution_report_trade_addendum_spread_leg, "Parse and add Execution Report Trade Addendum Spread Leg to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_group = Pref.bool("Show Execution Report Trade Addendum Spread Leg Group", show.execution_report_trade_addendum_spread_leg_group, "Parse and add Execution Report Trade Addendum Spread Leg Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_groups = Pref.bool("Show Execution Report Trade Addendum Spread Leg Groups", show.execution_report_trade_addendum_spread_leg_groups, "Parse and add Execution Report Trade Addendum Spread Leg Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_order_event_group = Pref.bool("Show Execution Report Trade Addendum Spread Leg Order Event Group", show.execution_report_trade_addendum_spread_leg_order_event_group, "Parse and add Execution Report Trade Addendum Spread Leg Order Event Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_order_event_groups = Pref.bool("Show Execution Report Trade Addendum Spread Leg Order Event Groups", show.execution_report_trade_addendum_spread_leg_order_event_groups, "Parse and add Execution Report Trade Addendum Spread Leg Order Event Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_order_event_group = Pref.bool("Show Execution Report Trade Addendum Spread Order Event Group", show.execution_report_trade_addendum_spread_order_event_group, "Parse and add Execution Report Trade Addendum Spread Order Event Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_order_event_groups = Pref.bool("Show Execution Report Trade Addendum Spread Order Event Groups", show.execution_report_trade_addendum_spread_order_event_groups, "Parse and add Execution Report Trade Addendum Spread Order Event Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_outright = Pref.bool("Show Execution Report Trade Outright", show.execution_report_trade_outright, "Parse and add Execution Report Trade Outright to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_outright_order_event_group = Pref.bool("Show Execution Report Trade Outright Order Event Group", show.execution_report_trade_outright_order_event_group, "Parse and add Execution Report Trade Outright Order Event Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_outright_order_event_groups = Pref.bool("Show Execution Report Trade Outright Order Event Groups", show.execution_report_trade_outright_order_event_groups, "Parse and add Execution Report Trade Outright Order Event Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread = Pref.bool("Show Execution Report Trade Spread", show.execution_report_trade_spread, "Parse and add Execution Report Trade Spread to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg = Pref.bool("Show Execution Report Trade Spread Leg", show.execution_report_trade_spread_leg, "Parse and add Execution Report Trade Spread Leg to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_group = Pref.bool("Show Execution Report Trade Spread Leg Group", show.execution_report_trade_spread_leg_group, "Parse and add Execution Report Trade Spread Leg Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_groups = Pref.bool("Show Execution Report Trade Spread Leg Groups", show.execution_report_trade_spread_leg_groups, "Parse and add Execution Report Trade Spread Leg Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_order_event_group = Pref.bool("Show Execution Report Trade Spread Leg Order Event Group", show.execution_report_trade_spread_leg_order_event_group, "Parse and add Execution Report Trade Spread Leg Order Event Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_order_event_groups = Pref.bool("Show Execution Report Trade Spread Leg Order Event Groups", show.execution_report_trade_spread_leg_order_event_groups, "Parse and add Execution Report Trade Spread Leg Order Event Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_order_event_group = Pref.bool("Show Execution Report Trade Spread Order Event Group", show.execution_report_trade_spread_order_event_group, "Parse and add Execution Report Trade Spread Order Event Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_order_event_groups = Pref.bool("Show Execution Report Trade Spread Order Event Groups", show.execution_report_trade_spread_order_event_groups, "Parse and add Execution Report Trade Spread Order Event Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_fills_group = Pref.bool("Show Fills Group", show.fills_group, "Parse and add Fills Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_fills_groups = Pref.bool("Show Fills Groups", show.fills_groups, "Parse and add Fills Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_leg_option_delta = Pref.bool("Show Leg Option Delta", show.leg_option_delta, "Parse and add Leg Option Delta to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote = Pref.bool("Show Mass Quote", show.mass_quote, "Parse and add Mass Quote to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_ack = Pref.bool("Show Mass Quote Ack", show.mass_quote_ack, "Parse and add Mass Quote Ack to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_ack_entry_group = Pref.bool("Show Mass Quote Ack Entry Group", show.mass_quote_ack_entry_group, "Parse and add Mass Quote Ack Entry Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_ack_entry_groups = Pref.bool("Show Mass Quote Ack Entry Groups", show.mass_quote_ack_entry_groups, "Parse and add Mass Quote Ack Entry Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_entry_group = Pref.bool("Show Mass Quote Entry Group", show.mass_quote_entry_group, "Parse and add Mass Quote Entry Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_entry_groups = Pref.bool("Show Mass Quote Entry Groups", show.mass_quote_entry_groups, "Parse and add Mass Quote Entry Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_negotiate = Pref.bool("Show Negotiate", show.negotiate, "Parse and add Negotiate to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_negotiation_reject = Pref.bool("Show Negotiation Reject", show.negotiation_reject, "Parse and add Negotiation Reject to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_negotiation_response = Pref.bool("Show Negotiation Response", show.negotiation_response, "Parse and add Negotiation Response to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_new_order_cross = Pref.bool("Show New Order Cross", show.new_order_cross, "Parse and add New Order Cross to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_new_order_single = Pref.bool("Show New Order Single", show.new_order_single, "Parse and add New Order Single to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_not_applied = Pref.bool("Show Not Applied", show.not_applied, "Parse and add Not Applied to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_option_delta = Pref.bool("Show Option Delta", show.option_delta, "Parse and add Option Delta to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_reject = Pref.bool("Show Order Cancel Reject", show.order_cancel_reject, "Parse and add Order Cancel Reject to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_replace_reject = Pref.bool("Show Order Cancel Replace Reject", show.order_cancel_replace_reject, "Parse and add Order Cancel Replace Reject to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_replace_request = Pref.bool("Show Order Cancel Replace Request", show.order_cancel_replace_request, "Parse and add Order Cancel Replace Request to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_request = Pref.bool("Show Order Cancel Request", show.order_cancel_request, "Parse and add Order Cancel Request to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_mass_action_report = Pref.bool("Show Order Mass Action Report", show.order_mass_action_report, "Parse and add Order Mass Action Report to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_mass_action_request = Pref.bool("Show Order Mass Action Request", show.order_mass_action_request, "Parse and add Order Mass Action Request to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_mass_status_request = Pref.bool("Show Order Mass Status Request", show.order_mass_status_request, "Parse and add Order Mass Status Request to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_status_request = Pref.bool("Show Order Status Request", show.order_status_request, "Parse and add Order Status Request to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_definition_request = Pref.bool("Show Party Details Definition Request", show.party_details_definition_request, "Parse and add Party Details Definition Request to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_definition_request_ack = Pref.bool("Show Party Details Definition Request Ack", show.party_details_definition_request_ack, "Parse and add Party Details Definition Request Ack to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_group = Pref.bool("Show Party Details Group", show.party_details_group, "Parse and add Party Details Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_groups = Pref.bool("Show Party Details Groups", show.party_details_groups, "Parse and add Party Details Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_list_report = Pref.bool("Show Party Details List Report", show.party_details_list_report, "Parse and add Party Details List Report to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_list_request = Pref.bool("Show Party Details List Request", show.party_details_list_request, "Parse and add Party Details List Request to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_i_ds_group = Pref.bool("Show Party I Ds Group", show.party_i_ds_group, "Parse and add Party I Ds Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_i_ds_groups = Pref.bool("Show Party I Ds Groups", show.party_i_ds_groups, "Parse and add Party I Ds Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel = Pref.bool("Show Quote Cancel", show.quote_cancel, "Parse and add Quote Cancel to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack = Pref.bool("Show Quote Cancel Ack", show.quote_cancel_ack, "Parse and add Quote Cancel Ack to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_entry_group = Pref.bool("Show Quote Cancel Ack Entry Group", show.quote_cancel_ack_entry_group, "Parse and add Quote Cancel Ack Entry Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_entry_groups = Pref.bool("Show Quote Cancel Ack Entry Groups", show.quote_cancel_ack_entry_groups, "Parse and add Quote Cancel Ack Entry Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_set_group = Pref.bool("Show Quote Cancel Ack Set Group", show.quote_cancel_ack_set_group, "Parse and add Quote Cancel Ack Set Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_set_groups = Pref.bool("Show Quote Cancel Ack Set Groups", show.quote_cancel_ack_set_groups, "Parse and add Quote Cancel Ack Set Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_entry_group = Pref.bool("Show Quote Cancel Entry Group", show.quote_cancel_entry_group, "Parse and add Quote Cancel Entry Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_entry_groups = Pref.bool("Show Quote Cancel Entry Groups", show.quote_cancel_entry_groups, "Parse and add Quote Cancel Entry Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_set_group = Pref.bool("Show Quote Cancel Set Group", show.quote_cancel_set_group, "Parse and add Quote Cancel Set Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_set_groups = Pref.bool("Show Quote Cancel Set Groups", show.quote_cancel_set_groups, "Parse and add Quote Cancel Set Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_related_sym_group = Pref.bool("Show Related Sym Group", show.related_sym_group, "Parse and add Related Sym Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_related_sym_groups = Pref.bool("Show Related Sym Groups", show.related_sym_groups, "Parse and add Related Sym Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_request_for_quote = Pref.bool("Show Request For Quote", show.request_for_quote, "Parse and add Request For Quote to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_request_for_quote_ack = Pref.bool("Show Request For Quote Ack", show.request_for_quote_ack, "Parse and add Request For Quote Ack to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_requesting_party_i_ds_group = Pref.bool("Show Requesting Party I Ds Group", show.requesting_party_i_ds_group, "Parse and add Requesting Party I Ds Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_requesting_party_i_ds_groups = Pref.bool("Show Requesting Party I Ds Groups", show.requesting_party_i_ds_groups, "Parse and add Requesting Party I Ds Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_retransmission = Pref.bool("Show Retransmission", show.retransmission, "Parse and add Retransmission to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_retransmit_reject = Pref.bool("Show Retransmit Reject", show.retransmit_reject, "Parse and add Retransmit Reject to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_retransmit_request = Pref.bool("Show Retransmit Request", show.retransmit_request, "Parse and add Retransmit Request to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_risk_free_rate = Pref.bool("Show Risk Free Rate", show.risk_free_rate, "Parse and add Risk Free Rate to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_request = Pref.bool("Show Security Definition Request", show.security_definition_request, "Parse and add Security Definition Request to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_request_leg_group = Pref.bool("Show Security Definition Request Leg Group", show.security_definition_request_leg_group, "Parse and add Security Definition Request Leg Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_request_leg_groups = Pref.bool("Show Security Definition Request Leg Groups", show.security_definition_request_leg_groups, "Parse and add Security Definition Request Leg Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_response = Pref.bool("Show Security Definition Response", show.security_definition_response, "Parse and add Security Definition Response to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_response_leg_group = Pref.bool("Show Security Definition Response Leg Group", show.security_definition_response_leg_group, "Parse and add Security Definition Response Leg Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_response_leg_groups = Pref.bool("Show Security Definition Response Leg Groups", show.security_definition_response_leg_groups, "Parse and add Security Definition Response Leg Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_sequence = Pref.bool("Show Sequence", show.sequence, "Parse and add Sequence to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_sides_group = Pref.bool("Show Sides Group", show.sides_group, "Parse and add Sides Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_sides_groups = Pref.bool("Show Sides Groups", show.sides_groups, "Parse and add Sides Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_simple_open_frame = Pref.bool("Show Simple Open Frame", show.simple_open_frame, "Parse and add Simple Open Frame to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_simple_open_framing_header = Pref.bool("Show Simple Open Framing Header", show.simple_open_framing_header, "Parse and add Simple Open Framing Header to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_terminate = Pref.bool("Show Terminate", show.terminate, "Parse and add Terminate to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_time_to_expiration = Pref.bool("Show Time To Expiration", show.time_to_expiration, "Parse and add Time To Expiration to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_trd_reg_publications_group = Pref.bool("Show Trd Reg Publications Group", show.trd_reg_publications_group, "Parse and add Trd Reg Publications Group to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_trd_reg_publications_groups = Pref.bool("Show Trd Reg Publications Groups", show.trd_reg_publications_groups, "Parse and add Trd Reg Publications Groups to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_volatility = Pref.bool("Show Volatility", show.volatility, "Parse and add Volatility to protocol tree")
omi_cme_futures_ilink3_sbe_v8_5.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cme_futures_ilink3_sbe_v8_5.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.affected_orders_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_affected_orders_group then
    show.affected_orders_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_affected_orders_group
    changed = true
  end
  if show.affected_orders_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_affected_orders_groups then
    show.affected_orders_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_affected_orders_groups
    changed = true
  end
  if show.business_reject ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_business_reject then
    show.business_reject = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_business_reject
    changed = true
  end
  if show.credentials ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_credentials then
    show.credentials = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_credentials
    changed = true
  end
  if show.establish ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_establish then
    show.establish = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_establish
    changed = true
  end
  if show.establishment_ack ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_establishment_ack then
    show.establishment_ack = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_establishment_ack
    changed = true
  end
  if show.establishment_reject ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_establishment_reject then
    show.establishment_reject = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_establishment_reject
    changed = true
  end
  if show.exec_inst ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_exec_inst then
    show.exec_inst = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_exec_inst
    changed = true
  end
  if show.execution_ack ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_ack then
    show.execution_ack = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_ack
    changed = true
  end
  if show.execution_report_cancel ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_cancel then
    show.execution_report_cancel = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_cancel
    changed = true
  end
  if show.execution_report_elimination ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_elimination then
    show.execution_report_elimination = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_elimination
    changed = true
  end
  if show.execution_report_modify ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_modify then
    show.execution_report_modify = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_modify
    changed = true
  end
  if show.execution_report_new ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_new then
    show.execution_report_new = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_new
    changed = true
  end
  if show.execution_report_reject ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_reject then
    show.execution_report_reject = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_reject
    changed = true
  end
  if show.execution_report_status ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_status then
    show.execution_report_status = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_status
    changed = true
  end
  if show.execution_report_trade_addendum_outright ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_outright then
    show.execution_report_trade_addendum_outright = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_outright
    changed = true
  end
  if show.execution_report_trade_addendum_outright_order_event_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_outright_order_event_group then
    show.execution_report_trade_addendum_outright_order_event_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_outright_order_event_group
    changed = true
  end
  if show.execution_report_trade_addendum_outright_order_event_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_outright_order_event_groups then
    show.execution_report_trade_addendum_outright_order_event_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_outright_order_event_groups
    changed = true
  end
  if show.execution_report_trade_addendum_spread ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread then
    show.execution_report_trade_addendum_spread = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread
    changed = true
  end
  if show.execution_report_trade_addendum_spread_leg ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg then
    show.execution_report_trade_addendum_spread_leg = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg
    changed = true
  end
  if show.execution_report_trade_addendum_spread_leg_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_group then
    show.execution_report_trade_addendum_spread_leg_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_group
    changed = true
  end
  if show.execution_report_trade_addendum_spread_leg_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_groups then
    show.execution_report_trade_addendum_spread_leg_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_groups
    changed = true
  end
  if show.execution_report_trade_addendum_spread_leg_order_event_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_order_event_group then
    show.execution_report_trade_addendum_spread_leg_order_event_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_order_event_group
    changed = true
  end
  if show.execution_report_trade_addendum_spread_leg_order_event_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_order_event_groups then
    show.execution_report_trade_addendum_spread_leg_order_event_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_leg_order_event_groups
    changed = true
  end
  if show.execution_report_trade_addendum_spread_order_event_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_order_event_group then
    show.execution_report_trade_addendum_spread_order_event_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_order_event_group
    changed = true
  end
  if show.execution_report_trade_addendum_spread_order_event_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_order_event_groups then
    show.execution_report_trade_addendum_spread_order_event_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_addendum_spread_order_event_groups
    changed = true
  end
  if show.execution_report_trade_outright ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_outright then
    show.execution_report_trade_outright = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_outright
    changed = true
  end
  if show.execution_report_trade_outright_order_event_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_outright_order_event_group then
    show.execution_report_trade_outright_order_event_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_outright_order_event_group
    changed = true
  end
  if show.execution_report_trade_outright_order_event_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_outright_order_event_groups then
    show.execution_report_trade_outright_order_event_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_outright_order_event_groups
    changed = true
  end
  if show.execution_report_trade_spread ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread then
    show.execution_report_trade_spread = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread
    changed = true
  end
  if show.execution_report_trade_spread_leg ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg then
    show.execution_report_trade_spread_leg = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg
    changed = true
  end
  if show.execution_report_trade_spread_leg_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_group then
    show.execution_report_trade_spread_leg_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_group
    changed = true
  end
  if show.execution_report_trade_spread_leg_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_groups then
    show.execution_report_trade_spread_leg_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_groups
    changed = true
  end
  if show.execution_report_trade_spread_leg_order_event_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_order_event_group then
    show.execution_report_trade_spread_leg_order_event_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_order_event_group
    changed = true
  end
  if show.execution_report_trade_spread_leg_order_event_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_order_event_groups then
    show.execution_report_trade_spread_leg_order_event_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_leg_order_event_groups
    changed = true
  end
  if show.execution_report_trade_spread_order_event_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_order_event_group then
    show.execution_report_trade_spread_order_event_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_order_event_group
    changed = true
  end
  if show.execution_report_trade_spread_order_event_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_order_event_groups then
    show.execution_report_trade_spread_order_event_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_execution_report_trade_spread_order_event_groups
    changed = true
  end
  if show.fills_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_fills_group then
    show.fills_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_fills_group
    changed = true
  end
  if show.fills_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_fills_groups then
    show.fills_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_fills_groups
    changed = true
  end
  if show.group_size ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_group_size then
    show.group_size = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_group_size
    changed = true
  end
  if show.leg_option_delta ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_leg_option_delta then
    show.leg_option_delta = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_leg_option_delta
    changed = true
  end
  if show.mass_quote ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote then
    show.mass_quote = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote
    changed = true
  end
  if show.mass_quote_ack ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_ack then
    show.mass_quote_ack = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_ack
    changed = true
  end
  if show.mass_quote_ack_entry_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_ack_entry_group then
    show.mass_quote_ack_entry_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_ack_entry_group
    changed = true
  end
  if show.mass_quote_ack_entry_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_ack_entry_groups then
    show.mass_quote_ack_entry_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_ack_entry_groups
    changed = true
  end
  if show.mass_quote_entry_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_entry_group then
    show.mass_quote_entry_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_entry_group
    changed = true
  end
  if show.mass_quote_entry_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_entry_groups then
    show.mass_quote_entry_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_mass_quote_entry_groups
    changed = true
  end
  if show.maturity_month_year ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_maturity_month_year then
    show.maturity_month_year = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_maturity_month_year
    changed = true
  end
  if show.message_header ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_message_header then
    show.message_header = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_message_header
    changed = true
  end
  if show.negotiate ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_negotiate then
    show.negotiate = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_negotiate
    changed = true
  end
  if show.negotiation_reject ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_negotiation_reject then
    show.negotiation_reject = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_negotiation_reject
    changed = true
  end
  if show.negotiation_response ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_negotiation_response then
    show.negotiation_response = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_negotiation_response
    changed = true
  end
  if show.new_order_cross ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_new_order_cross then
    show.new_order_cross = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_new_order_cross
    changed = true
  end
  if show.new_order_single ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_new_order_single then
    show.new_order_single = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_new_order_single
    changed = true
  end
  if show.not_applied ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_not_applied then
    show.not_applied = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_not_applied
    changed = true
  end
  if show.option_delta ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_option_delta then
    show.option_delta = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_option_delta
    changed = true
  end
  if show.order_cancel_reject ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_reject then
    show.order_cancel_reject = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_reject
    changed = true
  end
  if show.order_cancel_replace_reject ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_replace_reject then
    show.order_cancel_replace_reject = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_replace_reject
    changed = true
  end
  if show.order_cancel_replace_request ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_replace_request then
    show.order_cancel_replace_request = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_replace_request
    changed = true
  end
  if show.order_cancel_request ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_request then
    show.order_cancel_request = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_cancel_request
    changed = true
  end
  if show.order_mass_action_report ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_mass_action_report then
    show.order_mass_action_report = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_mass_action_report
    changed = true
  end
  if show.order_mass_action_request ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_mass_action_request then
    show.order_mass_action_request = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_mass_action_request
    changed = true
  end
  if show.order_mass_status_request ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_mass_status_request then
    show.order_mass_status_request = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_mass_status_request
    changed = true
  end
  if show.order_status_request ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_status_request then
    show.order_status_request = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_order_status_request
    changed = true
  end
  if show.packet ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_packet then
    show.packet = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_packet
    changed = true
  end
  if show.party_details_definition_request ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_definition_request then
    show.party_details_definition_request = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_definition_request
    changed = true
  end
  if show.party_details_definition_request_ack ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_definition_request_ack then
    show.party_details_definition_request_ack = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_definition_request_ack
    changed = true
  end
  if show.party_details_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_group then
    show.party_details_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_group
    changed = true
  end
  if show.party_details_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_groups then
    show.party_details_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_groups
    changed = true
  end
  if show.party_details_list_report ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_list_report then
    show.party_details_list_report = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_list_report
    changed = true
  end
  if show.party_details_list_request ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_list_request then
    show.party_details_list_request = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_details_list_request
    changed = true
  end
  if show.party_i_ds_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_i_ds_group then
    show.party_i_ds_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_i_ds_group
    changed = true
  end
  if show.party_i_ds_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_i_ds_groups then
    show.party_i_ds_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_party_i_ds_groups
    changed = true
  end
  if show.quote_cancel ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel then
    show.quote_cancel = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel
    changed = true
  end
  if show.quote_cancel_ack ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack then
    show.quote_cancel_ack = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack
    changed = true
  end
  if show.quote_cancel_ack_entry_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_entry_group then
    show.quote_cancel_ack_entry_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_entry_group
    changed = true
  end
  if show.quote_cancel_ack_entry_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_entry_groups then
    show.quote_cancel_ack_entry_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_entry_groups
    changed = true
  end
  if show.quote_cancel_ack_set_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_set_group then
    show.quote_cancel_ack_set_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_set_group
    changed = true
  end
  if show.quote_cancel_ack_set_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_set_groups then
    show.quote_cancel_ack_set_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_ack_set_groups
    changed = true
  end
  if show.quote_cancel_entry_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_entry_group then
    show.quote_cancel_entry_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_entry_group
    changed = true
  end
  if show.quote_cancel_entry_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_entry_groups then
    show.quote_cancel_entry_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_entry_groups
    changed = true
  end
  if show.quote_cancel_set_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_set_group then
    show.quote_cancel_set_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_set_group
    changed = true
  end
  if show.quote_cancel_set_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_set_groups then
    show.quote_cancel_set_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_quote_cancel_set_groups
    changed = true
  end
  if show.related_sym_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_related_sym_group then
    show.related_sym_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_related_sym_group
    changed = true
  end
  if show.related_sym_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_related_sym_groups then
    show.related_sym_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_related_sym_groups
    changed = true
  end
  if show.request_for_quote ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_request_for_quote then
    show.request_for_quote = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_request_for_quote
    changed = true
  end
  if show.request_for_quote_ack ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_request_for_quote_ack then
    show.request_for_quote_ack = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_request_for_quote_ack
    changed = true
  end
  if show.requesting_party_i_ds_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_requesting_party_i_ds_group then
    show.requesting_party_i_ds_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_requesting_party_i_ds_group
    changed = true
  end
  if show.requesting_party_i_ds_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_requesting_party_i_ds_groups then
    show.requesting_party_i_ds_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_requesting_party_i_ds_groups
    changed = true
  end
  if show.retransmission ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_retransmission then
    show.retransmission = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_retransmission
    changed = true
  end
  if show.retransmit_reject ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_retransmit_reject then
    show.retransmit_reject = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_retransmit_reject
    changed = true
  end
  if show.retransmit_request ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_retransmit_request then
    show.retransmit_request = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_retransmit_request
    changed = true
  end
  if show.risk_free_rate ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_risk_free_rate then
    show.risk_free_rate = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_risk_free_rate
    changed = true
  end
  if show.security_definition_request ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_request then
    show.security_definition_request = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_request
    changed = true
  end
  if show.security_definition_request_leg_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_request_leg_group then
    show.security_definition_request_leg_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_request_leg_group
    changed = true
  end
  if show.security_definition_request_leg_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_request_leg_groups then
    show.security_definition_request_leg_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_request_leg_groups
    changed = true
  end
  if show.security_definition_response ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_response then
    show.security_definition_response = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_response
    changed = true
  end
  if show.security_definition_response_leg_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_response_leg_group then
    show.security_definition_response_leg_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_response_leg_group
    changed = true
  end
  if show.security_definition_response_leg_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_response_leg_groups then
    show.security_definition_response_leg_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_security_definition_response_leg_groups
    changed = true
  end
  if show.sequence ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_sequence then
    show.sequence = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_sequence
    changed = true
  end
  if show.sides_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_sides_group then
    show.sides_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_sides_group
    changed = true
  end
  if show.sides_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_sides_groups then
    show.sides_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_sides_groups
    changed = true
  end
  if show.simple_open_frame ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_simple_open_frame then
    show.simple_open_frame = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_simple_open_frame
    changed = true
  end
  if show.simple_open_framing_header ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_simple_open_framing_header then
    show.simple_open_framing_header = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_simple_open_framing_header
    changed = true
  end
  if show.terminate ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_terminate then
    show.terminate = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_terminate
    changed = true
  end
  if show.time_to_expiration ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_time_to_expiration then
    show.time_to_expiration = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_time_to_expiration
    changed = true
  end
  if show.trd_reg_publications_group ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_trd_reg_publications_group then
    show.trd_reg_publications_group = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_trd_reg_publications_group
    changed = true
  end
  if show.trd_reg_publications_groups ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_trd_reg_publications_groups then
    show.trd_reg_publications_groups = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_trd_reg_publications_groups
    changed = true
  end
  if show.volatility ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_volatility then
    show.volatility = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_volatility
    changed = true
  end
  if show.payload ~= omi_cme_futures_ilink3_sbe_v8_5.prefs.show_payload then
    show.payload = omi_cme_futures_ilink3_sbe_v8_5.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Futures iLink3 Sbe 8.5
-----------------------------------------------------------------------

-- Quote Error Code
cme_futures_ilink3_sbe_v8_5.quote_error_code = {}

-- Size: Quote Error Code
cme_futures_ilink3_sbe_v8_5.quote_error_code.size = 2

-- Display: Quote Error Code
cme_futures_ilink3_sbe_v8_5.quote_error_code.display = function(value)
  return "Quote Error Code: "..value
end

-- Dissect: Quote Error Code
cme_futures_ilink3_sbe_v8_5.quote_error_code.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_error_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.quote_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_error_code, range, value, display)

  return offset + length, value
end

-- Quote Set Id
cme_futures_ilink3_sbe_v8_5.quote_set_id = {}

-- Size: Quote Set Id
cme_futures_ilink3_sbe_v8_5.quote_set_id.size = 2

-- Display: Quote Set Id
cme_futures_ilink3_sbe_v8_5.quote_set_id.display = function(value)
  return "Quote Set Id: "..value
end

-- Dissect: Quote Set Id
cme_futures_ilink3_sbe_v8_5.quote_set_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_set_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.quote_set_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_set_id, range, value, display)

  return offset + length, value
end

-- Quote Cancel Ack Set Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_group = {}

-- Calculate size of: Quote Cancel Ack Set Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.quote_set_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_error_code.size

  return index
end

-- Display: Quote Cancel Ack Set Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Set Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_group.fields = function(buffer, offset, packet, parent, quote_cancel_ack_set_group_index)
  local index = offset

  -- Implicit Quote Cancel Ack Set Group Index
  if quote_cancel_ack_set_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_set_group_index, quote_cancel_ack_set_group_index)
    iteration:set_generated()
  end

  -- Quote Set Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_set_id = cme_futures_ilink3_sbe_v8_5.quote_set_id.dissect(buffer, index, packet, parent)

  -- Quote Error Code: 2 Byte Unsigned Fixed Width Integer
  index, quote_error_code = cme_futures_ilink3_sbe_v8_5.quote_error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Ack Set Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_group.dissect = function(buffer, offset, packet, parent, quote_cancel_ack_set_group_index)
  if show.quote_cancel_ack_set_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_set_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_group.fields(buffer, offset, packet, parent, quote_cancel_ack_set_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_group.fields(buffer, offset, packet, parent, quote_cancel_ack_set_group_index)
  end
end

-- Num In Group
cme_futures_ilink3_sbe_v8_5.num_in_group = {}

-- Size: Num In Group
cme_futures_ilink3_sbe_v8_5.num_in_group.size = 1

-- Display: Num In Group
cme_futures_ilink3_sbe_v8_5.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
cme_futures_ilink3_sbe_v8_5.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length
cme_futures_ilink3_sbe_v8_5.block_length = {}

-- Size: Block Length
cme_futures_ilink3_sbe_v8_5.block_length.size = 2

-- Display: Block Length
cme_futures_ilink3_sbe_v8_5.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_futures_ilink3_sbe_v8_5.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.block_length, range, value, display)

  return offset + length, value
end

-- Group Size
cme_futures_ilink3_sbe_v8_5.group_size = {}

-- Calculate size of: Group Size
cme_futures_ilink3_sbe_v8_5.group_size.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.block_length.size

  index = index + cme_futures_ilink3_sbe_v8_5.num_in_group.size

  return index
end

-- Display: Group Size
cme_futures_ilink3_sbe_v8_5.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_futures_ilink3_sbe_v8_5.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_ilink3_sbe_v8_5.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = cme_futures_ilink3_sbe_v8_5.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_futures_ilink3_sbe_v8_5.group_size.dissect = function(buffer, offset, packet, parent)
  if show.group_size then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.group_size, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.group_size.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancel Ack Set Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_groups = {}

-- Calculate size of: Quote Cancel Ack Set Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local quote_cancel_ack_set_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_cancel_ack_set_group_count * 4

  return index
end

-- Display: Quote Cancel Ack Set Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Set Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Quote Cancel Ack Set Group
  for quote_cancel_ack_set_group_index = 1, num_in_group do
    index, quote_cancel_ack_set_group = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_group.dissect(buffer, index, packet, parent, quote_cancel_ack_set_group_index)
  end

  return index
end

-- Dissect: Quote Cancel Ack Set Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_ack_set_groups then
    local length = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_set_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_groups.fields(buffer, offset, packet, parent)
end

-- Quote Entry Reject Reason
cme_futures_ilink3_sbe_v8_5.quote_entry_reject_reason = {}

-- Size: Quote Entry Reject Reason
cme_futures_ilink3_sbe_v8_5.quote_entry_reject_reason.size = 1

-- Display: Quote Entry Reject Reason
cme_futures_ilink3_sbe_v8_5.quote_entry_reject_reason.display = function(value)
  return "Quote Entry Reject Reason: "..value
end

-- Dissect: Quote Entry Reject Reason
cme_futures_ilink3_sbe_v8_5.quote_entry_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_entry_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.quote_entry_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_entry_reject_reason, range, value, display)

  return offset + length, value
end

-- Security Id
cme_futures_ilink3_sbe_v8_5.security_id = {}

-- Size: Security Id
cme_futures_ilink3_sbe_v8_5.security_id.size = 4

-- Display: Security Id
cme_futures_ilink3_sbe_v8_5.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
cme_futures_ilink3_sbe_v8_5.security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_ilink3_sbe_v8_5.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_id, range, value, display)

  return offset + length, value
end

-- Quote Entry Id
cme_futures_ilink3_sbe_v8_5.quote_entry_id = {}

-- Size: Quote Entry Id
cme_futures_ilink3_sbe_v8_5.quote_entry_id.size = 4

-- Display: Quote Entry Id
cme_futures_ilink3_sbe_v8_5.quote_entry_id.display = function(value)
  return "Quote Entry Id: "..value
end

-- Dissect: Quote Entry Id
cme_futures_ilink3_sbe_v8_5.quote_entry_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_entry_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.quote_entry_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_entry_id, range, value, display)

  return offset + length, value
end

-- Quote Cancel Ack Entry Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_group = {}

-- Calculate size of: Quote Cancel Ack Entry Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.quote_entry_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_entry_reject_reason.size

  return index
end

-- Display: Quote Cancel Ack Entry Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Entry Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_group.fields = function(buffer, offset, packet, parent, quote_cancel_ack_entry_group_index)
  local index = offset

  -- Implicit Quote Cancel Ack Entry Group Index
  if quote_cancel_ack_entry_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_entry_group_index, quote_cancel_ack_entry_group_index)
    iteration:set_generated()
  end

  -- Quote Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_entry_id = cme_futures_ilink3_sbe_v8_5.quote_entry_id.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Quote Entry Reject Reason: 1 Byte Unsigned Fixed Width Integer
  index, quote_entry_reject_reason = cme_futures_ilink3_sbe_v8_5.quote_entry_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Ack Entry Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_group.dissect = function(buffer, offset, packet, parent, quote_cancel_ack_entry_group_index)
  if show.quote_cancel_ack_entry_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_entry_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_group.fields(buffer, offset, packet, parent, quote_cancel_ack_entry_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_group.fields(buffer, offset, packet, parent, quote_cancel_ack_entry_group_index)
  end
end

-- Quote Cancel Ack Entry Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_groups = {}

-- Calculate size of: Quote Cancel Ack Entry Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local quote_cancel_ack_entry_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_cancel_ack_entry_group_count * 9

  return index
end

-- Display: Quote Cancel Ack Entry Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Entry Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Quote Cancel Ack Entry Group
  for quote_cancel_ack_entry_group_index = 1, num_in_group do
    index, quote_cancel_ack_entry_group = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_group.dissect(buffer, index, packet, parent, quote_cancel_ack_entry_group_index)
  end

  return index
end

-- Dissect: Quote Cancel Ack Entry Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_ack_entry_groups then
    local length = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack_entry_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_groups.fields(buffer, offset, packet, parent)
end

-- Delay To Time
cme_futures_ilink3_sbe_v8_5.delay_to_time = {}

-- Size: Delay To Time
cme_futures_ilink3_sbe_v8_5.delay_to_time.size = 8

-- Display: Delay To Time
cme_futures_ilink3_sbe_v8_5.delay_to_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Delay To Time: No Value"
  end

  return "Delay To Time: "..value
end

-- Dissect: Delay To Time
cme_futures_ilink3_sbe_v8_5.delay_to_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.delay_to_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.delay_to_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.delay_to_time, range, value, display)

  return offset + length, value
end

-- Poss Retrans Flag
cme_futures_ilink3_sbe_v8_5.poss_retrans_flag = {}

-- Size: Poss Retrans Flag
cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size = 1

-- Display: Poss Retrans Flag
cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.display = function(value)
  if value == 0 then
    return "Poss Retrans Flag: False (0)"
  end
  if value == 1 then
    return "Poss Retrans Flag: True (1)"
  end

  return "Poss Retrans Flag: Unknown("..value..")"
end

-- Dissect: Poss Retrans Flag
cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.poss_retrans_flag, range, value, display)

  return offset + length, value
end

-- Liquidity Flag
cme_futures_ilink3_sbe_v8_5.liquidity_flag = {}

-- Size: Liquidity Flag
cme_futures_ilink3_sbe_v8_5.liquidity_flag.size = 1

-- Display: Liquidity Flag
cme_futures_ilink3_sbe_v8_5.liquidity_flag.display = function(value)
  if value == 255 then
    return "Liquidity Flag: No Value"
  end
  if value == 0 then
    return "Liquidity Flag: False (0)"
  end
  if value == 1 then
    return "Liquidity Flag: True (1)"
  end

  return "Liquidity Flag: Unknown("..value..")"
end

-- Dissect: Liquidity Flag
cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.liquidity_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.liquidity_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Tot No Quote Entries Optional
cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries_optional = {}

-- Size: Tot No Quote Entries Optional
cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries_optional.size = 1

-- Display: Tot No Quote Entries Optional
cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Tot No Quote Entries Optional: No Value"
  end

  return "Tot No Quote Entries Optional: "..value
end

-- Dissect: Tot No Quote Entries Optional
cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.tot_no_quote_entries_optional, range, value, display)

  return offset + length, value
end

-- Split Msg
cme_futures_ilink3_sbe_v8_5.split_msg = {}

-- Size: Split Msg
cme_futures_ilink3_sbe_v8_5.split_msg.size = 1

-- Display: Split Msg
cme_futures_ilink3_sbe_v8_5.split_msg.display = function(value)
  if value == 255 then
    return "Split Msg: No Value"
  end
  if value == 0 then
    return "Split Msg: Split Message Delayed (0)"
  end
  if value == 1 then
    return "Split Msg: Outof Order Message Delayed (1)"
  end
  if value == 2 then
    return "Split Msg: Complete Message Delayed (2)"
  end

  return "Split Msg: Unknown("..value..")"
end

-- Dissect: Split Msg
cme_futures_ilink3_sbe_v8_5.split_msg.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.split_msg.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.split_msg.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.split_msg, range, value, display)

  return offset + length, value
end

-- Unsolicited Cancel Type
cme_futures_ilink3_sbe_v8_5.unsolicited_cancel_type = {}

-- Size: Unsolicited Cancel Type
cme_futures_ilink3_sbe_v8_5.unsolicited_cancel_type.size = 1

-- Display: Unsolicited Cancel Type
cme_futures_ilink3_sbe_v8_5.unsolicited_cancel_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unsolicited Cancel Type: No Value"
  end

  return "Unsolicited Cancel Type: "..value
end

-- Dissect: Unsolicited Cancel Type
cme_futures_ilink3_sbe_v8_5.unsolicited_cancel_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.unsolicited_cancel_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.unsolicited_cancel_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.unsolicited_cancel_type, range, value, display)

  return offset + length, value
end

-- Mm Protection Reset
cme_futures_ilink3_sbe_v8_5.mm_protection_reset = {}

-- Size: Mm Protection Reset
cme_futures_ilink3_sbe_v8_5.mm_protection_reset.size = 1

-- Display: Mm Protection Reset
cme_futures_ilink3_sbe_v8_5.mm_protection_reset.display = function(value)
  if value == 0 then
    return "Mm Protection Reset: False (0)"
  end
  if value == 1 then
    return "Mm Protection Reset: True (1)"
  end

  return "Mm Protection Reset: Unknown("..value..")"
end

-- Dissect: Mm Protection Reset
cme_futures_ilink3_sbe_v8_5.mm_protection_reset.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mm_protection_reset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.mm_protection_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mm_protection_reset, range, value, display)

  return offset + length, value
end

-- No Processed Entries
cme_futures_ilink3_sbe_v8_5.no_processed_entries = {}

-- Size: No Processed Entries
cme_futures_ilink3_sbe_v8_5.no_processed_entries.size = 4

-- Display: No Processed Entries
cme_futures_ilink3_sbe_v8_5.no_processed_entries.display = function(value)
  return "No Processed Entries: "..value
end

-- Dissect: No Processed Entries
cme_futures_ilink3_sbe_v8_5.no_processed_entries.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.no_processed_entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.no_processed_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.no_processed_entries, range, value, display)

  return offset + length, value
end

-- Quote Cxl Status
cme_futures_ilink3_sbe_v8_5.quote_cxl_status = {}

-- Size: Quote Cxl Status
cme_futures_ilink3_sbe_v8_5.quote_cxl_status.size = 1

-- Display: Quote Cxl Status
cme_futures_ilink3_sbe_v8_5.quote_cxl_status.display = function(value)
  if value == 1 then
    return "Quote Cxl Status: Cancelper Instrument (1)"
  end
  if value == 3 then
    return "Quote Cxl Status: Cancelper Instrumentgroup (3)"
  end
  if value == 4 then
    return "Quote Cxl Status: Cancelallquotes (4)"
  end
  if value == 5 then
    return "Quote Cxl Status: Rejected (5)"
  end
  if value == 100 then
    return "Quote Cxl Status: Cancelper Quote Set (100)"
  end

  return "Quote Cxl Status: Unknown("..value..")"
end

-- Dissect: Quote Cxl Status
cme_futures_ilink3_sbe_v8_5.quote_cxl_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_cxl_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.quote_cxl_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cxl_status, range, value, display)

  return offset + length, value
end

-- Manual Order Indicator
cme_futures_ilink3_sbe_v8_5.manual_order_indicator = {}

-- Size: Manual Order Indicator
cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size = 1

-- Display: Manual Order Indicator
cme_futures_ilink3_sbe_v8_5.manual_order_indicator.display = function(value)
  if value == 0 then
    return "Manual Order Indicator: Automated (0)"
  end
  if value == 1 then
    return "Manual Order Indicator: Manual (1)"
  end

  return "Manual Order Indicator: Unknown("..value..")"
end

-- Dissect: Manual Order Indicator
cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.manual_order_indicator, range, value, display)

  return offset + length, value
end

-- Delay Duration
cme_futures_ilink3_sbe_v8_5.delay_duration = {}

-- Size: Delay Duration
cme_futures_ilink3_sbe_v8_5.delay_duration.size = 2

-- Display: Delay Duration
cme_futures_ilink3_sbe_v8_5.delay_duration.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Delay Duration: No Value"
  end

  return "Delay Duration: "..value
end

-- Dissect: Delay Duration
cme_futures_ilink3_sbe_v8_5.delay_duration.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.delay_duration.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.delay_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.delay_duration, range, value, display)

  return offset + length, value
end

-- Quote Reject Reason
cme_futures_ilink3_sbe_v8_5.quote_reject_reason = {}

-- Size: Quote Reject Reason
cme_futures_ilink3_sbe_v8_5.quote_reject_reason.size = 2

-- Display: Quote Reject Reason
cme_futures_ilink3_sbe_v8_5.quote_reject_reason.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Quote Reject Reason: No Value"
  end

  return "Quote Reject Reason: "..value
end

-- Dissect: Quote Reject Reason
cme_futures_ilink3_sbe_v8_5.quote_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.quote_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Id
cme_futures_ilink3_sbe_v8_5.quote_id = {}

-- Size: Quote Id
cme_futures_ilink3_sbe_v8_5.quote_id.size = 4

-- Display: Quote Id
cme_futures_ilink3_sbe_v8_5.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
cme_futures_ilink3_sbe_v8_5.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Location
cme_futures_ilink3_sbe_v8_5.location = {}

-- Size: Location
cme_futures_ilink3_sbe_v8_5.location.size = 5

-- Display: Location
cme_futures_ilink3_sbe_v8_5.location.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Location: No Value"
  end

  return "Location: "..value
end

-- Dissect: Location
cme_futures_ilink3_sbe_v8_5.location.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.location.size
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

  local display = cme_futures_ilink3_sbe_v8_5.location.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.location, range, value, display)

  return offset + length, value
end

-- Cancelled Symbol
cme_futures_ilink3_sbe_v8_5.cancelled_symbol = {}

-- Size: Cancelled Symbol
cme_futures_ilink3_sbe_v8_5.cancelled_symbol.size = 6

-- Display: Cancelled Symbol
cme_futures_ilink3_sbe_v8_5.cancelled_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cancelled Symbol: No Value"
  end

  return "Cancelled Symbol: "..value
end

-- Dissect: Cancelled Symbol
cme_futures_ilink3_sbe_v8_5.cancelled_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.cancelled_symbol.size
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

  local display = cme_futures_ilink3_sbe_v8_5.cancelled_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.cancelled_symbol, range, value, display)

  return offset + length, value
end

-- Sending Time Epoch
cme_futures_ilink3_sbe_v8_5.sending_time_epoch = {}

-- Size: Sending Time Epoch
cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size = 8

-- Display: Sending Time Epoch
cme_futures_ilink3_sbe_v8_5.sending_time_epoch.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time Epoch: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time Epoch
cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.sending_time_epoch, range, value, display)

  return offset + length, value
end

-- Request Time
cme_futures_ilink3_sbe_v8_5.request_time = {}

-- Size: Request Time
cme_futures_ilink3_sbe_v8_5.request_time.size = 8

-- Display: Request Time
cme_futures_ilink3_sbe_v8_5.request_time.display = function(value)
  return "Request Time: "..value
end

-- Dissect: Request Time
cme_futures_ilink3_sbe_v8_5.request_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.request_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.request_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.request_time, range, value, display)

  return offset + length, value
end

-- Party Details List Req Id
cme_futures_ilink3_sbe_v8_5.party_details_list_req_id = {}

-- Size: Party Details List Req Id
cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size = 8

-- Display: Party Details List Req Id
cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.display = function(value)
  return "Party Details List Req Id: "..value
end

-- Dissect: Party Details List Req Id
cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_list_req_id, range, value, display)

  return offset + length, value
end

-- Sender Id
cme_futures_ilink3_sbe_v8_5.sender_id = {}

-- Size: Sender Id
cme_futures_ilink3_sbe_v8_5.sender_id.size = 20

-- Display: Sender Id
cme_futures_ilink3_sbe_v8_5.sender_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Id: No Value"
  end

  return "Sender Id: "..value
end

-- Dissect: Sender Id
cme_futures_ilink3_sbe_v8_5.sender_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.sender_id.size
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

  local display = cme_futures_ilink3_sbe_v8_5.sender_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.sender_id, range, value, display)

  return offset + length, value
end

-- Text
cme_futures_ilink3_sbe_v8_5.text = {}

-- Size: Text
cme_futures_ilink3_sbe_v8_5.text.size = 256

-- Display: Text
cme_futures_ilink3_sbe_v8_5.text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
cme_futures_ilink3_sbe_v8_5.text.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.text.size
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

  local display = cme_futures_ilink3_sbe_v8_5.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.text, range, value, display)

  return offset + length, value
end

-- Uuid
cme_futures_ilink3_sbe_v8_5.uuid = {}

-- Size: Uuid
cme_futures_ilink3_sbe_v8_5.uuid.size = 8

-- Display: Uuid
cme_futures_ilink3_sbe_v8_5.uuid.display = function(value)
  return "Uuid: "..value
end

-- Dissect: Uuid
cme_futures_ilink3_sbe_v8_5.uuid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.uuid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.uuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.uuid, range, value, display)

  return offset + length, value
end

-- Seq Num
cme_futures_ilink3_sbe_v8_5.seq_num = {}

-- Size: Seq Num
cme_futures_ilink3_sbe_v8_5.seq_num.size = 4

-- Display: Seq Num
cme_futures_ilink3_sbe_v8_5.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
cme_futures_ilink3_sbe_v8_5.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Quote Cancel Ack
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack = {}

-- Calculate size of: Quote Cancel Ack
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.text.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.cancelled_symbol.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_reject_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_duration.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_cxl_status.size

  index = index + cme_futures_ilink3_sbe_v8_5.no_processed_entries.size

  index = index + cme_futures_ilink3_sbe_v8_5.mm_protection_reset.size

  index = index + cme_futures_ilink3_sbe_v8_5.unsolicited_cancel_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_to_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_groups.size(buffer, offset + index)

  return index
end

-- Display: Quote Cancel Ack
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Ack
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index, text = cme_futures_ilink3_sbe_v8_5.text.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = cme_futures_ilink3_sbe_v8_5.request_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Cancelled Symbol: 6 Byte Ascii String
  index, cancelled_symbol = cme_futures_ilink3_sbe_v8_5.cancelled_symbol.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = cme_futures_ilink3_sbe_v8_5.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: 2 Byte Unsigned Fixed Width Integer Nullable
  index, quote_reject_reason = cme_futures_ilink3_sbe_v8_5.quote_reject_reason.dissect(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = cme_futures_ilink3_sbe_v8_5.delay_duration.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Quote Cxl Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, quote_cxl_status = cme_futures_ilink3_sbe_v8_5.quote_cxl_status.dissect(buffer, index, packet, parent)

  -- No Processed Entries: 4 Byte Unsigned Fixed Width Integer
  index, no_processed_entries = cme_futures_ilink3_sbe_v8_5.no_processed_entries.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset = cme_futures_ilink3_sbe_v8_5.mm_protection_reset.dissect(buffer, index, packet, parent)

  -- Unsolicited Cancel Type: 1 Byte Ascii String Nullable
  index, unsolicited_cancel_type = cme_futures_ilink3_sbe_v8_5.unsolicited_cancel_type.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Tot No Quote Entries Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, tot_no_quote_entries_optional = cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries_optional.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = cme_futures_ilink3_sbe_v8_5.delay_to_time.dissect(buffer, index, packet, parent)

  -- Quote Cancel Ack Entry Groups: Struct of 2 fields
  index, quote_cancel_ack_entry_groups = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_entry_groups.dissect(buffer, index, packet, parent)

  -- Quote Cancel Ack Set Groups: Struct of 2 fields
  index, quote_cancel_ack_set_groups = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack_set_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Ack
cme_futures_ilink3_sbe_v8_5.quote_cancel_ack.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_ack then
    local length = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.quote_cancel_ack.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_ack, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.quote_cancel_ack.fields(buffer, offset, packet, parent)
end

-- Cxl Quantity
cme_futures_ilink3_sbe_v8_5.cxl_quantity = {}

-- Size: Cxl Quantity
cme_futures_ilink3_sbe_v8_5.cxl_quantity.size = 4

-- Display: Cxl Quantity
cme_futures_ilink3_sbe_v8_5.cxl_quantity.display = function(value)
  return "Cxl Quantity: "..value
end

-- Dissect: Cxl Quantity
cme_futures_ilink3_sbe_v8_5.cxl_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.cxl_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.cxl_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.cxl_quantity, range, value, display)

  return offset + length, value
end

-- Affected Order Id
cme_futures_ilink3_sbe_v8_5.affected_order_id = {}

-- Size: Affected Order Id
cme_futures_ilink3_sbe_v8_5.affected_order_id.size = 8

-- Display: Affected Order Id
cme_futures_ilink3_sbe_v8_5.affected_order_id.display = function(value)
  return "Affected Order Id: "..value
end

-- Dissect: Affected Order Id
cme_futures_ilink3_sbe_v8_5.affected_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.affected_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.affected_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.affected_order_id, range, value, display)

  return offset + length, value
end

-- OrigClOrdId
cme_futures_ilink3_sbe_v8_5.origclordid = {}

-- Size: OrigClOrdId
cme_futures_ilink3_sbe_v8_5.origclordid.size = 20

-- Display: OrigClOrdId
cme_futures_ilink3_sbe_v8_5.origclordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId: No Value"
  end

  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
cme_futures_ilink3_sbe_v8_5.origclordid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.origclordid.size
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

  local display = cme_futures_ilink3_sbe_v8_5.origclordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.origclordid, range, value, display)

  return offset + length, value
end

-- Affected Orders Group
cme_futures_ilink3_sbe_v8_5.affected_orders_group = {}

-- Calculate size of: Affected Orders Group
cme_futures_ilink3_sbe_v8_5.affected_orders_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.origclordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.affected_order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.cxl_quantity.size

  return index
end

-- Display: Affected Orders Group
cme_futures_ilink3_sbe_v8_5.affected_orders_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Affected Orders Group
cme_futures_ilink3_sbe_v8_5.affected_orders_group.fields = function(buffer, offset, packet, parent, affected_orders_group_index)
  local index = offset

  -- Implicit Affected Orders Group Index
  if affected_orders_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.affected_orders_group_index, affected_orders_group_index)
    iteration:set_generated()
  end

  -- OrigClOrdId: 20 Byte Ascii String
  index, origclordid = cme_futures_ilink3_sbe_v8_5.origclordid.dissect(buffer, index, packet, parent)

  -- Affected Order Id: 8 Byte Unsigned Fixed Width Integer
  index, affected_order_id = cme_futures_ilink3_sbe_v8_5.affected_order_id.dissect(buffer, index, packet, parent)

  -- Cxl Quantity: 4 Byte Unsigned Fixed Width Integer
  index, cxl_quantity = cme_futures_ilink3_sbe_v8_5.cxl_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Affected Orders Group
cme_futures_ilink3_sbe_v8_5.affected_orders_group.dissect = function(buffer, offset, packet, parent, affected_orders_group_index)
  if show.affected_orders_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.affected_orders_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.affected_orders_group.fields(buffer, offset, packet, parent, affected_orders_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.affected_orders_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.affected_orders_group.fields(buffer, offset, packet, parent, affected_orders_group_index)
  end
end

-- Affected Orders Groups
cme_futures_ilink3_sbe_v8_5.affected_orders_groups = {}

-- Calculate size of: Affected Orders Groups
cme_futures_ilink3_sbe_v8_5.affected_orders_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local affected_orders_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + affected_orders_group_count * 32

  return index
end

-- Display: Affected Orders Groups
cme_futures_ilink3_sbe_v8_5.affected_orders_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Affected Orders Groups
cme_futures_ilink3_sbe_v8_5.affected_orders_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Affected Orders Group
  for affected_orders_group_index = 1, num_in_group do
    index, affected_orders_group = cme_futures_ilink3_sbe_v8_5.affected_orders_group.dissect(buffer, index, packet, parent, affected_orders_group_index)
  end

  return index
end

-- Dissect: Affected Orders Groups
cme_futures_ilink3_sbe_v8_5.affected_orders_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.affected_orders_groups then
    local length = cme_futures_ilink3_sbe_v8_5.affected_orders_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.affected_orders_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.affected_orders_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.affected_orders_groups.fields(buffer, offset, packet, parent)
end

-- Mass Cancel Tif
cme_futures_ilink3_sbe_v8_5.mass_cancel_tif = {}

-- Size: Mass Cancel Tif
cme_futures_ilink3_sbe_v8_5.mass_cancel_tif.size = 1

-- Display: Mass Cancel Tif
cme_futures_ilink3_sbe_v8_5.mass_cancel_tif.display = function(value)
  if value == 255 then
    return "Mass Cancel Tif: No Value"
  end
  if value == 0 then
    return "Mass Cancel Tif: Day (0)"
  end
  if value == 1 then
    return "Mass Cancel Tif: Good Till Cancel (1)"
  end
  if value == 6 then
    return "Mass Cancel Tif: Good Till Date (6)"
  end

  return "Mass Cancel Tif: Unknown("..value..")"
end

-- Dissect: Mass Cancel Tif
cme_futures_ilink3_sbe_v8_5.mass_cancel_tif.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mass_cancel_tif.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.mass_cancel_tif.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_cancel_tif, range, value, display)

  return offset + length, value
end

-- Mass Action Ord Typ
cme_futures_ilink3_sbe_v8_5.mass_action_ord_typ = {}

-- Size: Mass Action Ord Typ
cme_futures_ilink3_sbe_v8_5.mass_action_ord_typ.size = 1

-- Display: Mass Action Ord Typ
cme_futures_ilink3_sbe_v8_5.mass_action_ord_typ.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Mass Action Ord Typ: No Value"
  end

  if value == "2" then
    return "Mass Action Ord Typ: Limit (2)"
  end
  if value == "4" then
    return "Mass Action Ord Typ: Stop Limit (4)"
  end

  return "Mass Action Ord Typ: Unknown("..value..")"
end

-- Dissect: Mass Action Ord Typ
cme_futures_ilink3_sbe_v8_5.mass_action_ord_typ.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mass_action_ord_typ.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.mass_action_ord_typ.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_action_ord_typ, range, value, display)

  return offset + length, value
end

-- Side Optional
cme_futures_ilink3_sbe_v8_5.side_optional = {}

-- Size: Side Optional
cme_futures_ilink3_sbe_v8_5.side_optional.size = 1

-- Display: Side Optional
cme_futures_ilink3_sbe_v8_5.side_optional.display = function(value)
  if value == 255 then
    return "Side Optional: No Value"
  end
  if value == 1 then
    return "Side Optional: Buy (1)"
  end
  if value == 2 then
    return "Side Optional: Sell (2)"
  end

  return "Side Optional: Unknown("..value..")"
end

-- Dissect: Side Optional
cme_futures_ilink3_sbe_v8_5.side_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.side_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Mass Cancel Request Type
cme_futures_ilink3_sbe_v8_5.mass_cancel_request_type = {}

-- Size: Mass Cancel Request Type
cme_futures_ilink3_sbe_v8_5.mass_cancel_request_type.size = 1

-- Display: Mass Cancel Request Type
cme_futures_ilink3_sbe_v8_5.mass_cancel_request_type.display = function(value)
  if value == 255 then
    return "Mass Cancel Request Type: No Value"
  end
  if value == 100 then
    return "Mass Cancel Request Type: Sender Sub Id (100)"
  end
  if value == 101 then
    return "Mass Cancel Request Type: Account (101)"
  end

  return "Mass Cancel Request Type: Unknown("..value..")"
end

-- Dissect: Mass Cancel Request Type
cme_futures_ilink3_sbe_v8_5.mass_cancel_request_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mass_cancel_request_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.mass_cancel_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_cancel_request_type, range, value, display)

  return offset + length, value
end

-- Market Segment Id
cme_futures_ilink3_sbe_v8_5.market_segment_id = {}

-- Size: Market Segment Id
cme_futures_ilink3_sbe_v8_5.market_segment_id.size = 1

-- Display: Market Segment Id
cme_futures_ilink3_sbe_v8_5.market_segment_id.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Market Segment Id: No Value"
  end

  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
cme_futures_ilink3_sbe_v8_5.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Mass Action Reject Reason
cme_futures_ilink3_sbe_v8_5.mass_action_reject_reason = {}

-- Size: Mass Action Reject Reason
cme_futures_ilink3_sbe_v8_5.mass_action_reject_reason.size = 1

-- Display: Mass Action Reject Reason
cme_futures_ilink3_sbe_v8_5.mass_action_reject_reason.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Mass Action Reject Reason: No Value"
  end

  return "Mass Action Reject Reason: "..value
end

-- Dissect: Mass Action Reject Reason
cme_futures_ilink3_sbe_v8_5.mass_action_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mass_action_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.mass_action_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_action_reject_reason, range, value, display)

  return offset + length, value
end

-- Last Fragment
cme_futures_ilink3_sbe_v8_5.last_fragment = {}

-- Size: Last Fragment
cme_futures_ilink3_sbe_v8_5.last_fragment.size = 1

-- Display: Last Fragment
cme_futures_ilink3_sbe_v8_5.last_fragment.display = function(value)
  if value == 0 then
    return "Last Fragment: False (0)"
  end
  if value == 1 then
    return "Last Fragment: True (1)"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
cme_futures_ilink3_sbe_v8_5.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.last_fragment.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Total Affected Orders
cme_futures_ilink3_sbe_v8_5.total_affected_orders = {}

-- Size: Total Affected Orders
cme_futures_ilink3_sbe_v8_5.total_affected_orders.size = 4

-- Display: Total Affected Orders
cme_futures_ilink3_sbe_v8_5.total_affected_orders.display = function(value)
  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
cme_futures_ilink3_sbe_v8_5.total_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.total_affected_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.total_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Mass Action Scope
cme_futures_ilink3_sbe_v8_5.mass_action_scope = {}

-- Size: Mass Action Scope
cme_futures_ilink3_sbe_v8_5.mass_action_scope.size = 1

-- Display: Mass Action Scope
cme_futures_ilink3_sbe_v8_5.mass_action_scope.display = function(value)
  if value == 1 then
    return "Mass Action Scope: Instrument (1)"
  end
  if value == 7 then
    return "Mass Action Scope: All (7)"
  end
  if value == 9 then
    return "Mass Action Scope: Market Segment Id (9)"
  end
  if value == 10 then
    return "Mass Action Scope: Instrument Group (10)"
  end
  if value == 100 then
    return "Mass Action Scope: Quote Set Id (100)"
  end

  return "Mass Action Scope: Unknown("..value..")"
end

-- Dissect: Mass Action Scope
cme_futures_ilink3_sbe_v8_5.mass_action_scope.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mass_action_scope.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.mass_action_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_action_scope, range, value, display)

  return offset + length, value
end

-- Mass Action Response
cme_futures_ilink3_sbe_v8_5.mass_action_response = {}

-- Size: Mass Action Response
cme_futures_ilink3_sbe_v8_5.mass_action_response.size = 1

-- Display: Mass Action Response
cme_futures_ilink3_sbe_v8_5.mass_action_response.display = function(value)
  if value == 0 then
    return "Mass Action Response: Rejected (0)"
  end
  if value == 1 then
    return "Mass Action Response: Accepted (1)"
  end

  return "Mass Action Response: Unknown("..value..")"
end

-- Dissect: Mass Action Response
cme_futures_ilink3_sbe_v8_5.mass_action_response.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mass_action_response.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.mass_action_response.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_action_response, range, value, display)

  return offset + length, value
end

-- Security Id Optional
cme_futures_ilink3_sbe_v8_5.security_id_optional = {}

-- Size: Security Id Optional
cme_futures_ilink3_sbe_v8_5.security_id_optional.size = 4

-- Display: Security Id Optional
cme_futures_ilink3_sbe_v8_5.security_id_optional.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Security Id Optional: No Value"
  end

  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
cme_futures_ilink3_sbe_v8_5.security_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.security_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_ilink3_sbe_v8_5.security_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Security Group
cme_futures_ilink3_sbe_v8_5.security_group = {}

-- Size: Security Group
cme_futures_ilink3_sbe_v8_5.security_group.size = 6

-- Display: Security Group
cme_futures_ilink3_sbe_v8_5.security_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
cme_futures_ilink3_sbe_v8_5.security_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.security_group.size
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

  local display = cme_futures_ilink3_sbe_v8_5.security_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_group, range, value, display)

  return offset + length, value
end

-- Mass Action Report Id
cme_futures_ilink3_sbe_v8_5.mass_action_report_id = {}

-- Size: Mass Action Report Id
cme_futures_ilink3_sbe_v8_5.mass_action_report_id.size = 8

-- Display: Mass Action Report Id
cme_futures_ilink3_sbe_v8_5.mass_action_report_id.display = function(value)
  return "Mass Action Report Id: "..value
end

-- Dissect: Mass Action Report Id
cme_futures_ilink3_sbe_v8_5.mass_action_report_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mass_action_report_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.mass_action_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_action_report_id, range, value, display)

  return offset + length, value
end

-- Order Request Id
cme_futures_ilink3_sbe_v8_5.order_request_id = {}

-- Size: Order Request Id
cme_futures_ilink3_sbe_v8_5.order_request_id.size = 8

-- Display: Order Request Id
cme_futures_ilink3_sbe_v8_5.order_request_id.display = function(value)
  return "Order Request Id: "..value
end

-- Dissect: Order Request Id
cme_futures_ilink3_sbe_v8_5.order_request_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.order_request_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.order_request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_request_id, range, value, display)

  return offset + length, value
end

-- Transact Time
cme_futures_ilink3_sbe_v8_5.transact_time = {}

-- Size: Transact Time
cme_futures_ilink3_sbe_v8_5.transact_time.size = 8

-- Display: Transact Time
cme_futures_ilink3_sbe_v8_5.transact_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
cme_futures_ilink3_sbe_v8_5.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Order Mass Action Report
cme_futures_ilink3_sbe_v8_5.order_mass_action_report = {}

-- Calculate size of: Order Mass Action Report
cme_futures_ilink3_sbe_v8_5.order_mass_action_report.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_action_report_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_group.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_duration.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_action_response.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_action_scope.size

  index = index + cme_futures_ilink3_sbe_v8_5.total_affected_orders.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_fragment.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_action_reject_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.market_segment_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_cancel_request_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.side_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_action_ord_typ.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_cancel_tif.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_to_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.affected_orders_groups.size(buffer, offset + index)

  return index
end

-- Display: Order Mass Action Report
cme_futures_ilink3_sbe_v8_5.order_mass_action_report.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Action Report
cme_futures_ilink3_sbe_v8_5.order_mass_action_report.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = cme_futures_ilink3_sbe_v8_5.mass_action_report_id.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_ilink3_sbe_v8_5.security_group.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = cme_futures_ilink3_sbe_v8_5.security_id_optional.dissect(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = cme_futures_ilink3_sbe_v8_5.delay_duration.dissect(buffer, index, packet, parent)

  -- Mass Action Response: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_action_response = cme_futures_ilink3_sbe_v8_5.mass_action_response.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Mass Action Scope: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, mass_action_scope = cme_futures_ilink3_sbe_v8_5.mass_action_scope.dissect(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Unsigned Fixed Width Integer
  index, total_affected_orders = cme_futures_ilink3_sbe_v8_5.total_affected_orders.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = cme_futures_ilink3_sbe_v8_5.last_fragment.dissect(buffer, index, packet, parent)

  -- Mass Action Reject Reason: 1 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_reject_reason = cme_futures_ilink3_sbe_v8_5.mass_action_reject_reason.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_id = cme_futures_ilink3_sbe_v8_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_cancel_request_type = cme_futures_ilink3_sbe_v8_5.mass_cancel_request_type.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = cme_futures_ilink3_sbe_v8_5.side_optional.dissect(buffer, index, packet, parent)

  -- Mass Action Ord Typ: 1 Byte Ascii String Enum with 2 values
  index, mass_action_ord_typ = cme_futures_ilink3_sbe_v8_5.mass_action_ord_typ.dissect(buffer, index, packet, parent)

  -- Mass Cancel Tif: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mass_cancel_tif = cme_futures_ilink3_sbe_v8_5.mass_cancel_tif.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = cme_futures_ilink3_sbe_v8_5.delay_to_time.dissect(buffer, index, packet, parent)

  -- Affected Orders Groups: Struct of 2 fields
  index, affected_orders_groups = cme_futures_ilink3_sbe_v8_5.affected_orders_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Report
cme_futures_ilink3_sbe_v8_5.order_mass_action_report.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_mass_action_report then
    local length = cme_futures_ilink3_sbe_v8_5.order_mass_action_report.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.order_mass_action_report.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_mass_action_report, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.order_mass_action_report.fields(buffer, offset, packet, parent)
end

-- Leg Ratio Qty
cme_futures_ilink3_sbe_v8_5.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
cme_futures_ilink3_sbe_v8_5.leg_ratio_qty.size = 1

-- Display: Leg Ratio Qty
cme_futures_ilink3_sbe_v8_5.leg_ratio_qty.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Leg Ratio Qty: No Value"
  end

  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cme_futures_ilink3_sbe_v8_5.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Side
cme_futures_ilink3_sbe_v8_5.leg_side = {}

-- Size: Leg Side
cme_futures_ilink3_sbe_v8_5.leg_side.size = 1

-- Display: Leg Side
cme_futures_ilink3_sbe_v8_5.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
cme_futures_ilink3_sbe_v8_5.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Security Id
cme_futures_ilink3_sbe_v8_5.leg_security_id = {}

-- Size: Leg Security Id
cme_futures_ilink3_sbe_v8_5.leg_security_id.size = 4

-- Display: Leg Security Id
cme_futures_ilink3_sbe_v8_5.leg_security_id.display = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
cme_futures_ilink3_sbe_v8_5.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_ilink3_sbe_v8_5.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Exponent
cme_futures_ilink3_sbe_v8_5.exponent = {}

-- Size: Exponent
cme_futures_ilink3_sbe_v8_5.exponent.size = 1

-- Display: Exponent
cme_futures_ilink3_sbe_v8_5.exponent.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Exponent: No Value"
  end

  return "Exponent: "..value
end

-- Dissect: Exponent
cme_futures_ilink3_sbe_v8_5.exponent.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.exponent.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_ilink3_sbe_v8_5.exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.exponent, range, value, display)

  return offset + length, value
end

-- Mantissa 32
cme_futures_ilink3_sbe_v8_5.mantissa_32 = {}

-- Size: Mantissa 32
cme_futures_ilink3_sbe_v8_5.mantissa_32.size = 4

-- Display: Mantissa 32
cme_futures_ilink3_sbe_v8_5.mantissa_32.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Mantissa 32: No Value"
  end

  return "Mantissa 32: "..value
end

-- Dissect: Mantissa 32
cme_futures_ilink3_sbe_v8_5.mantissa_32.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mantissa_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_ilink3_sbe_v8_5.mantissa_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mantissa_32, range, value, display)

  return offset + length, value
end

-- Leg Option Delta
cme_futures_ilink3_sbe_v8_5.leg_option_delta = {}

-- Calculate size of: Leg Option Delta
cme_futures_ilink3_sbe_v8_5.leg_option_delta.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.mantissa_32.size

  index = index + cme_futures_ilink3_sbe_v8_5.exponent.size

  return index
end

-- Display: Leg Option Delta
cme_futures_ilink3_sbe_v8_5.leg_option_delta.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Option Delta
cme_futures_ilink3_sbe_v8_5.leg_option_delta.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_32 = cme_futures_ilink3_sbe_v8_5.mantissa_32.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_ilink3_sbe_v8_5.exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Option Delta
cme_futures_ilink3_sbe_v8_5.leg_option_delta.dissect = function(buffer, offset, packet, parent)
  if show.leg_option_delta then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leg_option_delta, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.leg_option_delta.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.leg_option_delta.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.leg_option_delta.fields(buffer, offset, packet, parent)
  end
end

-- Leg Price
cme_futures_ilink3_sbe_v8_5.leg_price = {}

-- Size: Leg Price
cme_futures_ilink3_sbe_v8_5.leg_price.size = 8

-- Display: Leg Price
cme_futures_ilink3_sbe_v8_5.leg_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Translate: Leg Price
cme_futures_ilink3_sbe_v8_5.leg_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Leg Price
cme_futures_ilink3_sbe_v8_5.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_ilink3_sbe_v8_5.leg_price.translate(raw)
  local display = cme_futures_ilink3_sbe_v8_5.leg_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Security Definition Response Leg Group
cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_group = {}

-- Calculate size of: Security Definition Response Leg Group
cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.leg_price.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_option_delta.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.leg_security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_side.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_ratio_qty.size

  return index
end

-- Display: Security Definition Response Leg Group
cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Response Leg Group
cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_group.fields = function(buffer, offset, packet, parent, security_definition_response_leg_group_index)
  local index = offset

  -- Implicit Security Definition Response Leg Group Index
  if security_definition_response_leg_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_response_leg_group_index, security_definition_response_leg_group_index)
    iteration:set_generated()
  end

  -- Leg Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price = cme_futures_ilink3_sbe_v8_5.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Option Delta: Struct of 2 fields
  index, leg_option_delta = cme_futures_ilink3_sbe_v8_5.leg_option_delta.dissect(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = cme_futures_ilink3_sbe_v8_5.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = cme_futures_ilink3_sbe_v8_5.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 1 Byte Unsigned Fixed Width Integer Nullable
  index, leg_ratio_qty = cme_futures_ilink3_sbe_v8_5.leg_ratio_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Response Leg Group
cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_group.dissect = function(buffer, offset, packet, parent, security_definition_response_leg_group_index)
  if show.security_definition_response_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_response_leg_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_group.fields(buffer, offset, packet, parent, security_definition_response_leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_group.fields(buffer, offset, packet, parent, security_definition_response_leg_group_index)
  end
end

-- Security Definition Response Leg Groups
cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_groups = {}

-- Calculate size of: Security Definition Response Leg Groups
cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local security_definition_response_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_definition_response_leg_group_count * 19

  return index
end

-- Display: Security Definition Response Leg Groups
cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Response Leg Groups
cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Security Definition Response Leg Group
  for security_definition_response_leg_group_index = 1, num_in_group do
    index, security_definition_response_leg_group = cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_group.dissect(buffer, index, packet, parent, security_definition_response_leg_group_index)
  end

  return index
end

-- Dissect: Security Definition Response Leg Groups
cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_response_leg_groups then
    local length = cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_response_leg_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_groups.fields(buffer, offset, packet, parent)
end

-- Auto Quote Request
cme_futures_ilink3_sbe_v8_5.auto_quote_request = {}

-- Size: Auto Quote Request
cme_futures_ilink3_sbe_v8_5.auto_quote_request.size = 1

-- Display: Auto Quote Request
cme_futures_ilink3_sbe_v8_5.auto_quote_request.display = function(value)
  if value == 0 then
    return "Auto Quote Request: False (0)"
  end
  if value == 1 then
    return "Auto Quote Request: True (1)"
  end

  return "Auto Quote Request: Unknown("..value..")"
end

-- Dissect: Auto Quote Request
cme_futures_ilink3_sbe_v8_5.auto_quote_request.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.auto_quote_request.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.auto_quote_request.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.auto_quote_request, range, value, display)

  return offset + length, value
end

-- Expiration Cycle
cme_futures_ilink3_sbe_v8_5.expiration_cycle = {}

-- Size: Expiration Cycle
cme_futures_ilink3_sbe_v8_5.expiration_cycle.size = 1

-- Display: Expiration Cycle
cme_futures_ilink3_sbe_v8_5.expiration_cycle.display = function(value)
  if value == 255 then
    return "Expiration Cycle: No Value"
  end
  if value == 0 then
    return "Expiration Cycle: Expire On Trading Session Close (0)"
  end
  if value == 2 then
    return "Expiration Cycle: Expirationatgivendate (2)"
  end

  return "Expiration Cycle: Unknown("..value..")"
end

-- Dissect: Expiration Cycle
cme_futures_ilink3_sbe_v8_5.expiration_cycle.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.expiration_cycle.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.expiration_cycle.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.expiration_cycle, range, value, display)

  return offset + length, value
end

-- Security Response Type
cme_futures_ilink3_sbe_v8_5.security_response_type = {}

-- Size: Security Response Type
cme_futures_ilink3_sbe_v8_5.security_response_type.size = 1

-- Display: Security Response Type
cme_futures_ilink3_sbe_v8_5.security_response_type.display = function(value)
  if value == 1 then
    return "Security Response Type: Accept Security Proposalasis (1)"
  end
  if value == 2 then
    return "Security Response Type: Accept Securityproposalwithrevisionsasindicatedinthemessage (2)"
  end
  if value == 5 then
    return "Security Response Type: Reject Security Proposal (5)"
  end

  return "Security Response Type: Unknown("..value..")"
end

-- Dissect: Security Response Type
cme_futures_ilink3_sbe_v8_5.security_response_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.security_response_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.security_response_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_response_type, range, value, display)

  return offset + length, value
end

-- Termination Type
cme_futures_ilink3_sbe_v8_5.termination_type = {}

-- Size: Termination Type
cme_futures_ilink3_sbe_v8_5.termination_type.size = 8

-- Display: Termination Type
cme_futures_ilink3_sbe_v8_5.termination_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Termination Type: No Value"
  end

  return "Termination Type: "..value
end

-- Dissect: Termination Type
cme_futures_ilink3_sbe_v8_5.termination_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.termination_type.size
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

  local display = cme_futures_ilink3_sbe_v8_5.termination_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.termination_type, range, value, display)

  return offset + length, value
end

-- Source Repo Id
cme_futures_ilink3_sbe_v8_5.source_repo_id = {}

-- Size: Source Repo Id
cme_futures_ilink3_sbe_v8_5.source_repo_id.size = 4

-- Display: Source Repo Id
cme_futures_ilink3_sbe_v8_5.source_repo_id.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Source Repo Id: No Value"
  end

  return "Source Repo Id: "..value
end

-- Dissect: Source Repo Id
cme_futures_ilink3_sbe_v8_5.source_repo_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.source_repo_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_ilink3_sbe_v8_5.source_repo_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.source_repo_id, range, value, display)

  return offset + length, value
end

-- Max No Of Substitutions
cme_futures_ilink3_sbe_v8_5.max_no_of_substitutions = {}

-- Size: Max No Of Substitutions
cme_futures_ilink3_sbe_v8_5.max_no_of_substitutions.size = 1

-- Display: Max No Of Substitutions
cme_futures_ilink3_sbe_v8_5.max_no_of_substitutions.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Max No Of Substitutions: No Value"
  end

  return "Max No Of Substitutions: "..value
end

-- Dissect: Max No Of Substitutions
cme_futures_ilink3_sbe_v8_5.max_no_of_substitutions.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.max_no_of_substitutions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.max_no_of_substitutions.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.max_no_of_substitutions, range, value, display)

  return offset + length, value
end

-- End Date
cme_futures_ilink3_sbe_v8_5.end_date = {}

-- Size: End Date
cme_futures_ilink3_sbe_v8_5.end_date.size = 2

-- Display: End Date
cme_futures_ilink3_sbe_v8_5.end_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "End Date: No Value"
  end

  return "End Date: "..value
end

-- Dissect: End Date
cme_futures_ilink3_sbe_v8_5.end_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.end_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.end_date, range, value, display)

  return offset + length, value
end

-- Start Date
cme_futures_ilink3_sbe_v8_5.start_date = {}

-- Size: Start Date
cme_futures_ilink3_sbe_v8_5.start_date.size = 2

-- Display: Start Date
cme_futures_ilink3_sbe_v8_5.start_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Start Date: No Value"
  end

  return "Start Date: "..value
end

-- Dissect: Start Date
cme_futures_ilink3_sbe_v8_5.start_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.start_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.start_date, range, value, display)

  return offset + length, value
end

-- Week
cme_futures_ilink3_sbe_v8_5.week = {}

-- Size: Week
cme_futures_ilink3_sbe_v8_5.week.size = 1

-- Display: Week
cme_futures_ilink3_sbe_v8_5.week.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value"
  end

  return "Week: "..value
end

-- Dissect: Week
cme_futures_ilink3_sbe_v8_5.week.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.week.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.week.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.week, range, value, display)

  return offset + length, value
end

-- Day
cme_futures_ilink3_sbe_v8_5.day = {}

-- Size: Day
cme_futures_ilink3_sbe_v8_5.day.size = 1

-- Display: Day
cme_futures_ilink3_sbe_v8_5.day.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value"
  end

  return "Day: "..value
end

-- Dissect: Day
cme_futures_ilink3_sbe_v8_5.day.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.day.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.day.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.day, range, value, display)

  return offset + length, value
end

-- Month
cme_futures_ilink3_sbe_v8_5.month = {}

-- Size: Month
cme_futures_ilink3_sbe_v8_5.month.size = 1

-- Display: Month
cme_futures_ilink3_sbe_v8_5.month.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value"
  end

  return "Month: "..value
end

-- Dissect: Month
cme_futures_ilink3_sbe_v8_5.month.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.month.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.month.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.month, range, value, display)

  return offset + length, value
end

-- Year
cme_futures_ilink3_sbe_v8_5.year = {}

-- Size: Year
cme_futures_ilink3_sbe_v8_5.year.size = 2

-- Display: Year
cme_futures_ilink3_sbe_v8_5.year.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value"
  end

  return "Year: "..value
end

-- Dissect: Year
cme_futures_ilink3_sbe_v8_5.year.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.year.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.year.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.year, range, value, display)

  return offset + length, value
end

-- Maturity Month Year
cme_futures_ilink3_sbe_v8_5.maturity_month_year = {}

-- Calculate size of: Maturity Month Year
cme_futures_ilink3_sbe_v8_5.maturity_month_year.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.year.size

  index = index + cme_futures_ilink3_sbe_v8_5.month.size

  index = index + cme_futures_ilink3_sbe_v8_5.day.size

  index = index + cme_futures_ilink3_sbe_v8_5.week.size

  return index
end

-- Display: Maturity Month Year
cme_futures_ilink3_sbe_v8_5.maturity_month_year.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Maturity Month Year
cme_futures_ilink3_sbe_v8_5.maturity_month_year.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = cme_futures_ilink3_sbe_v8_5.year.dissect(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = cme_futures_ilink3_sbe_v8_5.month.dissect(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = cme_futures_ilink3_sbe_v8_5.day.dissect(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = cme_futures_ilink3_sbe_v8_5.week.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
cme_futures_ilink3_sbe_v8_5.maturity_month_year.dissect = function(buffer, offset, packet, parent)
  if show.maturity_month_year then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.maturity_month_year, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.maturity_month_year.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.maturity_month_year.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.maturity_month_year.fields(buffer, offset, packet, parent)
  end
end

-- Currency
cme_futures_ilink3_sbe_v8_5.currency = {}

-- Size: Currency
cme_futures_ilink3_sbe_v8_5.currency.size = 3

-- Display: Currency
cme_futures_ilink3_sbe_v8_5.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
cme_futures_ilink3_sbe_v8_5.currency.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.currency.size
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

  local display = cme_futures_ilink3_sbe_v8_5.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.currency, range, value, display)

  return offset + length, value
end

-- Security Type
cme_futures_ilink3_sbe_v8_5.security_type = {}

-- Size: Security Type
cme_futures_ilink3_sbe_v8_5.security_type.size = 6

-- Display: Security Type
cme_futures_ilink3_sbe_v8_5.security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
cme_futures_ilink3_sbe_v8_5.security_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.security_type.size
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

  local display = cme_futures_ilink3_sbe_v8_5.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_type, range, value, display)

  return offset + length, value
end

-- Security Response Id
cme_futures_ilink3_sbe_v8_5.security_response_id = {}

-- Size: Security Response Id
cme_futures_ilink3_sbe_v8_5.security_response_id.size = 8

-- Display: Security Response Id
cme_futures_ilink3_sbe_v8_5.security_response_id.display = function(value)
  return "Security Response Id: "..value
end

-- Dissect: Security Response Id
cme_futures_ilink3_sbe_v8_5.security_response_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.security_response_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.security_response_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_response_id, range, value, display)

  return offset + length, value
end

-- Security Req Id
cme_futures_ilink3_sbe_v8_5.security_req_id = {}

-- Size: Security Req Id
cme_futures_ilink3_sbe_v8_5.security_req_id.size = 8

-- Display: Security Req Id
cme_futures_ilink3_sbe_v8_5.security_req_id.display = function(value)
  return "Security Req Id: "..value
end

-- Dissect: Security Req Id
cme_futures_ilink3_sbe_v8_5.security_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.security_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.security_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_req_id, range, value, display)

  return offset + length, value
end

-- Symbol
cme_futures_ilink3_sbe_v8_5.symbol = {}

-- Size: Symbol
cme_futures_ilink3_sbe_v8_5.symbol.size = 20

-- Display: Symbol
cme_futures_ilink3_sbe_v8_5.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_futures_ilink3_sbe_v8_5.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.symbol.size
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

  local display = cme_futures_ilink3_sbe_v8_5.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.symbol, range, value, display)

  return offset + length, value
end

-- Financial Instrument Full Name
cme_futures_ilink3_sbe_v8_5.financial_instrument_full_name = {}

-- Size: Financial Instrument Full Name
cme_futures_ilink3_sbe_v8_5.financial_instrument_full_name.size = 35

-- Display: Financial Instrument Full Name
cme_futures_ilink3_sbe_v8_5.financial_instrument_full_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Financial Instrument Full Name: No Value"
  end

  return "Financial Instrument Full Name: "..value
end

-- Dissect: Financial Instrument Full Name
cme_futures_ilink3_sbe_v8_5.financial_instrument_full_name.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.financial_instrument_full_name.size
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

  local display = cme_futures_ilink3_sbe_v8_5.financial_instrument_full_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.financial_instrument_full_name, range, value, display)

  return offset + length, value
end

-- Security Definition Response
cme_futures_ilink3_sbe_v8_5.security_definition_response = {}

-- Calculate size of: Security Definition Response
cme_futures_ilink3_sbe_v8_5.security_definition_response.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.text.size

  index = index + cme_futures_ilink3_sbe_v8_5.financial_instrument_full_name.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.symbol.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_response_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_group.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.currency.size

  index = index + cme_futures_ilink3_sbe_v8_5.maturity_month_year.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.delay_duration.size

  index = index + cme_futures_ilink3_sbe_v8_5.start_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.end_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.max_no_of_substitutions.size

  index = index + cme_futures_ilink3_sbe_v8_5.source_repo_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.termination_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_response_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.expiration_cycle.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.auto_quote_request.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Response
cme_futures_ilink3_sbe_v8_5.security_definition_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Response
cme_futures_ilink3_sbe_v8_5.security_definition_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index, text = cme_futures_ilink3_sbe_v8_5.text.dissect(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index, financial_instrument_full_name = cme_futures_ilink3_sbe_v8_5.financial_instrument_full_name.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index, symbol = cme_futures_ilink3_sbe_v8_5.symbol.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Unsigned Fixed Width Integer
  index, security_req_id = cme_futures_ilink3_sbe_v8_5.security_req_id.dissect(buffer, index, packet, parent)

  -- Security Response Id: 8 Byte Unsigned Fixed Width Integer
  index, security_response_id = cme_futures_ilink3_sbe_v8_5.security_response_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_ilink3_sbe_v8_5.security_group.dissect(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index, security_type = cme_futures_ilink3_sbe_v8_5.security_type.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = cme_futures_ilink3_sbe_v8_5.security_id_optional.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = cme_futures_ilink3_sbe_v8_5.currency.dissect(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = cme_futures_ilink3_sbe_v8_5.maturity_month_year.dissect(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = cme_futures_ilink3_sbe_v8_5.delay_duration.dissect(buffer, index, packet, parent)

  -- Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, start_date = cme_futures_ilink3_sbe_v8_5.start_date.dissect(buffer, index, packet, parent)

  -- End Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, end_date = cme_futures_ilink3_sbe_v8_5.end_date.dissect(buffer, index, packet, parent)

  -- Max No Of Substitutions: 1 Byte Unsigned Fixed Width Integer Nullable
  index, max_no_of_substitutions = cme_futures_ilink3_sbe_v8_5.max_no_of_substitutions.dissect(buffer, index, packet, parent)

  -- Source Repo Id: 4 Byte Signed Fixed Width Integer Nullable
  index, source_repo_id = cme_futures_ilink3_sbe_v8_5.source_repo_id.dissect(buffer, index, packet, parent)

  -- Termination Type: 8 Byte Ascii String
  index, termination_type = cme_futures_ilink3_sbe_v8_5.termination_type.dissect(buffer, index, packet, parent)

  -- Security Response Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_response_type = cme_futures_ilink3_sbe_v8_5.security_response_type.dissect(buffer, index, packet, parent)

  -- Expiration Cycle: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, expiration_cycle = cme_futures_ilink3_sbe_v8_5.expiration_cycle.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Auto Quote Request: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, auto_quote_request = cme_futures_ilink3_sbe_v8_5.auto_quote_request.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Security Definition Response Leg Groups: Struct of 2 fields
  index, security_definition_response_leg_groups = cme_futures_ilink3_sbe_v8_5.security_definition_response_leg_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Response
cme_futures_ilink3_sbe_v8_5.security_definition_response.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_response then
    local length = cme_futures_ilink3_sbe_v8_5.security_definition_response.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.security_definition_response.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_response, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.security_definition_response.fields(buffer, offset, packet, parent)
end

-- Security Definition Request Leg Group
cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_group = {}

-- Calculate size of: Security Definition Request Leg Group
cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.leg_price.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_option_delta.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.leg_side.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_ratio_qty.size

  return index
end

-- Display: Security Definition Request Leg Group
cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request Leg Group
cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_group.fields = function(buffer, offset, packet, parent, security_definition_request_leg_group_index)
  local index = offset

  -- Implicit Security Definition Request Leg Group Index
  if security_definition_request_leg_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_request_leg_group_index, security_definition_request_leg_group_index)
    iteration:set_generated()
  end

  -- Leg Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price = cme_futures_ilink3_sbe_v8_5.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = cme_futures_ilink3_sbe_v8_5.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Option Delta: Struct of 2 fields
  index, leg_option_delta = cme_futures_ilink3_sbe_v8_5.leg_option_delta.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = cme_futures_ilink3_sbe_v8_5.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 1 Byte Unsigned Fixed Width Integer Nullable
  index, leg_ratio_qty = cme_futures_ilink3_sbe_v8_5.leg_ratio_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Leg Group
cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_group.dissect = function(buffer, offset, packet, parent, security_definition_request_leg_group_index)
  if show.security_definition_request_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_request_leg_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_group.fields(buffer, offset, packet, parent, security_definition_request_leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_group.fields(buffer, offset, packet, parent, security_definition_request_leg_group_index)
  end
end

-- Security Definition Request Leg Groups
cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_groups = {}

-- Calculate size of: Security Definition Request Leg Groups
cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local security_definition_request_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_definition_request_leg_group_count * 19

  return index
end

-- Display: Security Definition Request Leg Groups
cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request Leg Groups
cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Security Definition Request Leg Group
  for security_definition_request_leg_group_index = 1, num_in_group do
    index, security_definition_request_leg_group = cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_group.dissect(buffer, index, packet, parent, security_definition_request_leg_group_index)
  end

  return index
end

-- Dissect: Security Definition Request Leg Groups
cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_request_leg_groups then
    local length = cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_request_leg_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_groups.fields(buffer, offset, packet, parent)
end

-- Security Sub Type
cme_futures_ilink3_sbe_v8_5.security_sub_type = {}

-- Size: Security Sub Type
cme_futures_ilink3_sbe_v8_5.security_sub_type.size = 8

-- Display: Security Sub Type
cme_futures_ilink3_sbe_v8_5.security_sub_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
cme_futures_ilink3_sbe_v8_5.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.security_sub_type.size
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

  local display = cme_futures_ilink3_sbe_v8_5.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Sender Id Optional
cme_futures_ilink3_sbe_v8_5.sender_id_optional = {}

-- Size: Sender Id Optional
cme_futures_ilink3_sbe_v8_5.sender_id_optional.size = 20

-- Display: Sender Id Optional
cme_futures_ilink3_sbe_v8_5.sender_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Id Optional: No Value"
  end

  return "Sender Id Optional: "..value
end

-- Dissect: Sender Id Optional
cme_futures_ilink3_sbe_v8_5.sender_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.sender_id_optional.size
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

  local display = cme_futures_ilink3_sbe_v8_5.sender_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.sender_id_optional, range, value, display)

  return offset + length, value
end

-- Security Definition Request
cme_futures_ilink3_sbe_v8_5.security_definition_request = {}

-- Calculate size of: Security Definition Request
cme_futures_ilink3_sbe_v8_5.security_definition_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_sub_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.start_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.end_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.max_no_of_substitutions.size

  index = index + cme_futures_ilink3_sbe_v8_5.source_repo_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Request
cme_futures_ilink3_sbe_v8_5.security_definition_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request
cme_futures_ilink3_sbe_v8_5.security_definition_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Unsigned Fixed Width Integer
  index, security_req_id = cme_futures_ilink3_sbe_v8_5.security_req_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id Optional: 20 Byte Ascii String
  index, sender_id_optional = cme_futures_ilink3_sbe_v8_5.sender_id_optional.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Security Sub Type: 8 Byte Ascii String
  index, security_sub_type = cme_futures_ilink3_sbe_v8_5.security_sub_type.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, start_date = cme_futures_ilink3_sbe_v8_5.start_date.dissect(buffer, index, packet, parent)

  -- End Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, end_date = cme_futures_ilink3_sbe_v8_5.end_date.dissect(buffer, index, packet, parent)

  -- Max No Of Substitutions: 1 Byte Unsigned Fixed Width Integer Nullable
  index, max_no_of_substitutions = cme_futures_ilink3_sbe_v8_5.max_no_of_substitutions.dissect(buffer, index, packet, parent)

  -- Source Repo Id: 4 Byte Signed Fixed Width Integer Nullable
  index, source_repo_id = cme_futures_ilink3_sbe_v8_5.source_repo_id.dissect(buffer, index, packet, parent)

  -- Security Definition Request Leg Groups: Struct of 2 fields
  index, security_definition_request_leg_groups = cme_futures_ilink3_sbe_v8_5.security_definition_request_leg_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request
cme_futures_ilink3_sbe_v8_5.security_definition_request.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_request then
    local length = cme_futures_ilink3_sbe_v8_5.security_definition_request.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.security_definition_request.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.security_definition_request, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.security_definition_request.fields(buffer, offset, packet, parent)
end

-- Original Order Event Exec Id
cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id = {}

-- Size: Original Order Event Exec Id
cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id.size = 4

-- Display: Original Order Event Exec Id
cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Original Order Event Exec Id: No Value"
  end

  return "Original Order Event Exec Id: "..value
end

-- Dissect: Original Order Event Exec Id
cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.original_order_event_exec_id, range, value, display)

  return offset + length, value
end

-- Order Event Reason
cme_futures_ilink3_sbe_v8_5.order_event_reason = {}

-- Size: Order Event Reason
cme_futures_ilink3_sbe_v8_5.order_event_reason.size = 1

-- Display: Order Event Reason
cme_futures_ilink3_sbe_v8_5.order_event_reason.display = function(value)
  return "Order Event Reason: "..value
end

-- Dissect: Order Event Reason
cme_futures_ilink3_sbe_v8_5.order_event_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.order_event_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.order_event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_reason, range, value, display)

  return offset + length, value
end

-- Trade Addendum
cme_futures_ilink3_sbe_v8_5.trade_addendum = {}

-- Size: Trade Addendum
cme_futures_ilink3_sbe_v8_5.trade_addendum.size = 1

-- Display: Trade Addendum
cme_futures_ilink3_sbe_v8_5.trade_addendum.display = function(value)
  if value == 4 then
    return "Trade Addendum: Partially Filled (4)"
  end
  if value == 5 then
    return "Trade Addendum: Filled (5)"
  end
  if value == 100 then
    return "Trade Addendum: Trade Cancel (100)"
  end
  if value == 101 then
    return "Trade Addendum: Trade Correction (101)"
  end

  return "Trade Addendum: Unknown("..value..")"
end

-- Dissect: Trade Addendum
cme_futures_ilink3_sbe_v8_5.trade_addendum.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.trade_addendum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.trade_addendum.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trade_addendum, range, value, display)

  return offset + length, value
end

-- Order Event Qty
cme_futures_ilink3_sbe_v8_5.order_event_qty = {}

-- Size: Order Event Qty
cme_futures_ilink3_sbe_v8_5.order_event_qty.size = 4

-- Display: Order Event Qty
cme_futures_ilink3_sbe_v8_5.order_event_qty.display = function(value)
  return "Order Event Qty: "..value
end

-- Dissect: Order Event Qty
cme_futures_ilink3_sbe_v8_5.order_event_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.order_event_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.order_event_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_qty, range, value, display)

  return offset + length, value
end

-- Order Event Exec Id
cme_futures_ilink3_sbe_v8_5.order_event_exec_id = {}

-- Size: Order Event Exec Id
cme_futures_ilink3_sbe_v8_5.order_event_exec_id.size = 4

-- Display: Order Event Exec Id
cme_futures_ilink3_sbe_v8_5.order_event_exec_id.display = function(value)
  return "Order Event Exec Id: "..value
end

-- Dissect: Order Event Exec Id
cme_futures_ilink3_sbe_v8_5.order_event_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.order_event_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.order_event_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_exec_id, range, value, display)

  return offset + length, value
end

-- Order Event Text
cme_futures_ilink3_sbe_v8_5.order_event_text = {}

-- Size: Order Event Text
cme_futures_ilink3_sbe_v8_5.order_event_text.size = 5

-- Display: Order Event Text
cme_futures_ilink3_sbe_v8_5.order_event_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Event Text: No Value"
  end

  return "Order Event Text: "..value
end

-- Dissect: Order Event Text
cme_futures_ilink3_sbe_v8_5.order_event_text.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.order_event_text.size
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

  local display = cme_futures_ilink3_sbe_v8_5.order_event_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_text, range, value, display)

  return offset + length, value
end

-- Order Event Px
cme_futures_ilink3_sbe_v8_5.order_event_px = {}

-- Size: Order Event Px
cme_futures_ilink3_sbe_v8_5.order_event_px.size = 8

-- Display: Order Event Px
cme_futures_ilink3_sbe_v8_5.order_event_px.display = function(value)
  return "Order Event Px: "..value
end

-- Translate: Order Event Px
cme_futures_ilink3_sbe_v8_5.order_event_px.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Order Event Px
cme_futures_ilink3_sbe_v8_5.order_event_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.order_event_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_ilink3_sbe_v8_5.order_event_px.translate(raw)
  local display = cme_futures_ilink3_sbe_v8_5.order_event_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_px, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Addendum Spread Leg Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_group = {}

-- Calculate size of: Execution Report Trade Addendum Spread Leg Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_text.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.trade_addendum.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id.size

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_group.fields = function(buffer, offset, packet, parent, execution_report_trade_addendum_spread_leg_order_event_group_index)
  local index = offset

  -- Implicit Execution Report Trade Addendum Spread Leg Order Event Group Index
  if execution_report_trade_addendum_spread_leg_order_event_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_order_event_group_index, execution_report_trade_addendum_spread_leg_order_event_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = cme_futures_ilink3_sbe_v8_5.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String
  index, order_event_text = cme_futures_ilink3_sbe_v8_5.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = cme_futures_ilink3_sbe_v8_5.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = cme_futures_ilink3_sbe_v8_5.order_event_qty.dissect(buffer, index, packet, parent)

  -- Trade Addendum: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trade_addendum = cme_futures_ilink3_sbe_v8_5.trade_addendum.dissect(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = cme_futures_ilink3_sbe_v8_5.order_event_reason.dissect(buffer, index, packet, parent)

  -- Original Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, original_order_event_exec_id = cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_group.dissect = function(buffer, offset, packet, parent, execution_report_trade_addendum_spread_leg_order_event_group_index)
  if show.execution_report_trade_addendum_spread_leg_order_event_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_order_event_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_addendum_spread_leg_order_event_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_addendum_spread_leg_order_event_group_index)
  end
end

-- Execution Report Trade Addendum Spread Leg Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_groups = {}

-- Calculate size of: Execution Report Trade Addendum Spread Leg Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_addendum_spread_leg_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_addendum_spread_leg_order_event_group_count * 27

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Execution Report Trade Addendum Spread Leg Order Event Group
  for execution_report_trade_addendum_spread_leg_order_event_group_index = 1, num_in_group do
    index, execution_report_trade_addendum_spread_leg_order_event_group = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_group.dissect(buffer, index, packet, parent, execution_report_trade_addendum_spread_leg_order_event_group_index)
  end

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread_leg_order_event_groups then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_order_event_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_groups.fields(buffer, offset, packet, parent)
end

-- Fill Yield Type
cme_futures_ilink3_sbe_v8_5.fill_yield_type = {}

-- Size: Fill Yield Type
cme_futures_ilink3_sbe_v8_5.fill_yield_type.size = 1

-- Display: Fill Yield Type
cme_futures_ilink3_sbe_v8_5.fill_yield_type.display = function(value)
  return "Fill Yield Type: "..value
end

-- Dissect: Fill Yield Type
cme_futures_ilink3_sbe_v8_5.fill_yield_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.fill_yield_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.fill_yield_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.fill_yield_type, range, value, display)

  return offset + length, value
end

-- Fill Exec Id
cme_futures_ilink3_sbe_v8_5.fill_exec_id = {}

-- Size: Fill Exec Id
cme_futures_ilink3_sbe_v8_5.fill_exec_id.size = 2

-- Display: Fill Exec Id
cme_futures_ilink3_sbe_v8_5.fill_exec_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fill Exec Id: No Value"
  end

  return "Fill Exec Id: "..value
end

-- Dissect: Fill Exec Id
cme_futures_ilink3_sbe_v8_5.fill_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.fill_exec_id.size
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

  local display = cme_futures_ilink3_sbe_v8_5.fill_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.fill_exec_id, range, value, display)

  return offset + length, value
end

-- Fill Qty
cme_futures_ilink3_sbe_v8_5.fill_qty = {}

-- Size: Fill Qty
cme_futures_ilink3_sbe_v8_5.fill_qty.size = 4

-- Display: Fill Qty
cme_futures_ilink3_sbe_v8_5.fill_qty.display = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
cme_futures_ilink3_sbe_v8_5.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.fill_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.fill_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Fill Px
cme_futures_ilink3_sbe_v8_5.fill_px = {}

-- Size: Fill Px
cme_futures_ilink3_sbe_v8_5.fill_px.size = 8

-- Display: Fill Px
cme_futures_ilink3_sbe_v8_5.fill_px.display = function(value)
  return "Fill Px: "..value
end

-- Translate: Fill Px
cme_futures_ilink3_sbe_v8_5.fill_px.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Fill Px
cme_futures_ilink3_sbe_v8_5.fill_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.fill_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_ilink3_sbe_v8_5.fill_px.translate(raw)
  local display = cme_futures_ilink3_sbe_v8_5.fill_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.fill_px, range, value, display)

  return offset + length, value
end

-- Fills Group
cme_futures_ilink3_sbe_v8_5.fills_group = {}

-- Calculate size of: Fills Group
cme_futures_ilink3_sbe_v8_5.fills_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.fill_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.fill_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.fill_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.fill_yield_type.size

  return index
end

-- Display: Fills Group
cme_futures_ilink3_sbe_v8_5.fills_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fills Group
cme_futures_ilink3_sbe_v8_5.fills_group.fields = function(buffer, offset, packet, parent, fills_group_index)
  local index = offset

  -- Implicit Fills Group Index
  if fills_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.fills_group_index, fills_group_index)
    iteration:set_generated()
  end

  -- Fill Px: 8 Byte Signed Fixed Width Integer
  index, fill_px = cme_futures_ilink3_sbe_v8_5.fill_px.dissect(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Unsigned Fixed Width Integer
  index, fill_qty = cme_futures_ilink3_sbe_v8_5.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Exec Id: 2 Byte Ascii String
  index, fill_exec_id = cme_futures_ilink3_sbe_v8_5.fill_exec_id.dissect(buffer, index, packet, parent)

  -- Fill Yield Type: 1 Byte Unsigned Fixed Width Integer
  index, fill_yield_type = cme_futures_ilink3_sbe_v8_5.fill_yield_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Group
cme_futures_ilink3_sbe_v8_5.fills_group.dissect = function(buffer, offset, packet, parent, fills_group_index)
  if show.fills_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.fills_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.fills_group.fields(buffer, offset, packet, parent, fills_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.fills_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.fills_group.fields(buffer, offset, packet, parent, fills_group_index)
  end
end

-- Fills Groups
cme_futures_ilink3_sbe_v8_5.fills_groups = {}

-- Calculate size of: Fills Groups
cme_futures_ilink3_sbe_v8_5.fills_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local fills_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + fills_group_count * 15

  return index
end

-- Display: Fills Groups
cme_futures_ilink3_sbe_v8_5.fills_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fills Groups
cme_futures_ilink3_sbe_v8_5.fills_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Fills Group
  for fills_group_index = 1, num_in_group do
    index, fills_group = cme_futures_ilink3_sbe_v8_5.fills_group.dissect(buffer, index, packet, parent, fills_group_index)
  end

  return index
end

-- Dissect: Fills Groups
cme_futures_ilink3_sbe_v8_5.fills_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.fills_groups then
    local length = cme_futures_ilink3_sbe_v8_5.fills_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.fills_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.fills_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.fills_groups.fields(buffer, offset, packet, parent)
end

-- Side
cme_futures_ilink3_sbe_v8_5.side = {}

-- Size: Side
cme_futures_ilink3_sbe_v8_5.side.size = 1

-- Display: Side
cme_futures_ilink3_sbe_v8_5.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cme_futures_ilink3_sbe_v8_5.side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.side, range, value, display)

  return offset + length, value
end

-- Exec Type
cme_futures_ilink3_sbe_v8_5.exec_type = {}

-- Size: Exec Type
cme_futures_ilink3_sbe_v8_5.exec_type.size = 1

-- Display: Exec Type
cme_futures_ilink3_sbe_v8_5.exec_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Type: No Value"
  end

  if value == "G" then
    return "Exec Type: Trade Correction (G)"
  end
  if value == "H" then
    return "Exec Type: Trade Cancel (H)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
cme_futures_ilink3_sbe_v8_5.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.exec_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Ord Status Trd Cxl
cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl = {}

-- Size: Ord Status Trd Cxl
cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl.size = 1

-- Display: Ord Status Trd Cxl
cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Status Trd Cxl: No Value"
  end

  if value == "G" then
    return "Ord Status Trd Cxl: Trade Correction (G)"
  end
  if value == "H" then
    return "Ord Status Trd Cxl: Trade Cancel (H)"
  end

  return "Ord Status Trd Cxl: Unknown("..value..")"
end

-- Dissect: Ord Status Trd Cxl
cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status_trd_cxl, range, value, display)

  return offset + length, value
end

-- Trade Date
cme_futures_ilink3_sbe_v8_5.trade_date = {}

-- Size: Trade Date
cme_futures_ilink3_sbe_v8_5.trade_date.size = 2

-- Display: Trade Date
cme_futures_ilink3_sbe_v8_5.trade_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_futures_ilink3_sbe_v8_5.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Orig Side Trade Id
cme_futures_ilink3_sbe_v8_5.orig_side_trade_id = {}

-- Size: Orig Side Trade Id
cme_futures_ilink3_sbe_v8_5.orig_side_trade_id.size = 4

-- Display: Orig Side Trade Id
cme_futures_ilink3_sbe_v8_5.orig_side_trade_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Orig Side Trade Id: No Value"
  end

  return "Orig Side Trade Id: "..value
end

-- Dissect: Orig Side Trade Id
cme_futures_ilink3_sbe_v8_5.orig_side_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.orig_side_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.orig_side_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.orig_side_trade_id, range, value, display)

  return offset + length, value
end

-- Side Trade Id
cme_futures_ilink3_sbe_v8_5.side_trade_id = {}

-- Size: Side Trade Id
cme_futures_ilink3_sbe_v8_5.side_trade_id.size = 4

-- Display: Side Trade Id
cme_futures_ilink3_sbe_v8_5.side_trade_id.display = function(value)
  return "Side Trade Id: "..value
end

-- Dissect: Side Trade Id
cme_futures_ilink3_sbe_v8_5.side_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.side_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.side_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.side_trade_id, range, value, display)

  return offset + length, value
end

-- Last Qty
cme_futures_ilink3_sbe_v8_5.last_qty = {}

-- Size: Last Qty
cme_futures_ilink3_sbe_v8_5.last_qty.size = 4

-- Display: Last Qty
cme_futures_ilink3_sbe_v8_5.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
cme_futures_ilink3_sbe_v8_5.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Orig Secondary Execution Id
cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id = {}

-- Size: Orig Secondary Execution Id
cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id.size = 8

-- Display: Orig Secondary Execution Id
cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Orig Secondary Execution Id: No Value"
  end

  return "Orig Secondary Execution Id: "..value
end

-- Dissect: Orig Secondary Execution Id
cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.orig_secondary_execution_id, range, value, display)

  return offset + length, value
end

-- Sec Exec Id
cme_futures_ilink3_sbe_v8_5.sec_exec_id = {}

-- Size: Sec Exec Id
cme_futures_ilink3_sbe_v8_5.sec_exec_id.size = 8

-- Display: Sec Exec Id
cme_futures_ilink3_sbe_v8_5.sec_exec_id.display = function(value)
  return "Sec Exec Id: "..value
end

-- Dissect: Sec Exec Id
cme_futures_ilink3_sbe_v8_5.sec_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.sec_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.sec_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.sec_exec_id, range, value, display)

  return offset + length, value
end

-- Order Id
cme_futures_ilink3_sbe_v8_5.order_id = {}

-- Size: Order Id
cme_futures_ilink3_sbe_v8_5.order_id.size = 8

-- Display: Order Id
cme_futures_ilink3_sbe_v8_5.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cme_futures_ilink3_sbe_v8_5.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_id, range, value, display)

  return offset + length, value
end

-- Last Px
cme_futures_ilink3_sbe_v8_5.last_px = {}

-- Size: Last Px
cme_futures_ilink3_sbe_v8_5.last_px.size = 8

-- Display: Last Px
cme_futures_ilink3_sbe_v8_5.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cme_futures_ilink3_sbe_v8_5.last_px.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Last Px
cme_futures_ilink3_sbe_v8_5.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_ilink3_sbe_v8_5.last_px.translate(raw)
  local display = cme_futures_ilink3_sbe_v8_5.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.last_px, range, value, display)

  return offset + length, value
end

-- ClOrdId
cme_futures_ilink3_sbe_v8_5.clordid = {}

-- Size: ClOrdId
cme_futures_ilink3_sbe_v8_5.clordid.size = 20

-- Display: ClOrdId
cme_futures_ilink3_sbe_v8_5.clordid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
cme_futures_ilink3_sbe_v8_5.clordid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.clordid.size
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

  local display = cme_futures_ilink3_sbe_v8_5.clordid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.clordid, range, value, display)

  return offset + length, value
end

-- Exec Id
cme_futures_ilink3_sbe_v8_5.exec_id = {}

-- Size: Exec Id
cme_futures_ilink3_sbe_v8_5.exec_id.size = 40

-- Display: Exec Id
cme_futures_ilink3_sbe_v8_5.exec_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exec Id: No Value"
  end

  return "Exec Id: "..value
end

-- Dissect: Exec Id
cme_futures_ilink3_sbe_v8_5.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.exec_id.size
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

  local display = cme_futures_ilink3_sbe_v8_5.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Addendum Spread Leg
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg = {}

-- Calculate size of: Execution Report Trade Addendum Spread Leg
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.sec_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.side_trade_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.orig_side_trade_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.trade_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.fills_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = cme_futures_ilink3_sbe_v8_5.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = cme_futures_ilink3_sbe_v8_5.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_secondary_execution_id = cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = cme_futures_ilink3_sbe_v8_5.last_qty.dissect(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = cme_futures_ilink3_sbe_v8_5.side_trade_id.dissect(buffer, index, packet, parent)

  -- Orig Side Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, orig_side_trade_id = cme_futures_ilink3_sbe_v8_5.orig_side_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_ilink3_sbe_v8_5.trade_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd Cxl: 1 Byte Ascii String Enum with 2 values
  index, ord_status_trd_cxl = cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 2 values
  index, exec_type = cme_futures_ilink3_sbe_v8_5.exec_type.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_futures_ilink3_sbe_v8_5.fills_groups.dissect(buffer, index, packet, parent)

  -- Execution Report Trade Addendum Spread Leg Order Event Groups: Struct of 2 fields
  index, execution_report_trade_addendum_spread_leg_order_event_groups = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_order_event_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread_leg then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg.fields(buffer, offset, packet, parent)
end

-- Execution Report Trade Addendum Spread Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_group = {}

-- Calculate size of: Execution Report Trade Addendum Spread Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_text.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.trade_addendum.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id.size

  return index
end

-- Display: Execution Report Trade Addendum Spread Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_group.fields = function(buffer, offset, packet, parent, execution_report_trade_addendum_spread_order_event_group_index)
  local index = offset

  -- Implicit Execution Report Trade Addendum Spread Order Event Group Index
  if execution_report_trade_addendum_spread_order_event_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_order_event_group_index, execution_report_trade_addendum_spread_order_event_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = cme_futures_ilink3_sbe_v8_5.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String
  index, order_event_text = cme_futures_ilink3_sbe_v8_5.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = cme_futures_ilink3_sbe_v8_5.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = cme_futures_ilink3_sbe_v8_5.order_event_qty.dissect(buffer, index, packet, parent)

  -- Trade Addendum: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trade_addendum = cme_futures_ilink3_sbe_v8_5.trade_addendum.dissect(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = cme_futures_ilink3_sbe_v8_5.order_event_reason.dissect(buffer, index, packet, parent)

  -- Original Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, original_order_event_exec_id = cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_group.dissect = function(buffer, offset, packet, parent, execution_report_trade_addendum_spread_order_event_group_index)
  if show.execution_report_trade_addendum_spread_order_event_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_order_event_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_addendum_spread_order_event_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_addendum_spread_order_event_group_index)
  end
end

-- Execution Report Trade Addendum Spread Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_groups = {}

-- Calculate size of: Execution Report Trade Addendum Spread Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_addendum_spread_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_addendum_spread_order_event_group_count * 27

  return index
end

-- Display: Execution Report Trade Addendum Spread Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Execution Report Trade Addendum Spread Order Event Group
  for execution_report_trade_addendum_spread_order_event_group_index = 1, num_in_group do
    index, execution_report_trade_addendum_spread_order_event_group = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_group.dissect(buffer, index, packet, parent, execution_report_trade_addendum_spread_order_event_group_index)
  end

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread_order_event_groups then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_order_event_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_groups.fields(buffer, offset, packet, parent)
end

-- Leg Last Qty
cme_futures_ilink3_sbe_v8_5.leg_last_qty = {}

-- Size: Leg Last Qty
cme_futures_ilink3_sbe_v8_5.leg_last_qty.size = 4

-- Display: Leg Last Qty
cme_futures_ilink3_sbe_v8_5.leg_last_qty.display = function(value)
  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
cme_futures_ilink3_sbe_v8_5.leg_last_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.leg_last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.leg_last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Leg Trade Ref Id
cme_futures_ilink3_sbe_v8_5.leg_trade_ref_id = {}

-- Size: Leg Trade Ref Id
cme_futures_ilink3_sbe_v8_5.leg_trade_ref_id.size = 4

-- Display: Leg Trade Ref Id
cme_futures_ilink3_sbe_v8_5.leg_trade_ref_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leg Trade Ref Id: No Value"
  end

  return "Leg Trade Ref Id: "..value
end

-- Dissect: Leg Trade Ref Id
cme_futures_ilink3_sbe_v8_5.leg_trade_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.leg_trade_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.leg_trade_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leg_trade_ref_id, range, value, display)

  return offset + length, value
end

-- Leg Trade Id
cme_futures_ilink3_sbe_v8_5.leg_trade_id = {}

-- Size: Leg Trade Id
cme_futures_ilink3_sbe_v8_5.leg_trade_id.size = 4

-- Display: Leg Trade Id
cme_futures_ilink3_sbe_v8_5.leg_trade_id.display = function(value)
  return "Leg Trade Id: "..value
end

-- Dissect: Leg Trade Id
cme_futures_ilink3_sbe_v8_5.leg_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.leg_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.leg_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leg_trade_id, range, value, display)

  return offset + length, value
end

-- Leg Exec Ref Id
cme_futures_ilink3_sbe_v8_5.leg_exec_ref_id = {}

-- Size: Leg Exec Ref Id
cme_futures_ilink3_sbe_v8_5.leg_exec_ref_id.size = 8

-- Display: Leg Exec Ref Id
cme_futures_ilink3_sbe_v8_5.leg_exec_ref_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Exec Ref Id: No Value"
  end

  return "Leg Exec Ref Id: "..value
end

-- Dissect: Leg Exec Ref Id
cme_futures_ilink3_sbe_v8_5.leg_exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.leg_exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.leg_exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leg_exec_ref_id, range, value, display)

  return offset + length, value
end

-- Leg Last Px
cme_futures_ilink3_sbe_v8_5.leg_last_px = {}

-- Size: Leg Last Px
cme_futures_ilink3_sbe_v8_5.leg_last_px.size = 8

-- Display: Leg Last Px
cme_futures_ilink3_sbe_v8_5.leg_last_px.display = function(value)
  return "Leg Last Px: "..value
end

-- Translate: Leg Last Px
cme_futures_ilink3_sbe_v8_5.leg_last_px.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Leg Last Px
cme_futures_ilink3_sbe_v8_5.leg_last_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.leg_last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_ilink3_sbe_v8_5.leg_last_px.translate(raw)
  local display = cme_futures_ilink3_sbe_v8_5.leg_last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Leg Exec Id
cme_futures_ilink3_sbe_v8_5.leg_exec_id = {}

-- Size: Leg Exec Id
cme_futures_ilink3_sbe_v8_5.leg_exec_id.size = 8

-- Display: Leg Exec Id
cme_futures_ilink3_sbe_v8_5.leg_exec_id.display = function(value)
  return "Leg Exec Id: "..value
end

-- Dissect: Leg Exec Id
cme_futures_ilink3_sbe_v8_5.leg_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.leg_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.leg_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leg_exec_id, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Addendum Spread Leg Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_group = {}

-- Calculate size of: Execution Report Trade Addendum Spread Leg Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.leg_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_last_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_exec_ref_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_trade_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_trade_ref_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_last_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_side.size

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_group.fields = function(buffer, offset, packet, parent, execution_report_trade_addendum_spread_leg_group_index)
  local index = offset

  -- Implicit Execution Report Trade Addendum Spread Leg Group Index
  if execution_report_trade_addendum_spread_leg_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_group_index, execution_report_trade_addendum_spread_leg_group_index)
    iteration:set_generated()
  end

  -- Leg Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, leg_exec_id = cme_futures_ilink3_sbe_v8_5.leg_exec_id.dissect(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Signed Fixed Width Integer
  index, leg_last_px = cme_futures_ilink3_sbe_v8_5.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Exec Ref Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_exec_ref_id = cme_futures_ilink3_sbe_v8_5.leg_exec_ref_id.dissect(buffer, index, packet, parent)

  -- Leg Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, leg_trade_id = cme_futures_ilink3_sbe_v8_5.leg_trade_id.dissect(buffer, index, packet, parent)

  -- Leg Trade Ref Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leg_trade_ref_id = cme_futures_ilink3_sbe_v8_5.leg_trade_ref_id.dissect(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = cme_futures_ilink3_sbe_v8_5.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, leg_last_qty = cme_futures_ilink3_sbe_v8_5.leg_last_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = cme_futures_ilink3_sbe_v8_5.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_group.dissect = function(buffer, offset, packet, parent, execution_report_trade_addendum_spread_leg_group_index)
  if show.execution_report_trade_addendum_spread_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_group.fields(buffer, offset, packet, parent, execution_report_trade_addendum_spread_leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_group.fields(buffer, offset, packet, parent, execution_report_trade_addendum_spread_leg_group_index)
  end
end

-- Execution Report Trade Addendum Spread Leg Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_groups = {}

-- Calculate size of: Execution Report Trade Addendum Spread Leg Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_addendum_spread_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_addendum_spread_leg_group_count * 41

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Execution Report Trade Addendum Spread Leg Group
  for execution_report_trade_addendum_spread_leg_group_index = 1, num_in_group do
    index, execution_report_trade_addendum_spread_leg_group = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_group.dissect(buffer, index, packet, parent, execution_report_trade_addendum_spread_leg_group_index)
  end

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread_leg_groups then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread_leg_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_groups.fields(buffer, offset, packet, parent)
end

-- Short Sale Type
cme_futures_ilink3_sbe_v8_5.short_sale_type = {}

-- Size: Short Sale Type
cme_futures_ilink3_sbe_v8_5.short_sale_type.size = 1

-- Display: Short Sale Type
cme_futures_ilink3_sbe_v8_5.short_sale_type.display = function(value)
  if value == 255 then
    return "Short Sale Type: No Value"
  end
  if value == 0 then
    return "Short Sale Type: Long Sell (0)"
  end
  if value == 1 then
    return "Short Sale Type: Short Sale With No Exemption Sesh (1)"
  end
  if value == 2 then
    return "Short Sale Type: Short Sale With Exemption Ssex (2)"
  end
  if value == 3 then
    return "Short Sale Type: Undisclosed Sell Information Not Available Undi (3)"
  end

  return "Short Sale Type: Unknown("..value..")"
end

-- Dissect: Short Sale Type
cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.short_sale_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.short_sale_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.short_sale_type, range, value, display)

  return offset + length, value
end

-- Managed Order
cme_futures_ilink3_sbe_v8_5.managed_order = {}

-- Size: Managed Order
cme_futures_ilink3_sbe_v8_5.managed_order.size = 1

-- Display: Managed Order
cme_futures_ilink3_sbe_v8_5.managed_order.display = function(value)
  if value == 255 then
    return "Managed Order: No Value"
  end
  if value == 0 then
    return "Managed Order: False (0)"
  end
  if value == 1 then
    return "Managed Order: True (1)"
  end

  return "Managed Order: Unknown("..value..")"
end

-- Dissect: Managed Order
cme_futures_ilink3_sbe_v8_5.managed_order.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.managed_order.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.managed_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.managed_order, range, value, display)

  return offset + length, value
end

-- Execution Mode
cme_futures_ilink3_sbe_v8_5.execution_mode = {}

-- Size: Execution Mode
cme_futures_ilink3_sbe_v8_5.execution_mode.size = 1

-- Display: Execution Mode
cme_futures_ilink3_sbe_v8_5.execution_mode.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Execution Mode: No Value"
  end

  if value == "A" then
    return "Execution Mode: Aggressive (A)"
  end
  if value == "P" then
    return "Execution Mode: Passive (P)"
  end

  return "Execution Mode: Unknown("..value..")"
end

-- Dissect: Execution Mode
cme_futures_ilink3_sbe_v8_5.execution_mode.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.execution_mode.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.execution_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_mode, range, value, display)

  return offset + length, value
end

-- Exec Inst
cme_futures_ilink3_sbe_v8_5.exec_inst = {}

-- Size: Exec Inst
cme_futures_ilink3_sbe_v8_5.exec_inst.size = 1

-- Display: Exec Inst
cme_futures_ilink3_sbe_v8_5.exec_inst.display = function(buffer, packet, parent)
  local display = ""

  -- Is Reserved 5 flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Reserved 5|"
  end
  -- Is Reserved 4 flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Reserved 4|"
  end
  -- Is Reserved 3 flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Reserved 3|"
  end
  -- Is Reserved 2 flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Reserved 2|"
  end
  -- Is Reserved 1 flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Reserved 1|"
  end
  -- Is Nh flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Nh|"
  end
  -- Is Ob flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Ob|"
  end
  -- Is Aon flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Aon|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Exec Inst
cme_futures_ilink3_sbe_v8_5.exec_inst.bits = function(buffer, offset, packet, parent)

  -- Reserved 5: 1 Bit
  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.reserved_5, buffer(offset, 1))

  -- Reserved 4: 1 Bit
  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.reserved_4, buffer(offset, 1))

  -- Reserved 3: 1 Bit
  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.reserved_3, buffer(offset, 1))

  -- Reserved 2: 1 Bit
  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.reserved_2, buffer(offset, 1))

  -- Reserved 1: 1 Bit
  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.reserved_1, buffer(offset, 1))

  -- Nh: 1 Bit
  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.nh, buffer(offset, 1))

  -- Ob: 1 Bit
  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ob, buffer(offset, 1))

  -- Aon: 1 Bit
  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.aon, buffer(offset, 1))
end

-- Dissect: Exec Inst
cme_futures_ilink3_sbe_v8_5.exec_inst.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cme_futures_ilink3_sbe_v8_5.exec_inst.display(range, packet, parent)
  local element = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.exec_inst, range, display)

  if show.exec_inst then
    cme_futures_ilink3_sbe_v8_5.exec_inst.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Total Num Securities
cme_futures_ilink3_sbe_v8_5.total_num_securities = {}

-- Size: Total Num Securities
cme_futures_ilink3_sbe_v8_5.total_num_securities.size = 1

-- Display: Total Num Securities
cme_futures_ilink3_sbe_v8_5.total_num_securities.display = function(value)
  return "Total Num Securities: "..value
end

-- Dissect: Total Num Securities
cme_futures_ilink3_sbe_v8_5.total_num_securities.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.total_num_securities.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.total_num_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.total_num_securities, range, value, display)

  return offset + length, value
end

-- Ord Type Optional
cme_futures_ilink3_sbe_v8_5.ord_type_optional = {}

-- Size: Ord Type Optional
cme_futures_ilink3_sbe_v8_5.ord_type_optional.size = 1

-- Display: Ord Type Optional
cme_futures_ilink3_sbe_v8_5.ord_type_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Type Optional: No Value"
  end

  if value == "1" then
    return "Ord Type Optional: Market With Protection (1)"
  end
  if value == "2" then
    return "Ord Type Optional: Limit (2)"
  end
  if value == "4" then
    return "Ord Type Optional: Stop Limit (4)"
  end
  if value == "K" then
    return "Ord Type Optional: Market With Leftover As Limit (K)"
  end

  return "Ord Type Optional: Unknown("..value..")"
end

-- Dissect: Ord Type Optional
cme_futures_ilink3_sbe_v8_5.ord_type_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ord_type_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.ord_type_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ord_type_optional, range, value, display)

  return offset + length, value
end

-- Md Trade Entry Id
cme_futures_ilink3_sbe_v8_5.md_trade_entry_id = {}

-- Size: Md Trade Entry Id
cme_futures_ilink3_sbe_v8_5.md_trade_entry_id.size = 4

-- Display: Md Trade Entry Id
cme_futures_ilink3_sbe_v8_5.md_trade_entry_id.display = function(value)
  return "Md Trade Entry Id: "..value
end

-- Dissect: Md Trade Entry Id
cme_futures_ilink3_sbe_v8_5.md_trade_entry_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.md_trade_entry_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.md_trade_entry_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.md_trade_entry_id, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Addendum Spread
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread = {}

-- Calculate size of: Execution Report Trade Addendum Spread
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.sec_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.md_trade_entry_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.side_trade_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.orig_side_trade_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.trade_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.total_num_securities.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.managed_order.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.fills_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Spread
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = cme_futures_ilink3_sbe_v8_5.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = cme_futures_ilink3_sbe_v8_5.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_secondary_execution_id = cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, md_trade_entry_id = cme_futures_ilink3_sbe_v8_5.md_trade_entry_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = cme_futures_ilink3_sbe_v8_5.last_qty.dissect(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = cme_futures_ilink3_sbe_v8_5.side_trade_id.dissect(buffer, index, packet, parent)

  -- Orig Side Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, orig_side_trade_id = cme_futures_ilink3_sbe_v8_5.orig_side_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_ilink3_sbe_v8_5.trade_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd Cxl: 1 Byte Ascii String Enum with 2 values
  index, ord_status_trd_cxl = cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 2 values
  index, exec_type = cme_futures_ilink3_sbe_v8_5.exec_type.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 4 values
  index, ord_type_optional = cme_futures_ilink3_sbe_v8_5.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Total Num Securities: 1 Byte Unsigned Fixed Width Integer
  index, total_num_securities = cme_futures_ilink3_sbe_v8_5.total_num_securities.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = cme_futures_ilink3_sbe_v8_5.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_futures_ilink3_sbe_v8_5.fills_groups.dissect(buffer, index, packet, parent)

  -- Execution Report Trade Addendum Spread Leg Groups: Struct of 2 fields
  index, execution_report_trade_addendum_spread_leg_groups = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg_groups.dissect(buffer, index, packet, parent)

  -- Execution Report Trade Addendum Spread Order Event Groups: Struct of 2 fields
  index, execution_report_trade_addendum_spread_order_event_groups = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_order_event_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_spread, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread.fields(buffer, offset, packet, parent)
end

-- Execution Report Trade Addendum Outright Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_group = {}

-- Calculate size of: Execution Report Trade Addendum Outright Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_text.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.trade_addendum.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id.size

  return index
end

-- Display: Execution Report Trade Addendum Outright Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Outright Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_group.fields = function(buffer, offset, packet, parent, execution_report_trade_addendum_outright_order_event_group_index)
  local index = offset

  -- Implicit Execution Report Trade Addendum Outright Order Event Group Index
  if execution_report_trade_addendum_outright_order_event_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_outright_order_event_group_index, execution_report_trade_addendum_outright_order_event_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = cme_futures_ilink3_sbe_v8_5.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String
  index, order_event_text = cme_futures_ilink3_sbe_v8_5.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = cme_futures_ilink3_sbe_v8_5.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = cme_futures_ilink3_sbe_v8_5.order_event_qty.dissect(buffer, index, packet, parent)

  -- Trade Addendum: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trade_addendum = cme_futures_ilink3_sbe_v8_5.trade_addendum.dissect(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = cme_futures_ilink3_sbe_v8_5.order_event_reason.dissect(buffer, index, packet, parent)

  -- Original Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, original_order_event_exec_id = cme_futures_ilink3_sbe_v8_5.original_order_event_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Outright Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_group.dissect = function(buffer, offset, packet, parent, execution_report_trade_addendum_outright_order_event_group_index)
  if show.execution_report_trade_addendum_outright_order_event_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_outright_order_event_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_addendum_outright_order_event_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_addendum_outright_order_event_group_index)
  end
end

-- Execution Report Trade Addendum Outright Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_groups = {}

-- Calculate size of: Execution Report Trade Addendum Outright Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_addendum_outright_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_addendum_outright_order_event_group_count * 27

  return index
end

-- Display: Execution Report Trade Addendum Outright Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Outright Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Execution Report Trade Addendum Outright Order Event Group
  for execution_report_trade_addendum_outright_order_event_group_index = 1, num_in_group do
    index, execution_report_trade_addendum_outright_order_event_group = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_group.dissect(buffer, index, packet, parent, execution_report_trade_addendum_outright_order_event_group_index)
  end

  return index
end

-- Dissect: Execution Report Trade Addendum Outright Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_outright_order_event_groups then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_outright_order_event_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_groups.fields(buffer, offset, packet, parent)
end

-- Execution Report Trade Addendum Outright
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright = {}

-- Calculate size of: Execution Report Trade Addendum Outright
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.sec_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.side_trade_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.orig_side_trade_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.trade_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.managed_order.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.fills_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Outright
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Outright
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = cme_futures_ilink3_sbe_v8_5.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = cme_futures_ilink3_sbe_v8_5.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_secondary_execution_id = cme_futures_ilink3_sbe_v8_5.orig_secondary_execution_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = cme_futures_ilink3_sbe_v8_5.last_qty.dissect(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = cme_futures_ilink3_sbe_v8_5.side_trade_id.dissect(buffer, index, packet, parent)

  -- Orig Side Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, orig_side_trade_id = cme_futures_ilink3_sbe_v8_5.orig_side_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_ilink3_sbe_v8_5.trade_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd Cxl: 1 Byte Ascii String Enum with 2 values
  index, ord_status_trd_cxl = cme_futures_ilink3_sbe_v8_5.ord_status_trd_cxl.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 2 values
  index, exec_type = cme_futures_ilink3_sbe_v8_5.exec_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = cme_futures_ilink3_sbe_v8_5.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_futures_ilink3_sbe_v8_5.fills_groups.dissect(buffer, index, packet, parent)

  -- Execution Report Trade Addendum Outright Order Event Groups: Struct of 2 fields
  index, execution_report_trade_addendum_outright_order_event_groups = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright_order_event_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Outright
cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_outright then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_addendum_outright, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright.fields(buffer, offset, packet, parent)
end

-- Quote Ack Status
cme_futures_ilink3_sbe_v8_5.quote_ack_status = {}

-- Size: Quote Ack Status
cme_futures_ilink3_sbe_v8_5.quote_ack_status.size = 1

-- Display: Quote Ack Status
cme_futures_ilink3_sbe_v8_5.quote_ack_status.display = function(value)
  if value == 0 then
    return "Quote Ack Status: Accepted (0)"
  end
  if value == 5 then
    return "Quote Ack Status: Rejected (5)"
  end

  return "Quote Ack Status: Unknown("..value..")"
end

-- Dissect: Quote Ack Status
cme_futures_ilink3_sbe_v8_5.quote_ack_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_ack_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.quote_ack_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_ack_status, range, value, display)

  return offset + length, value
end

-- Quote Req Id
cme_futures_ilink3_sbe_v8_5.quote_req_id = {}

-- Size: Quote Req Id
cme_futures_ilink3_sbe_v8_5.quote_req_id.size = 8

-- Display: Quote Req Id
cme_futures_ilink3_sbe_v8_5.quote_req_id.display = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
cme_futures_ilink3_sbe_v8_5.quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Exchange Quote Req Id
cme_futures_ilink3_sbe_v8_5.exchange_quote_req_id = {}

-- Size: Exchange Quote Req Id
cme_futures_ilink3_sbe_v8_5.exchange_quote_req_id.size = 17

-- Display: Exchange Quote Req Id
cme_futures_ilink3_sbe_v8_5.exchange_quote_req_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exchange Quote Req Id: No Value"
  end

  return "Exchange Quote Req Id: "..value
end

-- Dissect: Exchange Quote Req Id
cme_futures_ilink3_sbe_v8_5.exchange_quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.exchange_quote_req_id.size
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

  local display = cme_futures_ilink3_sbe_v8_5.exchange_quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.exchange_quote_req_id, range, value, display)

  return offset + length, value
end

-- Request For Quote Ack
cme_futures_ilink3_sbe_v8_5.request_for_quote_ack = {}

-- Calculate size of: Request For Quote Ack
cme_futures_ilink3_sbe_v8_5.request_for_quote_ack.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.text.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.exchange_quote_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_reject_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_duration.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_ack_status.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_to_time.size

  return index
end

-- Display: Request For Quote Ack
cme_futures_ilink3_sbe_v8_5.request_for_quote_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote Ack
cme_futures_ilink3_sbe_v8_5.request_for_quote_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index, text = cme_futures_ilink3_sbe_v8_5.text.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Exchange Quote Req Id: 17 Byte Ascii String
  index, exchange_quote_req_id = cme_futures_ilink3_sbe_v8_5.exchange_quote_req_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = cme_futures_ilink3_sbe_v8_5.request_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = cme_futures_ilink3_sbe_v8_5.quote_req_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: 2 Byte Unsigned Fixed Width Integer Nullable
  index, quote_reject_reason = cme_futures_ilink3_sbe_v8_5.quote_reject_reason.dissect(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = cme_futures_ilink3_sbe_v8_5.delay_duration.dissect(buffer, index, packet, parent)

  -- Quote Ack Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_ack_status = cme_futures_ilink3_sbe_v8_5.quote_ack_status.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = cme_futures_ilink3_sbe_v8_5.delay_to_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote Ack
cme_futures_ilink3_sbe_v8_5.request_for_quote_ack.dissect = function(buffer, offset, packet, parent)
  if show.request_for_quote_ack then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.request_for_quote_ack, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.request_for_quote_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.request_for_quote_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.request_for_quote_ack.fields(buffer, offset, packet, parent)
  end
end

-- Mass Quote Ack Entry Group
cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_group = {}

-- Calculate size of: Mass Quote Ack Entry Group
cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.quote_entry_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_set_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_entry_reject_reason.size

  return index
end

-- Display: Mass Quote Ack Entry Group
cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Ack Entry Group
cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_group.fields = function(buffer, offset, packet, parent, mass_quote_ack_entry_group_index)
  local index = offset

  -- Implicit Mass Quote Ack Entry Group Index
  if mass_quote_ack_entry_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_ack_entry_group_index, mass_quote_ack_entry_group_index)
    iteration:set_generated()
  end

  -- Quote Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_entry_id = cme_futures_ilink3_sbe_v8_5.quote_entry_id.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Quote Set Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_set_id = cme_futures_ilink3_sbe_v8_5.quote_set_id.dissect(buffer, index, packet, parent)

  -- Quote Entry Reject Reason: 1 Byte Unsigned Fixed Width Integer
  index, quote_entry_reject_reason = cme_futures_ilink3_sbe_v8_5.quote_entry_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Ack Entry Group
cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_group.dissect = function(buffer, offset, packet, parent, mass_quote_ack_entry_group_index)
  if show.mass_quote_ack_entry_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_ack_entry_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_group.fields(buffer, offset, packet, parent, mass_quote_ack_entry_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_group.fields(buffer, offset, packet, parent, mass_quote_ack_entry_group_index)
  end
end

-- Mass Quote Ack Entry Groups
cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_groups = {}

-- Calculate size of: Mass Quote Ack Entry Groups
cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local mass_quote_ack_entry_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mass_quote_ack_entry_group_count * 11

  return index
end

-- Display: Mass Quote Ack Entry Groups
cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Ack Entry Groups
cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Mass Quote Ack Entry Group
  for mass_quote_ack_entry_group_index = 1, num_in_group do
    index, mass_quote_ack_entry_group = cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_group.dissect(buffer, index, packet, parent, mass_quote_ack_entry_group_index)
  end

  return index
end

-- Dissect: Mass Quote Ack Entry Groups
cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote_ack_entry_groups then
    local length = cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_ack_entry_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_groups.fields(buffer, offset, packet, parent)
end

-- No Processed Quotes
cme_futures_ilink3_sbe_v8_5.no_processed_quotes = {}

-- Size: No Processed Quotes
cme_futures_ilink3_sbe_v8_5.no_processed_quotes.size = 1

-- Display: No Processed Quotes
cme_futures_ilink3_sbe_v8_5.no_processed_quotes.display = function(value)
  return "No Processed Quotes: "..value
end

-- Dissect: No Processed Quotes
cme_futures_ilink3_sbe_v8_5.no_processed_quotes.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.no_processed_quotes.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.no_processed_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.no_processed_quotes, range, value, display)

  return offset + length, value
end

-- Quote Req Id Optional
cme_futures_ilink3_sbe_v8_5.quote_req_id_optional = {}

-- Size: Quote Req Id Optional
cme_futures_ilink3_sbe_v8_5.quote_req_id_optional.size = 8

-- Display: Quote Req Id Optional
cme_futures_ilink3_sbe_v8_5.quote_req_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Req Id Optional: No Value"
  end

  return "Quote Req Id Optional: "..value
end

-- Dissect: Quote Req Id Optional
cme_futures_ilink3_sbe_v8_5.quote_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.quote_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_req_id_optional, range, value, display)

  return offset + length, value
end

-- Mass Quote Ack
cme_futures_ilink3_sbe_v8_5.mass_quote_ack = {}

-- Calculate size of: Mass Quote Ack
cme_futures_ilink3_sbe_v8_5.mass_quote_ack.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.text.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_req_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_reject_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_duration.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_ack_status.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.no_processed_quotes.size

  index = index + cme_futures_ilink3_sbe_v8_5.mm_protection_reset.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_to_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_groups.size(buffer, offset + index)

  return index
end

-- Display: Mass Quote Ack
cme_futures_ilink3_sbe_v8_5.mass_quote_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Ack
cme_futures_ilink3_sbe_v8_5.mass_quote_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index, text = cme_futures_ilink3_sbe_v8_5.text.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = cme_futures_ilink3_sbe_v8_5.request_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Quote Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_req_id_optional = cme_futures_ilink3_sbe_v8_5.quote_req_id_optional.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = cme_futures_ilink3_sbe_v8_5.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: 2 Byte Unsigned Fixed Width Integer Nullable
  index, quote_reject_reason = cme_futures_ilink3_sbe_v8_5.quote_reject_reason.dissect(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = cme_futures_ilink3_sbe_v8_5.delay_duration.dissect(buffer, index, packet, parent)

  -- Quote Ack Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_ack_status = cme_futures_ilink3_sbe_v8_5.quote_ack_status.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- No Processed Quotes: 1 Byte Unsigned Fixed Width Integer
  index, no_processed_quotes = cme_futures_ilink3_sbe_v8_5.no_processed_quotes.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset = cme_futures_ilink3_sbe_v8_5.mm_protection_reset.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  -- Tot No Quote Entries Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, tot_no_quote_entries_optional = cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries_optional.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = cme_futures_ilink3_sbe_v8_5.delay_to_time.dissect(buffer, index, packet, parent)

  -- Mass Quote Ack Entry Groups: Struct of 2 fields
  index, mass_quote_ack_entry_groups = cme_futures_ilink3_sbe_v8_5.mass_quote_ack_entry_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Ack
cme_futures_ilink3_sbe_v8_5.mass_quote_ack.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote_ack then
    local length = cme_futures_ilink3_sbe_v8_5.mass_quote_ack.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.mass_quote_ack.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_ack, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.mass_quote_ack.fields(buffer, offset, packet, parent)
end

-- Side Time In Force
cme_futures_ilink3_sbe_v8_5.side_time_in_force = {}

-- Size: Side Time In Force
cme_futures_ilink3_sbe_v8_5.side_time_in_force.size = 1

-- Display: Side Time In Force
cme_futures_ilink3_sbe_v8_5.side_time_in_force.display = function(value)
  if value == 0 then
    return "Side Time In Force: Day (0)"
  end
  if value == 3 then
    return "Side Time In Force: Fak (3)"
  end

  return "Side Time In Force: Unknown("..value..")"
end

-- Dissect: Side Time In Force
cme_futures_ilink3_sbe_v8_5.side_time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.side_time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.side_time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.side_time_in_force, range, value, display)

  return offset + length, value
end

-- Order Qty
cme_futures_ilink3_sbe_v8_5.order_qty = {}

-- Size: Order Qty
cme_futures_ilink3_sbe_v8_5.order_qty.size = 4

-- Display: Order Qty
cme_futures_ilink3_sbe_v8_5.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cme_futures_ilink3_sbe_v8_5.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Sides Group
cme_futures_ilink3_sbe_v8_5.sides_group = {}

-- Calculate size of: Sides Group
cme_futures_ilink3_sbe_v8_5.sides_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.side_time_in_force.size

  return index
end

-- Display: Sides Group
cme_futures_ilink3_sbe_v8_5.sides_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sides Group
cme_futures_ilink3_sbe_v8_5.sides_group.fields = function(buffer, offset, packet, parent, sides_group_index)
  local index = offset

  -- Implicit Sides Group Index
  if sides_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.sides_group_index, sides_group_index)
    iteration:set_generated()
  end

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cme_futures_ilink3_sbe_v8_5.order_qty.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Side Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side_time_in_force = cme_futures_ilink3_sbe_v8_5.side_time_in_force.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sides Group
cme_futures_ilink3_sbe_v8_5.sides_group.dissect = function(buffer, offset, packet, parent, sides_group_index)
  if show.sides_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.sides_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.sides_group.fields(buffer, offset, packet, parent, sides_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.sides_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.sides_group.fields(buffer, offset, packet, parent, sides_group_index)
  end
end

-- Sides Groups
cme_futures_ilink3_sbe_v8_5.sides_groups = {}

-- Calculate size of: Sides Groups
cme_futures_ilink3_sbe_v8_5.sides_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local sides_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + sides_group_count * 34

  return index
end

-- Display: Sides Groups
cme_futures_ilink3_sbe_v8_5.sides_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sides Groups
cme_futures_ilink3_sbe_v8_5.sides_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Sides Group
  for sides_group_index = 1, num_in_group do
    index, sides_group = cme_futures_ilink3_sbe_v8_5.sides_group.dissect(buffer, index, packet, parent, sides_group_index)
  end

  return index
end

-- Dissect: Sides Groups
cme_futures_ilink3_sbe_v8_5.sides_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sides_groups then
    local length = cme_futures_ilink3_sbe_v8_5.sides_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.sides_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.sides_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.sides_groups.fields(buffer, offset, packet, parent)
end

-- Trans Bkd Time
cme_futures_ilink3_sbe_v8_5.trans_bkd_time = {}

-- Size: Trans Bkd Time
cme_futures_ilink3_sbe_v8_5.trans_bkd_time.size = 8

-- Display: Trans Bkd Time
cme_futures_ilink3_sbe_v8_5.trans_bkd_time.display = function(value)
  return "Trans Bkd Time: "..value
end

-- Dissect: Trans Bkd Time
cme_futures_ilink3_sbe_v8_5.trans_bkd_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.trans_bkd_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.trans_bkd_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trans_bkd_time, range, value, display)

  return offset + length, value
end

-- Price
cme_futures_ilink3_sbe_v8_5.price = {}

-- Size: Price
cme_futures_ilink3_sbe_v8_5.price.size = 8

-- Display: Price
cme_futures_ilink3_sbe_v8_5.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cme_futures_ilink3_sbe_v8_5.price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
cme_futures_ilink3_sbe_v8_5.price.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_ilink3_sbe_v8_5.price.translate(raw)
  local display = cme_futures_ilink3_sbe_v8_5.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.price, range, value, display)

  return offset + length, value
end

-- Cross Id
cme_futures_ilink3_sbe_v8_5.cross_id = {}

-- Size: Cross Id
cme_futures_ilink3_sbe_v8_5.cross_id.size = 8

-- Display: Cross Id
cme_futures_ilink3_sbe_v8_5.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
cme_futures_ilink3_sbe_v8_5.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.cross_id, range, value, display)

  return offset + length, value
end

-- New Order Cross
cme_futures_ilink3_sbe_v8_5.new_order_cross = {}

-- Calculate size of: New Order Cross
cme_futures_ilink3_sbe_v8_5.new_order_cross.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.cross_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.price.size

  index = index + cme_futures_ilink3_sbe_v8_5.trans_bkd_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sides_groups.size(buffer, offset + index)

  return index
end

-- Display: New Order Cross
cme_futures_ilink3_sbe_v8_5.new_order_cross.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross
cme_futures_ilink3_sbe_v8_5.new_order_cross.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index, cross_id = cme_futures_ilink3_sbe_v8_5.cross_id.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cme_futures_ilink3_sbe_v8_5.price.dissect(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index, trans_bkd_time = cme_futures_ilink3_sbe_v8_5.trans_bkd_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Sides Groups: Struct of 2 fields
  index, sides_groups = cme_futures_ilink3_sbe_v8_5.sides_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross
cme_futures_ilink3_sbe_v8_5.new_order_cross.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_cross then
    local length = cme_futures_ilink3_sbe_v8_5.new_order_cross.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.new_order_cross.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.new_order_cross, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.new_order_cross.fields(buffer, offset, packet, parent)
end

-- Rfq Side
cme_futures_ilink3_sbe_v8_5.rfq_side = {}

-- Size: Rfq Side
cme_futures_ilink3_sbe_v8_5.rfq_side.size = 1

-- Display: Rfq Side
cme_futures_ilink3_sbe_v8_5.rfq_side.display = function(value)
  if value == 255 then
    return "Rfq Side: No Value"
  end
  if value == 1 then
    return "Rfq Side: Buy (1)"
  end
  if value == 2 then
    return "Rfq Side: Sell (2)"
  end
  if value == 8 then
    return "Rfq Side: Cross (8)"
  end

  return "Rfq Side: Unknown("..value..")"
end

-- Dissect: Rfq Side
cme_futures_ilink3_sbe_v8_5.rfq_side.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.rfq_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.rfq_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.rfq_side, range, value, display)

  return offset + length, value
end

-- Order Qty Optional
cme_futures_ilink3_sbe_v8_5.order_qty_optional = {}

-- Size: Order Qty Optional
cme_futures_ilink3_sbe_v8_5.order_qty_optional.size = 4

-- Display: Order Qty Optional
cme_futures_ilink3_sbe_v8_5.order_qty_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Order Qty Optional: No Value"
  end

  return "Order Qty Optional: "..value
end

-- Dissect: Order Qty Optional
cme_futures_ilink3_sbe_v8_5.order_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.order_qty_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.order_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_qty_optional, range, value, display)

  return offset + length, value
end

-- Related Sym Group
cme_futures_ilink3_sbe_v8_5.related_sym_group = {}

-- Calculate size of: Related Sym Group
cme_futures_ilink3_sbe_v8_5.related_sym_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.rfq_side.size

  return index
end

-- Display: Related Sym Group
cme_futures_ilink3_sbe_v8_5.related_sym_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Group
cme_futures_ilink3_sbe_v8_5.related_sym_group.fields = function(buffer, offset, packet, parent, related_sym_group_index)
  local index = offset

  -- Implicit Related Sym Group Index
  if related_sym_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.related_sym_group_index, related_sym_group_index)
    iteration:set_generated()
  end

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty_optional = cme_futures_ilink3_sbe_v8_5.order_qty_optional.dissect(buffer, index, packet, parent)

  -- Rfq Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, rfq_side = cme_futures_ilink3_sbe_v8_5.rfq_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
cme_futures_ilink3_sbe_v8_5.related_sym_group.dissect = function(buffer, offset, packet, parent, related_sym_group_index)
  if show.related_sym_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.related_sym_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.related_sym_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.related_sym_group.fields(buffer, offset, packet, parent, related_sym_group_index)
  end
end

-- Related Sym Groups
cme_futures_ilink3_sbe_v8_5.related_sym_groups = {}

-- Calculate size of: Related Sym Groups
cme_futures_ilink3_sbe_v8_5.related_sym_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local related_sym_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_sym_group_count * 9

  return index
end

-- Display: Related Sym Groups
cme_futures_ilink3_sbe_v8_5.related_sym_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Related Sym Groups
cme_futures_ilink3_sbe_v8_5.related_sym_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Related Sym Group
  for related_sym_group_index = 1, num_in_group do
    index, related_sym_group = cme_futures_ilink3_sbe_v8_5.related_sym_group.dissect(buffer, index, packet, parent, related_sym_group_index)
  end

  return index
end

-- Dissect: Related Sym Groups
cme_futures_ilink3_sbe_v8_5.related_sym_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.related_sym_groups then
    local length = cme_futures_ilink3_sbe_v8_5.related_sym_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.related_sym_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.related_sym_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.related_sym_groups.fields(buffer, offset, packet, parent)
end

-- Quote Type
cme_futures_ilink3_sbe_v8_5.quote_type = {}

-- Size: Quote Type
cme_futures_ilink3_sbe_v8_5.quote_type.size = 1

-- Display: Quote Type
cme_futures_ilink3_sbe_v8_5.quote_type.display = function(value)
  if value == 255 then
    return "Quote Type: No Value"
  end
  if value == 1 then
    return "Quote Type: Tradeable (1)"
  end

  return "Quote Type: Unknown("..value..")"
end

-- Dissect: Quote Type
cme_futures_ilink3_sbe_v8_5.quote_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.quote_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_type, range, value, display)

  return offset + length, value
end

-- Request For Quote
cme_futures_ilink3_sbe_v8_5.request_for_quote = {}

-- Calculate size of: Request For Quote
cme_futures_ilink3_sbe_v8_5.request_for_quote.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.related_sym_groups.size(buffer, offset + index)

  return index
end

-- Display: Request For Quote
cme_futures_ilink3_sbe_v8_5.request_for_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote
cme_futures_ilink3_sbe_v8_5.request_for_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = cme_futures_ilink3_sbe_v8_5.quote_req_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_type = cme_futures_ilink3_sbe_v8_5.quote_type.dissect(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = cme_futures_ilink3_sbe_v8_5.related_sym_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote
cme_futures_ilink3_sbe_v8_5.request_for_quote.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.request_for_quote then
    local length = cme_futures_ilink3_sbe_v8_5.request_for_quote.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.request_for_quote.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.request_for_quote, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.request_for_quote.fields(buffer, offset, packet, parent)
end

-- Dk Reason
cme_futures_ilink3_sbe_v8_5.dk_reason = {}

-- Size: Dk Reason
cme_futures_ilink3_sbe_v8_5.dk_reason.size = 1

-- Display: Dk Reason
cme_futures_ilink3_sbe_v8_5.dk_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Dk Reason: No Value"
  end

  if value == "A" then
    return "Dk Reason: Unknown Security (A)"
  end
  if value == "B" then
    return "Dk Reason: Wrong Side (B)"
  end
  if value == "C" then
    return "Dk Reason: Quantity Exceeds Order (C)"
  end
  if value == "D" then
    return "Dk Reason: No Matching Order (D)"
  end
  if value == "E" then
    return "Dk Reason: Price Exceeds Limit (E)"
  end
  if value == "F" then
    return "Dk Reason: Calculation Difference (F)"
  end
  if value == "G" then
    return "Dk Reason: No Matching Execution Report (G)"
  end
  if value == "Z" then
    return "Dk Reason: Other (Z)"
  end

  return "Dk Reason: Unknown("..value..")"
end

-- Dissect: Dk Reason
cme_futures_ilink3_sbe_v8_5.dk_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.dk_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.dk_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.dk_reason, range, value, display)

  return offset + length, value
end

-- Exec Ack Status
cme_futures_ilink3_sbe_v8_5.exec_ack_status = {}

-- Size: Exec Ack Status
cme_futures_ilink3_sbe_v8_5.exec_ack_status.size = 1

-- Display: Exec Ack Status
cme_futures_ilink3_sbe_v8_5.exec_ack_status.display = function(value)
  if value == 1 then
    return "Exec Ack Status: Accepted (1)"
  end
  if value == 2 then
    return "Exec Ack Status: Rejected (2)"
  end

  return "Exec Ack Status: Unknown("..value..")"
end

-- Dissect: Exec Ack Status
cme_futures_ilink3_sbe_v8_5.exec_ack_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.exec_ack_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.exec_ack_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.exec_ack_status, range, value, display)

  return offset + length, value
end

-- Execution Ack
cme_futures_ilink3_sbe_v8_5.execution_ack = {}

-- Calculate size of: Execution Ack
cme_futures_ilink3_sbe_v8_5.execution_ack.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_ack_status.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.sec_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.dk_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  return index
end

-- Display: Execution Ack
cme_futures_ilink3_sbe_v8_5.execution_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Ack
cme_futures_ilink3_sbe_v8_5.execution_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Exec Ack Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, exec_ack_status = cme_futures_ilink3_sbe_v8_5.exec_ack_status.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = cme_futures_ilink3_sbe_v8_5.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = cme_futures_ilink3_sbe_v8_5.last_px.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = cme_futures_ilink3_sbe_v8_5.last_qty.dissect(buffer, index, packet, parent)

  -- Dk Reason: 1 Byte Ascii String Enum with 8 values
  index, dk_reason = cme_futures_ilink3_sbe_v8_5.dk_reason.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Ack
cme_futures_ilink3_sbe_v8_5.execution_ack.dissect = function(buffer, offset, packet, parent)
  if show.execution_ack then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_ack, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_ack.fields(buffer, offset, packet, parent)
  end
end

-- Trd Reg Publication Reason
cme_futures_ilink3_sbe_v8_5.trd_reg_publication_reason = {}

-- Size: Trd Reg Publication Reason
cme_futures_ilink3_sbe_v8_5.trd_reg_publication_reason.size = 1

-- Display: Trd Reg Publication Reason
cme_futures_ilink3_sbe_v8_5.trd_reg_publication_reason.display = function(value)
  return "Trd Reg Publication Reason: "..value
end

-- Dissect: Trd Reg Publication Reason
cme_futures_ilink3_sbe_v8_5.trd_reg_publication_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.trd_reg_publication_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.trd_reg_publication_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trd_reg_publication_reason, range, value, display)

  return offset + length, value
end

-- Trd Reg Publication Type
cme_futures_ilink3_sbe_v8_5.trd_reg_publication_type = {}

-- Size: Trd Reg Publication Type
cme_futures_ilink3_sbe_v8_5.trd_reg_publication_type.size = 1

-- Display: Trd Reg Publication Type
cme_futures_ilink3_sbe_v8_5.trd_reg_publication_type.display = function(value)
  return "Trd Reg Publication Type: "..value
end

-- Dissect: Trd Reg Publication Type
cme_futures_ilink3_sbe_v8_5.trd_reg_publication_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.trd_reg_publication_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.trd_reg_publication_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trd_reg_publication_type, range, value, display)

  return offset + length, value
end

-- Trd Reg Publications Group
cme_futures_ilink3_sbe_v8_5.trd_reg_publications_group = {}

-- Calculate size of: Trd Reg Publications Group
cme_futures_ilink3_sbe_v8_5.trd_reg_publications_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.trd_reg_publication_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.trd_reg_publication_reason.size

  return index
end

-- Display: Trd Reg Publications Group
cme_futures_ilink3_sbe_v8_5.trd_reg_publications_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trd Reg Publications Group
cme_futures_ilink3_sbe_v8_5.trd_reg_publications_group.fields = function(buffer, offset, packet, parent, trd_reg_publications_group_index)
  local index = offset

  -- Implicit Trd Reg Publications Group Index
  if trd_reg_publications_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trd_reg_publications_group_index, trd_reg_publications_group_index)
    iteration:set_generated()
  end

  -- Trd Reg Publication Type: 1 Byte Unsigned Fixed Width Integer
  index, trd_reg_publication_type = cme_futures_ilink3_sbe_v8_5.trd_reg_publication_type.dissect(buffer, index, packet, parent)

  -- Trd Reg Publication Reason: 1 Byte Unsigned Fixed Width Integer
  index, trd_reg_publication_reason = cme_futures_ilink3_sbe_v8_5.trd_reg_publication_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trd Reg Publications Group
cme_futures_ilink3_sbe_v8_5.trd_reg_publications_group.dissect = function(buffer, offset, packet, parent, trd_reg_publications_group_index)
  if show.trd_reg_publications_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trd_reg_publications_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.trd_reg_publications_group.fields(buffer, offset, packet, parent, trd_reg_publications_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.trd_reg_publications_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.trd_reg_publications_group.fields(buffer, offset, packet, parent, trd_reg_publications_group_index)
  end
end

-- Trd Reg Publications Groups
cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups = {}

-- Calculate size of: Trd Reg Publications Groups
cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local trd_reg_publications_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + trd_reg_publications_group_count * 2

  return index
end

-- Display: Trd Reg Publications Groups
cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trd Reg Publications Groups
cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Trd Reg Publications Group
  for trd_reg_publications_group_index = 1, num_in_group do
    index, trd_reg_publications_group = cme_futures_ilink3_sbe_v8_5.trd_reg_publications_group.dissect(buffer, index, packet, parent, trd_reg_publications_group_index)
  end

  return index
end

-- Dissect: Trd Reg Publications Groups
cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trd_reg_publications_groups then
    local length = cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trd_reg_publications_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.fields(buffer, offset, packet, parent)
end

-- Party Detail Role
cme_futures_ilink3_sbe_v8_5.party_detail_role = {}

-- Size: Party Detail Role
cme_futures_ilink3_sbe_v8_5.party_detail_role.size = 2

-- Display: Party Detail Role
cme_futures_ilink3_sbe_v8_5.party_detail_role.display = function(value)
  if value == 1 then
    return "Party Detail Role: Executing Firm (1)"
  end
  if value == 24 then
    return "Party Detail Role: Customer Account (24)"
  end
  if value == 96 then
    return "Party Detail Role: Take Up Firm (96)"
  end
  if value == 118 then
    return "Party Detail Role: Operator (118)"
  end
  if value == 1000 then
    return "Party Detail Role: Take Up Account (1000)"
  end

  return "Party Detail Role: Unknown("..value..")"
end

-- Dissect: Party Detail Role
cme_futures_ilink3_sbe_v8_5.party_detail_role.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.party_detail_role.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.party_detail_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_detail_role, range, value, display)

  return offset + length, value
end

-- Party Detail Id
cme_futures_ilink3_sbe_v8_5.party_detail_id = {}

-- Size: Party Detail Id
cme_futures_ilink3_sbe_v8_5.party_detail_id.size = 20

-- Display: Party Detail Id
cme_futures_ilink3_sbe_v8_5.party_detail_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Detail Id: No Value"
  end

  return "Party Detail Id: "..value
end

-- Dissect: Party Detail Id
cme_futures_ilink3_sbe_v8_5.party_detail_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.party_detail_id.size
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

  local display = cme_futures_ilink3_sbe_v8_5.party_detail_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_detail_id, range, value, display)

  return offset + length, value
end

-- Party Details Group
cme_futures_ilink3_sbe_v8_5.party_details_group = {}

-- Calculate size of: Party Details Group
cme_futures_ilink3_sbe_v8_5.party_details_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_detail_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_detail_role.size

  return index
end

-- Display: Party Details Group
cme_futures_ilink3_sbe_v8_5.party_details_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details Group
cme_futures_ilink3_sbe_v8_5.party_details_group.fields = function(buffer, offset, packet, parent, party_details_group_index)
  local index = offset

  -- Implicit Party Details Group Index
  if party_details_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_group_index, party_details_group_index)
    iteration:set_generated()
  end

  -- Party Detail Id: 20 Byte Ascii String
  index, party_detail_id = cme_futures_ilink3_sbe_v8_5.party_detail_id.dissect(buffer, index, packet, parent)

  -- Party Detail Role: 2 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, party_detail_role = cme_futures_ilink3_sbe_v8_5.party_detail_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Group
cme_futures_ilink3_sbe_v8_5.party_details_group.dissect = function(buffer, offset, packet, parent, party_details_group_index)
  if show.party_details_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.party_details_group.fields(buffer, offset, packet, parent, party_details_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.party_details_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.party_details_group.fields(buffer, offset, packet, parent, party_details_group_index)
  end
end

-- Party Details Groups
cme_futures_ilink3_sbe_v8_5.party_details_groups = {}

-- Calculate size of: Party Details Groups
cme_futures_ilink3_sbe_v8_5.party_details_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local party_details_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + party_details_group_count * 22

  return index
end

-- Display: Party Details Groups
cme_futures_ilink3_sbe_v8_5.party_details_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details Groups
cme_futures_ilink3_sbe_v8_5.party_details_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Party Details Group
  for party_details_group_index = 1, num_in_group do
    index, party_details_group = cme_futures_ilink3_sbe_v8_5.party_details_group.dissect(buffer, index, packet, parent, party_details_group_index)
  end

  return index
end

-- Dissect: Party Details Groups
cme_futures_ilink3_sbe_v8_5.party_details_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_groups then
    local length = cme_futures_ilink3_sbe_v8_5.party_details_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.party_details_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.party_details_groups.fields(buffer, offset, packet, parent)
end

-- Idm Short Code
cme_futures_ilink3_sbe_v8_5.idm_short_code = {}

-- Size: Idm Short Code
cme_futures_ilink3_sbe_v8_5.idm_short_code.size = 8

-- Display: Idm Short Code
cme_futures_ilink3_sbe_v8_5.idm_short_code.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Idm Short Code: No Value"
  end

  return "Idm Short Code: "..value
end

-- Dissect: Idm Short Code
cme_futures_ilink3_sbe_v8_5.idm_short_code.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.idm_short_code.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.idm_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.idm_short_code, range, value, display)

  return offset + length, value
end

-- Executor
cme_futures_ilink3_sbe_v8_5.executor = {}

-- Size: Executor
cme_futures_ilink3_sbe_v8_5.executor.size = 8

-- Display: Executor
cme_futures_ilink3_sbe_v8_5.executor.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Executor: No Value"
  end

  return "Executor: "..value
end

-- Dissect: Executor
cme_futures_ilink3_sbe_v8_5.executor.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.executor.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.executor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.executor, range, value, display)

  return offset + length, value
end

-- Cust Order Handling Inst
cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst = {}

-- Size: Cust Order Handling Inst
cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst.size = 1

-- Display: Cust Order Handling Inst
cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cust Order Handling Inst: No Value"
  end

  if value == "C" then
    return "Cust Order Handling Inst: Fc Mprovidedscreen (C)"
  end
  if value == "D" then
    return "Cust Order Handling Inst: Otherprovidedscreen (D)"
  end
  if value == "G" then
    return "Cust Order Handling Inst: Fcmapi Cta Ix (G)"
  end
  if value == "H" then
    return "Cust Order Handling Inst: Algo Engine (H)"
  end
  if value == "W" then
    return "Cust Order Handling Inst: Desk Electronic (W)"
  end
  if value == "Y" then
    return "Cust Order Handling Inst: Client Electronic (Y)"
  end

  return "Cust Order Handling Inst: Unknown("..value..")"
end

-- Dissect: Cust Order Handling Inst
cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.cust_order_handling_inst, range, value, display)

  return offset + length, value
end

-- Cmta Giveup Cd
cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd = {}

-- Size: Cmta Giveup Cd
cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd.size = 1

-- Display: Cmta Giveup Cd
cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cmta Giveup Cd: No Value"
  end

  if value == "G" then
    return "Cmta Giveup Cd: Give Up (G)"
  end
  if value == "S" then
    return "Cmta Giveup Cd: Sg Xoffset (S)"
  end

  return "Cmta Giveup Cd: Unknown("..value..")"
end

-- Dissect: Cmta Giveup Cd
cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.cmta_giveup_cd, range, value, display)

  return offset + length, value
end

-- Clearing Trade Price Type
cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type = {}

-- Size: Clearing Trade Price Type
cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type.size = 1

-- Display: Clearing Trade Price Type
cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type.display = function(value)
  if value == 255 then
    return "Clearing Trade Price Type: No Value"
  end
  if value == 0 then
    return "Clearing Trade Price Type: Trade Clearingat Execution Price (0)"
  end
  if value == 1 then
    return "Clearing Trade Price Type: Trade Clearingat Alternate Clearing Price (1)"
  end

  return "Clearing Trade Price Type: Unknown("..value..")"
end

-- Dissect: Clearing Trade Price Type
cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.clearing_trade_price_type, range, value, display)

  return offset + length, value
end

-- Avg Px Indicator
cme_futures_ilink3_sbe_v8_5.avg_px_indicator = {}

-- Size: Avg Px Indicator
cme_futures_ilink3_sbe_v8_5.avg_px_indicator.size = 1

-- Display: Avg Px Indicator
cme_futures_ilink3_sbe_v8_5.avg_px_indicator.display = function(value)
  if value == 255 then
    return "Avg Px Indicator: No Value"
  end
  if value == 0 then
    return "Avg Px Indicator: No Average Pricing (0)"
  end
  if value == 1 then
    return "Avg Px Indicator: Tradeispartofan Average Price Group Identifiedbythe Avg Px Grp Id (1)"
  end
  if value == 3 then
    return "Avg Px Indicator: Tradeispartofa Notional Value Average Price Group (3)"
  end

  return "Avg Px Indicator: Unknown("..value..")"
end

-- Dissect: Avg Px Indicator
cme_futures_ilink3_sbe_v8_5.avg_px_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.avg_px_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.avg_px_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.avg_px_indicator, range, value, display)

  return offset + length, value
end

-- Self Match Prevention Instruction
cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction = {}

-- Size: Self Match Prevention Instruction
cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction.size = 1

-- Display: Self Match Prevention Instruction
cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Self Match Prevention Instruction: No Value"
  end

  if value == "N" then
    return "Self Match Prevention Instruction: Cancel Newest (N)"
  end
  if value == "O" then
    return "Self Match Prevention Instruction: Cancel Oldest (O)"
  end

  return "Self Match Prevention Instruction: Unknown("..value..")"
end

-- Dissect: Self Match Prevention Instruction
cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.self_match_prevention_instruction, range, value, display)

  return offset + length, value
end

-- Clearing Account Type
cme_futures_ilink3_sbe_v8_5.clearing_account_type = {}

-- Size: Clearing Account Type
cme_futures_ilink3_sbe_v8_5.clearing_account_type.size = 1

-- Display: Clearing Account Type
cme_futures_ilink3_sbe_v8_5.clearing_account_type.display = function(value)
  if value == 255 then
    return "Clearing Account Type: No Value"
  end
  if value == 0 then
    return "Clearing Account Type: Customer (0)"
  end
  if value == 1 then
    return "Clearing Account Type: Firm (1)"
  end

  return "Clearing Account Type: Unknown("..value..")"
end

-- Dissect: Clearing Account Type
cme_futures_ilink3_sbe_v8_5.clearing_account_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.clearing_account_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.clearing_account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.clearing_account_type, range, value, display)

  return offset + length, value
end

-- Cust Order Capacity
cme_futures_ilink3_sbe_v8_5.cust_order_capacity = {}

-- Size: Cust Order Capacity
cme_futures_ilink3_sbe_v8_5.cust_order_capacity.size = 1

-- Display: Cust Order Capacity
cme_futures_ilink3_sbe_v8_5.cust_order_capacity.display = function(value)
  if value == 255 then
    return "Cust Order Capacity: No Value"
  end
  if value == 1 then
    return "Cust Order Capacity: Membertradingfortheirownaccount (1)"
  end
  if value == 2 then
    return "Cust Order Capacity: Clearingfirmtradingforitsproprietaryaccount (2)"
  end
  if value == 3 then
    return "Cust Order Capacity: Membertradingforanothermember (3)"
  end
  if value == 4 then
    return "Cust Order Capacity: Allother (4)"
  end

  return "Cust Order Capacity: Unknown("..value..")"
end

-- Dissect: Cust Order Capacity
cme_futures_ilink3_sbe_v8_5.cust_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.cust_order_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.cust_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.cust_order_capacity, range, value, display)

  return offset + length, value
end

-- Request Result
cme_futures_ilink3_sbe_v8_5.request_result = {}

-- Size: Request Result
cme_futures_ilink3_sbe_v8_5.request_result.size = 1

-- Display: Request Result
cme_futures_ilink3_sbe_v8_5.request_result.display = function(value)
  if value == 0 then
    return "Request Result: Valid Request (0)"
  end
  if value == 2 then
    return "Request Result: No Data Found That Matched Selection Criteria (2)"
  end
  if value == 3 then
    return "Request Result: Not Authorizedto Retrieve Data (3)"
  end
  if value == 4 then
    return "Request Result: Data Temporarily Unavailable (4)"
  end

  return "Request Result: Unknown("..value..")"
end

-- Dissect: Request Result
cme_futures_ilink3_sbe_v8_5.request_result.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.request_result.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.request_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.request_result, range, value, display)

  return offset + length, value
end

-- Tot Num Parties
cme_futures_ilink3_sbe_v8_5.tot_num_parties = {}

-- Size: Tot Num Parties
cme_futures_ilink3_sbe_v8_5.tot_num_parties.size = 2

-- Display: Tot Num Parties
cme_futures_ilink3_sbe_v8_5.tot_num_parties.display = function(value)
  return "Tot Num Parties: "..value
end

-- Dissect: Tot Num Parties
cme_futures_ilink3_sbe_v8_5.tot_num_parties.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.tot_num_parties.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.tot_num_parties.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.tot_num_parties, range, value, display)

  return offset + length, value
end

-- Self Match Prevention Id
cme_futures_ilink3_sbe_v8_5.self_match_prevention_id = {}

-- Size: Self Match Prevention Id
cme_futures_ilink3_sbe_v8_5.self_match_prevention_id.size = 8

-- Display: Self Match Prevention Id
cme_futures_ilink3_sbe_v8_5.self_match_prevention_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Self Match Prevention Id: No Value"
  end

  return "Self Match Prevention Id: "..value
end

-- Dissect: Self Match Prevention Id
cme_futures_ilink3_sbe_v8_5.self_match_prevention_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.self_match_prevention_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.self_match_prevention_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.self_match_prevention_id, range, value, display)

  return offset + length, value
end

-- Party Details List Report Id
cme_futures_ilink3_sbe_v8_5.party_details_list_report_id = {}

-- Size: Party Details List Report Id
cme_futures_ilink3_sbe_v8_5.party_details_list_report_id.size = 8

-- Display: Party Details List Report Id
cme_futures_ilink3_sbe_v8_5.party_details_list_report_id.display = function(value)
  return "Party Details List Report Id: "..value
end

-- Dissect: Party Details List Report Id
cme_futures_ilink3_sbe_v8_5.party_details_list_report_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.party_details_list_report_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.party_details_list_report_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_list_report_id, range, value, display)

  return offset + length, value
end

-- Avg Px Group Id
cme_futures_ilink3_sbe_v8_5.avg_px_group_id = {}

-- Size: Avg Px Group Id
cme_futures_ilink3_sbe_v8_5.avg_px_group_id.size = 20

-- Display: Avg Px Group Id
cme_futures_ilink3_sbe_v8_5.avg_px_group_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Avg Px Group Id: No Value"
  end

  return "Avg Px Group Id: "..value
end

-- Dissect: Avg Px Group Id
cme_futures_ilink3_sbe_v8_5.avg_px_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.avg_px_group_id.size
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

  local display = cme_futures_ilink3_sbe_v8_5.avg_px_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.avg_px_group_id, range, value, display)

  return offset + length, value
end

-- Party Details List Report
cme_futures_ilink3_sbe_v8_5.party_details_list_report = {}

-- Calculate size of: Party Details List Report
cme_futures_ilink3_sbe_v8_5.party_details_list_report.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.avg_px_group_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_report_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.self_match_prevention_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.tot_num_parties.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_result.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_fragment.size

  index = index + cme_futures_ilink3_sbe_v8_5.cust_order_capacity.size

  index = index + cme_futures_ilink3_sbe_v8_5.clearing_account_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction.size

  index = index + cme_futures_ilink3_sbe_v8_5.avg_px_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd.size

  index = index + cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.executor.size

  index = index + cme_futures_ilink3_sbe_v8_5.idm_short_code.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.size(buffer, offset + index)

  return index
end

-- Display: Party Details List Report
cme_futures_ilink3_sbe_v8_5.party_details_list_report.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details List Report
cme_futures_ilink3_sbe_v8_5.party_details_list_report.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Avg Px Group Id: 20 Byte Ascii String
  index, avg_px_group_id = cme_futures_ilink3_sbe_v8_5.avg_px_group_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Party Details List Report Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_report_id = cme_futures_ilink3_sbe_v8_5.party_details_list_report_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, self_match_prevention_id = cme_futures_ilink3_sbe_v8_5.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Tot Num Parties: 2 Byte Unsigned Fixed Width Integer
  index, tot_num_parties = cme_futures_ilink3_sbe_v8_5.tot_num_parties.dissect(buffer, index, packet, parent)

  -- Request Result: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, request_result = cme_futures_ilink3_sbe_v8_5.request_result.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = cme_futures_ilink3_sbe_v8_5.last_fragment.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, cust_order_capacity = cme_futures_ilink3_sbe_v8_5.cust_order_capacity.dissect(buffer, index, packet, parent)

  -- Clearing Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_account_type = cme_futures_ilink3_sbe_v8_5.clearing_account_type.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: 1 Byte Ascii String Enum with 2 values
  index, self_match_prevention_instruction = cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Avg Px Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, avg_px_indicator = cme_futures_ilink3_sbe_v8_5.avg_px_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Trade Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_trade_price_type = cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type.dissect(buffer, index, packet, parent)

  -- Cmta Giveup Cd: 1 Byte Ascii String Enum with 2 values
  index, cmta_giveup_cd = cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String Enum with 6 values
  index, cust_order_handling_inst = cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Executor: 8 Byte Unsigned Fixed Width Integer Nullable
  index, executor = cme_futures_ilink3_sbe_v8_5.executor.dissect(buffer, index, packet, parent)

  -- Idm Short Code: 8 Byte Unsigned Fixed Width Integer Nullable
  index, idm_short_code = cme_futures_ilink3_sbe_v8_5.idm_short_code.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index, party_details_groups = cme_futures_ilink3_sbe_v8_5.party_details_groups.dissect(buffer, index, packet, parent)

  -- Trd Reg Publications Groups: Struct of 2 fields
  index, trd_reg_publications_groups = cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details List Report
cme_futures_ilink3_sbe_v8_5.party_details_list_report.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_list_report then
    local length = cme_futures_ilink3_sbe_v8_5.party_details_list_report.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.party_details_list_report.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_list_report, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.party_details_list_report.fields(buffer, offset, packet, parent)
end

-- Party Role
cme_futures_ilink3_sbe_v8_5.party_role = {}

-- Size: Party Role
cme_futures_ilink3_sbe_v8_5.party_role.size = 2

-- Display: Party Role
cme_futures_ilink3_sbe_v8_5.party_role.display = function(value)
  return "Party Role: "..value
end

-- Dissect: Party Role
cme_futures_ilink3_sbe_v8_5.party_role.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.party_role.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_role, range, value, display)

  return offset + length, value
end

-- Party Id Source
cme_futures_ilink3_sbe_v8_5.party_id_source = {}

-- Size: Party Id Source
cme_futures_ilink3_sbe_v8_5.party_id_source.size = 1

-- Display: Party Id Source
cme_futures_ilink3_sbe_v8_5.party_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Source: No Value"
  end

  return "Party Id Source: "..value
end

-- Dissect: Party Id Source
cme_futures_ilink3_sbe_v8_5.party_id_source.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.party_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.party_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_id_source, range, value, display)

  return offset + length, value
end

-- Party Id
cme_futures_ilink3_sbe_v8_5.party_id = {}

-- Size: Party Id
cme_futures_ilink3_sbe_v8_5.party_id.size = 8

-- Display: Party Id
cme_futures_ilink3_sbe_v8_5.party_id.display = function(value)
  return "Party Id: "..value
end

-- Dissect: Party Id
cme_futures_ilink3_sbe_v8_5.party_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.party_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_id, range, value, display)

  return offset + length, value
end

-- Party I Ds Group
cme_futures_ilink3_sbe_v8_5.party_i_ds_group = {}

-- Calculate size of: Party I Ds Group
cme_futures_ilink3_sbe_v8_5.party_i_ds_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_id_source.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_role.size

  return index
end

-- Display: Party I Ds Group
cme_futures_ilink3_sbe_v8_5.party_i_ds_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party I Ds Group
cme_futures_ilink3_sbe_v8_5.party_i_ds_group.fields = function(buffer, offset, packet, parent, party_i_ds_group_index)
  local index = offset

  -- Implicit Party I Ds Group Index
  if party_i_ds_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_i_ds_group_index, party_i_ds_group_index)
    iteration:set_generated()
  end

  -- Party Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id = cme_futures_ilink3_sbe_v8_5.party_id.dissect(buffer, index, packet, parent)

  -- Party Id Source: 1 Byte Ascii String
  index, party_id_source = cme_futures_ilink3_sbe_v8_5.party_id_source.dissect(buffer, index, packet, parent)

  -- Party Role: 2 Byte Unsigned Fixed Width Integer
  index, party_role = cme_futures_ilink3_sbe_v8_5.party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party I Ds Group
cme_futures_ilink3_sbe_v8_5.party_i_ds_group.dissect = function(buffer, offset, packet, parent, party_i_ds_group_index)
  if show.party_i_ds_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_i_ds_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.party_i_ds_group.fields(buffer, offset, packet, parent, party_i_ds_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.party_i_ds_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.party_i_ds_group.fields(buffer, offset, packet, parent, party_i_ds_group_index)
  end
end

-- Party I Ds Groups
cme_futures_ilink3_sbe_v8_5.party_i_ds_groups = {}

-- Calculate size of: Party I Ds Groups
cme_futures_ilink3_sbe_v8_5.party_i_ds_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local party_i_ds_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + party_i_ds_group_count * 11

  return index
end

-- Display: Party I Ds Groups
cme_futures_ilink3_sbe_v8_5.party_i_ds_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party I Ds Groups
cme_futures_ilink3_sbe_v8_5.party_i_ds_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Party I Ds Group
  for party_i_ds_group_index = 1, num_in_group do
    index, party_i_ds_group = cme_futures_ilink3_sbe_v8_5.party_i_ds_group.dissect(buffer, index, packet, parent, party_i_ds_group_index)
  end

  return index
end

-- Dissect: Party I Ds Groups
cme_futures_ilink3_sbe_v8_5.party_i_ds_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_i_ds_groups then
    local length = cme_futures_ilink3_sbe_v8_5.party_i_ds_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.party_i_ds_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_i_ds_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.party_i_ds_groups.fields(buffer, offset, packet, parent)
end

-- Requesting Party Role
cme_futures_ilink3_sbe_v8_5.requesting_party_role = {}

-- Size: Requesting Party Role
cme_futures_ilink3_sbe_v8_5.requesting_party_role.size = 1

-- Display: Requesting Party Role
cme_futures_ilink3_sbe_v8_5.requesting_party_role.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Requesting Party Role: No Value"
  end

  return "Requesting Party Role: "..value
end

-- Dissect: Requesting Party Role
cme_futures_ilink3_sbe_v8_5.requesting_party_role.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.requesting_party_role.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.requesting_party_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_role, range, value, display)

  return offset + length, value
end

-- Requesting Party Id Source
cme_futures_ilink3_sbe_v8_5.requesting_party_id_source = {}

-- Size: Requesting Party Id Source
cme_futures_ilink3_sbe_v8_5.requesting_party_id_source.size = 1

-- Display: Requesting Party Id Source
cme_futures_ilink3_sbe_v8_5.requesting_party_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Requesting Party Id Source: No Value"
  end

  return "Requesting Party Id Source: "..value
end

-- Dissect: Requesting Party Id Source
cme_futures_ilink3_sbe_v8_5.requesting_party_id_source.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.requesting_party_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.requesting_party_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_id_source, range, value, display)

  return offset + length, value
end

-- Requesting Party Id
cme_futures_ilink3_sbe_v8_5.requesting_party_id = {}

-- Size: Requesting Party Id
cme_futures_ilink3_sbe_v8_5.requesting_party_id.size = 5

-- Display: Requesting Party Id
cme_futures_ilink3_sbe_v8_5.requesting_party_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Requesting Party Id: No Value"
  end

  return "Requesting Party Id: "..value
end

-- Dissect: Requesting Party Id
cme_futures_ilink3_sbe_v8_5.requesting_party_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.requesting_party_id.size
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

  local display = cme_futures_ilink3_sbe_v8_5.requesting_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_id, range, value, display)

  return offset + length, value
end

-- Requesting Party I Ds Group
cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_group = {}

-- Calculate size of: Requesting Party I Ds Group
cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.requesting_party_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.requesting_party_id_source.size

  index = index + cme_futures_ilink3_sbe_v8_5.requesting_party_role.size

  return index
end

-- Display: Requesting Party I Ds Group
cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Requesting Party I Ds Group
cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_group.fields = function(buffer, offset, packet, parent, requesting_party_i_ds_group_index)
  local index = offset

  -- Implicit Requesting Party I Ds Group Index
  if requesting_party_i_ds_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_i_ds_group_index, requesting_party_i_ds_group_index)
    iteration:set_generated()
  end

  -- Requesting Party Id: 5 Byte Ascii String
  index, requesting_party_id = cme_futures_ilink3_sbe_v8_5.requesting_party_id.dissect(buffer, index, packet, parent)

  -- Requesting Party Id Source: 1 Byte Ascii String
  index, requesting_party_id_source = cme_futures_ilink3_sbe_v8_5.requesting_party_id_source.dissect(buffer, index, packet, parent)

  -- Requesting Party Role: 1 Byte Ascii String
  index, requesting_party_role = cme_futures_ilink3_sbe_v8_5.requesting_party_role.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Requesting Party I Ds Group
cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_group.dissect = function(buffer, offset, packet, parent, requesting_party_i_ds_group_index)
  if show.requesting_party_i_ds_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_i_ds_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_group.fields(buffer, offset, packet, parent, requesting_party_i_ds_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_group.fields(buffer, offset, packet, parent, requesting_party_i_ds_group_index)
  end
end

-- Requesting Party I Ds Groups
cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_groups = {}

-- Calculate size of: Requesting Party I Ds Groups
cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local requesting_party_i_ds_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + requesting_party_i_ds_group_count * 7

  return index
end

-- Display: Requesting Party I Ds Groups
cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Requesting Party I Ds Groups
cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Requesting Party I Ds Group
  for requesting_party_i_ds_group_index = 1, num_in_group do
    index, requesting_party_i_ds_group = cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_group.dissect(buffer, index, packet, parent, requesting_party_i_ds_group_index)
  end

  return index
end

-- Dissect: Requesting Party I Ds Groups
cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.requesting_party_i_ds_groups then
    local length = cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.requesting_party_i_ds_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_groups.fields(buffer, offset, packet, parent)
end

-- Party Details List Request
cme_futures_ilink3_sbe_v8_5.party_details_list_request = {}

-- Calculate size of: Party Details List Request
cme_futures_ilink3_sbe_v8_5.party_details_list_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.party_i_ds_groups.size(buffer, offset + index)

  return index
end

-- Display: Party Details List Request
cme_futures_ilink3_sbe_v8_5.party_details_list_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details List Request
cme_futures_ilink3_sbe_v8_5.party_details_list_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Requesting Party I Ds Groups: Struct of 2 fields
  index, requesting_party_i_ds_groups = cme_futures_ilink3_sbe_v8_5.requesting_party_i_ds_groups.dissect(buffer, index, packet, parent)

  -- Party I Ds Groups: Struct of 2 fields
  index, party_i_ds_groups = cme_futures_ilink3_sbe_v8_5.party_i_ds_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details List Request
cme_futures_ilink3_sbe_v8_5.party_details_list_request.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_list_request then
    local length = cme_futures_ilink3_sbe_v8_5.party_details_list_request.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.party_details_list_request.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_list_request, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.party_details_list_request.fields(buffer, offset, packet, parent)
end

-- Cxl Rej Reason
cme_futures_ilink3_sbe_v8_5.cxl_rej_reason = {}

-- Size: Cxl Rej Reason
cme_futures_ilink3_sbe_v8_5.cxl_rej_reason.size = 2

-- Display: Cxl Rej Reason
cme_futures_ilink3_sbe_v8_5.cxl_rej_reason.display = function(value)
  return "Cxl Rej Reason: "..value
end

-- Dissect: Cxl Rej Reason
cme_futures_ilink3_sbe_v8_5.cxl_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.cxl_rej_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.cxl_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Order Cancel Replace Reject
cme_futures_ilink3_sbe_v8_5.order_cancel_replace_reject = {}

-- Calculate size of: Order Cancel Replace Reject
cme_futures_ilink3_sbe_v8_5.order_cancel_replace_reject.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.text.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.cxl_rej_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_duration.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_to_time.size

  return index
end

-- Display: Order Cancel Replace Reject
cme_futures_ilink3_sbe_v8_5.order_cancel_replace_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Reject
cme_futures_ilink3_sbe_v8_5.order_cancel_replace_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index, text = cme_futures_ilink3_sbe_v8_5.text.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: 2 Byte Unsigned Fixed Width Integer
  index, cxl_rej_reason = cme_futures_ilink3_sbe_v8_5.cxl_rej_reason.dissect(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = cme_futures_ilink3_sbe_v8_5.delay_duration.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = cme_futures_ilink3_sbe_v8_5.delay_to_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Reject
cme_futures_ilink3_sbe_v8_5.order_cancel_replace_reject.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_replace_reject then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_cancel_replace_reject, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.order_cancel_replace_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.order_cancel_replace_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.order_cancel_replace_reject.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Reject
cme_futures_ilink3_sbe_v8_5.order_cancel_reject = {}

-- Calculate size of: Order Cancel Reject
cme_futures_ilink3_sbe_v8_5.order_cancel_reject.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.text.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.cxl_rej_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_duration.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_to_time.size

  return index
end

-- Display: Order Cancel Reject
cme_futures_ilink3_sbe_v8_5.order_cancel_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Reject
cme_futures_ilink3_sbe_v8_5.order_cancel_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index, text = cme_futures_ilink3_sbe_v8_5.text.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Cxl Rej Reason: 2 Byte Unsigned Fixed Width Integer
  index, cxl_rej_reason = cme_futures_ilink3_sbe_v8_5.cxl_rej_reason.dissect(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = cme_futures_ilink3_sbe_v8_5.delay_duration.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = cme_futures_ilink3_sbe_v8_5.delay_to_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject
cme_futures_ilink3_sbe_v8_5.order_cancel_reject.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_reject then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_cancel_reject, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.order_cancel_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.order_cancel_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.order_cancel_reject.fields(buffer, offset, packet, parent)
  end
end

-- Cross Type
cme_futures_ilink3_sbe_v8_5.cross_type = {}

-- Size: Cross Type
cme_futures_ilink3_sbe_v8_5.cross_type.size = 1

-- Display: Cross Type
cme_futures_ilink3_sbe_v8_5.cross_type.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Cross Type: No Value"
  end

  return "Cross Type: "..value
end

-- Dissect: Cross Type
cme_futures_ilink3_sbe_v8_5.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Exec Restatement Reason
cme_futures_ilink3_sbe_v8_5.exec_restatement_reason = {}

-- Size: Exec Restatement Reason
cme_futures_ilink3_sbe_v8_5.exec_restatement_reason.size = 1

-- Display: Exec Restatement Reason
cme_futures_ilink3_sbe_v8_5.exec_restatement_reason.display = function(value)
  if value == 255 then
    return "Exec Restatement Reason: No Value"
  end
  if value == 8 then
    return "Exec Restatement Reason: Market Exchange Option (8)"
  end
  if value == 9 then
    return "Exec Restatement Reason: Cancelled Not Best (9)"
  end
  if value == 100 then
    return "Exec Restatement Reason: Cancel On Disconnect (100)"
  end
  if value == 103 then
    return "Exec Restatement Reason: Self Match Prevention Oldest Order Cancelled (103)"
  end
  if value == 104 then
    return "Exec Restatement Reason: Cancel On Globex Credit Controls Violation (104)"
  end
  if value == 105 then
    return "Exec Restatement Reason: Cancel From Firmsoft (105)"
  end
  if value == 106 then
    return "Exec Restatement Reason: Cancel From Risk Management Api (106)"
  end
  if value == 107 then
    return "Exec Restatement Reason: Self Match Prevention Newest Order Cancelled (107)"
  end
  if value == 108 then
    return "Exec Restatement Reason: Cancelduetovolquotedoptionorderrestedqtylessthanminordersize (108)"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
cme_futures_ilink3_sbe_v8_5.exec_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.exec_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.exec_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Time In Force
cme_futures_ilink3_sbe_v8_5.time_in_force = {}

-- Size: Time In Force
cme_futures_ilink3_sbe_v8_5.time_in_force.size = 1

-- Display: Time In Force
cme_futures_ilink3_sbe_v8_5.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Day (0)"
  end
  if value == 1 then
    return "Time In Force: Good Till Cancel (1)"
  end
  if value == 3 then
    return "Time In Force: Fill And Kill (3)"
  end
  if value == 4 then
    return "Time In Force: Fill Or Kill (4)"
  end
  if value == 6 then
    return "Time In Force: Good Till Date (6)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
cme_futures_ilink3_sbe_v8_5.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Expire Date
cme_futures_ilink3_sbe_v8_5.expire_date = {}

-- Size: Expire Date
cme_futures_ilink3_sbe_v8_5.expire_date.size = 2

-- Display: Expire Date
cme_futures_ilink3_sbe_v8_5.expire_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Expire Date: No Value"
  end

  return "Expire Date: "..value
end

-- Dissect: Expire Date
cme_futures_ilink3_sbe_v8_5.expire_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.expire_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.expire_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Display Qty
cme_futures_ilink3_sbe_v8_5.display_qty = {}

-- Size: Display Qty
cme_futures_ilink3_sbe_v8_5.display_qty.size = 4

-- Display: Display Qty
cme_futures_ilink3_sbe_v8_5.display_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Dissect: Display Qty
cme_futures_ilink3_sbe_v8_5.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Min Qty
cme_futures_ilink3_sbe_v8_5.min_qty = {}

-- Size: Min Qty
cme_futures_ilink3_sbe_v8_5.min_qty.size = 4

-- Display: Min Qty
cme_futures_ilink3_sbe_v8_5.min_qty.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
cme_futures_ilink3_sbe_v8_5.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Cum Qty
cme_futures_ilink3_sbe_v8_5.cum_qty = {}

-- Size: Cum Qty
cme_futures_ilink3_sbe_v8_5.cum_qty.size = 4

-- Display: Cum Qty
cme_futures_ilink3_sbe_v8_5.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
cme_futures_ilink3_sbe_v8_5.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Host Cross Id
cme_futures_ilink3_sbe_v8_5.host_cross_id = {}

-- Size: Host Cross Id
cme_futures_ilink3_sbe_v8_5.host_cross_id.size = 8

-- Display: Host Cross Id
cme_futures_ilink3_sbe_v8_5.host_cross_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Host Cross Id: No Value"
  end

  return "Host Cross Id: "..value
end

-- Dissect: Host Cross Id
cme_futures_ilink3_sbe_v8_5.host_cross_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.host_cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.host_cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.host_cross_id, range, value, display)

  return offset + length, value
end

-- Cross Id Optional
cme_futures_ilink3_sbe_v8_5.cross_id_optional = {}

-- Size: Cross Id Optional
cme_futures_ilink3_sbe_v8_5.cross_id_optional.size = 8

-- Display: Cross Id Optional
cme_futures_ilink3_sbe_v8_5.cross_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Cross Id Optional: No Value"
  end

  return "Cross Id Optional: "..value
end

-- Dissect: Cross Id Optional
cme_futures_ilink3_sbe_v8_5.cross_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.cross_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.cross_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.cross_id_optional, range, value, display)

  return offset + length, value
end

-- Stop Px
cme_futures_ilink3_sbe_v8_5.stop_px = {}

-- Size: Stop Px
cme_futures_ilink3_sbe_v8_5.stop_px.size = 8

-- Display: Stop Px
cme_futures_ilink3_sbe_v8_5.stop_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Translate: Stop Px
cme_futures_ilink3_sbe_v8_5.stop_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Stop Px
cme_futures_ilink3_sbe_v8_5.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_ilink3_sbe_v8_5.stop_px.translate(raw)
  local display = cme_futures_ilink3_sbe_v8_5.stop_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Execution Report Cancel
cme_futures_ilink3_sbe_v8_5.execution_report_cancel = {}

-- Calculate size of: Execution Report Cancel
cme_futures_ilink3_sbe_v8_5.execution_report_cancel.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.price.size

  index = index + cme_futures_ilink3_sbe_v8_5.stop_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.host_cross_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.cum_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.min_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.display_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.expire_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_duration.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.time_in_force.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_restatement_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.managed_order.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_to_time.size

  return index
end

-- Display: Execution Report Cancel
cme_futures_ilink3_sbe_v8_5.execution_report_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Cancel
cme_futures_ilink3_sbe_v8_5.execution_report_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cme_futures_ilink3_sbe_v8_5.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = cme_futures_ilink3_sbe_v8_5.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = cme_futures_ilink3_sbe_v8_5.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = cme_futures_ilink3_sbe_v8_5.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cme_futures_ilink3_sbe_v8_5.order_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = cme_futures_ilink3_sbe_v8_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = cme_futures_ilink3_sbe_v8_5.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = cme_futures_ilink3_sbe_v8_5.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = cme_futures_ilink3_sbe_v8_5.expire_date.dissect(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = cme_futures_ilink3_sbe_v8_5.delay_duration.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 4 values
  index, ord_type_optional = cme_futures_ilink3_sbe_v8_5.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = cme_futures_ilink3_sbe_v8_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, exec_restatement_reason = cme_futures_ilink3_sbe_v8_5.exec_restatement_reason.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = cme_futures_ilink3_sbe_v8_5.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = cme_futures_ilink3_sbe_v8_5.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = cme_futures_ilink3_sbe_v8_5.delay_to_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Cancel
cme_futures_ilink3_sbe_v8_5.execution_report_cancel.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_cancel then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_cancel, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Ord Status Req Id
cme_futures_ilink3_sbe_v8_5.ord_status_req_id = {}

-- Size: Ord Status Req Id
cme_futures_ilink3_sbe_v8_5.ord_status_req_id.size = 8

-- Display: Ord Status Req Id
cme_futures_ilink3_sbe_v8_5.ord_status_req_id.display = function(value)
  return "Ord Status Req Id: "..value
end

-- Dissect: Ord Status Req Id
cme_futures_ilink3_sbe_v8_5.ord_status_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ord_status_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.ord_status_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status_req_id, range, value, display)

  return offset + length, value
end

-- Order Status Request
cme_futures_ilink3_sbe_v8_5.order_status_request = {}

-- Calculate size of: Order Status Request
cme_futures_ilink3_sbe_v8_5.order_status_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_status_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  return index
end

-- Display: Order Status Request
cme_futures_ilink3_sbe_v8_5.order_status_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Status Request
cme_futures_ilink3_sbe_v8_5.order_status_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Ord Status Req Id: 8 Byte Unsigned Fixed Width Integer
  index, ord_status_req_id = cme_futures_ilink3_sbe_v8_5.ord_status_req_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Status Request
cme_futures_ilink3_sbe_v8_5.order_status_request.dissect = function(buffer, offset, packet, parent)
  if show.order_status_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_status_request, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.order_status_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.order_status_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.order_status_request.fields(buffer, offset, packet, parent)
  end
end

-- Last Rpt Requested
cme_futures_ilink3_sbe_v8_5.last_rpt_requested = {}

-- Size: Last Rpt Requested
cme_futures_ilink3_sbe_v8_5.last_rpt_requested.size = 1

-- Display: Last Rpt Requested
cme_futures_ilink3_sbe_v8_5.last_rpt_requested.display = function(value)
  if value == 255 then
    return "Last Rpt Requested: No Value"
  end
  if value == 0 then
    return "Last Rpt Requested: False (0)"
  end
  if value == 1 then
    return "Last Rpt Requested: True (1)"
  end

  return "Last Rpt Requested: Unknown("..value..")"
end

-- Dissect: Last Rpt Requested
cme_futures_ilink3_sbe_v8_5.last_rpt_requested.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.last_rpt_requested.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.last_rpt_requested.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.last_rpt_requested, range, value, display)

  return offset + length, value
end

-- Ord Status
cme_futures_ilink3_sbe_v8_5.ord_status = {}

-- Size: Ord Status
cme_futures_ilink3_sbe_v8_5.ord_status.size = 1

-- Display: Ord Status
cme_futures_ilink3_sbe_v8_5.ord_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Status: No Value"
  end

  if value == "0" then
    return "Ord Status: New (0)"
  end
  if value == "1" then
    return "Ord Status: Partially Filled (1)"
  end
  if value == "2" then
    return "Ord Status: Filled (2)"
  end
  if value == "4" then
    return "Ord Status: Cancelled (4)"
  end
  if value == "5" then
    return "Ord Status: Replaced (5)"
  end
  if value == "8" then
    return "Ord Status: Rejected (8)"
  end
  if value == "C" then
    return "Ord Status: Expired (C)"
  end
  if value == "U" then
    return "Ord Status: Undefined (U)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
cme_futures_ilink3_sbe_v8_5.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cme_futures_ilink3_sbe_v8_5.leaves_qty = {}

-- Size: Leaves Qty
cme_futures_ilink3_sbe_v8_5.leaves_qty.size = 4

-- Display: Leaves Qty
cme_futures_ilink3_sbe_v8_5.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cme_futures_ilink3_sbe_v8_5.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Mass Status Req Id Optional
cme_futures_ilink3_sbe_v8_5.mass_status_req_id_optional = {}

-- Size: Mass Status Req Id Optional
cme_futures_ilink3_sbe_v8_5.mass_status_req_id_optional.size = 8

-- Display: Mass Status Req Id Optional
cme_futures_ilink3_sbe_v8_5.mass_status_req_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Mass Status Req Id Optional: No Value"
  end

  return "Mass Status Req Id Optional: "..value
end

-- Dissect: Mass Status Req Id Optional
cme_futures_ilink3_sbe_v8_5.mass_status_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mass_status_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.mass_status_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_status_req_id_optional, range, value, display)

  return offset + length, value
end

-- Ord Status Req Id Optional
cme_futures_ilink3_sbe_v8_5.ord_status_req_id_optional = {}

-- Size: Ord Status Req Id Optional
cme_futures_ilink3_sbe_v8_5.ord_status_req_id_optional.size = 8

-- Display: Ord Status Req Id Optional
cme_futures_ilink3_sbe_v8_5.ord_status_req_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Ord Status Req Id Optional: No Value"
  end

  return "Ord Status Req Id Optional: "..value
end

-- Dissect: Ord Status Req Id Optional
cme_futures_ilink3_sbe_v8_5.ord_status_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ord_status_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.ord_status_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status_req_id_optional, range, value, display)

  return offset + length, value
end

-- Price Optional
cme_futures_ilink3_sbe_v8_5.price_optional = {}

-- Size: Price Optional
cme_futures_ilink3_sbe_v8_5.price_optional.size = 8

-- Display: Price Optional
cme_futures_ilink3_sbe_v8_5.price_optional.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Price Optional: No Value"
  end

  return "Price Optional: "..value
end

-- Translate: Price Optional
cme_futures_ilink3_sbe_v8_5.price_optional.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Price Optional
cme_futures_ilink3_sbe_v8_5.price_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.price_optional.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_ilink3_sbe_v8_5.price_optional.translate(raw)
  local display = cme_futures_ilink3_sbe_v8_5.price_optional.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.price_optional, range, value, display)

  return offset + length, value
end

-- Execution Report Status
cme_futures_ilink3_sbe_v8_5.execution_report_status = {}

-- Calculate size of: Execution Report Status
cme_futures_ilink3_sbe_v8_5.execution_report_status.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.text.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.price_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.stop_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_status_req_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_status_req_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.host_cross_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.cum_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.leaves_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.min_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.display_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.expire_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_status.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.time_in_force.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_rpt_requested.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.managed_order.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  return index
end

-- Display: Execution Report Status
cme_futures_ilink3_sbe_v8_5.execution_report_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Status
cme_futures_ilink3_sbe_v8_5.execution_report_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index, text = cme_futures_ilink3_sbe_v8_5.text.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = cme_futures_ilink3_sbe_v8_5.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = cme_futures_ilink3_sbe_v8_5.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Ord Status Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, ord_status_req_id_optional = cme_futures_ilink3_sbe_v8_5.ord_status_req_id_optional.dissect(buffer, index, packet, parent)

  -- Mass Status Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_status_req_id_optional = cme_futures_ilink3_sbe_v8_5.mass_status_req_id_optional.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = cme_futures_ilink3_sbe_v8_5.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = cme_futures_ilink3_sbe_v8_5.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cme_futures_ilink3_sbe_v8_5.order_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = cme_futures_ilink3_sbe_v8_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = cme_futures_ilink3_sbe_v8_5.leaves_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = cme_futures_ilink3_sbe_v8_5.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = cme_futures_ilink3_sbe_v8_5.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = cme_futures_ilink3_sbe_v8_5.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 8 values
  index, ord_status = cme_futures_ilink3_sbe_v8_5.ord_status.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 4 values
  index, ord_type_optional = cme_futures_ilink3_sbe_v8_5.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = cme_futures_ilink3_sbe_v8_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Last Rpt Requested: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_rpt_requested = cme_futures_ilink3_sbe_v8_5.last_rpt_requested.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = cme_futures_ilink3_sbe_v8_5.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = cme_futures_ilink3_sbe_v8_5.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Status
cme_futures_ilink3_sbe_v8_5.execution_report_status.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_status then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_status, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_status.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Modify
cme_futures_ilink3_sbe_v8_5.execution_report_modify = {}

-- Calculate size of: Execution Report Modify
cme_futures_ilink3_sbe_v8_5.execution_report_modify.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.price.size

  index = index + cme_futures_ilink3_sbe_v8_5.stop_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.host_cross_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.cum_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.leaves_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.min_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.display_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.expire_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_duration.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.time_in_force.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.managed_order.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_to_time.size

  return index
end

-- Display: Execution Report Modify
cme_futures_ilink3_sbe_v8_5.execution_report_modify.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Modify
cme_futures_ilink3_sbe_v8_5.execution_report_modify.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cme_futures_ilink3_sbe_v8_5.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = cme_futures_ilink3_sbe_v8_5.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = cme_futures_ilink3_sbe_v8_5.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = cme_futures_ilink3_sbe_v8_5.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cme_futures_ilink3_sbe_v8_5.order_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = cme_futures_ilink3_sbe_v8_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = cme_futures_ilink3_sbe_v8_5.leaves_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = cme_futures_ilink3_sbe_v8_5.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = cme_futures_ilink3_sbe_v8_5.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = cme_futures_ilink3_sbe_v8_5.expire_date.dissect(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = cme_futures_ilink3_sbe_v8_5.delay_duration.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 4 values
  index, ord_type_optional = cme_futures_ilink3_sbe_v8_5.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = cme_futures_ilink3_sbe_v8_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = cme_futures_ilink3_sbe_v8_5.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = cme_futures_ilink3_sbe_v8_5.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = cme_futures_ilink3_sbe_v8_5.delay_to_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Modify
cme_futures_ilink3_sbe_v8_5.execution_report_modify.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_modify then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_modify, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_modify.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_modify.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_modify.fields(buffer, offset, packet, parent)
  end
end

-- Mass Status Tif
cme_futures_ilink3_sbe_v8_5.mass_status_tif = {}

-- Size: Mass Status Tif
cme_futures_ilink3_sbe_v8_5.mass_status_tif.size = 1

-- Display: Mass Status Tif
cme_futures_ilink3_sbe_v8_5.mass_status_tif.display = function(value)
  if value == 255 then
    return "Mass Status Tif: No Value"
  end
  if value == 0 then
    return "Mass Status Tif: Day (0)"
  end
  if value == 1 then
    return "Mass Status Tif: Gtc (1)"
  end
  if value == 6 then
    return "Mass Status Tif: Gtd (6)"
  end

  return "Mass Status Tif: Unknown("..value..")"
end

-- Dissect: Mass Status Tif
cme_futures_ilink3_sbe_v8_5.mass_status_tif.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mass_status_tif.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.mass_status_tif.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_status_tif, range, value, display)

  return offset + length, value
end

-- Ord Status Req Type
cme_futures_ilink3_sbe_v8_5.ord_status_req_type = {}

-- Size: Ord Status Req Type
cme_futures_ilink3_sbe_v8_5.ord_status_req_type.size = 1

-- Display: Ord Status Req Type
cme_futures_ilink3_sbe_v8_5.ord_status_req_type.display = function(value)
  if value == 255 then
    return "Ord Status Req Type: No Value"
  end
  if value == 100 then
    return "Ord Status Req Type: Sender Sub Id (100)"
  end
  if value == 101 then
    return "Ord Status Req Type: Account (101)"
  end

  return "Ord Status Req Type: Unknown("..value..")"
end

-- Dissect: Ord Status Req Type
cme_futures_ilink3_sbe_v8_5.ord_status_req_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ord_status_req_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.ord_status_req_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status_req_type, range, value, display)

  return offset + length, value
end

-- Mass Status Req Type
cme_futures_ilink3_sbe_v8_5.mass_status_req_type = {}

-- Size: Mass Status Req Type
cme_futures_ilink3_sbe_v8_5.mass_status_req_type.size = 1

-- Display: Mass Status Req Type
cme_futures_ilink3_sbe_v8_5.mass_status_req_type.display = function(value)
  if value == 1 then
    return "Mass Status Req Type: Instrument (1)"
  end
  if value == 3 then
    return "Mass Status Req Type: Instrument Group (3)"
  end
  if value == 100 then
    return "Mass Status Req Type: Market Segment (100)"
  end

  return "Mass Status Req Type: Unknown("..value..")"
end

-- Dissect: Mass Status Req Type
cme_futures_ilink3_sbe_v8_5.mass_status_req_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mass_status_req_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.mass_status_req_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_status_req_type, range, value, display)

  return offset + length, value
end

-- Mass Status Req Id
cme_futures_ilink3_sbe_v8_5.mass_status_req_id = {}

-- Size: Mass Status Req Id
cme_futures_ilink3_sbe_v8_5.mass_status_req_id.size = 8

-- Display: Mass Status Req Id
cme_futures_ilink3_sbe_v8_5.mass_status_req_id.display = function(value)
  return "Mass Status Req Id: "..value
end

-- Dissect: Mass Status Req Id
cme_futures_ilink3_sbe_v8_5.mass_status_req_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mass_status_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.mass_status_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_status_req_id, range, value, display)

  return offset + length, value
end

-- Order Mass Status Request
cme_futures_ilink3_sbe_v8_5.order_mass_status_request = {}

-- Calculate size of: Order Mass Status Request
cme_futures_ilink3_sbe_v8_5.order_mass_status_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_status_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_group.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_status_req_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_status_req_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_status_tif.size

  index = index + cme_futures_ilink3_sbe_v8_5.market_segment_id.size

  return index
end

-- Display: Order Mass Status Request
cme_futures_ilink3_sbe_v8_5.order_mass_status_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Status Request
cme_futures_ilink3_sbe_v8_5.order_mass_status_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Mass Status Req Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_status_req_id = cme_futures_ilink3_sbe_v8_5.mass_status_req_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_ilink3_sbe_v8_5.security_group.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = cme_futures_ilink3_sbe_v8_5.security_id_optional.dissect(buffer, index, packet, parent)

  -- Mass Status Req Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_status_req_type = cme_futures_ilink3_sbe_v8_5.mass_status_req_type.dissect(buffer, index, packet, parent)

  -- Ord Status Req Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ord_status_req_type = cme_futures_ilink3_sbe_v8_5.ord_status_req_type.dissect(buffer, index, packet, parent)

  -- Mass Status Tif: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mass_status_tif = cme_futures_ilink3_sbe_v8_5.mass_status_tif.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_id = cme_futures_ilink3_sbe_v8_5.market_segment_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Status Request
cme_futures_ilink3_sbe_v8_5.order_mass_status_request.dissect = function(buffer, offset, packet, parent)
  if show.order_mass_status_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_mass_status_request, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.order_mass_status_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.order_mass_status_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.order_mass_status_request.fields(buffer, offset, packet, parent)
  end
end

-- Order Mass Action Request
cme_futures_ilink3_sbe_v8_5.order_mass_action_request = {}

-- Calculate size of: Order Mass Action Request
cme_futures_ilink3_sbe_v8_5.order_mass_action_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_group.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_action_scope.size

  index = index + cme_futures_ilink3_sbe_v8_5.market_segment_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_cancel_request_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.side_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_action_ord_typ.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_cancel_tif.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  return index
end

-- Display: Order Mass Action Request
cme_futures_ilink3_sbe_v8_5.order_mass_action_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Mass Action Request
cme_futures_ilink3_sbe_v8_5.order_mass_action_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_ilink3_sbe_v8_5.security_group.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = cme_futures_ilink3_sbe_v8_5.security_id_optional.dissect(buffer, index, packet, parent)

  -- Mass Action Scope: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, mass_action_scope = cme_futures_ilink3_sbe_v8_5.mass_action_scope.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_id = cme_futures_ilink3_sbe_v8_5.market_segment_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_cancel_request_type = cme_futures_ilink3_sbe_v8_5.mass_cancel_request_type.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = cme_futures_ilink3_sbe_v8_5.side_optional.dissect(buffer, index, packet, parent)

  -- Mass Action Ord Typ: 1 Byte Ascii String Enum with 2 values
  index, mass_action_ord_typ = cme_futures_ilink3_sbe_v8_5.mass_action_ord_typ.dissect(buffer, index, packet, parent)

  -- Mass Cancel Tif: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mass_cancel_tif = cme_futures_ilink3_sbe_v8_5.mass_cancel_tif.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Request
cme_futures_ilink3_sbe_v8_5.order_mass_action_request.dissect = function(buffer, offset, packet, parent)
  if show.order_mass_action_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_mass_action_request, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.order_mass_action_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.order_mass_action_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.order_mass_action_request.fields(buffer, offset, packet, parent)
  end
end

-- Offer Size
cme_futures_ilink3_sbe_v8_5.offer_size = {}

-- Size: Offer Size
cme_futures_ilink3_sbe_v8_5.offer_size.size = 4

-- Display: Offer Size
cme_futures_ilink3_sbe_v8_5.offer_size.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Dissect: Offer Size
cme_futures_ilink3_sbe_v8_5.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.offer_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Bid Size
cme_futures_ilink3_sbe_v8_5.bid_size = {}

-- Size: Bid Size
cme_futures_ilink3_sbe_v8_5.bid_size.size = 4

-- Display: Bid Size
cme_futures_ilink3_sbe_v8_5.bid_size.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
cme_futures_ilink3_sbe_v8_5.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Quote Cancel Set Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_set_group = {}

-- Calculate size of: Quote Cancel Set Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_set_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.bid_size.size

  index = index + cme_futures_ilink3_sbe_v8_5.offer_size.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_set_id.size

  return index
end

-- Display: Quote Cancel Set Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_set_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Set Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_set_group.fields = function(buffer, offset, packet, parent, quote_cancel_set_group_index)
  local index = offset

  -- Implicit Quote Cancel Set Group Index
  if quote_cancel_set_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_set_group_index, quote_cancel_set_group_index)
    iteration:set_generated()
  end

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = cme_futures_ilink3_sbe_v8_5.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, offer_size = cme_futures_ilink3_sbe_v8_5.offer_size.dissect(buffer, index, packet, parent)

  -- Quote Set Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_set_id = cme_futures_ilink3_sbe_v8_5.quote_set_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Set Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_set_group.dissect = function(buffer, offset, packet, parent, quote_cancel_set_group_index)
  if show.quote_cancel_set_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_set_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.quote_cancel_set_group.fields(buffer, offset, packet, parent, quote_cancel_set_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.quote_cancel_set_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.quote_cancel_set_group.fields(buffer, offset, packet, parent, quote_cancel_set_group_index)
  end
end

-- Quote Cancel Set Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_set_groups = {}

-- Calculate size of: Quote Cancel Set Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_set_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local quote_cancel_set_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_cancel_set_group_count * 10

  return index
end

-- Display: Quote Cancel Set Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_set_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Set Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_set_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Quote Cancel Set Group
  for quote_cancel_set_group_index = 1, num_in_group do
    index, quote_cancel_set_group = cme_futures_ilink3_sbe_v8_5.quote_cancel_set_group.dissect(buffer, index, packet, parent, quote_cancel_set_group_index)
  end

  return index
end

-- Dissect: Quote Cancel Set Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_set_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_set_groups then
    local length = cme_futures_ilink3_sbe_v8_5.quote_cancel_set_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.quote_cancel_set_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_set_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.quote_cancel_set_groups.fields(buffer, offset, packet, parent)
end

-- Quote Cancel Entry Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_group = {}

-- Calculate size of: Quote Cancel Entry Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.security_group.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id_optional.size

  return index
end

-- Display: Quote Cancel Entry Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Entry Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_group.fields = function(buffer, offset, packet, parent, quote_cancel_entry_group_index)
  local index = offset

  -- Implicit Quote Cancel Entry Group Index
  if quote_cancel_entry_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_entry_group_index, quote_cancel_entry_group_index)
    iteration:set_generated()
  end

  -- Security Group: 6 Byte Ascii String
  index, security_group = cme_futures_ilink3_sbe_v8_5.security_group.dissect(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = cme_futures_ilink3_sbe_v8_5.security_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Entry Group
cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_group.dissect = function(buffer, offset, packet, parent, quote_cancel_entry_group_index)
  if show.quote_cancel_entry_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_entry_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_group.fields(buffer, offset, packet, parent, quote_cancel_entry_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_group.fields(buffer, offset, packet, parent, quote_cancel_entry_group_index)
  end
end

-- Quote Cancel Entry Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_groups = {}

-- Calculate size of: Quote Cancel Entry Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local quote_cancel_entry_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_cancel_entry_group_count * 10

  return index
end

-- Display: Quote Cancel Entry Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Entry Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Quote Cancel Entry Group
  for quote_cancel_entry_group_index = 1, num_in_group do
    index, quote_cancel_entry_group = cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_group.dissect(buffer, index, packet, parent, quote_cancel_entry_group_index)
  end

  return index
end

-- Dissect: Quote Cancel Entry Groups
cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_entry_groups then
    local length = cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_entry_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_groups.fields(buffer, offset, packet, parent)
end

-- Quote Cancel Type
cme_futures_ilink3_sbe_v8_5.quote_cancel_type = {}

-- Size: Quote Cancel Type
cme_futures_ilink3_sbe_v8_5.quote_cancel_type.size = 1

-- Display: Quote Cancel Type
cme_futures_ilink3_sbe_v8_5.quote_cancel_type.display = function(value)
  if value == 1 then
    return "Quote Cancel Type: Cancelper Instrument (1)"
  end
  if value == 3 then
    return "Quote Cancel Type: Cancelper Instrumentgroup (3)"
  end
  if value == 4 then
    return "Quote Cancel Type: Cancelallquotes (4)"
  end
  if value == 100 then
    return "Quote Cancel Type: Cancelper Quote Set (100)"
  end

  return "Quote Cancel Type: Unknown("..value..")"
end

-- Dissect: Quote Cancel Type
cme_futures_ilink3_sbe_v8_5.quote_cancel_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.quote_cancel_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.quote_cancel_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel_type, range, value, display)

  return offset + length, value
end

-- Quote Cancel
cme_futures_ilink3_sbe_v8_5.quote_cancel = {}

-- Calculate size of: Quote Cancel
cme_futures_ilink3_sbe_v8_5.quote_cancel.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_cancel_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.quote_cancel_set_groups.size(buffer, offset + index)

  return index
end

-- Display: Quote Cancel
cme_futures_ilink3_sbe_v8_5.quote_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel
cme_futures_ilink3_sbe_v8_5.quote_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = cme_futures_ilink3_sbe_v8_5.quote_id.dissect(buffer, index, packet, parent)

  -- Quote Cancel Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_cancel_type = cme_futures_ilink3_sbe_v8_5.quote_cancel_type.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Quote Cancel Entry Groups: Struct of 2 fields
  index, quote_cancel_entry_groups = cme_futures_ilink3_sbe_v8_5.quote_cancel_entry_groups.dissect(buffer, index, packet, parent)

  -- Quote Cancel Set Groups: Struct of 2 fields
  index, quote_cancel_set_groups = cme_futures_ilink3_sbe_v8_5.quote_cancel_set_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel
cme_futures_ilink3_sbe_v8_5.quote_cancel.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel then
    local length = cme_futures_ilink3_sbe_v8_5.quote_cancel.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.quote_cancel.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.quote_cancel, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.quote_cancel.fields(buffer, offset, packet, parent)
end

-- Order Event Type
cme_futures_ilink3_sbe_v8_5.order_event_type = {}

-- Size: Order Event Type
cme_futures_ilink3_sbe_v8_5.order_event_type.size = 1

-- Display: Order Event Type
cme_futures_ilink3_sbe_v8_5.order_event_type.display = function(value)
  if value == 255 then
    return "Order Event Type: No Value"
  end
  if value == 4 then
    return "Order Event Type: Partially Filled (4)"
  end
  if value == 5 then
    return "Order Event Type: Filled (5)"
  end

  return "Order Event Type: Unknown("..value..")"
end

-- Dissect: Order Event Type
cme_futures_ilink3_sbe_v8_5.order_event_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.order_event_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.order_event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_event_type, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Spread Leg Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_group = {}

-- Calculate size of: Execution Report Trade Spread Leg Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_text.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_reason.size

  return index
end

-- Display: Execution Report Trade Spread Leg Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_group.fields = function(buffer, offset, packet, parent, execution_report_trade_spread_leg_order_event_group_index)
  local index = offset

  -- Implicit Execution Report Trade Spread Leg Order Event Group Index
  if execution_report_trade_spread_leg_order_event_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_order_event_group_index, execution_report_trade_spread_leg_order_event_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = cme_futures_ilink3_sbe_v8_5.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String
  index, order_event_text = cme_futures_ilink3_sbe_v8_5.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = cme_futures_ilink3_sbe_v8_5.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = cme_futures_ilink3_sbe_v8_5.order_event_qty.dissect(buffer, index, packet, parent)

  -- Order Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_event_type = cme_futures_ilink3_sbe_v8_5.order_event_type.dissect(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = cme_futures_ilink3_sbe_v8_5.order_event_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread Leg Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_group.dissect = function(buffer, offset, packet, parent, execution_report_trade_spread_leg_order_event_group_index)
  if show.execution_report_trade_spread_leg_order_event_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_order_event_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_spread_leg_order_event_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_spread_leg_order_event_group_index)
  end
end

-- Execution Report Trade Spread Leg Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_groups = {}

-- Calculate size of: Execution Report Trade Spread Leg Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_spread_leg_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_spread_leg_order_event_group_count * 23

  return index
end

-- Display: Execution Report Trade Spread Leg Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Execution Report Trade Spread Leg Order Event Group
  for execution_report_trade_spread_leg_order_event_group_index = 1, num_in_group do
    index, execution_report_trade_spread_leg_order_event_group = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_group.dissect(buffer, index, packet, parent, execution_report_trade_spread_leg_order_event_group_index)
  end

  return index
end

-- Dissect: Execution Report Trade Spread Leg Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread_leg_order_event_groups then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_order_event_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_groups.fields(buffer, offset, packet, parent)
end

-- Ord Status Trd
cme_futures_ilink3_sbe_v8_5.ord_status_trd = {}

-- Size: Ord Status Trd
cme_futures_ilink3_sbe_v8_5.ord_status_trd.size = 1

-- Display: Ord Status Trd
cme_futures_ilink3_sbe_v8_5.ord_status_trd.display = function(value)
  if value == 1 then
    return "Ord Status Trd: Partially Filled (1)"
  end
  if value == 2 then
    return "Ord Status Trd: Filled (2)"
  end

  return "Ord Status Trd: Unknown("..value..")"
end

-- Dissect: Ord Status Trd
cme_futures_ilink3_sbe_v8_5.ord_status_trd.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ord_status_trd.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.ord_status_trd.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ord_status_trd, range, value, display)

  return offset + length, value
end

-- Risk Free Rate
cme_futures_ilink3_sbe_v8_5.risk_free_rate = {}

-- Calculate size of: Risk Free Rate
cme_futures_ilink3_sbe_v8_5.risk_free_rate.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.mantissa_32.size

  index = index + cme_futures_ilink3_sbe_v8_5.exponent.size

  return index
end

-- Display: Risk Free Rate
cme_futures_ilink3_sbe_v8_5.risk_free_rate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Risk Free Rate
cme_futures_ilink3_sbe_v8_5.risk_free_rate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_32 = cme_futures_ilink3_sbe_v8_5.mantissa_32.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_ilink3_sbe_v8_5.exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Risk Free Rate
cme_futures_ilink3_sbe_v8_5.risk_free_rate.dissect = function(buffer, offset, packet, parent)
  if show.risk_free_rate then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.risk_free_rate, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.risk_free_rate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.risk_free_rate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.risk_free_rate.fields(buffer, offset, packet, parent)
  end
end

-- Time To Expiration
cme_futures_ilink3_sbe_v8_5.time_to_expiration = {}

-- Calculate size of: Time To Expiration
cme_futures_ilink3_sbe_v8_5.time_to_expiration.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.mantissa_32.size

  index = index + cme_futures_ilink3_sbe_v8_5.exponent.size

  return index
end

-- Display: Time To Expiration
cme_futures_ilink3_sbe_v8_5.time_to_expiration.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time To Expiration
cme_futures_ilink3_sbe_v8_5.time_to_expiration.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_32 = cme_futures_ilink3_sbe_v8_5.mantissa_32.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_ilink3_sbe_v8_5.exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time To Expiration
cme_futures_ilink3_sbe_v8_5.time_to_expiration.dissect = function(buffer, offset, packet, parent)
  if show.time_to_expiration then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.time_to_expiration, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.time_to_expiration.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.time_to_expiration.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.time_to_expiration.fields(buffer, offset, packet, parent)
  end
end

-- Option Delta
cme_futures_ilink3_sbe_v8_5.option_delta = {}

-- Calculate size of: Option Delta
cme_futures_ilink3_sbe_v8_5.option_delta.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.mantissa_32.size

  index = index + cme_futures_ilink3_sbe_v8_5.exponent.size

  return index
end

-- Display: Option Delta
cme_futures_ilink3_sbe_v8_5.option_delta.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Delta
cme_futures_ilink3_sbe_v8_5.option_delta.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_32 = cme_futures_ilink3_sbe_v8_5.mantissa_32.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_ilink3_sbe_v8_5.exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Delta
cme_futures_ilink3_sbe_v8_5.option_delta.dissect = function(buffer, offset, packet, parent)
  if show.option_delta then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.option_delta, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.option_delta.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.option_delta.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.option_delta.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Px
cme_futures_ilink3_sbe_v8_5.underlying_px = {}

-- Size: Underlying Px
cme_futures_ilink3_sbe_v8_5.underlying_px.size = 8

-- Display: Underlying Px
cme_futures_ilink3_sbe_v8_5.underlying_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Underlying Px: No Value"
  end

  return "Underlying Px: "..value
end

-- Translate: Underlying Px
cme_futures_ilink3_sbe_v8_5.underlying_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Underlying Px
cme_futures_ilink3_sbe_v8_5.underlying_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.underlying_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_ilink3_sbe_v8_5.underlying_px.translate(raw)
  local display = cme_futures_ilink3_sbe_v8_5.underlying_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.underlying_px, range, value, display)

  return offset + length, value
end

-- Mantissa
cme_futures_ilink3_sbe_v8_5.mantissa = {}

-- Size: Mantissa
cme_futures_ilink3_sbe_v8_5.mantissa.size = 8

-- Display: Mantissa
cme_futures_ilink3_sbe_v8_5.mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Mantissa: No Value"
  end

  return "Mantissa: "..value
end

-- Dissect: Mantissa
cme_futures_ilink3_sbe_v8_5.mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cme_futures_ilink3_sbe_v8_5.mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mantissa, range, value, display)

  return offset + length, value
end

-- Volatility
cme_futures_ilink3_sbe_v8_5.volatility = {}

-- Calculate size of: Volatility
cme_futures_ilink3_sbe_v8_5.volatility.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.mantissa.size

  index = index + cme_futures_ilink3_sbe_v8_5.exponent.size

  return index
end

-- Display: Volatility
cme_futures_ilink3_sbe_v8_5.volatility.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Volatility
cme_futures_ilink3_sbe_v8_5.volatility.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = cme_futures_ilink3_sbe_v8_5.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = cme_futures_ilink3_sbe_v8_5.exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Volatility
cme_futures_ilink3_sbe_v8_5.volatility.dissect = function(buffer, offset, packet, parent)
  if show.volatility then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.volatility, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.volatility.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.volatility.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.volatility.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report Trade Spread Leg
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg = {}

-- Calculate size of: Execution Report Trade Spread Leg
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.volatility.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.underlying_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.sec_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.option_delta.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.time_to_expiration.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.risk_free_rate.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.cum_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.side_trade_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.trade_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_status_trd.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.fills_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Spread Leg
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Volatility: Struct of 2 fields
  index, volatility = cme_futures_ilink3_sbe_v8_5.volatility.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = cme_futures_ilink3_sbe_v8_5.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Signed Fixed Width Integer Nullable
  index, underlying_px = cme_futures_ilink3_sbe_v8_5.underlying_px.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = cme_futures_ilink3_sbe_v8_5.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Option Delta: Struct of 2 fields
  index, option_delta = cme_futures_ilink3_sbe_v8_5.option_delta.dissect(buffer, index, packet, parent)

  -- Time To Expiration: Struct of 2 fields
  index, time_to_expiration = cme_futures_ilink3_sbe_v8_5.time_to_expiration.dissect(buffer, index, packet, parent)

  -- Risk Free Rate: Struct of 2 fields
  index, risk_free_rate = cme_futures_ilink3_sbe_v8_5.risk_free_rate.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = cme_futures_ilink3_sbe_v8_5.last_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = cme_futures_ilink3_sbe_v8_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = cme_futures_ilink3_sbe_v8_5.side_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_ilink3_sbe_v8_5.trade_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_status_trd = cme_futures_ilink3_sbe_v8_5.ord_status_trd.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 4 values
  index, ord_type_optional = cme_futures_ilink3_sbe_v8_5.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_futures_ilink3_sbe_v8_5.fills_groups.dissect(buffer, index, packet, parent)

  -- Execution Report Trade Spread Leg Order Event Groups: Struct of 2 fields
  index, execution_report_trade_spread_leg_order_event_groups = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_order_event_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread Leg
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread_leg then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg.fields(buffer, offset, packet, parent)
end

-- Execution Report Trade Spread Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_group = {}

-- Calculate size of: Execution Report Trade Spread Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_text.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_reason.size

  return index
end

-- Display: Execution Report Trade Spread Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_group.fields = function(buffer, offset, packet, parent, execution_report_trade_spread_order_event_group_index)
  local index = offset

  -- Implicit Execution Report Trade Spread Order Event Group Index
  if execution_report_trade_spread_order_event_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_order_event_group_index, execution_report_trade_spread_order_event_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = cme_futures_ilink3_sbe_v8_5.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String
  index, order_event_text = cme_futures_ilink3_sbe_v8_5.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = cme_futures_ilink3_sbe_v8_5.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = cme_futures_ilink3_sbe_v8_5.order_event_qty.dissect(buffer, index, packet, parent)

  -- Order Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_event_type = cme_futures_ilink3_sbe_v8_5.order_event_type.dissect(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = cme_futures_ilink3_sbe_v8_5.order_event_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_group.dissect = function(buffer, offset, packet, parent, execution_report_trade_spread_order_event_group_index)
  if show.execution_report_trade_spread_order_event_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_order_event_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_spread_order_event_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_spread_order_event_group_index)
  end
end

-- Execution Report Trade Spread Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_groups = {}

-- Calculate size of: Execution Report Trade Spread Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_spread_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_spread_order_event_group_count * 23

  return index
end

-- Display: Execution Report Trade Spread Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Execution Report Trade Spread Order Event Group
  for execution_report_trade_spread_order_event_group_index = 1, num_in_group do
    index, execution_report_trade_spread_order_event_group = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_group.dissect(buffer, index, packet, parent, execution_report_trade_spread_order_event_group_index)
  end

  return index
end

-- Dissect: Execution Report Trade Spread Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread_order_event_groups then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_order_event_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_groups.fields(buffer, offset, packet, parent)
end

-- Execution Report Trade Spread Leg Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_group = {}

-- Calculate size of: Execution Report Trade Spread Leg Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.leg_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_last_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_trade_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_last_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.leg_side.size

  return index
end

-- Display: Execution Report Trade Spread Leg Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_group.fields = function(buffer, offset, packet, parent, execution_report_trade_spread_leg_group_index)
  local index = offset

  -- Implicit Execution Report Trade Spread Leg Group Index
  if execution_report_trade_spread_leg_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_group_index, execution_report_trade_spread_leg_group_index)
    iteration:set_generated()
  end

  -- Leg Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, leg_exec_id = cme_futures_ilink3_sbe_v8_5.leg_exec_id.dissect(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Signed Fixed Width Integer
  index, leg_last_px = cme_futures_ilink3_sbe_v8_5.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = cme_futures_ilink3_sbe_v8_5.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, leg_trade_id = cme_futures_ilink3_sbe_v8_5.leg_trade_id.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, leg_last_qty = cme_futures_ilink3_sbe_v8_5.leg_last_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = cme_futures_ilink3_sbe_v8_5.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread Leg Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_group.dissect = function(buffer, offset, packet, parent, execution_report_trade_spread_leg_group_index)
  if show.execution_report_trade_spread_leg_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_group.fields(buffer, offset, packet, parent, execution_report_trade_spread_leg_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_group.fields(buffer, offset, packet, parent, execution_report_trade_spread_leg_group_index)
  end
end

-- Execution Report Trade Spread Leg Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_groups = {}

-- Calculate size of: Execution Report Trade Spread Leg Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_spread_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_spread_leg_group_count * 29

  return index
end

-- Display: Execution Report Trade Spread Leg Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Execution Report Trade Spread Leg Group
  for execution_report_trade_spread_leg_group_index = 1, num_in_group do
    index, execution_report_trade_spread_leg_group = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_group.dissect(buffer, index, packet, parent, execution_report_trade_spread_leg_group_index)
  end

  return index
end

-- Dissect: Execution Report Trade Spread Leg Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread_leg_groups then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread_leg_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_groups.fields(buffer, offset, packet, parent)
end

-- Aggressor Indicator
cme_futures_ilink3_sbe_v8_5.aggressor_indicator = {}

-- Size: Aggressor Indicator
cme_futures_ilink3_sbe_v8_5.aggressor_indicator.size = 1

-- Display: Aggressor Indicator
cme_futures_ilink3_sbe_v8_5.aggressor_indicator.display = function(value)
  if value == 0 then
    return "Aggressor Indicator: False (0)"
  end
  if value == 1 then
    return "Aggressor Indicator: True (1)"
  end

  return "Aggressor Indicator: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator
cme_futures_ilink3_sbe_v8_5.aggressor_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.aggressor_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.aggressor_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Spread
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread = {}

-- Calculate size of: Execution Report Trade Spread
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.price.size

  index = index + cme_futures_ilink3_sbe_v8_5.stop_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sec_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.host_cross_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.cum_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.md_trade_entry_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.side_trade_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leaves_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.trade_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.expire_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_status_trd.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.time_in_force.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.aggressor_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.total_num_securities.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.fills_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Spread
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = cme_futures_ilink3_sbe_v8_5.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cme_futures_ilink3_sbe_v8_5.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = cme_futures_ilink3_sbe_v8_5.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = cme_futures_ilink3_sbe_v8_5.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = cme_futures_ilink3_sbe_v8_5.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = cme_futures_ilink3_sbe_v8_5.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cme_futures_ilink3_sbe_v8_5.order_qty.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = cme_futures_ilink3_sbe_v8_5.last_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = cme_futures_ilink3_sbe_v8_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, md_trade_entry_id = cme_futures_ilink3_sbe_v8_5.md_trade_entry_id.dissect(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = cme_futures_ilink3_sbe_v8_5.side_trade_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = cme_futures_ilink3_sbe_v8_5.leaves_qty.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_ilink3_sbe_v8_5.trade_date.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = cme_futures_ilink3_sbe_v8_5.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_status_trd = cme_futures_ilink3_sbe_v8_5.ord_status_trd.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 4 values
  index, ord_type_optional = cme_futures_ilink3_sbe_v8_5.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = cme_futures_ilink3_sbe_v8_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, aggressor_indicator = cme_futures_ilink3_sbe_v8_5.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = cme_futures_ilink3_sbe_v8_5.cross_type.dissect(buffer, index, packet, parent)

  -- Total Num Securities: 1 Byte Unsigned Fixed Width Integer
  index, total_num_securities = cme_futures_ilink3_sbe_v8_5.total_num_securities.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_futures_ilink3_sbe_v8_5.fills_groups.dissect(buffer, index, packet, parent)

  -- Execution Report Trade Spread Leg Groups: Struct of 2 fields
  index, execution_report_trade_spread_leg_groups = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg_groups.dissect(buffer, index, packet, parent)

  -- Execution Report Trade Spread Order Event Groups: Struct of 2 fields
  index, execution_report_trade_spread_order_event_groups = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_order_event_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread
cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_spread, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread.fields(buffer, offset, packet, parent)
end

-- Execution Report Trade Outright Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_group = {}

-- Calculate size of: Execution Report Trade Outright Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_text.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_event_reason.size

  return index
end

-- Display: Execution Report Trade Outright Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Outright Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_group.fields = function(buffer, offset, packet, parent, execution_report_trade_outright_order_event_group_index)
  local index = offset

  -- Implicit Execution Report Trade Outright Order Event Group Index
  if execution_report_trade_outright_order_event_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_outright_order_event_group_index, execution_report_trade_outright_order_event_group_index)
    iteration:set_generated()
  end

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = cme_futures_ilink3_sbe_v8_5.order_event_px.dissect(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String
  index, order_event_text = cme_futures_ilink3_sbe_v8_5.order_event_text.dissect(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = cme_futures_ilink3_sbe_v8_5.order_event_exec_id.dissect(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = cme_futures_ilink3_sbe_v8_5.order_event_qty.dissect(buffer, index, packet, parent)

  -- Order Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_event_type = cme_futures_ilink3_sbe_v8_5.order_event_type.dissect(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = cme_futures_ilink3_sbe_v8_5.order_event_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Outright Order Event Group
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_group.dissect = function(buffer, offset, packet, parent, execution_report_trade_outright_order_event_group_index)
  if show.execution_report_trade_outright_order_event_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_outright_order_event_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_outright_order_event_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_group.fields(buffer, offset, packet, parent, execution_report_trade_outright_order_event_group_index)
  end
end

-- Execution Report Trade Outright Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_groups = {}

-- Calculate size of: Execution Report Trade Outright Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_outright_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_outright_order_event_group_count * 23

  return index
end

-- Display: Execution Report Trade Outright Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Outright Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Execution Report Trade Outright Order Event Group
  for execution_report_trade_outright_order_event_group_index = 1, num_in_group do
    index, execution_report_trade_outright_order_event_group = cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_group.dissect(buffer, index, packet, parent, execution_report_trade_outright_order_event_group_index)
  end

  return index
end

-- Dissect: Execution Report Trade Outright Order Event Groups
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_outright_order_event_groups then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_outright_order_event_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_groups.fields(buffer, offset, packet, parent)
end

-- Ownership
cme_futures_ilink3_sbe_v8_5.ownership = {}

-- Size: Ownership
cme_futures_ilink3_sbe_v8_5.ownership.size = 1

-- Display: Ownership
cme_futures_ilink3_sbe_v8_5.ownership.display = function(value)
  return "Ownership: "..value
end

-- Dissect: Ownership
cme_futures_ilink3_sbe_v8_5.ownership.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ownership.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.ownership.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ownership, range, value, display)

  return offset + length, value
end

-- Trade Link Id
cme_futures_ilink3_sbe_v8_5.trade_link_id = {}

-- Size: Trade Link Id
cme_futures_ilink3_sbe_v8_5.trade_link_id.size = 4

-- Display: Trade Link Id
cme_futures_ilink3_sbe_v8_5.trade_link_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Trade Link Id: No Value"
  end

  return "Trade Link Id: "..value
end

-- Dissect: Trade Link Id
cme_futures_ilink3_sbe_v8_5.trade_link_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.trade_link_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.trade_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trade_link_id, range, value, display)

  return offset + length, value
end

-- Execution Report Trade Outright
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright = {}

-- Calculate size of: Execution Report Trade Outright
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.price.size

  index = index + cme_futures_ilink3_sbe_v8_5.stop_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sec_exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.host_cross_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.cum_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.md_trade_entry_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.side_trade_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.trade_link_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.leaves_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.trade_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.expire_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_status_trd.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.time_in_force.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.aggressor_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.managed_order.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.ownership.size

  index = index + cme_futures_ilink3_sbe_v8_5.fills_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_groups.size(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Outright
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Trade Outright
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = cme_futures_ilink3_sbe_v8_5.last_px.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cme_futures_ilink3_sbe_v8_5.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = cme_futures_ilink3_sbe_v8_5.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = cme_futures_ilink3_sbe_v8_5.sec_exec_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = cme_futures_ilink3_sbe_v8_5.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = cme_futures_ilink3_sbe_v8_5.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cme_futures_ilink3_sbe_v8_5.order_qty.dissect(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = cme_futures_ilink3_sbe_v8_5.last_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = cme_futures_ilink3_sbe_v8_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, md_trade_entry_id = cme_futures_ilink3_sbe_v8_5.md_trade_entry_id.dissect(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = cme_futures_ilink3_sbe_v8_5.side_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Link Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_link_id = cme_futures_ilink3_sbe_v8_5.trade_link_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = cme_futures_ilink3_sbe_v8_5.leaves_qty.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = cme_futures_ilink3_sbe_v8_5.trade_date.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = cme_futures_ilink3_sbe_v8_5.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Status Trd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_status_trd = cme_futures_ilink3_sbe_v8_5.ord_status_trd.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 4 values
  index, ord_type_optional = cme_futures_ilink3_sbe_v8_5.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = cme_futures_ilink3_sbe_v8_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, aggressor_indicator = cme_futures_ilink3_sbe_v8_5.aggressor_indicator.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = cme_futures_ilink3_sbe_v8_5.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = cme_futures_ilink3_sbe_v8_5.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  -- Ownership: 1 Byte Unsigned Fixed Width Integer
  index, ownership = cme_futures_ilink3_sbe_v8_5.ownership.dissect(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = cme_futures_ilink3_sbe_v8_5.fills_groups.dissect(buffer, index, packet, parent)

  -- Execution Report Trade Outright Order Event Groups: Struct of 2 fields
  index, execution_report_trade_outright_order_event_groups = cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright_order_event_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Outright
cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_outright then
    local length = cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_trade_outright, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright.fields(buffer, offset, packet, parent)
end

-- Execution Report Elimination
cme_futures_ilink3_sbe_v8_5.execution_report_elimination = {}

-- Calculate size of: Execution Report Elimination
cme_futures_ilink3_sbe_v8_5.execution_report_elimination.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.price.size

  index = index + cme_futures_ilink3_sbe_v8_5.stop_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.host_cross_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.cum_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.min_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.display_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.expire_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.time_in_force.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.managed_order.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  return index
end

-- Display: Execution Report Elimination
cme_futures_ilink3_sbe_v8_5.execution_report_elimination.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Elimination
cme_futures_ilink3_sbe_v8_5.execution_report_elimination.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cme_futures_ilink3_sbe_v8_5.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = cme_futures_ilink3_sbe_v8_5.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = cme_futures_ilink3_sbe_v8_5.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = cme_futures_ilink3_sbe_v8_5.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = cme_futures_ilink3_sbe_v8_5.cum_qty.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cme_futures_ilink3_sbe_v8_5.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = cme_futures_ilink3_sbe_v8_5.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = cme_futures_ilink3_sbe_v8_5.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = cme_futures_ilink3_sbe_v8_5.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 4 values
  index, ord_type_optional = cme_futures_ilink3_sbe_v8_5.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = cme_futures_ilink3_sbe_v8_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = cme_futures_ilink3_sbe_v8_5.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = cme_futures_ilink3_sbe_v8_5.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Elimination
cme_futures_ilink3_sbe_v8_5.execution_report_elimination.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_elimination then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_elimination, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_elimination.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_elimination.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_elimination.fields(buffer, offset, packet, parent)
  end
end

-- Ord Rej Reason
cme_futures_ilink3_sbe_v8_5.ord_rej_reason = {}

-- Size: Ord Rej Reason
cme_futures_ilink3_sbe_v8_5.ord_rej_reason.size = 2

-- Display: Ord Rej Reason
cme_futures_ilink3_sbe_v8_5.ord_rej_reason.display = function(value)
  return "Ord Rej Reason: "..value
end

-- Dissect: Ord Rej Reason
cme_futures_ilink3_sbe_v8_5.ord_rej_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ord_rej_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.ord_rej_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ord_rej_reason, range, value, display)

  return offset + length, value
end

-- Execution Report Reject
cme_futures_ilink3_sbe_v8_5.execution_report_reject = {}

-- Calculate size of: Execution Report Reject
cme_futures_ilink3_sbe_v8_5.execution_report_reject.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.text.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.price_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.stop_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.host_cross_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.min_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.display_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_rej_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.expire_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_duration.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.time_in_force.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.managed_order.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_to_time.size

  return index
end

-- Display: Execution Report Reject
cme_futures_ilink3_sbe_v8_5.execution_report_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report Reject
cme_futures_ilink3_sbe_v8_5.execution_report_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index, text = cme_futures_ilink3_sbe_v8_5.text.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = cme_futures_ilink3_sbe_v8_5.price_optional.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = cme_futures_ilink3_sbe_v8_5.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = cme_futures_ilink3_sbe_v8_5.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = cme_futures_ilink3_sbe_v8_5.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cme_futures_ilink3_sbe_v8_5.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = cme_futures_ilink3_sbe_v8_5.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = cme_futures_ilink3_sbe_v8_5.display_qty.dissect(buffer, index, packet, parent)

  -- Ord Rej Reason: 2 Byte Unsigned Fixed Width Integer
  index, ord_rej_reason = cme_futures_ilink3_sbe_v8_5.ord_rej_reason.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = cme_futures_ilink3_sbe_v8_5.expire_date.dissect(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = cme_futures_ilink3_sbe_v8_5.delay_duration.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 4 values
  index, ord_type_optional = cme_futures_ilink3_sbe_v8_5.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = cme_futures_ilink3_sbe_v8_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = cme_futures_ilink3_sbe_v8_5.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = cme_futures_ilink3_sbe_v8_5.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = cme_futures_ilink3_sbe_v8_5.delay_to_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Reject
cme_futures_ilink3_sbe_v8_5.execution_report_reject.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_reject then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_reject, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_reject.fields(buffer, offset, packet, parent)
  end
end

-- Execution Report New
cme_futures_ilink3_sbe_v8_5.execution_report_new = {}

-- Calculate size of: Execution Report New
cme_futures_ilink3_sbe_v8_5.execution_report_new.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.price.size

  index = index + cme_futures_ilink3_sbe_v8_5.stop_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.transact_time.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.host_cross_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.min_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.display_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.expire_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_duration.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.time_in_force.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.cross_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.managed_order.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.delay_to_time.size

  return index
end

-- Display: Execution Report New
cme_futures_ilink3_sbe_v8_5.execution_report_new.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Report New
cme_futures_ilink3_sbe_v8_5.execution_report_new.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = cme_futures_ilink3_sbe_v8_5.exec_id.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cme_futures_ilink3_sbe_v8_5.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = cme_futures_ilink3_sbe_v8_5.stop_px.dissect(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = cme_futures_ilink3_sbe_v8_5.transact_time.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = cme_futures_ilink3_sbe_v8_5.cross_id_optional.dissect(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = cme_futures_ilink3_sbe_v8_5.host_cross_id.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cme_futures_ilink3_sbe_v8_5.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = cme_futures_ilink3_sbe_v8_5.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = cme_futures_ilink3_sbe_v8_5.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = cme_futures_ilink3_sbe_v8_5.expire_date.dissect(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = cme_futures_ilink3_sbe_v8_5.delay_duration.dissect(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 4 values
  index, ord_type_optional = cme_futures_ilink3_sbe_v8_5.ord_type_optional.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = cme_futures_ilink3_sbe_v8_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = cme_futures_ilink3_sbe_v8_5.cross_type.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = cme_futures_ilink3_sbe_v8_5.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = cme_futures_ilink3_sbe_v8_5.delay_to_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New
cme_futures_ilink3_sbe_v8_5.execution_report_new.dissect = function(buffer, offset, packet, parent)
  if show.execution_report_new then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.execution_report_new, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.execution_report_new.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.execution_report_new.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.execution_report_new.fields(buffer, offset, packet, parent)
  end
end

-- Manual Order Indicator Optional
cme_futures_ilink3_sbe_v8_5.manual_order_indicator_optional = {}

-- Size: Manual Order Indicator Optional
cme_futures_ilink3_sbe_v8_5.manual_order_indicator_optional.size = 1

-- Display: Manual Order Indicator Optional
cme_futures_ilink3_sbe_v8_5.manual_order_indicator_optional.display = function(value)
  if value == 255 then
    return "Manual Order Indicator Optional: No Value"
  end
  if value == 0 then
    return "Manual Order Indicator Optional: Automated (0)"
  end
  if value == 1 then
    return "Manual Order Indicator Optional: Manual (1)"
  end

  return "Manual Order Indicator Optional: Unknown("..value..")"
end

-- Dissect: Manual Order Indicator Optional
cme_futures_ilink3_sbe_v8_5.manual_order_indicator_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.manual_order_indicator_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.manual_order_indicator_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.manual_order_indicator_optional, range, value, display)

  return offset + length, value
end

-- Ref Msg Type
cme_futures_ilink3_sbe_v8_5.ref_msg_type = {}

-- Size: Ref Msg Type
cme_futures_ilink3_sbe_v8_5.ref_msg_type.size = 2

-- Display: Ref Msg Type
cme_futures_ilink3_sbe_v8_5.ref_msg_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Ref Msg Type: No Value"
  end

  return "Ref Msg Type: "..value
end

-- Dissect: Ref Msg Type
cme_futures_ilink3_sbe_v8_5.ref_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ref_msg_type.size
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

  local display = cme_futures_ilink3_sbe_v8_5.ref_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Business Reject Reason
cme_futures_ilink3_sbe_v8_5.business_reject_reason = {}

-- Size: Business Reject Reason
cme_futures_ilink3_sbe_v8_5.business_reject_reason.size = 2

-- Display: Business Reject Reason
cme_futures_ilink3_sbe_v8_5.business_reject_reason.display = function(value)
  return "Business Reject Reason: "..value
end

-- Dissect: Business Reject Reason
cme_futures_ilink3_sbe_v8_5.business_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.business_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.business_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Ref Tag Id
cme_futures_ilink3_sbe_v8_5.ref_tag_id = {}

-- Size: Ref Tag Id
cme_futures_ilink3_sbe_v8_5.ref_tag_id.size = 2

-- Display: Ref Tag Id
cme_futures_ilink3_sbe_v8_5.ref_tag_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Ref Tag Id: No Value"
  end

  return "Ref Tag Id: "..value
end

-- Dissect: Ref Tag Id
cme_futures_ilink3_sbe_v8_5.ref_tag_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ref_tag_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.ref_tag_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ref_tag_id, range, value, display)

  return offset + length, value
end

-- Ref Seq Num
cme_futures_ilink3_sbe_v8_5.ref_seq_num = {}

-- Size: Ref Seq Num
cme_futures_ilink3_sbe_v8_5.ref_seq_num.size = 4

-- Display: Ref Seq Num
cme_futures_ilink3_sbe_v8_5.ref_seq_num.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Ref Seq Num: No Value"
  end

  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
cme_futures_ilink3_sbe_v8_5.ref_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ref_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.ref_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ref_seq_num, range, value, display)

  return offset + length, value
end

-- Location Optional
cme_futures_ilink3_sbe_v8_5.location_optional = {}

-- Size: Location Optional
cme_futures_ilink3_sbe_v8_5.location_optional.size = 5

-- Display: Location Optional
cme_futures_ilink3_sbe_v8_5.location_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Location Optional: No Value"
  end

  return "Location Optional: "..value
end

-- Dissect: Location Optional
cme_futures_ilink3_sbe_v8_5.location_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.location_optional.size
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

  local display = cme_futures_ilink3_sbe_v8_5.location_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.location_optional, range, value, display)

  return offset + length, value
end

-- Business Reject Ref Id
cme_futures_ilink3_sbe_v8_5.business_reject_ref_id = {}

-- Size: Business Reject Ref Id
cme_futures_ilink3_sbe_v8_5.business_reject_ref_id.size = 8

-- Display: Business Reject Ref Id
cme_futures_ilink3_sbe_v8_5.business_reject_ref_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Business Reject Ref Id: No Value"
  end

  return "Business Reject Ref Id: "..value
end

-- Dissect: Business Reject Ref Id
cme_futures_ilink3_sbe_v8_5.business_reject_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.business_reject_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.business_reject_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.business_reject_ref_id, range, value, display)

  return offset + length, value
end

-- Party Details List Req Id Optional
cme_futures_ilink3_sbe_v8_5.party_details_list_req_id_optional = {}

-- Size: Party Details List Req Id Optional
cme_futures_ilink3_sbe_v8_5.party_details_list_req_id_optional.size = 8

-- Display: Party Details List Req Id Optional
cme_futures_ilink3_sbe_v8_5.party_details_list_req_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Party Details List Req Id Optional: No Value"
  end

  return "Party Details List Req Id Optional: "..value
end

-- Dissect: Party Details List Req Id Optional
cme_futures_ilink3_sbe_v8_5.party_details_list_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_list_req_id_optional, range, value, display)

  return offset + length, value
end

-- Business Reject
cme_futures_ilink3_sbe_v8_5.business_reject = {}

-- Calculate size of: Business Reject
cme_futures_ilink3_sbe_v8_5.business_reject.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.text.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.business_reject_ref_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.location_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.ref_seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.ref_tag_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.business_reject_reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.ref_msg_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  return index
end

-- Display: Business Reject
cme_futures_ilink3_sbe_v8_5.business_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Reject
cme_futures_ilink3_sbe_v8_5.business_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index, text = cme_futures_ilink3_sbe_v8_5.text.dissect(buffer, index, packet, parent)

  -- Sender Id Optional: 20 Byte Ascii String
  index, sender_id_optional = cme_futures_ilink3_sbe_v8_5.sender_id_optional.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, party_details_list_req_id_optional = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id_optional.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Business Reject Ref Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, business_reject_ref_id = cme_futures_ilink3_sbe_v8_5.business_reject_ref_id.dissect(buffer, index, packet, parent)

  -- Location Optional: 5 Byte Ascii String
  index, location_optional = cme_futures_ilink3_sbe_v8_5.location_optional.dissect(buffer, index, packet, parent)

  -- Ref Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, ref_seq_num = cme_futures_ilink3_sbe_v8_5.ref_seq_num.dissect(buffer, index, packet, parent)

  -- Ref Tag Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, ref_tag_id = cme_futures_ilink3_sbe_v8_5.ref_tag_id.dissect(buffer, index, packet, parent)

  -- Business Reject Reason: 2 Byte Unsigned Fixed Width Integer
  index, business_reject_reason = cme_futures_ilink3_sbe_v8_5.business_reject_reason.dissect(buffer, index, packet, parent)

  -- Ref Msg Type: 2 Byte Ascii String
  index, ref_msg_type = cme_futures_ilink3_sbe_v8_5.ref_msg_type.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, manual_order_indicator_optional = cme_futures_ilink3_sbe_v8_5.manual_order_indicator_optional.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Reject
cme_futures_ilink3_sbe_v8_5.business_reject.dissect = function(buffer, offset, packet, parent)
  if show.business_reject then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.business_reject, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.business_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.business_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.business_reject.fields(buffer, offset, packet, parent)
  end
end

-- Party Detail Definition Status
cme_futures_ilink3_sbe_v8_5.party_detail_definition_status = {}

-- Size: Party Detail Definition Status
cme_futures_ilink3_sbe_v8_5.party_detail_definition_status.size = 1

-- Display: Party Detail Definition Status
cme_futures_ilink3_sbe_v8_5.party_detail_definition_status.display = function(value)
  return "Party Detail Definition Status: "..value
end

-- Dissect: Party Detail Definition Status
cme_futures_ilink3_sbe_v8_5.party_detail_definition_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.party_detail_definition_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.party_detail_definition_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_detail_definition_status, range, value, display)

  return offset + length, value
end

-- List Update Action
cme_futures_ilink3_sbe_v8_5.list_update_action = {}

-- Size: List Update Action
cme_futures_ilink3_sbe_v8_5.list_update_action.size = 1

-- Display: List Update Action
cme_futures_ilink3_sbe_v8_5.list_update_action.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "List Update Action: No Value"
  end

  if value == "A" then
    return "List Update Action: Add (A)"
  end
  if value == "D" then
    return "List Update Action: Delete (D)"
  end

  return "List Update Action: Unknown("..value..")"
end

-- Dissect: List Update Action
cme_futures_ilink3_sbe_v8_5.list_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.list_update_action.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.list_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.list_update_action, range, value, display)

  return offset + length, value
end

-- Party Detail Request Status
cme_futures_ilink3_sbe_v8_5.party_detail_request_status = {}

-- Size: Party Detail Request Status
cme_futures_ilink3_sbe_v8_5.party_detail_request_status.size = 1

-- Display: Party Detail Request Status
cme_futures_ilink3_sbe_v8_5.party_detail_request_status.display = function(value)
  return "Party Detail Request Status: "..value
end

-- Dissect: Party Detail Request Status
cme_futures_ilink3_sbe_v8_5.party_detail_request_status.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.party_detail_request_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.party_detail_request_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_detail_request_status, range, value, display)

  return offset + length, value
end

-- Memo
cme_futures_ilink3_sbe_v8_5.memo = {}

-- Size: Memo
cme_futures_ilink3_sbe_v8_5.memo.size = 75

-- Display: Memo
cme_futures_ilink3_sbe_v8_5.memo.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Memo: No Value"
  end

  return "Memo: "..value
end

-- Dissect: Memo
cme_futures_ilink3_sbe_v8_5.memo.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.memo.size
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

  local display = cme_futures_ilink3_sbe_v8_5.memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.memo, range, value, display)

  return offset + length, value
end

-- Party Details Definition Request Ack
cme_futures_ilink3_sbe_v8_5.party_details_definition_request_ack = {}

-- Calculate size of: Party Details Definition Request Ack
cme_futures_ilink3_sbe_v8_5.party_details_definition_request_ack.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.memo.size

  index = index + cme_futures_ilink3_sbe_v8_5.avg_px_group_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.self_match_prevention_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_detail_request_status.size

  index = index + cme_futures_ilink3_sbe_v8_5.cust_order_capacity.size

  index = index + cme_futures_ilink3_sbe_v8_5.clearing_account_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction.size

  index = index + cme_futures_ilink3_sbe_v8_5.avg_px_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd.size

  index = index + cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.list_update_action.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_detail_definition_status.size

  index = index + cme_futures_ilink3_sbe_v8_5.executor.size

  index = index + cme_futures_ilink3_sbe_v8_5.idm_short_code.size

  index = index + cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.size(buffer, offset + index)

  return index
end

-- Display: Party Details Definition Request Ack
cme_futures_ilink3_sbe_v8_5.party_details_definition_request_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details Definition Request Ack
cme_futures_ilink3_sbe_v8_5.party_details_definition_request_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Memo: 75 Byte Ascii String
  index, memo = cme_futures_ilink3_sbe_v8_5.memo.dissect(buffer, index, packet, parent)

  -- Avg Px Group Id: 20 Byte Ascii String
  index, avg_px_group_id = cme_futures_ilink3_sbe_v8_5.avg_px_group_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, self_match_prevention_id = cme_futures_ilink3_sbe_v8_5.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Party Detail Request Status: 1 Byte Unsigned Fixed Width Integer
  index, party_detail_request_status = cme_futures_ilink3_sbe_v8_5.party_detail_request_status.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, cust_order_capacity = cme_futures_ilink3_sbe_v8_5.cust_order_capacity.dissect(buffer, index, packet, parent)

  -- Clearing Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_account_type = cme_futures_ilink3_sbe_v8_5.clearing_account_type.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: 1 Byte Ascii String Enum with 2 values
  index, self_match_prevention_instruction = cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Avg Px Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, avg_px_indicator = cme_futures_ilink3_sbe_v8_5.avg_px_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Trade Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_trade_price_type = cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type.dissect(buffer, index, packet, parent)

  -- Cmta Giveup Cd: 1 Byte Ascii String Enum with 2 values
  index, cmta_giveup_cd = cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String Enum with 6 values
  index, cust_order_handling_inst = cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String Enum with 2 values
  index, list_update_action = cme_futures_ilink3_sbe_v8_5.list_update_action.dissect(buffer, index, packet, parent)

  -- Party Detail Definition Status: 1 Byte Unsigned Fixed Width Integer
  index, party_detail_definition_status = cme_futures_ilink3_sbe_v8_5.party_detail_definition_status.dissect(buffer, index, packet, parent)

  -- Executor: 8 Byte Unsigned Fixed Width Integer Nullable
  index, executor = cme_futures_ilink3_sbe_v8_5.executor.dissect(buffer, index, packet, parent)

  -- Idm Short Code: 8 Byte Unsigned Fixed Width Integer Nullable
  index, idm_short_code = cme_futures_ilink3_sbe_v8_5.idm_short_code.dissect(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = cme_futures_ilink3_sbe_v8_5.poss_retrans_flag.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index, party_details_groups = cme_futures_ilink3_sbe_v8_5.party_details_groups.dissect(buffer, index, packet, parent)

  -- Trd Reg Publications Groups: Struct of 2 fields
  index, trd_reg_publications_groups = cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Definition Request Ack
cme_futures_ilink3_sbe_v8_5.party_details_definition_request_ack.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_definition_request_ack then
    local length = cme_futures_ilink3_sbe_v8_5.party_details_definition_request_ack.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.party_details_definition_request_ack.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_definition_request_ack, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.party_details_definition_request_ack.fields(buffer, offset, packet, parent)
end

-- Party Details Definition Request
cme_futures_ilink3_sbe_v8_5.party_details_definition_request = {}

-- Calculate size of: Party Details Definition Request
cme_futures_ilink3_sbe_v8_5.party_details_definition_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.list_update_action.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.memo.size

  index = index + cme_futures_ilink3_sbe_v8_5.avg_px_group_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.self_match_prevention_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd.size

  index = index + cme_futures_ilink3_sbe_v8_5.cust_order_capacity.size

  index = index + cme_futures_ilink3_sbe_v8_5.clearing_account_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction.size

  index = index + cme_futures_ilink3_sbe_v8_5.avg_px_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.executor.size

  index = index + cme_futures_ilink3_sbe_v8_5.idm_short_code.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_groups.size(buffer, offset + index)

  index = index + cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.size(buffer, offset + index)

  return index
end

-- Display: Party Details Definition Request
cme_futures_ilink3_sbe_v8_5.party_details_definition_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Party Details Definition Request
cme_futures_ilink3_sbe_v8_5.party_details_definition_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String Enum with 2 values
  index, list_update_action = cme_futures_ilink3_sbe_v8_5.list_update_action.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Memo: 75 Byte Ascii String
  index, memo = cme_futures_ilink3_sbe_v8_5.memo.dissect(buffer, index, packet, parent)

  -- Avg Px Group Id: 20 Byte Ascii String
  index, avg_px_group_id = cme_futures_ilink3_sbe_v8_5.avg_px_group_id.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, self_match_prevention_id = cme_futures_ilink3_sbe_v8_5.self_match_prevention_id.dissect(buffer, index, packet, parent)

  -- Cmta Giveup Cd: 1 Byte Ascii String Enum with 2 values
  index, cmta_giveup_cd = cme_futures_ilink3_sbe_v8_5.cmta_giveup_cd.dissect(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, cust_order_capacity = cme_futures_ilink3_sbe_v8_5.cust_order_capacity.dissect(buffer, index, packet, parent)

  -- Clearing Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_account_type = cme_futures_ilink3_sbe_v8_5.clearing_account_type.dissect(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: 1 Byte Ascii String Enum with 2 values
  index, self_match_prevention_instruction = cme_futures_ilink3_sbe_v8_5.self_match_prevention_instruction.dissect(buffer, index, packet, parent)

  -- Avg Px Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, avg_px_indicator = cme_futures_ilink3_sbe_v8_5.avg_px_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Trade Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_trade_price_type = cme_futures_ilink3_sbe_v8_5.clearing_trade_price_type.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String Enum with 6 values
  index, cust_order_handling_inst = cme_futures_ilink3_sbe_v8_5.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Executor: 8 Byte Unsigned Fixed Width Integer Nullable
  index, executor = cme_futures_ilink3_sbe_v8_5.executor.dissect(buffer, index, packet, parent)

  -- Idm Short Code: 8 Byte Unsigned Fixed Width Integer Nullable
  index, idm_short_code = cme_futures_ilink3_sbe_v8_5.idm_short_code.dissect(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index, party_details_groups = cme_futures_ilink3_sbe_v8_5.party_details_groups.dissect(buffer, index, packet, parent)

  -- Trd Reg Publications Groups: Struct of 2 fields
  index, trd_reg_publications_groups = cme_futures_ilink3_sbe_v8_5.trd_reg_publications_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Definition Request
cme_futures_ilink3_sbe_v8_5.party_details_definition_request.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_definition_request then
    local length = cme_futures_ilink3_sbe_v8_5.party_details_definition_request.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.party_details_definition_request.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.party_details_definition_request, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.party_details_definition_request.fields(buffer, offset, packet, parent)
end

-- Underlying Security Id
cme_futures_ilink3_sbe_v8_5.underlying_security_id = {}

-- Size: Underlying Security Id
cme_futures_ilink3_sbe_v8_5.underlying_security_id.size = 4

-- Display: Underlying Security Id
cme_futures_ilink3_sbe_v8_5.underlying_security_id.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Underlying Security Id: No Value"
  end

  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
cme_futures_ilink3_sbe_v8_5.underlying_security_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.underlying_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_futures_ilink3_sbe_v8_5.underlying_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.underlying_security_id, range, value, display)

  return offset + length, value
end

-- Offer Px
cme_futures_ilink3_sbe_v8_5.offer_px = {}

-- Size: Offer Px
cme_futures_ilink3_sbe_v8_5.offer_px.size = 8

-- Display: Offer Px
cme_futures_ilink3_sbe_v8_5.offer_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Translate: Offer Px
cme_futures_ilink3_sbe_v8_5.offer_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Offer Px
cme_futures_ilink3_sbe_v8_5.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.offer_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_ilink3_sbe_v8_5.offer_px.translate(raw)
  local display = cme_futures_ilink3_sbe_v8_5.offer_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Bid Px
cme_futures_ilink3_sbe_v8_5.bid_px = {}

-- Size: Bid Px
cme_futures_ilink3_sbe_v8_5.bid_px.size = 8

-- Display: Bid Px
cme_futures_ilink3_sbe_v8_5.bid_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Translate: Bid Px
cme_futures_ilink3_sbe_v8_5.bid_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Bid Px
cme_futures_ilink3_sbe_v8_5.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.bid_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cme_futures_ilink3_sbe_v8_5.bid_px.translate(raw)
  local display = cme_futures_ilink3_sbe_v8_5.bid_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Mass Quote Entry Group
cme_futures_ilink3_sbe_v8_5.mass_quote_entry_group = {}

-- Calculate size of: Mass Quote Entry Group
cme_futures_ilink3_sbe_v8_5.mass_quote_entry_group.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.bid_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.offer_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_entry_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.bid_size.size

  index = index + cme_futures_ilink3_sbe_v8_5.offer_size.size

  index = index + cme_futures_ilink3_sbe_v8_5.underlying_security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_set_id.size

  return index
end

-- Display: Mass Quote Entry Group
cme_futures_ilink3_sbe_v8_5.mass_quote_entry_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Entry Group
cme_futures_ilink3_sbe_v8_5.mass_quote_entry_group.fields = function(buffer, offset, packet, parent, mass_quote_entry_group_index)
  local index = offset

  -- Implicit Mass Quote Entry Group Index
  if mass_quote_entry_group_index ~= nil then
    local iteration = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_entry_group_index, mass_quote_entry_group_index)
    iteration:set_generated()
  end

  -- Bid Px: 8 Byte Signed Fixed Width Integer Nullable
  index, bid_px = cme_futures_ilink3_sbe_v8_5.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Signed Fixed Width Integer Nullable
  index, offer_px = cme_futures_ilink3_sbe_v8_5.offer_px.dissect(buffer, index, packet, parent)

  -- Quote Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_entry_id = cme_futures_ilink3_sbe_v8_5.quote_entry_id.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = cme_futures_ilink3_sbe_v8_5.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, offer_size = cme_futures_ilink3_sbe_v8_5.offer_size.dissect(buffer, index, packet, parent)

  -- Underlying Security Id: 4 Byte Signed Fixed Width Integer Nullable
  index, underlying_security_id = cme_futures_ilink3_sbe_v8_5.underlying_security_id.dissect(buffer, index, packet, parent)

  -- Quote Set Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_set_id = cme_futures_ilink3_sbe_v8_5.quote_set_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Entry Group
cme_futures_ilink3_sbe_v8_5.mass_quote_entry_group.dissect = function(buffer, offset, packet, parent, mass_quote_entry_group_index)
  if show.mass_quote_entry_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_entry_group, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.mass_quote_entry_group.fields(buffer, offset, packet, parent, mass_quote_entry_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.mass_quote_entry_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.mass_quote_entry_group.fields(buffer, offset, packet, parent, mass_quote_entry_group_index)
  end
end

-- Mass Quote Entry Groups
cme_futures_ilink3_sbe_v8_5.mass_quote_entry_groups = {}

-- Calculate size of: Mass Quote Entry Groups
cme_futures_ilink3_sbe_v8_5.mass_quote_entry_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.group_size.size(buffer, offset + index)

  -- Calculate field size from count
  local mass_quote_entry_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mass_quote_entry_group_count * 38

  return index
end

-- Display: Mass Quote Entry Groups
cme_futures_ilink3_sbe_v8_5.mass_quote_entry_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote Entry Groups
cme_futures_ilink3_sbe_v8_5.mass_quote_entry_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_futures_ilink3_sbe_v8_5.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Mass Quote Entry Group
  for mass_quote_entry_group_index = 1, num_in_group do
    index, mass_quote_entry_group = cme_futures_ilink3_sbe_v8_5.mass_quote_entry_group.dissect(buffer, index, packet, parent, mass_quote_entry_group_index)
  end

  return index
end

-- Dissect: Mass Quote Entry Groups
cme_futures_ilink3_sbe_v8_5.mass_quote_entry_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote_entry_groups then
    local length = cme_futures_ilink3_sbe_v8_5.mass_quote_entry_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.mass_quote_entry_groups.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote_entry_groups, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.mass_quote_entry_groups.fields(buffer, offset, packet, parent)
end

-- Reserved
cme_futures_ilink3_sbe_v8_5.reserved = {}

-- Size: Reserved
cme_futures_ilink3_sbe_v8_5.reserved.size = 30

-- Display: Reserved
cme_futures_ilink3_sbe_v8_5.reserved.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved: No Value"
  end

  return "Reserved: "..value
end

-- Dissect: Reserved
cme_futures_ilink3_sbe_v8_5.reserved.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.reserved.size
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

  local display = cme_futures_ilink3_sbe_v8_5.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.reserved, range, value, display)

  return offset + length, value
end

-- Tot No Quote Entries
cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries = {}

-- Size: Tot No Quote Entries
cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries.size = 1

-- Display: Tot No Quote Entries
cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries.display = function(value)
  return "Tot No Quote Entries: "..value
end

-- Dissect: Tot No Quote Entries
cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.tot_no_quote_entries, range, value, display)

  return offset + length, value
end

-- Mass Quote
cme_futures_ilink3_sbe_v8_5.mass_quote = {}

-- Calculate size of: Mass Quote
cme_futures_ilink3_sbe_v8_5.mass_quote.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_req_id_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.quote_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries.size

  index = index + cme_futures_ilink3_sbe_v8_5.mm_protection_reset.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.reserved.size

  index = index + cme_futures_ilink3_sbe_v8_5.mass_quote_entry_groups.size(buffer, offset + index)

  return index
end

-- Display: Mass Quote
cme_futures_ilink3_sbe_v8_5.mass_quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Quote
cme_futures_ilink3_sbe_v8_5.mass_quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- Quote Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_req_id_optional = cme_futures_ilink3_sbe_v8_5.quote_req_id_optional.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = cme_futures_ilink3_sbe_v8_5.quote_id.dissect(buffer, index, packet, parent)

  -- Tot No Quote Entries: 1 Byte Unsigned Fixed Width Integer
  index, tot_no_quote_entries = cme_futures_ilink3_sbe_v8_5.tot_no_quote_entries.dissect(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset = cme_futures_ilink3_sbe_v8_5.mm_protection_reset.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  -- Reserved: 30 Byte Ascii String
  index, reserved = cme_futures_ilink3_sbe_v8_5.reserved.dissect(buffer, index, packet, parent)

  -- Mass Quote Entry Groups: Struct of 2 fields
  index, mass_quote_entry_groups = cme_futures_ilink3_sbe_v8_5.mass_quote_entry_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote
cme_futures_ilink3_sbe_v8_5.mass_quote.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote then
    local length = cme_futures_ilink3_sbe_v8_5.mass_quote.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.mass_quote.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.mass_quote, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.mass_quote.fields(buffer, offset, packet, parent)
end

-- Order Cancel Request
cme_futures_ilink3_sbe_v8_5.order_cancel_request = {}

-- Calculate size of: Order Cancel Request
cme_futures_ilink3_sbe_v8_5.order_cancel_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  return index
end

-- Display: Order Cancel Request
cme_futures_ilink3_sbe_v8_5.order_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Request
cme_futures_ilink3_sbe_v8_5.order_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request
cme_futures_ilink3_sbe_v8_5.order_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_cancel_request, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.order_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.order_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.order_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- Ofm Override
cme_futures_ilink3_sbe_v8_5.ofm_override = {}

-- Size: Ofm Override
cme_futures_ilink3_sbe_v8_5.ofm_override.size = 1

-- Display: Ofm Override
cme_futures_ilink3_sbe_v8_5.ofm_override.display = function(value)
  if value == 0 then
    return "Ofm Override: Disabled (0)"
  end
  if value == 1 then
    return "Ofm Override: Enabled (1)"
  end

  return "Ofm Override: Unknown("..value..")"
end

-- Dissect: Ofm Override
cme_futures_ilink3_sbe_v8_5.ofm_override.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ofm_override.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.ofm_override.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ofm_override, range, value, display)

  return offset + length, value
end

-- Ord Type
cme_futures_ilink3_sbe_v8_5.ord_type = {}

-- Size: Ord Type
cme_futures_ilink3_sbe_v8_5.ord_type.size = 1

-- Display: Ord Type
cme_futures_ilink3_sbe_v8_5.ord_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Type: No Value"
  end

  if value == "1" then
    return "Ord Type: Marketwith Protection (1)"
  end
  if value == "2" then
    return "Ord Type: Limit (2)"
  end
  if value == "3" then
    return "Ord Type: Stopwith Protection (3)"
  end
  if value == "4" then
    return "Ord Type: Stop Limitt (4)"
  end
  if value == "K" then
    return "Ord Type: Market With Leftover As Limit (K)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
cme_futures_ilink3_sbe_v8_5.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.ord_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_futures_ilink3_sbe_v8_5.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Cancel Replace Request
cme_futures_ilink3_sbe_v8_5.order_cancel_replace_request = {}

-- Calculate size of: Order Cancel Replace Request
cme_futures_ilink3_sbe_v8_5.order_cancel_replace_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.price_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.stop_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.min_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.display_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.expire_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.time_in_force.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.ofm_override.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.managed_order.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  return index
end

-- Display: Order Cancel Replace Request
cme_futures_ilink3_sbe_v8_5.order_cancel_replace_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request
cme_futures_ilink3_sbe_v8_5.order_cancel_replace_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = cme_futures_ilink3_sbe_v8_5.price_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cme_futures_ilink3_sbe_v8_5.order_qty.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cme_futures_ilink3_sbe_v8_5.order_id.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = cme_futures_ilink3_sbe_v8_5.stop_px.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = cme_futures_ilink3_sbe_v8_5.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = cme_futures_ilink3_sbe_v8_5.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = cme_futures_ilink3_sbe_v8_5.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 5 values
  index, ord_type = cme_futures_ilink3_sbe_v8_5.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = cme_futures_ilink3_sbe_v8_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Ofm Override: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ofm_override = cme_futures_ilink3_sbe_v8_5.ofm_override.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = cme_futures_ilink3_sbe_v8_5.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request
cme_futures_ilink3_sbe_v8_5.order_cancel_replace_request.dissect = function(buffer, offset, packet, parent)
  if show.order_cancel_replace_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.order_cancel_replace_request, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.order_cancel_replace_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.order_cancel_replace_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.order_cancel_replace_request.fields(buffer, offset, packet, parent)
  end
end

-- New Order Single
cme_futures_ilink3_sbe_v8_5.new_order_single = {}

-- Calculate size of: New Order Single
cme_futures_ilink3_sbe_v8_5.new_order_single.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.price_optional.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.security_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.side.size

  index = index + cme_futures_ilink3_sbe_v8_5.seq_num.size

  index = index + cme_futures_ilink3_sbe_v8_5.sender_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.clordid.size

  index = index + cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.order_request_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.sending_time_epoch.size

  index = index + cme_futures_ilink3_sbe_v8_5.stop_px.size

  index = index + cme_futures_ilink3_sbe_v8_5.location.size

  index = index + cme_futures_ilink3_sbe_v8_5.min_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.display_qty.size

  index = index + cme_futures_ilink3_sbe_v8_5.expire_date.size

  index = index + cme_futures_ilink3_sbe_v8_5.ord_type.size

  index = index + cme_futures_ilink3_sbe_v8_5.time_in_force.size

  index = index + cme_futures_ilink3_sbe_v8_5.manual_order_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.exec_inst.size

  index = index + cme_futures_ilink3_sbe_v8_5.execution_mode.size

  index = index + cme_futures_ilink3_sbe_v8_5.liquidity_flag.size

  index = index + cme_futures_ilink3_sbe_v8_5.managed_order.size

  index = index + cme_futures_ilink3_sbe_v8_5.short_sale_type.size

  return index
end

-- Display: New Order Single
cme_futures_ilink3_sbe_v8_5.new_order_single.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single
cme_futures_ilink3_sbe_v8_5.new_order_single.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = cme_futures_ilink3_sbe_v8_5.price_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cme_futures_ilink3_sbe_v8_5.order_qty.dissect(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = cme_futures_ilink3_sbe_v8_5.security_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = cme_futures_ilink3_sbe_v8_5.side.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = cme_futures_ilink3_sbe_v8_5.seq_num.dissect(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = cme_futures_ilink3_sbe_v8_5.sender_id.dissect(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = cme_futures_ilink3_sbe_v8_5.clordid.dissect(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = cme_futures_ilink3_sbe_v8_5.party_details_list_req_id.dissect(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = cme_futures_ilink3_sbe_v8_5.order_request_id.dissect(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = cme_futures_ilink3_sbe_v8_5.sending_time_epoch.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = cme_futures_ilink3_sbe_v8_5.stop_px.dissect(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = cme_futures_ilink3_sbe_v8_5.location.dissect(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = cme_futures_ilink3_sbe_v8_5.min_qty.dissect(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = cme_futures_ilink3_sbe_v8_5.display_qty.dissect(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = cme_futures_ilink3_sbe_v8_5.expire_date.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 5 values
  index, ord_type = cme_futures_ilink3_sbe_v8_5.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, time_in_force = cme_futures_ilink3_sbe_v8_5.time_in_force.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = cme_futures_ilink3_sbe_v8_5.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = cme_futures_ilink3_sbe_v8_5.exec_inst.dissect(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 2 values
  index, execution_mode = cme_futures_ilink3_sbe_v8_5.execution_mode.dissect(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = cme_futures_ilink3_sbe_v8_5.liquidity_flag.dissect(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = cme_futures_ilink3_sbe_v8_5.managed_order.dissect(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = cme_futures_ilink3_sbe_v8_5.short_sale_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single
cme_futures_ilink3_sbe_v8_5.new_order_single.dissect = function(buffer, offset, packet, parent)
  if show.new_order_single then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.new_order_single, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.new_order_single.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.new_order_single.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.new_order_single.fields(buffer, offset, packet, parent)
  end
end

-- Msg Count
cme_futures_ilink3_sbe_v8_5.msg_count = {}

-- Size: Msg Count
cme_futures_ilink3_sbe_v8_5.msg_count.size = 4

-- Display: Msg Count
cme_futures_ilink3_sbe_v8_5.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
cme_futures_ilink3_sbe_v8_5.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.msg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.msg_count, range, value, display)

  return offset + length, value
end

-- From Seq No
cme_futures_ilink3_sbe_v8_5.from_seq_no = {}

-- Size: From Seq No
cme_futures_ilink3_sbe_v8_5.from_seq_no.size = 4

-- Display: From Seq No
cme_futures_ilink3_sbe_v8_5.from_seq_no.display = function(value)
  return "From Seq No: "..value
end

-- Dissect: From Seq No
cme_futures_ilink3_sbe_v8_5.from_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.from_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.from_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.from_seq_no, range, value, display)

  return offset + length, value
end

-- Not Applied
cme_futures_ilink3_sbe_v8_5.not_applied = {}

-- Calculate size of: Not Applied
cme_futures_ilink3_sbe_v8_5.not_applied.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.from_seq_no.size

  index = index + cme_futures_ilink3_sbe_v8_5.msg_count.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  return index
end

-- Display: Not Applied
cme_futures_ilink3_sbe_v8_5.not_applied.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Applied
cme_futures_ilink3_sbe_v8_5.not_applied.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index, from_seq_no = cme_futures_ilink3_sbe_v8_5.from_seq_no.dissect(buffer, index, packet, parent)

  -- Msg Count: 4 Byte Unsigned Fixed Width Integer
  index, msg_count = cme_futures_ilink3_sbe_v8_5.msg_count.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Applied
cme_futures_ilink3_sbe_v8_5.not_applied.dissect = function(buffer, offset, packet, parent)
  if show.not_applied then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.not_applied, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.not_applied.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.not_applied.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.not_applied.fields(buffer, offset, packet, parent)
  end
end

-- Error Codes
cme_futures_ilink3_sbe_v8_5.error_codes = {}

-- Size: Error Codes
cme_futures_ilink3_sbe_v8_5.error_codes.size = 2

-- Display: Error Codes
cme_futures_ilink3_sbe_v8_5.error_codes.display = function(value)
  return "Error Codes: "..value
end

-- Dissect: Error Codes
cme_futures_ilink3_sbe_v8_5.error_codes.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.error_codes.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.error_codes.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.error_codes, range, value, display)

  return offset + length, value
end

-- Request Timestamp
cme_futures_ilink3_sbe_v8_5.request_timestamp = {}

-- Size: Request Timestamp
cme_futures_ilink3_sbe_v8_5.request_timestamp.size = 8

-- Display: Request Timestamp
cme_futures_ilink3_sbe_v8_5.request_timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Request Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Timestamp
cme_futures_ilink3_sbe_v8_5.request_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.request_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.request_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.request_timestamp, range, value, display)

  return offset + length, value
end

-- Last Uuid
cme_futures_ilink3_sbe_v8_5.last_uuid = {}

-- Size: Last Uuid
cme_futures_ilink3_sbe_v8_5.last_uuid.size = 8

-- Display: Last Uuid
cme_futures_ilink3_sbe_v8_5.last_uuid.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Uuid: No Value"
  end

  return "Last Uuid: "..value
end

-- Dissect: Last Uuid
cme_futures_ilink3_sbe_v8_5.last_uuid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.last_uuid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.last_uuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.last_uuid, range, value, display)

  return offset + length, value
end

-- Reason
cme_futures_ilink3_sbe_v8_5.reason = {}

-- Size: Reason
cme_futures_ilink3_sbe_v8_5.reason.size = 48

-- Display: Reason
cme_futures_ilink3_sbe_v8_5.reason.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason: No Value"
  end

  return "Reason: "..value
end

-- Dissect: Reason
cme_futures_ilink3_sbe_v8_5.reason.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.reason.size
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

  local display = cme_futures_ilink3_sbe_v8_5.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.reason, range, value, display)

  return offset + length, value
end

-- Retransmit Reject
cme_futures_ilink3_sbe_v8_5.retransmit_reject = {}

-- Calculate size of: Retransmit Reject
cme_futures_ilink3_sbe_v8_5.retransmit_reject.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_timestamp.size

  index = index + cme_futures_ilink3_sbe_v8_5.error_codes.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  return index
end

-- Display: Retransmit Reject
cme_futures_ilink3_sbe_v8_5.retransmit_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Reject
cme_futures_ilink3_sbe_v8_5.retransmit_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String
  index, reason = cme_futures_ilink3_sbe_v8_5.reason.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Last Uuid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_uuid = cme_futures_ilink3_sbe_v8_5.last_uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = cme_futures_ilink3_sbe_v8_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index, error_codes = cme_futures_ilink3_sbe_v8_5.error_codes.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Reject
cme_futures_ilink3_sbe_v8_5.retransmit_reject.dissect = function(buffer, offset, packet, parent)
  if show.retransmit_reject then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.retransmit_reject, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.retransmit_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.retransmit_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.retransmit_reject.fields(buffer, offset, packet, parent)
  end
end

-- Msg Count 16
cme_futures_ilink3_sbe_v8_5.msg_count_16 = {}

-- Size: Msg Count 16
cme_futures_ilink3_sbe_v8_5.msg_count_16.size = 2

-- Display: Msg Count 16
cme_futures_ilink3_sbe_v8_5.msg_count_16.display = function(value)
  return "Msg Count 16: "..value
end

-- Dissect: Msg Count 16
cme_futures_ilink3_sbe_v8_5.msg_count_16.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.msg_count_16.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.msg_count_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.msg_count_16, range, value, display)

  return offset + length, value
end

-- Retransmission
cme_futures_ilink3_sbe_v8_5.retransmission = {}

-- Calculate size of: Retransmission
cme_futures_ilink3_sbe_v8_5.retransmission.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_timestamp.size

  index = index + cme_futures_ilink3_sbe_v8_5.from_seq_no.size

  index = index + cme_futures_ilink3_sbe_v8_5.msg_count_16.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  return index
end

-- Display: Retransmission
cme_futures_ilink3_sbe_v8_5.retransmission.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission
cme_futures_ilink3_sbe_v8_5.retransmission.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Last Uuid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_uuid = cme_futures_ilink3_sbe_v8_5.last_uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = cme_futures_ilink3_sbe_v8_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index, from_seq_no = cme_futures_ilink3_sbe_v8_5.from_seq_no.dissect(buffer, index, packet, parent)

  -- Msg Count 16: 2 Byte Unsigned Fixed Width Integer
  index, msg_count_16 = cme_futures_ilink3_sbe_v8_5.msg_count_16.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission
cme_futures_ilink3_sbe_v8_5.retransmission.dissect = function(buffer, offset, packet, parent)
  if show.retransmission then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.retransmission, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.retransmission.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.retransmission.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.retransmission.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Request
cme_futures_ilink3_sbe_v8_5.retransmit_request = {}

-- Calculate size of: Retransmit Request
cme_futures_ilink3_sbe_v8_5.retransmit_request.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.last_uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_timestamp.size

  index = index + cme_futures_ilink3_sbe_v8_5.from_seq_no.size

  index = index + cme_futures_ilink3_sbe_v8_5.msg_count_16.size

  return index
end

-- Display: Retransmit Request
cme_futures_ilink3_sbe_v8_5.retransmit_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmit Request
cme_futures_ilink3_sbe_v8_5.retransmit_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Last Uuid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_uuid = cme_futures_ilink3_sbe_v8_5.last_uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = cme_futures_ilink3_sbe_v8_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index, from_seq_no = cme_futures_ilink3_sbe_v8_5.from_seq_no.dissect(buffer, index, packet, parent)

  -- Msg Count 16: 2 Byte Unsigned Fixed Width Integer
  index, msg_count_16 = cme_futures_ilink3_sbe_v8_5.msg_count_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request
cme_futures_ilink3_sbe_v8_5.retransmit_request.dissect = function(buffer, offset, packet, parent)
  if show.retransmit_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.retransmit_request, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.retransmit_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.retransmit_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.retransmit_request.fields(buffer, offset, packet, parent)
  end
end

-- Terminate
cme_futures_ilink3_sbe_v8_5.terminate = {}

-- Calculate size of: Terminate
cme_futures_ilink3_sbe_v8_5.terminate.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_timestamp.size

  index = index + cme_futures_ilink3_sbe_v8_5.error_codes.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  return index
end

-- Display: Terminate
cme_futures_ilink3_sbe_v8_5.terminate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Terminate
cme_futures_ilink3_sbe_v8_5.terminate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String
  index, reason = cme_futures_ilink3_sbe_v8_5.reason.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = cme_futures_ilink3_sbe_v8_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index, error_codes = cme_futures_ilink3_sbe_v8_5.error_codes.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate
cme_futures_ilink3_sbe_v8_5.terminate.dissect = function(buffer, offset, packet, parent)
  if show.terminate then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.terminate, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.terminate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.terminate.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.terminate.fields(buffer, offset, packet, parent)
  end
end

-- Keep Alive Interval Lapsed
cme_futures_ilink3_sbe_v8_5.keep_alive_interval_lapsed = {}

-- Size: Keep Alive Interval Lapsed
cme_futures_ilink3_sbe_v8_5.keep_alive_interval_lapsed.size = 1

-- Display: Keep Alive Interval Lapsed
cme_futures_ilink3_sbe_v8_5.keep_alive_interval_lapsed.display = function(value)
  if value == 0 then
    return "Keep Alive Interval Lapsed: Not Lapsed (0)"
  end
  if value == 1 then
    return "Keep Alive Interval Lapsed: Lapsed (1)"
  end

  return "Keep Alive Interval Lapsed: Unknown("..value..")"
end

-- Dissect: Keep Alive Interval Lapsed
cme_futures_ilink3_sbe_v8_5.keep_alive_interval_lapsed.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.keep_alive_interval_lapsed.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.keep_alive_interval_lapsed.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.keep_alive_interval_lapsed, range, value, display)

  return offset + length, value
end

-- Fault Tolerance Indicator
cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator = {}

-- Size: Fault Tolerance Indicator
cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.size = 1

-- Display: Fault Tolerance Indicator
cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.display = function(value)
  if value == 255 then
    return "Fault Tolerance Indicator: No Value"
  end
  if value == 0 then
    return "Fault Tolerance Indicator: Backup (0)"
  end
  if value == 1 then
    return "Fault Tolerance Indicator: Primary (1)"
  end

  return "Fault Tolerance Indicator: Unknown("..value..")"
end

-- Dissect: Fault Tolerance Indicator
cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.fault_tolerance_indicator, range, value, display)

  return offset + length, value
end

-- Next Seq No
cme_futures_ilink3_sbe_v8_5.next_seq_no = {}

-- Size: Next Seq No
cme_futures_ilink3_sbe_v8_5.next_seq_no.size = 4

-- Display: Next Seq No
cme_futures_ilink3_sbe_v8_5.next_seq_no.display = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
cme_futures_ilink3_sbe_v8_5.next_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.next_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.next_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- Sequence
cme_futures_ilink3_sbe_v8_5.sequence = {}

-- Calculate size of: Sequence
cme_futures_ilink3_sbe_v8_5.sequence.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.next_seq_no.size

  index = index + cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.keep_alive_interval_lapsed.size

  return index
end

-- Display: Sequence
cme_futures_ilink3_sbe_v8_5.sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence
cme_futures_ilink3_sbe_v8_5.sequence.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = cme_futures_ilink3_sbe_v8_5.next_seq_no.dissect(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fault_tolerance_indicator = cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.dissect(buffer, index, packet, parent)

  -- Keep Alive Interval Lapsed: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, keep_alive_interval_lapsed = cme_futures_ilink3_sbe_v8_5.keep_alive_interval_lapsed.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence
cme_futures_ilink3_sbe_v8_5.sequence.dissect = function(buffer, offset, packet, parent)
  if show.sequence then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.sequence, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.sequence.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.sequence.fields(buffer, offset, packet, parent)
  end
end

-- Establishment Reject
cme_futures_ilink3_sbe_v8_5.establishment_reject = {}

-- Calculate size of: Establishment Reject
cme_futures_ilink3_sbe_v8_5.establishment_reject.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_timestamp.size

  index = index + cme_futures_ilink3_sbe_v8_5.next_seq_no.size

  index = index + cme_futures_ilink3_sbe_v8_5.error_codes.size

  index = index + cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  return index
end

-- Display: Establishment Reject
cme_futures_ilink3_sbe_v8_5.establishment_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establishment Reject
cme_futures_ilink3_sbe_v8_5.establishment_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String
  index, reason = cme_futures_ilink3_sbe_v8_5.reason.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = cme_futures_ilink3_sbe_v8_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = cme_futures_ilink3_sbe_v8_5.next_seq_no.dissect(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index, error_codes = cme_futures_ilink3_sbe_v8_5.error_codes.dissect(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fault_tolerance_indicator = cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establishment Reject
cme_futures_ilink3_sbe_v8_5.establishment_reject.dissect = function(buffer, offset, packet, parent)
  if show.establishment_reject then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.establishment_reject, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.establishment_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.establishment_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.establishment_reject.fields(buffer, offset, packet, parent)
  end
end

-- Secret Key Secure Id Expiration
cme_futures_ilink3_sbe_v8_5.secret_key_secure_id_expiration = {}

-- Size: Secret Key Secure Id Expiration
cme_futures_ilink3_sbe_v8_5.secret_key_secure_id_expiration.size = 2

-- Display: Secret Key Secure Id Expiration
cme_futures_ilink3_sbe_v8_5.secret_key_secure_id_expiration.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Secret Key Secure Id Expiration: No Value"
  end

  return "Secret Key Secure Id Expiration: "..value
end

-- Dissect: Secret Key Secure Id Expiration
cme_futures_ilink3_sbe_v8_5.secret_key_secure_id_expiration.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.secret_key_secure_id_expiration.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.secret_key_secure_id_expiration.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.secret_key_secure_id_expiration, range, value, display)

  return offset + length, value
end

-- Keep Alive Interval
cme_futures_ilink3_sbe_v8_5.keep_alive_interval = {}

-- Size: Keep Alive Interval
cme_futures_ilink3_sbe_v8_5.keep_alive_interval.size = 2

-- Display: Keep Alive Interval
cme_futures_ilink3_sbe_v8_5.keep_alive_interval.display = function(value)
  return "Keep Alive Interval: "..value
end

-- Dissect: Keep Alive Interval
cme_futures_ilink3_sbe_v8_5.keep_alive_interval.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.keep_alive_interval.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.keep_alive_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.keep_alive_interval, range, value, display)

  return offset + length, value
end

-- Previous Uuid
cme_futures_ilink3_sbe_v8_5.previous_uuid = {}

-- Size: Previous Uuid
cme_futures_ilink3_sbe_v8_5.previous_uuid.size = 8

-- Display: Previous Uuid
cme_futures_ilink3_sbe_v8_5.previous_uuid.display = function(value)
  return "Previous Uuid: "..value
end

-- Dissect: Previous Uuid
cme_futures_ilink3_sbe_v8_5.previous_uuid.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.previous_uuid.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_futures_ilink3_sbe_v8_5.previous_uuid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.previous_uuid, range, value, display)

  return offset + length, value
end

-- Previous Seq No
cme_futures_ilink3_sbe_v8_5.previous_seq_no = {}

-- Size: Previous Seq No
cme_futures_ilink3_sbe_v8_5.previous_seq_no.size = 4

-- Display: Previous Seq No
cme_futures_ilink3_sbe_v8_5.previous_seq_no.display = function(value)
  return "Previous Seq No: "..value
end

-- Dissect: Previous Seq No
cme_futures_ilink3_sbe_v8_5.previous_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.previous_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.previous_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.previous_seq_no, range, value, display)

  return offset + length, value
end

-- Establishment Ack
cme_futures_ilink3_sbe_v8_5.establishment_ack = {}

-- Calculate size of: Establishment Ack
cme_futures_ilink3_sbe_v8_5.establishment_ack.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_timestamp.size

  index = index + cme_futures_ilink3_sbe_v8_5.next_seq_no.size

  index = index + cme_futures_ilink3_sbe_v8_5.previous_seq_no.size

  index = index + cme_futures_ilink3_sbe_v8_5.previous_uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.keep_alive_interval.size

  index = index + cme_futures_ilink3_sbe_v8_5.secret_key_secure_id_expiration.size

  index = index + cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  return index
end

-- Display: Establishment Ack
cme_futures_ilink3_sbe_v8_5.establishment_ack.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establishment Ack
cme_futures_ilink3_sbe_v8_5.establishment_ack.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = cme_futures_ilink3_sbe_v8_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = cme_futures_ilink3_sbe_v8_5.next_seq_no.dissect(buffer, index, packet, parent)

  -- Previous Seq No: 4 Byte Unsigned Fixed Width Integer
  index, previous_seq_no = cme_futures_ilink3_sbe_v8_5.previous_seq_no.dissect(buffer, index, packet, parent)

  -- Previous Uuid: 8 Byte Unsigned Fixed Width Integer
  index, previous_uuid = cme_futures_ilink3_sbe_v8_5.previous_uuid.dissect(buffer, index, packet, parent)

  -- Keep Alive Interval: 2 Byte Unsigned Fixed Width Integer
  index, keep_alive_interval = cme_futures_ilink3_sbe_v8_5.keep_alive_interval.dissect(buffer, index, packet, parent)

  -- Secret Key Secure Id Expiration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, secret_key_secure_id_expiration = cme_futures_ilink3_sbe_v8_5.secret_key_secure_id_expiration.dissect(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fault_tolerance_indicator = cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establishment Ack
cme_futures_ilink3_sbe_v8_5.establishment_ack.dissect = function(buffer, offset, packet, parent)
  if show.establishment_ack then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.establishment_ack, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.establishment_ack.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.establishment_ack.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.establishment_ack.fields(buffer, offset, packet, parent)
  end
end

-- Var Data
cme_futures_ilink3_sbe_v8_5.var_data = {}

-- Display: Var Data
cme_futures_ilink3_sbe_v8_5.var_data.display = function(value)
  return "Var Data: "..value
end

-- Dissect runtime sized field: Var Data
cme_futures_ilink3_sbe_v8_5.var_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_ilink3_sbe_v8_5.var_data.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.var_data, range, value, display)

  return offset + size
end

-- Data Length
cme_futures_ilink3_sbe_v8_5.data_length = {}

-- Size: Data Length
cme_futures_ilink3_sbe_v8_5.data_length.size = 2

-- Display: Data Length
cme_futures_ilink3_sbe_v8_5.data_length.display = function(value)
  return "Data Length: "..value
end

-- Dissect: Data Length
cme_futures_ilink3_sbe_v8_5.data_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.data_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.data_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.data_length, range, value, display)

  return offset + length, value
end

-- Credentials
cme_futures_ilink3_sbe_v8_5.credentials = {}

-- Calculate size of: Credentials
cme_futures_ilink3_sbe_v8_5.credentials.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.data_length.size

  -- Parse runtime size of: Var Data
  index = index + buffer(offset + index - 2, 2):le_uint()

  return index
end

-- Display: Credentials
cme_futures_ilink3_sbe_v8_5.credentials.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Credentials
cme_futures_ilink3_sbe_v8_5.credentials.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data Length: 2 Byte Unsigned Fixed Width Integer
  index, data_length = cme_futures_ilink3_sbe_v8_5.data_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Data
  index, var_data = cme_futures_ilink3_sbe_v8_5.var_data.dissect(buffer, index, packet, parent, data_length)

  return index
end

-- Dissect: Credentials
cme_futures_ilink3_sbe_v8_5.credentials.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.credentials then
    local length = cme_futures_ilink3_sbe_v8_5.credentials.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.credentials.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.credentials, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.credentials.fields(buffer, offset, packet, parent)
end

-- Firm
cme_futures_ilink3_sbe_v8_5.firm = {}

-- Size: Firm
cme_futures_ilink3_sbe_v8_5.firm.size = 5

-- Display: Firm
cme_futures_ilink3_sbe_v8_5.firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm: No Value"
  end

  return "Firm: "..value
end

-- Dissect: Firm
cme_futures_ilink3_sbe_v8_5.firm.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.firm.size
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

  local display = cme_futures_ilink3_sbe_v8_5.firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.firm, range, value, display)

  return offset + length, value
end

-- Session
cme_futures_ilink3_sbe_v8_5.session = {}

-- Size: Session
cme_futures_ilink3_sbe_v8_5.session.size = 3

-- Display: Session
cme_futures_ilink3_sbe_v8_5.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
cme_futures_ilink3_sbe_v8_5.session.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.session.size
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

  local display = cme_futures_ilink3_sbe_v8_5.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.session, range, value, display)

  return offset + length, value
end

-- Trading System Vendor
cme_futures_ilink3_sbe_v8_5.trading_system_vendor = {}

-- Size: Trading System Vendor
cme_futures_ilink3_sbe_v8_5.trading_system_vendor.size = 10

-- Display: Trading System Vendor
cme_futures_ilink3_sbe_v8_5.trading_system_vendor.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading System Vendor: No Value"
  end

  return "Trading System Vendor: "..value
end

-- Dissect: Trading System Vendor
cme_futures_ilink3_sbe_v8_5.trading_system_vendor.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.trading_system_vendor.size
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

  local display = cme_futures_ilink3_sbe_v8_5.trading_system_vendor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trading_system_vendor, range, value, display)

  return offset + length, value
end

-- Trading System Version
cme_futures_ilink3_sbe_v8_5.trading_system_version = {}

-- Size: Trading System Version
cme_futures_ilink3_sbe_v8_5.trading_system_version.size = 10

-- Display: Trading System Version
cme_futures_ilink3_sbe_v8_5.trading_system_version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading System Version: No Value"
  end

  return "Trading System Version: "..value
end

-- Dissect: Trading System Version
cme_futures_ilink3_sbe_v8_5.trading_system_version.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.trading_system_version.size
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

  local display = cme_futures_ilink3_sbe_v8_5.trading_system_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trading_system_version, range, value, display)

  return offset + length, value
end

-- Trading System Name
cme_futures_ilink3_sbe_v8_5.trading_system_name = {}

-- Size: Trading System Name
cme_futures_ilink3_sbe_v8_5.trading_system_name.size = 30

-- Display: Trading System Name
cme_futures_ilink3_sbe_v8_5.trading_system_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading System Name: No Value"
  end

  return "Trading System Name: "..value
end

-- Dissect: Trading System Name
cme_futures_ilink3_sbe_v8_5.trading_system_name.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.trading_system_name.size
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

  local display = cme_futures_ilink3_sbe_v8_5.trading_system_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.trading_system_name, range, value, display)

  return offset + length, value
end

-- Access Key Id
cme_futures_ilink3_sbe_v8_5.access_key_id = {}

-- Size: Access Key Id
cme_futures_ilink3_sbe_v8_5.access_key_id.size = 20

-- Display: Access Key Id
cme_futures_ilink3_sbe_v8_5.access_key_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Access Key Id: No Value"
  end

  return "Access Key Id: "..value
end

-- Dissect: Access Key Id
cme_futures_ilink3_sbe_v8_5.access_key_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.access_key_id.size
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

  local display = cme_futures_ilink3_sbe_v8_5.access_key_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.access_key_id, range, value, display)

  return offset + length, value
end

-- Hmac Signature
cme_futures_ilink3_sbe_v8_5.hmac_signature = {}

-- Size: Hmac Signature
cme_futures_ilink3_sbe_v8_5.hmac_signature.size = 32

-- Display: Hmac Signature
cme_futures_ilink3_sbe_v8_5.hmac_signature.display = function(value)
  return "Hmac Signature: "..value
end

-- Dissect: Hmac Signature
cme_futures_ilink3_sbe_v8_5.hmac_signature.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.hmac_signature.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cme_futures_ilink3_sbe_v8_5.hmac_signature.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.hmac_signature, range, value, display)

  return offset + length, value
end

-- Establish
cme_futures_ilink3_sbe_v8_5.establish = {}

-- Calculate size of: Establish
cme_futures_ilink3_sbe_v8_5.establish.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.hmac_signature.size

  index = index + cme_futures_ilink3_sbe_v8_5.access_key_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.trading_system_name.size

  index = index + cme_futures_ilink3_sbe_v8_5.trading_system_version.size

  index = index + cme_futures_ilink3_sbe_v8_5.trading_system_vendor.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_timestamp.size

  index = index + cme_futures_ilink3_sbe_v8_5.next_seq_no.size

  index = index + cme_futures_ilink3_sbe_v8_5.session.size

  index = index + cme_futures_ilink3_sbe_v8_5.firm.size

  index = index + cme_futures_ilink3_sbe_v8_5.keep_alive_interval.size

  index = index + cme_futures_ilink3_sbe_v8_5.credentials.size(buffer, offset + index)

  return index
end

-- Display: Establish
cme_futures_ilink3_sbe_v8_5.establish.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Establish
cme_futures_ilink3_sbe_v8_5.establish.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hmac Signature: 32 Byte
  index, hmac_signature = cme_futures_ilink3_sbe_v8_5.hmac_signature.dissect(buffer, index, packet, parent)

  -- Access Key Id: 20 Byte Ascii String
  index, access_key_id = cme_futures_ilink3_sbe_v8_5.access_key_id.dissect(buffer, index, packet, parent)

  -- Trading System Name: 30 Byte Ascii String
  index, trading_system_name = cme_futures_ilink3_sbe_v8_5.trading_system_name.dissect(buffer, index, packet, parent)

  -- Trading System Version: 10 Byte Ascii String
  index, trading_system_version = cme_futures_ilink3_sbe_v8_5.trading_system_version.dissect(buffer, index, packet, parent)

  -- Trading System Vendor: 10 Byte Ascii String
  index, trading_system_vendor = cme_futures_ilink3_sbe_v8_5.trading_system_vendor.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = cme_futures_ilink3_sbe_v8_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = cme_futures_ilink3_sbe_v8_5.next_seq_no.dissect(buffer, index, packet, parent)

  -- Session: 3 Byte Ascii String
  index, session = cme_futures_ilink3_sbe_v8_5.session.dissect(buffer, index, packet, parent)

  -- Firm: 5 Byte Ascii String
  index, firm = cme_futures_ilink3_sbe_v8_5.firm.dissect(buffer, index, packet, parent)

  -- Keep Alive Interval: 2 Byte Unsigned Fixed Width Integer
  index, keep_alive_interval = cme_futures_ilink3_sbe_v8_5.keep_alive_interval.dissect(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = cme_futures_ilink3_sbe_v8_5.credentials.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish
cme_futures_ilink3_sbe_v8_5.establish.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.establish then
    local length = cme_futures_ilink3_sbe_v8_5.establish.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.establish.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.establish, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.establish.fields(buffer, offset, packet, parent)
end

-- Negotiation Reject
cme_futures_ilink3_sbe_v8_5.negotiation_reject = {}

-- Calculate size of: Negotiation Reject
cme_futures_ilink3_sbe_v8_5.negotiation_reject.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.reason.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_timestamp.size

  index = index + cme_futures_ilink3_sbe_v8_5.error_codes.size

  index = index + cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  return index
end

-- Display: Negotiation Reject
cme_futures_ilink3_sbe_v8_5.negotiation_reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiation Reject
cme_futures_ilink3_sbe_v8_5.negotiation_reject.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String
  index, reason = cme_futures_ilink3_sbe_v8_5.reason.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = cme_futures_ilink3_sbe_v8_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index, error_codes = cme_futures_ilink3_sbe_v8_5.error_codes.dissect(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fault_tolerance_indicator = cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Reject
cme_futures_ilink3_sbe_v8_5.negotiation_reject.dissect = function(buffer, offset, packet, parent)
  if show.negotiation_reject then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.negotiation_reject, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.negotiation_reject.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.negotiation_reject.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.negotiation_reject.fields(buffer, offset, packet, parent)
  end
end

-- Negotiation Response
cme_futures_ilink3_sbe_v8_5.negotiation_response = {}

-- Calculate size of: Negotiation Response
cme_futures_ilink3_sbe_v8_5.negotiation_response.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_timestamp.size

  index = index + cme_futures_ilink3_sbe_v8_5.secret_key_secure_id_expiration.size

  index = index + cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.size

  index = index + cme_futures_ilink3_sbe_v8_5.split_msg.size

  index = index + cme_futures_ilink3_sbe_v8_5.previous_seq_no.size

  index = index + cme_futures_ilink3_sbe_v8_5.previous_uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.credentials.size(buffer, offset + index)

  return index
end

-- Display: Negotiation Response
cme_futures_ilink3_sbe_v8_5.negotiation_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiation Response
cme_futures_ilink3_sbe_v8_5.negotiation_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = cme_futures_ilink3_sbe_v8_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Secret Key Secure Id Expiration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, secret_key_secure_id_expiration = cme_futures_ilink3_sbe_v8_5.secret_key_secure_id_expiration.dissect(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fault_tolerance_indicator = cme_futures_ilink3_sbe_v8_5.fault_tolerance_indicator.dissect(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = cme_futures_ilink3_sbe_v8_5.split_msg.dissect(buffer, index, packet, parent)

  -- Previous Seq No: 4 Byte Unsigned Fixed Width Integer
  index, previous_seq_no = cme_futures_ilink3_sbe_v8_5.previous_seq_no.dissect(buffer, index, packet, parent)

  -- Previous Uuid: 8 Byte Unsigned Fixed Width Integer
  index, previous_uuid = cme_futures_ilink3_sbe_v8_5.previous_uuid.dissect(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = cme_futures_ilink3_sbe_v8_5.credentials.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Response
cme_futures_ilink3_sbe_v8_5.negotiation_response.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.negotiation_response then
    local length = cme_futures_ilink3_sbe_v8_5.negotiation_response.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.negotiation_response.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.negotiation_response, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.negotiation_response.fields(buffer, offset, packet, parent)
end

-- Negotiate
cme_futures_ilink3_sbe_v8_5.negotiate = {}

-- Calculate size of: Negotiate
cme_futures_ilink3_sbe_v8_5.negotiate.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.hmac_signature.size

  index = index + cme_futures_ilink3_sbe_v8_5.access_key_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.uuid.size

  index = index + cme_futures_ilink3_sbe_v8_5.request_timestamp.size

  index = index + cme_futures_ilink3_sbe_v8_5.session.size

  index = index + cme_futures_ilink3_sbe_v8_5.firm.size

  index = index + cme_futures_ilink3_sbe_v8_5.credentials.size(buffer, offset + index)

  return index
end

-- Display: Negotiate
cme_futures_ilink3_sbe_v8_5.negotiate.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Negotiate
cme_futures_ilink3_sbe_v8_5.negotiate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hmac Signature: 32 Byte
  index, hmac_signature = cme_futures_ilink3_sbe_v8_5.hmac_signature.dissect(buffer, index, packet, parent)

  -- Access Key Id: 20 Byte Ascii String
  index, access_key_id = cme_futures_ilink3_sbe_v8_5.access_key_id.dissect(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = cme_futures_ilink3_sbe_v8_5.uuid.dissect(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = cme_futures_ilink3_sbe_v8_5.request_timestamp.dissect(buffer, index, packet, parent)

  -- Session: 3 Byte Ascii String
  index, session = cme_futures_ilink3_sbe_v8_5.session.dissect(buffer, index, packet, parent)

  -- Firm: 5 Byte Ascii String
  index, firm = cme_futures_ilink3_sbe_v8_5.firm.dissect(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = cme_futures_ilink3_sbe_v8_5.credentials.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate
cme_futures_ilink3_sbe_v8_5.negotiate.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.negotiate then
    local length = cme_futures_ilink3_sbe_v8_5.negotiate.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cme_futures_ilink3_sbe_v8_5.negotiate.display(buffer, packet, parent)
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.negotiate, range, display)
  end

  return cme_futures_ilink3_sbe_v8_5.negotiate.fields(buffer, offset, packet, parent)
end

-- Payload
cme_futures_ilink3_sbe_v8_5.payload = {}

-- Calculate runtime size of: Payload
cme_futures_ilink3_sbe_v8_5.payload.size = function(buffer, offset, template_id)
  -- Size of Negotiate
  if template_id == 500 then
    return cme_futures_ilink3_sbe_v8_5.negotiate.size(buffer, offset)
  end
  -- Size of Negotiation Response
  if template_id == 501 then
    return cme_futures_ilink3_sbe_v8_5.negotiation_response.size(buffer, offset)
  end
  -- Size of Negotiation Reject
  if template_id == 502 then
    return cme_futures_ilink3_sbe_v8_5.negotiation_reject.size(buffer, offset)
  end
  -- Size of Establish
  if template_id == 503 then
    return cme_futures_ilink3_sbe_v8_5.establish.size(buffer, offset)
  end
  -- Size of Establishment Ack
  if template_id == 504 then
    return cme_futures_ilink3_sbe_v8_5.establishment_ack.size(buffer, offset)
  end
  -- Size of Establishment Reject
  if template_id == 505 then
    return cme_futures_ilink3_sbe_v8_5.establishment_reject.size(buffer, offset)
  end
  -- Size of Sequence
  if template_id == 506 then
    return cme_futures_ilink3_sbe_v8_5.sequence.size(buffer, offset)
  end
  -- Size of Terminate
  if template_id == 507 then
    return cme_futures_ilink3_sbe_v8_5.terminate.size(buffer, offset)
  end
  -- Size of Retransmit Request
  if template_id == 508 then
    return cme_futures_ilink3_sbe_v8_5.retransmit_request.size(buffer, offset)
  end
  -- Size of Retransmission
  if template_id == 509 then
    return cme_futures_ilink3_sbe_v8_5.retransmission.size(buffer, offset)
  end
  -- Size of Retransmit Reject
  if template_id == 510 then
    return cme_futures_ilink3_sbe_v8_5.retransmit_reject.size(buffer, offset)
  end
  -- Size of Not Applied
  if template_id == 513 then
    return cme_futures_ilink3_sbe_v8_5.not_applied.size(buffer, offset)
  end
  -- Size of New Order Single
  if template_id == 514 then
    return cme_futures_ilink3_sbe_v8_5.new_order_single.size(buffer, offset)
  end
  -- Size of Order Cancel Replace Request
  if template_id == 515 then
    return cme_futures_ilink3_sbe_v8_5.order_cancel_replace_request.size(buffer, offset)
  end
  -- Size of Order Cancel Request
  if template_id == 516 then
    return cme_futures_ilink3_sbe_v8_5.order_cancel_request.size(buffer, offset)
  end
  -- Size of Mass Quote
  if template_id == 517 then
    return cme_futures_ilink3_sbe_v8_5.mass_quote.size(buffer, offset)
  end
  -- Size of Party Details Definition Request
  if template_id == 518 then
    return cme_futures_ilink3_sbe_v8_5.party_details_definition_request.size(buffer, offset)
  end
  -- Size of Party Details Definition Request Ack
  if template_id == 519 then
    return cme_futures_ilink3_sbe_v8_5.party_details_definition_request_ack.size(buffer, offset)
  end
  -- Size of Business Reject
  if template_id == 521 then
    return cme_futures_ilink3_sbe_v8_5.business_reject.size(buffer, offset)
  end
  -- Size of Execution Report New
  if template_id == 522 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_new.size(buffer, offset)
  end
  -- Size of Execution Report Reject
  if template_id == 523 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_reject.size(buffer, offset)
  end
  -- Size of Execution Report Elimination
  if template_id == 524 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_elimination.size(buffer, offset)
  end
  -- Size of Execution Report Trade Outright
  if template_id == 525 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright.size(buffer, offset)
  end
  -- Size of Execution Report Trade Spread
  if template_id == 526 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread.size(buffer, offset)
  end
  -- Size of Execution Report Trade Spread Leg
  if template_id == 527 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg.size(buffer, offset)
  end
  -- Size of Quote Cancel
  if template_id == 528 then
    return cme_futures_ilink3_sbe_v8_5.quote_cancel.size(buffer, offset)
  end
  -- Size of Order Mass Action Request
  if template_id == 529 then
    return cme_futures_ilink3_sbe_v8_5.order_mass_action_request.size(buffer, offset)
  end
  -- Size of Order Mass Status Request
  if template_id == 530 then
    return cme_futures_ilink3_sbe_v8_5.order_mass_status_request.size(buffer, offset)
  end
  -- Size of Execution Report Modify
  if template_id == 531 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_modify.size(buffer, offset)
  end
  -- Size of Execution Report Status
  if template_id == 532 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_status.size(buffer, offset)
  end
  -- Size of Order Status Request
  if template_id == 533 then
    return cme_futures_ilink3_sbe_v8_5.order_status_request.size(buffer, offset)
  end
  -- Size of Execution Report Cancel
  if template_id == 534 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_cancel.size(buffer, offset)
  end
  -- Size of Order Cancel Reject
  if template_id == 535 then
    return cme_futures_ilink3_sbe_v8_5.order_cancel_reject.size(buffer, offset)
  end
  -- Size of Order Cancel Replace Reject
  if template_id == 536 then
    return cme_futures_ilink3_sbe_v8_5.order_cancel_replace_reject.size(buffer, offset)
  end
  -- Size of Party Details List Request
  if template_id == 537 then
    return cme_futures_ilink3_sbe_v8_5.party_details_list_request.size(buffer, offset)
  end
  -- Size of Party Details List Report
  if template_id == 538 then
    return cme_futures_ilink3_sbe_v8_5.party_details_list_report.size(buffer, offset)
  end
  -- Size of Execution Ack
  if template_id == 539 then
    return cme_futures_ilink3_sbe_v8_5.execution_ack.size(buffer, offset)
  end
  -- Size of Request For Quote
  if template_id == 543 then
    return cme_futures_ilink3_sbe_v8_5.request_for_quote.size(buffer, offset)
  end
  -- Size of New Order Cross
  if template_id == 544 then
    return cme_futures_ilink3_sbe_v8_5.new_order_cross.size(buffer, offset)
  end
  -- Size of Mass Quote Ack
  if template_id == 545 then
    return cme_futures_ilink3_sbe_v8_5.mass_quote_ack.size(buffer, offset)
  end
  -- Size of Request For Quote Ack
  if template_id == 546 then
    return cme_futures_ilink3_sbe_v8_5.request_for_quote_ack.size(buffer, offset)
  end
  -- Size of Execution Report Trade Addendum Outright
  if template_id == 548 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright.size(buffer, offset)
  end
  -- Size of Execution Report Trade Addendum Spread
  if template_id == 549 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread.size(buffer, offset)
  end
  -- Size of Execution Report Trade Addendum Spread Leg
  if template_id == 550 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg.size(buffer, offset)
  end
  -- Size of Security Definition Request
  if template_id == 560 then
    return cme_futures_ilink3_sbe_v8_5.security_definition_request.size(buffer, offset)
  end
  -- Size of Security Definition Response
  if template_id == 561 then
    return cme_futures_ilink3_sbe_v8_5.security_definition_response.size(buffer, offset)
  end
  -- Size of Order Mass Action Report
  if template_id == 562 then
    return cme_futures_ilink3_sbe_v8_5.order_mass_action_report.size(buffer, offset)
  end
  -- Size of Quote Cancel Ack
  if template_id == 563 then
    return cme_futures_ilink3_sbe_v8_5.quote_cancel_ack.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
cme_futures_ilink3_sbe_v8_5.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cme_futures_ilink3_sbe_v8_5.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Negotiate
  if template_id == 500 then
    return cme_futures_ilink3_sbe_v8_5.negotiate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Negotiation Response
  if template_id == 501 then
    return cme_futures_ilink3_sbe_v8_5.negotiation_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Negotiation Reject
  if template_id == 502 then
    return cme_futures_ilink3_sbe_v8_5.negotiation_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Establish
  if template_id == 503 then
    return cme_futures_ilink3_sbe_v8_5.establish.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Establishment Ack
  if template_id == 504 then
    return cme_futures_ilink3_sbe_v8_5.establishment_ack.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Establishment Reject
  if template_id == 505 then
    return cme_futures_ilink3_sbe_v8_5.establishment_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence
  if template_id == 506 then
    return cme_futures_ilink3_sbe_v8_5.sequence.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Terminate
  if template_id == 507 then
    return cme_futures_ilink3_sbe_v8_5.terminate.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request
  if template_id == 508 then
    return cme_futures_ilink3_sbe_v8_5.retransmit_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission
  if template_id == 509 then
    return cme_futures_ilink3_sbe_v8_5.retransmission.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Reject
  if template_id == 510 then
    return cme_futures_ilink3_sbe_v8_5.retransmit_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Not Applied
  if template_id == 513 then
    return cme_futures_ilink3_sbe_v8_5.not_applied.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single
  if template_id == 514 then
    return cme_futures_ilink3_sbe_v8_5.new_order_single.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request
  if template_id == 515 then
    return cme_futures_ilink3_sbe_v8_5.order_cancel_replace_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request
  if template_id == 516 then
    return cme_futures_ilink3_sbe_v8_5.order_cancel_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote
  if template_id == 517 then
    return cme_futures_ilink3_sbe_v8_5.mass_quote.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Party Details Definition Request
  if template_id == 518 then
    return cme_futures_ilink3_sbe_v8_5.party_details_definition_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Party Details Definition Request Ack
  if template_id == 519 then
    return cme_futures_ilink3_sbe_v8_5.party_details_definition_request_ack.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Business Reject
  if template_id == 521 then
    return cme_futures_ilink3_sbe_v8_5.business_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New
  if template_id == 522 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_new.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Reject
  if template_id == 523 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Elimination
  if template_id == 524 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_elimination.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Outright
  if template_id == 525 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_outright.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Spread
  if template_id == 526 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Spread Leg
  if template_id == 527 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_spread_leg.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancel
  if template_id == 528 then
    return cme_futures_ilink3_sbe_v8_5.quote_cancel.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Action Request
  if template_id == 529 then
    return cme_futures_ilink3_sbe_v8_5.order_mass_action_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Status Request
  if template_id == 530 then
    return cme_futures_ilink3_sbe_v8_5.order_mass_status_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Modify
  if template_id == 531 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_modify.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Status
  if template_id == 532 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Status Request
  if template_id == 533 then
    return cme_futures_ilink3_sbe_v8_5.order_status_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Cancel
  if template_id == 534 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_cancel.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject
  if template_id == 535 then
    return cme_futures_ilink3_sbe_v8_5.order_cancel_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Reject
  if template_id == 536 then
    return cme_futures_ilink3_sbe_v8_5.order_cancel_replace_reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Party Details List Request
  if template_id == 537 then
    return cme_futures_ilink3_sbe_v8_5.party_details_list_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Party Details List Report
  if template_id == 538 then
    return cme_futures_ilink3_sbe_v8_5.party_details_list_report.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Ack
  if template_id == 539 then
    return cme_futures_ilink3_sbe_v8_5.execution_ack.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote
  if template_id == 543 then
    return cme_futures_ilink3_sbe_v8_5.request_for_quote.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross
  if template_id == 544 then
    return cme_futures_ilink3_sbe_v8_5.new_order_cross.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Ack
  if template_id == 545 then
    return cme_futures_ilink3_sbe_v8_5.mass_quote_ack.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote Ack
  if template_id == 546 then
    return cme_futures_ilink3_sbe_v8_5.request_for_quote_ack.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Addendum Outright
  if template_id == 548 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_outright.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Addendum Spread
  if template_id == 549 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Addendum Spread Leg
  if template_id == 550 then
    return cme_futures_ilink3_sbe_v8_5.execution_report_trade_addendum_spread_leg.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Request
  if template_id == 560 then
    return cme_futures_ilink3_sbe_v8_5.security_definition_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Response
  if template_id == 561 then
    return cme_futures_ilink3_sbe_v8_5.security_definition_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Action Report
  if template_id == 562 then
    return cme_futures_ilink3_sbe_v8_5.order_mass_action_report.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancel Ack
  if template_id == 563 then
    return cme_futures_ilink3_sbe_v8_5.quote_cancel_ack.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cme_futures_ilink3_sbe_v8_5.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return cme_futures_ilink3_sbe_v8_5.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = cme_futures_ilink3_sbe_v8_5.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cme_futures_ilink3_sbe_v8_5.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.payload, range, display)

  return cme_futures_ilink3_sbe_v8_5.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
cme_futures_ilink3_sbe_v8_5.version = {}

-- Size: Version
cme_futures_ilink3_sbe_v8_5.version.size = 2

-- Display: Version
cme_futures_ilink3_sbe_v8_5.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
cme_futures_ilink3_sbe_v8_5.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_futures_ilink3_sbe_v8_5.schema_id = {}

-- Size: Schema Id
cme_futures_ilink3_sbe_v8_5.schema_id.size = 2

-- Display: Schema Id
cme_futures_ilink3_sbe_v8_5.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
cme_futures_ilink3_sbe_v8_5.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
cme_futures_ilink3_sbe_v8_5.template_id = {}

-- Size: Template Id
cme_futures_ilink3_sbe_v8_5.template_id.size = 2

-- Display: Template Id
cme_futures_ilink3_sbe_v8_5.template_id.display = function(value)
  if value == 500 then
    return "Template Id: Negotiate (500)"
  end
  if value == 501 then
    return "Template Id: Negotiation Response (501)"
  end
  if value == 502 then
    return "Template Id: Negotiation Reject (502)"
  end
  if value == 503 then
    return "Template Id: Establish (503)"
  end
  if value == 504 then
    return "Template Id: Establishment Ack (504)"
  end
  if value == 505 then
    return "Template Id: Establishment Reject (505)"
  end
  if value == 506 then
    return "Template Id: Sequence (506)"
  end
  if value == 507 then
    return "Template Id: Terminate (507)"
  end
  if value == 508 then
    return "Template Id: Retransmit Request (508)"
  end
  if value == 509 then
    return "Template Id: Retransmission (509)"
  end
  if value == 510 then
    return "Template Id: Retransmit Reject (510)"
  end
  if value == 513 then
    return "Template Id: Not Applied (513)"
  end
  if value == 514 then
    return "Template Id: New Order Single (514)"
  end
  if value == 515 then
    return "Template Id: Order Cancel Replace Request (515)"
  end
  if value == 516 then
    return "Template Id: Order Cancel Request (516)"
  end
  if value == 517 then
    return "Template Id: Mass Quote (517)"
  end
  if value == 518 then
    return "Template Id: Party Details Definition Request (518)"
  end
  if value == 519 then
    return "Template Id: Party Details Definition Request Ack (519)"
  end
  if value == 521 then
    return "Template Id: Business Reject (521)"
  end
  if value == 522 then
    return "Template Id: Execution Report New (522)"
  end
  if value == 523 then
    return "Template Id: Execution Report Reject (523)"
  end
  if value == 524 then
    return "Template Id: Execution Report Elimination (524)"
  end
  if value == 525 then
    return "Template Id: Execution Report Trade Outright (525)"
  end
  if value == 526 then
    return "Template Id: Execution Report Trade Spread (526)"
  end
  if value == 527 then
    return "Template Id: Execution Report Trade Spread Leg (527)"
  end
  if value == 528 then
    return "Template Id: Quote Cancel (528)"
  end
  if value == 529 then
    return "Template Id: Order Mass Action Request (529)"
  end
  if value == 530 then
    return "Template Id: Order Mass Status Request (530)"
  end
  if value == 531 then
    return "Template Id: Execution Report Modify (531)"
  end
  if value == 532 then
    return "Template Id: Execution Report Status (532)"
  end
  if value == 533 then
    return "Template Id: Order Status Request (533)"
  end
  if value == 534 then
    return "Template Id: Execution Report Cancel (534)"
  end
  if value == 535 then
    return "Template Id: Order Cancel Reject (535)"
  end
  if value == 536 then
    return "Template Id: Order Cancel Replace Reject (536)"
  end
  if value == 537 then
    return "Template Id: Party Details List Request (537)"
  end
  if value == 538 then
    return "Template Id: Party Details List Report (538)"
  end
  if value == 539 then
    return "Template Id: Execution Ack (539)"
  end
  if value == 543 then
    return "Template Id: Request For Quote (543)"
  end
  if value == 544 then
    return "Template Id: New Order Cross (544)"
  end
  if value == 545 then
    return "Template Id: Mass Quote Ack (545)"
  end
  if value == 546 then
    return "Template Id: Request For Quote Ack (546)"
  end
  if value == 548 then
    return "Template Id: Execution Report Trade Addendum Outright (548)"
  end
  if value == 549 then
    return "Template Id: Execution Report Trade Addendum Spread (549)"
  end
  if value == 550 then
    return "Template Id: Execution Report Trade Addendum Spread Leg (550)"
  end
  if value == 560 then
    return "Template Id: Security Definition Request (560)"
  end
  if value == 561 then
    return "Template Id: Security Definition Response (561)"
  end
  if value == 562 then
    return "Template Id: Order Mass Action Report (562)"
  end
  if value == 563 then
    return "Template Id: Quote Cancel Ack (563)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_futures_ilink3_sbe_v8_5.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.template_id, range, value, display)

  return offset + length, value
end

-- Message Header
cme_futures_ilink3_sbe_v8_5.message_header = {}

-- Calculate size of: Message Header
cme_futures_ilink3_sbe_v8_5.message_header.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.block_length.size

  index = index + cme_futures_ilink3_sbe_v8_5.template_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.schema_id.size

  index = index + cme_futures_ilink3_sbe_v8_5.version.size

  return index
end

-- Display: Message Header
cme_futures_ilink3_sbe_v8_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_futures_ilink3_sbe_v8_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_futures_ilink3_sbe_v8_5.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 48 values
  index, template_id = cme_futures_ilink3_sbe_v8_5.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = cme_futures_ilink3_sbe_v8_5.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = cme_futures_ilink3_sbe_v8_5.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_futures_ilink3_sbe_v8_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.message_header, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Encoding Type
cme_futures_ilink3_sbe_v8_5.encoding_type = {}

-- Size: Encoding Type
cme_futures_ilink3_sbe_v8_5.encoding_type.size = 2

-- Display: Encoding Type
cme_futures_ilink3_sbe_v8_5.encoding_type.display = function(value)
  return "Encoding Type: "..value
end

-- Dissect: Encoding Type
cme_futures_ilink3_sbe_v8_5.encoding_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.encoding_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.encoding_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- Message Length
cme_futures_ilink3_sbe_v8_5.message_length = {}

-- Size: Message Length
cme_futures_ilink3_sbe_v8_5.message_length.size = 2

-- Display: Message Length
cme_futures_ilink3_sbe_v8_5.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cme_futures_ilink3_sbe_v8_5.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_futures_ilink3_sbe_v8_5.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_futures_ilink3_sbe_v8_5.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.message_length, range, value, display)

  return offset + length, value
end

-- Simple Open Framing Header
cme_futures_ilink3_sbe_v8_5.simple_open_framing_header = {}

-- Calculate size of: Simple Open Framing Header
cme_futures_ilink3_sbe_v8_5.simple_open_framing_header.size = function(buffer, offset)
  local index = 0

  index = index + cme_futures_ilink3_sbe_v8_5.message_length.size

  index = index + cme_futures_ilink3_sbe_v8_5.encoding_type.size

  return index
end

-- Display: Simple Open Framing Header
cme_futures_ilink3_sbe_v8_5.simple_open_framing_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Open Framing Header
cme_futures_ilink3_sbe_v8_5.simple_open_framing_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cme_futures_ilink3_sbe_v8_5.message_length.dissect(buffer, index, packet, parent)

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index, encoding_type = cme_futures_ilink3_sbe_v8_5.encoding_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Open Framing Header
cme_futures_ilink3_sbe_v8_5.simple_open_framing_header.dissect = function(buffer, offset, packet, parent)
  if show.simple_open_framing_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.simple_open_framing_header, buffer(offset, 0))
    local index = cme_futures_ilink3_sbe_v8_5.simple_open_framing_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_futures_ilink3_sbe_v8_5.simple_open_framing_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_futures_ilink3_sbe_v8_5.simple_open_framing_header.fields(buffer, offset, packet, parent)
  end
end

-- Simple Open Frame
cme_futures_ilink3_sbe_v8_5.simple_open_frame = {}

-- Display: Simple Open Frame
cme_futures_ilink3_sbe_v8_5.simple_open_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Open Frame
cme_futures_ilink3_sbe_v8_5.simple_open_frame.fields = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  local index = offset

  -- Simple Open Framing Header: Struct of 2 fields
  index, simple_open_framing_header = cme_futures_ilink3_sbe_v8_5.simple_open_framing_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_futures_ilink3_sbe_v8_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 48 branches
  index = cme_futures_ilink3_sbe_v8_5.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Simple Open Frame
cme_futures_ilink3_sbe_v8_5.simple_open_frame.dissect = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  local index = offset + size_of_simple_open_frame

  -- Optionally add group/struct element to protocol tree
  if show.simple_open_frame then
    parent = parent:add(omi_cme_futures_ilink3_sbe_v8_5.fields.simple_open_frame, buffer(offset, 0))
    local current = cme_futures_ilink3_sbe_v8_5.simple_open_frame.fields(buffer, offset, packet, parent, size_of_simple_open_frame)
    parent:set_len(size_of_simple_open_frame)
    local display = cme_futures_ilink3_sbe_v8_5.simple_open_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_futures_ilink3_sbe_v8_5.simple_open_frame.fields(buffer, offset, packet, parent, size_of_simple_open_frame)

    return index
  end
end

-- Remaining Bytes For: Simple Open Frame
local simple_open_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < cme_futures_ilink3_sbe_v8_5.simple_open_framing_header.size(buffer, index) then
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
cme_futures_ilink3_sbe_v8_5.packet = {}

-- Dissect Packet
cme_futures_ilink3_sbe_v8_5.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Simple Open Frame
  local end_of_payload = buffer:len()

  -- Simple Open Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_simple_open_frame = simple_open_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = cme_futures_ilink3_sbe_v8_5.simple_open_frame.dissect(buffer, index, packet, parent, size_of_simple_open_frame)
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
function omi_cme_futures_ilink3_sbe_v8_5.init()
end

-- Dissector for Cme Futures iLink3 Sbe 8.5
function omi_cme_futures_ilink3_sbe_v8_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cme_futures_ilink3_sbe_v8_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_futures_ilink3_sbe_v8_5, buffer(), omi_cme_futures_ilink3_sbe_v8_5.description, "("..buffer:len().." Bytes)")
  return cme_futures_ilink3_sbe_v8_5.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_cme_futures_ilink3_sbe_v8_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cme_futures_ilink3_sbe_v8_5.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
cme_futures_ilink3_sbe_v8_5.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 8 then
    return true
  end

  return false
end

-- Verify Version Field
cme_futures_ilink3_sbe_v8_5.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(10, 2):le_uint()

  if value == 5 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Futures iLink3 Sbe 8.5
local function omi_cme_futures_ilink3_sbe_v8_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_futures_ilink3_sbe_v8_5.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_futures_ilink3_sbe_v8_5.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not cme_futures_ilink3_sbe_v8_5.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_futures_ilink3_sbe_v8_5
  omi_cme_futures_ilink3_sbe_v8_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures iLink3 Sbe 8.5
omi_cme_futures_ilink3_sbe_v8_5:register_heuristic("tcp", omi_cme_futures_ilink3_sbe_v8_5_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 8.5
--   Date: Thursday, February 27, 2020
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
