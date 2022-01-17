-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures iLink3 Sbe 8.7 Protocol
local cme_futures_ilink3_sbe_v8_7 = Proto("Cme.Futures.iLink3.Sbe.v8.7.Lua", "Cme Futures iLink3 Sbe 8.7")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Futures iLink3 Sbe 8.7 Fields
cme_futures_ilink3_sbe_v8_7.fields.access_key_id = ProtoField.new("Access Key Id", "cme.futures.ilink3.sbe.v8.7.accesskeyid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.affected_order_id = ProtoField.new("Affected Order Id", "cme.futures.ilink3.sbe.v8.7.affectedorderid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.affected_orders_group = ProtoField.new("Affected Orders Group", "cme.futures.ilink3.sbe.v8.7.affectedordersgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.affected_orders_groups = ProtoField.new("Affected Orders Groups", "cme.futures.ilink3.sbe.v8.7.affectedordersgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "cme.futures.ilink3.sbe.v8.7.aggressorindicator", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.aon = ProtoField.new("Aon", "cme.futures.ilink3.sbe.v8.7.aon", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
cme_futures_ilink3_sbe_v8_7.fields.auto_quote_request = ProtoField.new("Auto Quote Request", "cme.futures.ilink3.sbe.v8.7.autoquoterequest", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.avg_px_group_id = ProtoField.new("Avg Px Group Id", "cme.futures.ilink3.sbe.v8.7.avgpxgroupid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.avg_px_indicator = ProtoField.new("Avg Px Indicator", "cme.futures.ilink3.sbe.v8.7.avgpxindicator", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.benchmark_price = ProtoField.new("Benchmark Price", "cme.futures.ilink3.sbe.v8.7.benchmarkprice", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.bid_px = ProtoField.new("Bid Px", "cme.futures.ilink3.sbe.v8.7.bidpx", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.bid_size = ProtoField.new("Bid Size", "cme.futures.ilink3.sbe.v8.7.bidsize", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.block_length = ProtoField.new("Block Length", "cme.futures.ilink3.sbe.v8.7.blocklength", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.business_reject = ProtoField.new("Business Reject", "cme.futures.ilink3.sbe.v8.7.businessreject", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "cme.futures.ilink3.sbe.v8.7.businessrejectreason", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "cme.futures.ilink3.sbe.v8.7.businessrejectrefid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.calculated_ccy_last_qty = ProtoField.new("Calculated Ccy Last Qty", "cme.futures.ilink3.sbe.v8.7.calculatedccylastqty", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.cancelled_symbol = ProtoField.new("Cancelled Symbol", "cme.futures.ilink3.sbe.v8.7.cancelledsymbol", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.clearing_account_type = ProtoField.new("Clearing Account Type", "cme.futures.ilink3.sbe.v8.7.clearingaccounttype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.clearing_trade_price_type = ProtoField.new("Clearing Trade Price Type", "cme.futures.ilink3.sbe.v8.7.clearingtradepricetype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.clordid = ProtoField.new("ClOrdId", "cme.futures.ilink3.sbe.v8.7.clordid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.cmta_giveup_cd = ProtoField.new("Cmta Giveup Cd", "cme.futures.ilink3.sbe.v8.7.cmtagiveupcd", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.contra_calculated_ccy_last_qty = ProtoField.new("Contra Calculated Ccy Last Qty", "cme.futures.ilink3.sbe.v8.7.contracalculatedccylastqty", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.contra_gross_trade_amt = ProtoField.new("Contra Gross Trade Amt", "cme.futures.ilink3.sbe.v8.7.contragrosstradeamt", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.credentials = ProtoField.new("Credentials", "cme.futures.ilink3.sbe.v8.7.credentials", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.cross_id = ProtoField.new("Cross Id", "cme.futures.ilink3.sbe.v8.7.crossid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.cross_id_optional = ProtoField.new("Cross Id Optional", "cme.futures.ilink3.sbe.v8.7.crossidoptional", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.cross_type = ProtoField.new("Cross Type", "cme.futures.ilink3.sbe.v8.7.crosstype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.cum_qty = ProtoField.new("Cum Qty", "cme.futures.ilink3.sbe.v8.7.cumqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.currency = ProtoField.new("Currency", "cme.futures.ilink3.sbe.v8.7.currency", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.cust_order_capacity = ProtoField.new("Cust Order Capacity", "cme.futures.ilink3.sbe.v8.7.custordercapacity", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "cme.futures.ilink3.sbe.v8.7.custorderhandlinginst", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.cxl_quantity = ProtoField.new("Cxl Quantity", "cme.futures.ilink3.sbe.v8.7.cxlquantity", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "cme.futures.ilink3.sbe.v8.7.cxlrejreason", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.data_length = ProtoField.new("Data Length", "cme.futures.ilink3.sbe.v8.7.datalength", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.day = ProtoField.new("Day", "cme.futures.ilink3.sbe.v8.7.day", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.delay_duration = ProtoField.new("Delay Duration", "cme.futures.ilink3.sbe.v8.7.delayduration", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.delay_to_time = ProtoField.new("Delay To Time", "cme.futures.ilink3.sbe.v8.7.delaytotime", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.discretion_price = ProtoField.new("Discretion Price", "cme.futures.ilink3.sbe.v8.7.discretionprice", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.display_qty = ProtoField.new("Display Qty", "cme.futures.ilink3.sbe.v8.7.displayqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.dk_reason = ProtoField.new("Dk Reason", "cme.futures.ilink3.sbe.v8.7.dkreason", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.encoding_type = ProtoField.new("Encoding Type", "cme.futures.ilink3.sbe.v8.7.encodingtype", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.end_date = ProtoField.new("End Date", "cme.futures.ilink3.sbe.v8.7.enddate", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.error_codes = ProtoField.new("Error Codes", "cme.futures.ilink3.sbe.v8.7.errorcodes", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.establish = ProtoField.new("Establish", "cme.futures.ilink3.sbe.v8.7.establish", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.establishment_ack = ProtoField.new("Establishment Ack", "cme.futures.ilink3.sbe.v8.7.establishmentack", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.establishment_reject = ProtoField.new("Establishment Reject", "cme.futures.ilink3.sbe.v8.7.establishmentreject", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.exchange_quote_req_id = ProtoField.new("Exchange Quote Req Id", "cme.futures.ilink3.sbe.v8.7.exchangequotereqid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.exec_ack_status = ProtoField.new("Exec Ack Status", "cme.futures.ilink3.sbe.v8.7.execackstatus", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.exec_id = ProtoField.new("Exec Id", "cme.futures.ilink3.sbe.v8.7.execid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.exec_inst = ProtoField.new("Exec Inst", "cme.futures.ilink3.sbe.v8.7.execinst", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "cme.futures.ilink3.sbe.v8.7.execrestatementreason", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.exec_type = ProtoField.new("Exec Type", "cme.futures.ilink3.sbe.v8.7.exectype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_ack = ProtoField.new("Execution Ack", "cme.futures.ilink3.sbe.v8.7.executionack", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_mode = ProtoField.new("Execution Mode", "cme.futures.ilink3.sbe.v8.7.executionmode", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_cancel = ProtoField.new("Execution Report Cancel", "cme.futures.ilink3.sbe.v8.7.executionreportcancel", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_elimination = ProtoField.new("Execution Report Elimination", "cme.futures.ilink3.sbe.v8.7.executionreportelimination", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_modify = ProtoField.new("Execution Report Modify", "cme.futures.ilink3.sbe.v8.7.executionreportmodify", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_new = ProtoField.new("Execution Report New", "cme.futures.ilink3.sbe.v8.7.executionreportnew", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_pending_cancel = ProtoField.new("Execution Report Pending Cancel", "cme.futures.ilink3.sbe.v8.7.executionreportpendingcancel", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_pending_replace = ProtoField.new("Execution Report Pending Replace", "cme.futures.ilink3.sbe.v8.7.executionreportpendingreplace", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_reject = ProtoField.new("Execution Report Reject", "cme.futures.ilink3.sbe.v8.7.executionreportreject", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_status = ProtoField.new("Execution Report Status", "cme.futures.ilink3.sbe.v8.7.executionreportstatus", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_outright = ProtoField.new("Execution Report Trade Addendum Outright", "cme.futures.ilink3.sbe.v8.7.executionreporttradeaddendumoutright", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_outright_order_event_group = ProtoField.new("Execution Report Trade Addendum Outright Order Event Group", "cme.futures.ilink3.sbe.v8.7.executionreporttradeaddendumoutrightordereventgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_outright_order_event_groups = ProtoField.new("Execution Report Trade Addendum Outright Order Event Groups", "cme.futures.ilink3.sbe.v8.7.executionreporttradeaddendumoutrightordereventgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread = ProtoField.new("Execution Report Trade Addendum Spread", "cme.futures.ilink3.sbe.v8.7.executionreporttradeaddendumspread", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_leg = ProtoField.new("Execution Report Trade Addendum Spread Leg", "cme.futures.ilink3.sbe.v8.7.executionreporttradeaddendumspreadleg", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_leg_group = ProtoField.new("Execution Report Trade Addendum Spread Leg Group", "cme.futures.ilink3.sbe.v8.7.executionreporttradeaddendumspreadleggroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_leg_groups = ProtoField.new("Execution Report Trade Addendum Spread Leg Groups", "cme.futures.ilink3.sbe.v8.7.executionreporttradeaddendumspreadleggroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_leg_order_event_group = ProtoField.new("Execution Report Trade Addendum Spread Leg Order Event Group", "cme.futures.ilink3.sbe.v8.7.executionreporttradeaddendumspreadlegordereventgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_leg_order_event_groups = ProtoField.new("Execution Report Trade Addendum Spread Leg Order Event Groups", "cme.futures.ilink3.sbe.v8.7.executionreporttradeaddendumspreadlegordereventgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_order_event_group = ProtoField.new("Execution Report Trade Addendum Spread Order Event Group", "cme.futures.ilink3.sbe.v8.7.executionreporttradeaddendumspreadordereventgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_order_event_groups = ProtoField.new("Execution Report Trade Addendum Spread Order Event Groups", "cme.futures.ilink3.sbe.v8.7.executionreporttradeaddendumspreadordereventgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_outright = ProtoField.new("Execution Report Trade Outright", "cme.futures.ilink3.sbe.v8.7.executionreporttradeoutright", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_outright_order_event_group = ProtoField.new("Execution Report Trade Outright Order Event Group", "cme.futures.ilink3.sbe.v8.7.executionreporttradeoutrightordereventgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_outright_order_event_groups = ProtoField.new("Execution Report Trade Outright Order Event Groups", "cme.futures.ilink3.sbe.v8.7.executionreporttradeoutrightordereventgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread = ProtoField.new("Execution Report Trade Spread", "cme.futures.ilink3.sbe.v8.7.executionreporttradespread", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_leg = ProtoField.new("Execution Report Trade Spread Leg", "cme.futures.ilink3.sbe.v8.7.executionreporttradespreadleg", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_leg_group = ProtoField.new("Execution Report Trade Spread Leg Group", "cme.futures.ilink3.sbe.v8.7.executionreporttradespreadleggroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_leg_groups = ProtoField.new("Execution Report Trade Spread Leg Groups", "cme.futures.ilink3.sbe.v8.7.executionreporttradespreadleggroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_leg_order_event_group = ProtoField.new("Execution Report Trade Spread Leg Order Event Group", "cme.futures.ilink3.sbe.v8.7.executionreporttradespreadlegordereventgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_leg_order_event_groups = ProtoField.new("Execution Report Trade Spread Leg Order Event Groups", "cme.futures.ilink3.sbe.v8.7.executionreporttradespreadlegordereventgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_order_event_group = ProtoField.new("Execution Report Trade Spread Order Event Group", "cme.futures.ilink3.sbe.v8.7.executionreporttradespreadordereventgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_order_event_groups = ProtoField.new("Execution Report Trade Spread Order Event Groups", "cme.futures.ilink3.sbe.v8.7.executionreporttradespreadordereventgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.executor = ProtoField.new("Executor", "cme.futures.ilink3.sbe.v8.7.executor", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.expiration_cycle = ProtoField.new("Expiration Cycle", "cme.futures.ilink3.sbe.v8.7.expirationcycle", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.expire_date = ProtoField.new("Expire Date", "cme.futures.ilink3.sbe.v8.7.expiredate", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.exponent = ProtoField.new("Exponent", "cme.futures.ilink3.sbe.v8.7.exponent", ftypes.INT8)
cme_futures_ilink3_sbe_v8_7.fields.fault_tolerance_indicator = ProtoField.new("Fault Tolerance Indicator", "cme.futures.ilink3.sbe.v8.7.faulttoleranceindicator", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.fill_exec_id = ProtoField.new("Fill Exec Id", "cme.futures.ilink3.sbe.v8.7.fillexecid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.fill_px = ProtoField.new("Fill Px", "cme.futures.ilink3.sbe.v8.7.fillpx", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.fill_qty = ProtoField.new("Fill Qty", "cme.futures.ilink3.sbe.v8.7.fillqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.fill_yield_type = ProtoField.new("Fill Yield Type", "cme.futures.ilink3.sbe.v8.7.fillyieldtype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.fills_group = ProtoField.new("Fills Group", "cme.futures.ilink3.sbe.v8.7.fillsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.fills_groups = ProtoField.new("Fills Groups", "cme.futures.ilink3.sbe.v8.7.fillsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.financial_instrument_full_name = ProtoField.new("Financial Instrument Full Name", "cme.futures.ilink3.sbe.v8.7.financialinstrumentfullname", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.firm = ProtoField.new("Firm", "cme.futures.ilink3.sbe.v8.7.firm", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.from_seq_no = ProtoField.new("From Seq No", "cme.futures.ilink3.sbe.v8.7.fromseqno", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.gross_trade_amt = ProtoField.new("Gross Trade Amt", "cme.futures.ilink3.sbe.v8.7.grosstradeamt", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.group_size = ProtoField.new("Group Size", "cme.futures.ilink3.sbe.v8.7.groupsize", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.hmac_signature = ProtoField.new("Hmac Signature", "cme.futures.ilink3.sbe.v8.7.hmacsignature", ftypes.BYTES)
cme_futures_ilink3_sbe_v8_7.fields.host_cross_id = ProtoField.new("Host Cross Id", "cme.futures.ilink3.sbe.v8.7.hostcrossid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.idm_short_code = ProtoField.new("Idm Short Code", "cme.futures.ilink3.sbe.v8.7.idmshortcode", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.keep_alive_interval = ProtoField.new("Keep Alive Interval", "cme.futures.ilink3.sbe.v8.7.keepaliveinterval", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.keep_alive_interval_lapsed = ProtoField.new("Keep Alive Interval Lapsed", "cme.futures.ilink3.sbe.v8.7.keepaliveintervallapsed", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.last_fragment = ProtoField.new("Last Fragment", "cme.futures.ilink3.sbe.v8.7.lastfragment", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.last_px = ProtoField.new("Last Px", "cme.futures.ilink3.sbe.v8.7.lastpx", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.last_qty = ProtoField.new("Last Qty", "cme.futures.ilink3.sbe.v8.7.lastqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.last_rpt_requested = ProtoField.new("Last Rpt Requested", "cme.futures.ilink3.sbe.v8.7.lastrptrequested", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.last_uuid = ProtoField.new("Last Uuid", "cme.futures.ilink3.sbe.v8.7.lastuuid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.leaves = ProtoField.new("Leaves", "cme.futures.ilink3.sbe.v8.7.leaves", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.leaves_qty_optional = ProtoField.new("Leaves Qty Optional", "cme.futures.ilink3.sbe.v8.7.leavesqtyoptional", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.leg_exec_id = ProtoField.new("Leg Exec Id", "cme.futures.ilink3.sbe.v8.7.legexecid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.leg_exec_ref_id = ProtoField.new("Leg Exec Ref Id", "cme.futures.ilink3.sbe.v8.7.legexecrefid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.leg_last_px = ProtoField.new("Leg Last Px", "cme.futures.ilink3.sbe.v8.7.leglastpx", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "cme.futures.ilink3.sbe.v8.7.leglastqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.leg_option_delta = ProtoField.new("Leg Option Delta", "cme.futures.ilink3.sbe.v8.7.legoptiondelta", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.leg_price = ProtoField.new("Leg Price", "cme.futures.ilink3.sbe.v8.7.legprice", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cme.futures.ilink3.sbe.v8.7.legratioqty", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.leg_security_id = ProtoField.new("Leg Security Id", "cme.futures.ilink3.sbe.v8.7.legsecurityid", ftypes.INT32)
cme_futures_ilink3_sbe_v8_7.fields.leg_side = ProtoField.new("Leg Side", "cme.futures.ilink3.sbe.v8.7.legside", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.leg_trade_id = ProtoField.new("Leg Trade Id", "cme.futures.ilink3.sbe.v8.7.legtradeid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.leg_trade_ref_id = ProtoField.new("Leg Trade Ref Id", "cme.futures.ilink3.sbe.v8.7.legtraderefid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "cme.futures.ilink3.sbe.v8.7.liquidityflag", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.list_update_action = ProtoField.new("List Update Action", "cme.futures.ilink3.sbe.v8.7.listupdateaction", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.location = ProtoField.new("Location", "cme.futures.ilink3.sbe.v8.7.location", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.location_optional = ProtoField.new("Location Optional", "cme.futures.ilink3.sbe.v8.7.locationoptional", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.managed_order = ProtoField.new("Managed Order", "cme.futures.ilink3.sbe.v8.7.managedorder", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.mantissa = ProtoField.new("Mantissa", "cme.futures.ilink3.sbe.v8.7.mantissa", ftypes.INT64)
cme_futures_ilink3_sbe_v8_7.fields.mantissa_32 = ProtoField.new("Mantissa 32", "cme.futures.ilink3.sbe.v8.7.mantissa32", ftypes.INT32)
cme_futures_ilink3_sbe_v8_7.fields.manual_order_indicator = ProtoField.new("Manual Order Indicator", "cme.futures.ilink3.sbe.v8.7.manualorderindicator", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.manual_order_indicator_optional = ProtoField.new("Manual Order Indicator Optional", "cme.futures.ilink3.sbe.v8.7.manualorderindicatoroptional", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.market_segment_id = ProtoField.new("Market Segment Id", "cme.futures.ilink3.sbe.v8.7.marketsegmentid", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.mass_action_ord_typ = ProtoField.new("Mass Action Ord Typ", "cme.futures.ilink3.sbe.v8.7.massactionordtyp", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.mass_action_reject_reason = ProtoField.new("Mass Action Reject Reason", "cme.futures.ilink3.sbe.v8.7.massactionrejectreason", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.mass_action_report_id = ProtoField.new("Mass Action Report Id", "cme.futures.ilink3.sbe.v8.7.massactionreportid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.mass_action_response = ProtoField.new("Mass Action Response", "cme.futures.ilink3.sbe.v8.7.massactionresponse", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.mass_action_scope = ProtoField.new("Mass Action Scope", "cme.futures.ilink3.sbe.v8.7.massactionscope", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.mass_cancel_request_type = ProtoField.new("Mass Cancel Request Type", "cme.futures.ilink3.sbe.v8.7.masscancelrequesttype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.mass_cancel_tif = ProtoField.new("Mass Cancel Tif", "cme.futures.ilink3.sbe.v8.7.masscanceltif", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.mass_quote = ProtoField.new("Mass Quote", "cme.futures.ilink3.sbe.v8.7.massquote", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.mass_quote_ack = ProtoField.new("Mass Quote Ack", "cme.futures.ilink3.sbe.v8.7.massquoteack", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.mass_quote_ack_entry_group = ProtoField.new("Mass Quote Ack Entry Group", "cme.futures.ilink3.sbe.v8.7.massquoteackentrygroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.mass_quote_ack_entry_groups = ProtoField.new("Mass Quote Ack Entry Groups", "cme.futures.ilink3.sbe.v8.7.massquoteackentrygroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.mass_quote_entry_group = ProtoField.new("Mass Quote Entry Group", "cme.futures.ilink3.sbe.v8.7.massquoteentrygroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.mass_quote_entry_groups = ProtoField.new("Mass Quote Entry Groups", "cme.futures.ilink3.sbe.v8.7.massquoteentrygroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.mass_status_req_id = ProtoField.new("Mass Status Req Id", "cme.futures.ilink3.sbe.v8.7.massstatusreqid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.mass_status_req_id_optional = ProtoField.new("Mass Status Req Id Optional", "cme.futures.ilink3.sbe.v8.7.massstatusreqidoptional", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.mass_status_req_type = ProtoField.new("Mass Status Req Type", "cme.futures.ilink3.sbe.v8.7.massstatusreqtype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.mass_status_tif = ProtoField.new("Mass Status Tif", "cme.futures.ilink3.sbe.v8.7.massstatustif", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.maturity_date = ProtoField.new("Maturity Date", "cme.futures.ilink3.sbe.v8.7.maturitydate", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.futures.ilink3.sbe.v8.7.maturitymonthyear", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.max_no_of_substitutions = ProtoField.new("Max No Of Substitutions", "cme.futures.ilink3.sbe.v8.7.maxnoofsubstitutions", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.md_trade_entry_id = ProtoField.new("Md Trade Entry Id", "cme.futures.ilink3.sbe.v8.7.mdtradeentryid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.memo = ProtoField.new("Memo", "cme.futures.ilink3.sbe.v8.7.memo", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.message_header = ProtoField.new("Message Header", "cme.futures.ilink3.sbe.v8.7.messageheader", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.message_length = ProtoField.new("Message Length", "cme.futures.ilink3.sbe.v8.7.messagelength", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.min_qty = ProtoField.new("Min Qty", "cme.futures.ilink3.sbe.v8.7.minqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.mm_protection_reset = ProtoField.new("Mm Protection Reset", "cme.futures.ilink3.sbe.v8.7.mmprotectionreset", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.month = ProtoField.new("Month", "cme.futures.ilink3.sbe.v8.7.month", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.msg_count = ProtoField.new("Msg Count", "cme.futures.ilink3.sbe.v8.7.msgcount", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.msg_count_16 = ProtoField.new("Msg Count 16", "cme.futures.ilink3.sbe.v8.7.msgcount16", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.negotiate = ProtoField.new("Negotiate", "cme.futures.ilink3.sbe.v8.7.negotiate", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.negotiation_reject = ProtoField.new("Negotiation Reject", "cme.futures.ilink3.sbe.v8.7.negotiationreject", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.negotiation_response = ProtoField.new("Negotiation Response", "cme.futures.ilink3.sbe.v8.7.negotiationresponse", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.new_order_cross = ProtoField.new("New Order Cross", "cme.futures.ilink3.sbe.v8.7.newordercross", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.new_order_single = ProtoField.new("New Order Single", "cme.futures.ilink3.sbe.v8.7.newordersingle", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.next_seq_no = ProtoField.new("Next Seq No", "cme.futures.ilink3.sbe.v8.7.nextseqno", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.nh = ProtoField.new("Nh", "cme.futures.ilink3.sbe.v8.7.nh", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
cme_futures_ilink3_sbe_v8_7.fields.no_processed_entries = ProtoField.new("No Processed Entries", "cme.futures.ilink3.sbe.v8.7.noprocessedentries", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.no_processed_entries_32 = ProtoField.new("No Processed Entries 32", "cme.futures.ilink3.sbe.v8.7.noprocessedentries32", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.not_applied = ProtoField.new("Not Applied", "cme.futures.ilink3.sbe.v8.7.notapplied", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.num_in_group = ProtoField.new("Num In Group", "cme.futures.ilink3.sbe.v8.7.numingroup", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.ob = ProtoField.new("Ob", "cme.futures.ilink3.sbe.v8.7.ob", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
cme_futures_ilink3_sbe_v8_7.fields.offer_px = ProtoField.new("Offer Px", "cme.futures.ilink3.sbe.v8.7.offerpx", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.offer_size = ProtoField.new("Offer Size", "cme.futures.ilink3.sbe.v8.7.offersize", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.ofm_override = ProtoField.new("Ofm Override", "cme.futures.ilink3.sbe.v8.7.ofmoverride", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.option_delta = ProtoField.new("Option Delta", "cme.futures.ilink3.sbe.v8.7.optiondelta", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "cme.futures.ilink3.sbe.v8.7.ordrejreason", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.ord_status = ProtoField.new("Ord Status", "cme.futures.ilink3.sbe.v8.7.ordstatus", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.ord_status_req_id = ProtoField.new("Ord Status Req Id", "cme.futures.ilink3.sbe.v8.7.ordstatusreqid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.ord_status_req_id_optional = ProtoField.new("Ord Status Req Id Optional", "cme.futures.ilink3.sbe.v8.7.ordstatusreqidoptional", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.ord_status_req_type = ProtoField.new("Ord Status Req Type", "cme.futures.ilink3.sbe.v8.7.ordstatusreqtype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.ord_status_trd = ProtoField.new("Ord Status Trd", "cme.futures.ilink3.sbe.v8.7.ordstatustrd", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.ord_status_trd_cxl = ProtoField.new("Ord Status Trd Cxl", "cme.futures.ilink3.sbe.v8.7.ordstatustrdcxl", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.ord_type = ProtoField.new("Ord Type", "cme.futures.ilink3.sbe.v8.7.ordtype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.ord_type_optional = ProtoField.new("Ord Type Optional", "cme.futures.ilink3.sbe.v8.7.ordtypeoptional", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.order_cancel_reject = ProtoField.new("Order Cancel Reject", "cme.futures.ilink3.sbe.v8.7.ordercancelreject", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.order_cancel_replace_reject = ProtoField.new("Order Cancel Replace Reject", "cme.futures.ilink3.sbe.v8.7.ordercancelreplacereject", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.order_cancel_replace_request = ProtoField.new("Order Cancel Replace Request", "cme.futures.ilink3.sbe.v8.7.ordercancelreplacerequest", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.order_cancel_request = ProtoField.new("Order Cancel Request", "cme.futures.ilink3.sbe.v8.7.ordercancelrequest", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.order_event_exec_id = ProtoField.new("Order Event Exec Id", "cme.futures.ilink3.sbe.v8.7.ordereventexecid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.order_event_px = ProtoField.new("Order Event Px", "cme.futures.ilink3.sbe.v8.7.ordereventpx", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.order_event_qty = ProtoField.new("Order Event Qty", "cme.futures.ilink3.sbe.v8.7.ordereventqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.order_event_reason = ProtoField.new("Order Event Reason", "cme.futures.ilink3.sbe.v8.7.ordereventreason", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.order_event_text = ProtoField.new("Order Event Text", "cme.futures.ilink3.sbe.v8.7.ordereventtext", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.order_event_type = ProtoField.new("Order Event Type", "cme.futures.ilink3.sbe.v8.7.ordereventtype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.order_id = ProtoField.new("Order Id", "cme.futures.ilink3.sbe.v8.7.orderid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.order_id_optional = ProtoField.new("Order Id Optional", "cme.futures.ilink3.sbe.v8.7.orderidoptional", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.order_mass_action_report = ProtoField.new("Order Mass Action Report", "cme.futures.ilink3.sbe.v8.7.ordermassactionreport", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.order_mass_action_request = ProtoField.new("Order Mass Action Request", "cme.futures.ilink3.sbe.v8.7.ordermassactionrequest", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.order_mass_status_request = ProtoField.new("Order Mass Status Request", "cme.futures.ilink3.sbe.v8.7.ordermassstatusrequest", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.order_qty = ProtoField.new("Order Qty", "cme.futures.ilink3.sbe.v8.7.orderqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.order_qty_optional = ProtoField.new("Order Qty Optional", "cme.futures.ilink3.sbe.v8.7.orderqtyoptional", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.order_request_id = ProtoField.new("Order Request Id", "cme.futures.ilink3.sbe.v8.7.orderrequestid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.order_status_request = ProtoField.new("Order Status Request", "cme.futures.ilink3.sbe.v8.7.orderstatusrequest", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.orig_secondary_execution_id = ProtoField.new("Orig Secondary Execution Id", "cme.futures.ilink3.sbe.v8.7.origsecondaryexecutionid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.orig_side_trade_id = ProtoField.new("Orig Side Trade Id", "cme.futures.ilink3.sbe.v8.7.origsidetradeid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.origclordid = ProtoField.new("OrigClOrdId", "cme.futures.ilink3.sbe.v8.7.origclordid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.original_order_event_exec_id = ProtoField.new("Original Order Event Exec Id", "cme.futures.ilink3.sbe.v8.7.originalordereventexecid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.ownership = ProtoField.new("Ownership", "cme.futures.ilink3.sbe.v8.7.ownership", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.packet = ProtoField.new("Packet", "cme.futures.ilink3.sbe.v8.7.packet", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.party_detail_definition_status = ProtoField.new("Party Detail Definition Status", "cme.futures.ilink3.sbe.v8.7.partydetaildefinitionstatus", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.party_detail_id = ProtoField.new("Party Detail Id", "cme.futures.ilink3.sbe.v8.7.partydetailid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.party_detail_request_status = ProtoField.new("Party Detail Request Status", "cme.futures.ilink3.sbe.v8.7.partydetailrequeststatus", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.party_detail_role = ProtoField.new("Party Detail Role", "cme.futures.ilink3.sbe.v8.7.partydetailrole", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.party_details_definition_request = ProtoField.new("Party Details Definition Request", "cme.futures.ilink3.sbe.v8.7.partydetailsdefinitionrequest", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.party_details_definition_request_ack = ProtoField.new("Party Details Definition Request Ack", "cme.futures.ilink3.sbe.v8.7.partydetailsdefinitionrequestack", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.party_details_group = ProtoField.new("Party Details Group", "cme.futures.ilink3.sbe.v8.7.partydetailsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.party_details_groups = ProtoField.new("Party Details Groups", "cme.futures.ilink3.sbe.v8.7.partydetailsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.party_details_list_report = ProtoField.new("Party Details List Report", "cme.futures.ilink3.sbe.v8.7.partydetailslistreport", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.party_details_list_report_id = ProtoField.new("Party Details List Report Id", "cme.futures.ilink3.sbe.v8.7.partydetailslistreportid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.party_details_list_req_id = ProtoField.new("Party Details List Req Id", "cme.futures.ilink3.sbe.v8.7.partydetailslistreqid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.party_details_list_req_id_optional = ProtoField.new("Party Details List Req Id Optional", "cme.futures.ilink3.sbe.v8.7.partydetailslistreqidoptional", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.party_details_list_request = ProtoField.new("Party Details List Request", "cme.futures.ilink3.sbe.v8.7.partydetailslistrequest", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.party_i_ds_group = ProtoField.new("Party I Ds Group", "cme.futures.ilink3.sbe.v8.7.partyidsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.party_i_ds_groups = ProtoField.new("Party I Ds Groups", "cme.futures.ilink3.sbe.v8.7.partyidsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.party_id = ProtoField.new("Party Id", "cme.futures.ilink3.sbe.v8.7.partyid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.party_id_source = ProtoField.new("Party Id Source", "cme.futures.ilink3.sbe.v8.7.partyidsource", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.party_role = ProtoField.new("Party Role", "cme.futures.ilink3.sbe.v8.7.partyrole", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.payload = ProtoField.new("Payload", "cme.futures.ilink3.sbe.v8.7.payload", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.poss_retrans_flag = ProtoField.new("Poss Retrans Flag", "cme.futures.ilink3.sbe.v8.7.possretransflag", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.previous_seq_no = ProtoField.new("Previous Seq No", "cme.futures.ilink3.sbe.v8.7.previousseqno", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.previous_uuid = ProtoField.new("Previous Uuid", "cme.futures.ilink3.sbe.v8.7.previousuuid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.price = ProtoField.new("Price", "cme.futures.ilink3.sbe.v8.7.price", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.price_optional = ProtoField.new("Price Optional", "cme.futures.ilink3.sbe.v8.7.priceoptional", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.quote_ack_status = ProtoField.new("Quote Ack Status", "cme.futures.ilink3.sbe.v8.7.quoteackstatus", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.quote_cancel = ProtoField.new("Quote Cancel", "cme.futures.ilink3.sbe.v8.7.quotecancel", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_ack = ProtoField.new("Quote Cancel Ack", "cme.futures.ilink3.sbe.v8.7.quotecancelack", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_ack_entry_group = ProtoField.new("Quote Cancel Ack Entry Group", "cme.futures.ilink3.sbe.v8.7.quotecancelackentrygroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_ack_entry_groups = ProtoField.new("Quote Cancel Ack Entry Groups", "cme.futures.ilink3.sbe.v8.7.quotecancelackentrygroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_ack_set_group = ProtoField.new("Quote Cancel Ack Set Group", "cme.futures.ilink3.sbe.v8.7.quotecancelacksetgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_ack_set_groups = ProtoField.new("Quote Cancel Ack Set Groups", "cme.futures.ilink3.sbe.v8.7.quotecancelacksetgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_entry_group = ProtoField.new("Quote Cancel Entry Group", "cme.futures.ilink3.sbe.v8.7.quotecancelentrygroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_entry_groups = ProtoField.new("Quote Cancel Entry Groups", "cme.futures.ilink3.sbe.v8.7.quotecancelentrygroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_set_group = ProtoField.new("Quote Cancel Set Group", "cme.futures.ilink3.sbe.v8.7.quotecancelsetgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_set_groups = ProtoField.new("Quote Cancel Set Groups", "cme.futures.ilink3.sbe.v8.7.quotecancelsetgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_type = ProtoField.new("Quote Cancel Type", "cme.futures.ilink3.sbe.v8.7.quotecanceltype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.quote_cxl_status = ProtoField.new("Quote Cxl Status", "cme.futures.ilink3.sbe.v8.7.quotecxlstatus", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.quote_entry_id = ProtoField.new("Quote Entry Id", "cme.futures.ilink3.sbe.v8.7.quoteentryid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.quote_entry_reject_reason = ProtoField.new("Quote Entry Reject Reason", "cme.futures.ilink3.sbe.v8.7.quoteentryrejectreason", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.quote_error_code = ProtoField.new("Quote Error Code", "cme.futures.ilink3.sbe.v8.7.quoteerrorcode", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.quote_id = ProtoField.new("Quote Id", "cme.futures.ilink3.sbe.v8.7.quoteid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "cme.futures.ilink3.sbe.v8.7.quoterejectreason", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.futures.ilink3.sbe.v8.7.quotereqid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.quote_req_id_optional = ProtoField.new("Quote Req Id Optional", "cme.futures.ilink3.sbe.v8.7.quotereqidoptional", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.quote_set_id = ProtoField.new("Quote Set Id", "cme.futures.ilink3.sbe.v8.7.quotesetid", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.quote_type = ProtoField.new("Quote Type", "cme.futures.ilink3.sbe.v8.7.quotetype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.reason = ProtoField.new("Reason", "cme.futures.ilink3.sbe.v8.7.reason", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "cme.futures.ilink3.sbe.v8.7.refmsgtype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "cme.futures.ilink3.sbe.v8.7.refseqnum", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.ref_tag_id = ProtoField.new("Ref Tag Id", "cme.futures.ilink3.sbe.v8.7.reftagid", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.futures.ilink3.sbe.v8.7.relatedsymgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.futures.ilink3.sbe.v8.7.relatedsymgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.request_for_quote = ProtoField.new("Request For Quote", "cme.futures.ilink3.sbe.v8.7.requestforquote", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.request_for_quote_ack = ProtoField.new("Request For Quote Ack", "cme.futures.ilink3.sbe.v8.7.requestforquoteack", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.request_result = ProtoField.new("Request Result", "cme.futures.ilink3.sbe.v8.7.requestresult", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.request_time = ProtoField.new("Request Time", "cme.futures.ilink3.sbe.v8.7.requesttime", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.request_timestamp = ProtoField.new("Request Timestamp", "cme.futures.ilink3.sbe.v8.7.requesttimestamp", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.requesting_party_i_ds_group = ProtoField.new("Requesting Party I Ds Group", "cme.futures.ilink3.sbe.v8.7.requestingpartyidsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.requesting_party_i_ds_groups = ProtoField.new("Requesting Party I Ds Groups", "cme.futures.ilink3.sbe.v8.7.requestingpartyidsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.requesting_party_id = ProtoField.new("Requesting Party Id", "cme.futures.ilink3.sbe.v8.7.requestingpartyid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.requesting_party_id_source = ProtoField.new("Requesting Party Id Source", "cme.futures.ilink3.sbe.v8.7.requestingpartyidsource", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.requesting_party_role = ProtoField.new("Requesting Party Role", "cme.futures.ilink3.sbe.v8.7.requestingpartyrole", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.reserved = ProtoField.new("Reserved", "cme.futures.ilink3.sbe.v8.7.reserved", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.reserved_1 = ProtoField.new("Reserved 1", "cme.futures.ilink3.sbe.v8.7.reserved1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
cme_futures_ilink3_sbe_v8_7.fields.reserved_2 = ProtoField.new("Reserved 2", "cme.futures.ilink3.sbe.v8.7.reserved2", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
cme_futures_ilink3_sbe_v8_7.fields.reserved_3 = ProtoField.new("Reserved 3", "cme.futures.ilink3.sbe.v8.7.reserved3", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
cme_futures_ilink3_sbe_v8_7.fields.reserved_4 = ProtoField.new("Reserved 4", "cme.futures.ilink3.sbe.v8.7.reserved4", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
cme_futures_ilink3_sbe_v8_7.fields.reserved_5 = ProtoField.new("Reserved 5", "cme.futures.ilink3.sbe.v8.7.reserved5", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
cme_futures_ilink3_sbe_v8_7.fields.retransmission = ProtoField.new("Retransmission", "cme.futures.ilink3.sbe.v8.7.retransmission", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.retransmit_reject = ProtoField.new("Retransmit Reject", "cme.futures.ilink3.sbe.v8.7.retransmitreject", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.retransmit_request = ProtoField.new("Retransmit Request", "cme.futures.ilink3.sbe.v8.7.retransmitrequest", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.rfq_side = ProtoField.new("Rfq Side", "cme.futures.ilink3.sbe.v8.7.rfqside", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.risk_free_rate = ProtoField.new("Risk Free Rate", "cme.futures.ilink3.sbe.v8.7.riskfreerate", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.ilink3.sbe.v8.7.schemaid", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.sec_exec_id = ProtoField.new("Sec Exec Id", "cme.futures.ilink3.sbe.v8.7.secexecid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.secret_key_secure_id_expiration = ProtoField.new("Secret Key Secure Id Expiration", "cme.futures.ilink3.sbe.v8.7.secretkeysecureidexpiration", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.security_definition_request = ProtoField.new("Security Definition Request", "cme.futures.ilink3.sbe.v8.7.securitydefinitionrequest", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.security_definition_request_leg_group = ProtoField.new("Security Definition Request Leg Group", "cme.futures.ilink3.sbe.v8.7.securitydefinitionrequestleggroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.security_definition_request_leg_groups = ProtoField.new("Security Definition Request Leg Groups", "cme.futures.ilink3.sbe.v8.7.securitydefinitionrequestleggroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.security_definition_response = ProtoField.new("Security Definition Response", "cme.futures.ilink3.sbe.v8.7.securitydefinitionresponse", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.security_definition_response_leg_group = ProtoField.new("Security Definition Response Leg Group", "cme.futures.ilink3.sbe.v8.7.securitydefinitionresponseleggroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.security_definition_response_leg_groups = ProtoField.new("Security Definition Response Leg Groups", "cme.futures.ilink3.sbe.v8.7.securitydefinitionresponseleggroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.security_group = ProtoField.new("Security Group", "cme.futures.ilink3.sbe.v8.7.securitygroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.security_id = ProtoField.new("Security Id", "cme.futures.ilink3.sbe.v8.7.securityid", ftypes.INT32)
cme_futures_ilink3_sbe_v8_7.fields.security_id_optional = ProtoField.new("Security Id Optional", "cme.futures.ilink3.sbe.v8.7.securityidoptional", ftypes.INT32)
cme_futures_ilink3_sbe_v8_7.fields.security_req_id = ProtoField.new("Security Req Id", "cme.futures.ilink3.sbe.v8.7.securityreqid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.security_response_id = ProtoField.new("Security Response Id", "cme.futures.ilink3.sbe.v8.7.securityresponseid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.security_response_type = ProtoField.new("Security Response Type", "cme.futures.ilink3.sbe.v8.7.securityresponsetype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.futures.ilink3.sbe.v8.7.securitysubtype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.security_type = ProtoField.new("Security Type", "cme.futures.ilink3.sbe.v8.7.securitytype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.self_match_prevention_id = ProtoField.new("Self Match Prevention Id", "cme.futures.ilink3.sbe.v8.7.selfmatchpreventionid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.self_match_prevention_instruction = ProtoField.new("Self Match Prevention Instruction", "cme.futures.ilink3.sbe.v8.7.selfmatchpreventioninstruction", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.sender_id = ProtoField.new("Sender Id", "cme.futures.ilink3.sbe.v8.7.senderid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.sender_id_optional = ProtoField.new("Sender Id Optional", "cme.futures.ilink3.sbe.v8.7.senderidoptional", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.sending_time_epoch = ProtoField.new("Sending Time Epoch", "cme.futures.ilink3.sbe.v8.7.sendingtimeepoch", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.seq_num = ProtoField.new("Seq Num", "cme.futures.ilink3.sbe.v8.7.seqnum", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.sequence = ProtoField.new("Sequence", "cme.futures.ilink3.sbe.v8.7.sequence", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.session = ProtoField.new("Session", "cme.futures.ilink3.sbe.v8.7.session", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.settl_date = ProtoField.new("Settl Date", "cme.futures.ilink3.sbe.v8.7.settldate", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.short_sale_type = ProtoField.new("Short Sale Type", "cme.futures.ilink3.sbe.v8.7.shortsaletype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.side = ProtoField.new("Side", "cme.futures.ilink3.sbe.v8.7.side", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.side_optional = ProtoField.new("Side Optional", "cme.futures.ilink3.sbe.v8.7.sideoptional", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.side_time_in_force = ProtoField.new("Side Time In Force", "cme.futures.ilink3.sbe.v8.7.sidetimeinforce", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.side_trade_id = ProtoField.new("Side Trade Id", "cme.futures.ilink3.sbe.v8.7.sidetradeid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.sides_group = ProtoField.new("Sides Group", "cme.futures.ilink3.sbe.v8.7.sidesgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.sides_groups = ProtoField.new("Sides Groups", "cme.futures.ilink3.sbe.v8.7.sidesgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.simple_open_frame = ProtoField.new("Simple Open Frame", "cme.futures.ilink3.sbe.v8.7.simpleopenframe", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.simple_open_framing_header = ProtoField.new("Simple Open Framing Header", "cme.futures.ilink3.sbe.v8.7.simpleopenframingheader", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.source_repo_id = ProtoField.new("Source Repo Id", "cme.futures.ilink3.sbe.v8.7.sourcerepoid", ftypes.INT32)
cme_futures_ilink3_sbe_v8_7.fields.split_msg = ProtoField.new("Split Msg", "cme.futures.ilink3.sbe.v8.7.splitmsg", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.start_date = ProtoField.new("Start Date", "cme.futures.ilink3.sbe.v8.7.startdate", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.stop_px = ProtoField.new("Stop Px", "cme.futures.ilink3.sbe.v8.7.stoppx", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.symbol = ProtoField.new("Symbol", "cme.futures.ilink3.sbe.v8.7.symbol", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.template_id = ProtoField.new("Template Id", "cme.futures.ilink3.sbe.v8.7.templateid", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.terminate = ProtoField.new("Terminate", "cme.futures.ilink3.sbe.v8.7.terminate", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.termination_type = ProtoField.new("Termination Type", "cme.futures.ilink3.sbe.v8.7.terminationtype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.text = ProtoField.new("Text", "cme.futures.ilink3.sbe.v8.7.text", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.time_in_force = ProtoField.new("Time In Force", "cme.futures.ilink3.sbe.v8.7.timeinforce", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.time_to_expiration = ProtoField.new("Time To Expiration", "cme.futures.ilink3.sbe.v8.7.timetoexpiration", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.tot_no_quote_entries = ProtoField.new("Tot No Quote Entries", "cme.futures.ilink3.sbe.v8.7.totnoquoteentries", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.tot_no_quote_entries_optional = ProtoField.new("Tot No Quote Entries Optional", "cme.futures.ilink3.sbe.v8.7.totnoquoteentriesoptional", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.tot_num_parties = ProtoField.new("Tot Num Parties", "cme.futures.ilink3.sbe.v8.7.totnumparties", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "cme.futures.ilink3.sbe.v8.7.totalaffectedorders", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.total_num_securities = ProtoField.new("Total Num Securities", "cme.futures.ilink3.sbe.v8.7.totalnumsecurities", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.trade_addendum = ProtoField.new("Trade Addendum", "cme.futures.ilink3.sbe.v8.7.tradeaddendum", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.trade_date = ProtoField.new("Trade Date", "cme.futures.ilink3.sbe.v8.7.tradedate", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.trade_link_id = ProtoField.new("Trade Link Id", "cme.futures.ilink3.sbe.v8.7.tradelinkid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_7.fields.trading_system_name = ProtoField.new("Trading System Name", "cme.futures.ilink3.sbe.v8.7.tradingsystemname", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.trading_system_vendor = ProtoField.new("Trading System Vendor", "cme.futures.ilink3.sbe.v8.7.tradingsystemvendor", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.trading_system_version = ProtoField.new("Trading System Version", "cme.futures.ilink3.sbe.v8.7.tradingsystemversion", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.trans_bkd_time = ProtoField.new("Trans Bkd Time", "cme.futures.ilink3.sbe.v8.7.transbkdtime", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.ilink3.sbe.v8.7.transacttime", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.trd_reg_publication_reason = ProtoField.new("Trd Reg Publication Reason", "cme.futures.ilink3.sbe.v8.7.trdregpublicationreason", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.trd_reg_publication_type = ProtoField.new("Trd Reg Publication Type", "cme.futures.ilink3.sbe.v8.7.trdregpublicationtype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.trd_reg_publications_group = ProtoField.new("Trd Reg Publications Group", "cme.futures.ilink3.sbe.v8.7.trdregpublicationsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.trd_reg_publications_groups = ProtoField.new("Trd Reg Publications Groups", "cme.futures.ilink3.sbe.v8.7.trdregpublicationsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.trd_type = ProtoField.new("Trd Type", "cme.futures.ilink3.sbe.v8.7.trdtype", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.underlying_px = ProtoField.new("Underlying Px", "cme.futures.ilink3.sbe.v8.7.underlyingpx", ftypes.DOUBLE)
cme_futures_ilink3_sbe_v8_7.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "cme.futures.ilink3.sbe.v8.7.underlyingsecurityid", ftypes.INT32)
cme_futures_ilink3_sbe_v8_7.fields.unsolicited_cancel_type = ProtoField.new("Unsolicited Cancel Type", "cme.futures.ilink3.sbe.v8.7.unsolicitedcanceltype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.uuid = ProtoField.new("Uuid", "cme.futures.ilink3.sbe.v8.7.uuid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_7.fields.var_data = ProtoField.new("Var Data", "cme.futures.ilink3.sbe.v8.7.vardata", ftypes.BYTES)
cme_futures_ilink3_sbe_v8_7.fields.version = ProtoField.new("Version", "cme.futures.ilink3.sbe.v8.7.version", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_7.fields.volatility = ProtoField.new("Volatility", "cme.futures.ilink3.sbe.v8.7.volatility", ftypes.STRING)
cme_futures_ilink3_sbe_v8_7.fields.week = ProtoField.new("Week", "cme.futures.ilink3.sbe.v8.7.week", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_7.fields.year = ProtoField.new("Year", "cme.futures.ilink3.sbe.v8.7.year", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cme Futures iLink3 Sbe 8.7 Element Dissection Options
show.affected_orders_group = true
show.affected_orders_groups = true
show.business_reject = true
show.calculated_ccy_last_qty = true
show.contra_calculated_ccy_last_qty = true
show.contra_gross_trade_amt = true
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
show.execution_report_pending_cancel = true
show.execution_report_pending_replace = true
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
show.gross_trade_amt = true
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

-- Register Cme Futures iLink3 Sbe 8.7 Show Options
cme_futures_ilink3_sbe_v8_7.prefs.show_affected_orders_group = Pref.bool("Show Affected Orders Group", show.affected_orders_group, "Parse and add Affected Orders Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_affected_orders_groups = Pref.bool("Show Affected Orders Groups", show.affected_orders_groups, "Parse and add Affected Orders Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_business_reject = Pref.bool("Show Business Reject", show.business_reject, "Parse and add Business Reject to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_calculated_ccy_last_qty = Pref.bool("Show Calculated Ccy Last Qty", show.calculated_ccy_last_qty, "Parse and add Calculated Ccy Last Qty to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_contra_calculated_ccy_last_qty = Pref.bool("Show Contra Calculated Ccy Last Qty", show.contra_calculated_ccy_last_qty, "Parse and add Contra Calculated Ccy Last Qty to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_contra_gross_trade_amt = Pref.bool("Show Contra Gross Trade Amt", show.contra_gross_trade_amt, "Parse and add Contra Gross Trade Amt to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_credentials = Pref.bool("Show Credentials", show.credentials, "Parse and add Credentials to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_establish = Pref.bool("Show Establish", show.establish, "Parse and add Establish to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_establishment_ack = Pref.bool("Show Establishment Ack", show.establishment_ack, "Parse and add Establishment Ack to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_establishment_reject = Pref.bool("Show Establishment Reject", show.establishment_reject, "Parse and add Establishment Reject to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_exec_inst = Pref.bool("Show Exec Inst", show.exec_inst, "Parse and add Exec Inst to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_ack = Pref.bool("Show Execution Ack", show.execution_ack, "Parse and add Execution Ack to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_cancel = Pref.bool("Show Execution Report Cancel", show.execution_report_cancel, "Parse and add Execution Report Cancel to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_elimination = Pref.bool("Show Execution Report Elimination", show.execution_report_elimination, "Parse and add Execution Report Elimination to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_modify = Pref.bool("Show Execution Report Modify", show.execution_report_modify, "Parse and add Execution Report Modify to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_new = Pref.bool("Show Execution Report New", show.execution_report_new, "Parse and add Execution Report New to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_pending_cancel = Pref.bool("Show Execution Report Pending Cancel", show.execution_report_pending_cancel, "Parse and add Execution Report Pending Cancel to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_pending_replace = Pref.bool("Show Execution Report Pending Replace", show.execution_report_pending_replace, "Parse and add Execution Report Pending Replace to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_reject = Pref.bool("Show Execution Report Reject", show.execution_report_reject, "Parse and add Execution Report Reject to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_status = Pref.bool("Show Execution Report Status", show.execution_report_status, "Parse and add Execution Report Status to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_outright = Pref.bool("Show Execution Report Trade Addendum Outright", show.execution_report_trade_addendum_outright, "Parse and add Execution Report Trade Addendum Outright to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_outright_order_event_group = Pref.bool("Show Execution Report Trade Addendum Outright Order Event Group", show.execution_report_trade_addendum_outright_order_event_group, "Parse and add Execution Report Trade Addendum Outright Order Event Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_outright_order_event_groups = Pref.bool("Show Execution Report Trade Addendum Outright Order Event Groups", show.execution_report_trade_addendum_outright_order_event_groups, "Parse and add Execution Report Trade Addendum Outright Order Event Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread = Pref.bool("Show Execution Report Trade Addendum Spread", show.execution_report_trade_addendum_spread, "Parse and add Execution Report Trade Addendum Spread to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg = Pref.bool("Show Execution Report Trade Addendum Spread Leg", show.execution_report_trade_addendum_spread_leg, "Parse and add Execution Report Trade Addendum Spread Leg to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_group = Pref.bool("Show Execution Report Trade Addendum Spread Leg Group", show.execution_report_trade_addendum_spread_leg_group, "Parse and add Execution Report Trade Addendum Spread Leg Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_groups = Pref.bool("Show Execution Report Trade Addendum Spread Leg Groups", show.execution_report_trade_addendum_spread_leg_groups, "Parse and add Execution Report Trade Addendum Spread Leg Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_order_event_group = Pref.bool("Show Execution Report Trade Addendum Spread Leg Order Event Group", show.execution_report_trade_addendum_spread_leg_order_event_group, "Parse and add Execution Report Trade Addendum Spread Leg Order Event Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_order_event_groups = Pref.bool("Show Execution Report Trade Addendum Spread Leg Order Event Groups", show.execution_report_trade_addendum_spread_leg_order_event_groups, "Parse and add Execution Report Trade Addendum Spread Leg Order Event Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_order_event_group = Pref.bool("Show Execution Report Trade Addendum Spread Order Event Group", show.execution_report_trade_addendum_spread_order_event_group, "Parse and add Execution Report Trade Addendum Spread Order Event Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_order_event_groups = Pref.bool("Show Execution Report Trade Addendum Spread Order Event Groups", show.execution_report_trade_addendum_spread_order_event_groups, "Parse and add Execution Report Trade Addendum Spread Order Event Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_outright = Pref.bool("Show Execution Report Trade Outright", show.execution_report_trade_outright, "Parse and add Execution Report Trade Outright to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_outright_order_event_group = Pref.bool("Show Execution Report Trade Outright Order Event Group", show.execution_report_trade_outright_order_event_group, "Parse and add Execution Report Trade Outright Order Event Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_outright_order_event_groups = Pref.bool("Show Execution Report Trade Outright Order Event Groups", show.execution_report_trade_outright_order_event_groups, "Parse and add Execution Report Trade Outright Order Event Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread = Pref.bool("Show Execution Report Trade Spread", show.execution_report_trade_spread, "Parse and add Execution Report Trade Spread to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg = Pref.bool("Show Execution Report Trade Spread Leg", show.execution_report_trade_spread_leg, "Parse and add Execution Report Trade Spread Leg to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_group = Pref.bool("Show Execution Report Trade Spread Leg Group", show.execution_report_trade_spread_leg_group, "Parse and add Execution Report Trade Spread Leg Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_groups = Pref.bool("Show Execution Report Trade Spread Leg Groups", show.execution_report_trade_spread_leg_groups, "Parse and add Execution Report Trade Spread Leg Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_order_event_group = Pref.bool("Show Execution Report Trade Spread Leg Order Event Group", show.execution_report_trade_spread_leg_order_event_group, "Parse and add Execution Report Trade Spread Leg Order Event Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_order_event_groups = Pref.bool("Show Execution Report Trade Spread Leg Order Event Groups", show.execution_report_trade_spread_leg_order_event_groups, "Parse and add Execution Report Trade Spread Leg Order Event Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_order_event_group = Pref.bool("Show Execution Report Trade Spread Order Event Group", show.execution_report_trade_spread_order_event_group, "Parse and add Execution Report Trade Spread Order Event Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_order_event_groups = Pref.bool("Show Execution Report Trade Spread Order Event Groups", show.execution_report_trade_spread_order_event_groups, "Parse and add Execution Report Trade Spread Order Event Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_fills_group = Pref.bool("Show Fills Group", show.fills_group, "Parse and add Fills Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_fills_groups = Pref.bool("Show Fills Groups", show.fills_groups, "Parse and add Fills Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_gross_trade_amt = Pref.bool("Show Gross Trade Amt", show.gross_trade_amt, "Parse and add Gross Trade Amt to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_leg_option_delta = Pref.bool("Show Leg Option Delta", show.leg_option_delta, "Parse and add Leg Option Delta to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote = Pref.bool("Show Mass Quote", show.mass_quote, "Parse and add Mass Quote to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_ack = Pref.bool("Show Mass Quote Ack", show.mass_quote_ack, "Parse and add Mass Quote Ack to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_ack_entry_group = Pref.bool("Show Mass Quote Ack Entry Group", show.mass_quote_ack_entry_group, "Parse and add Mass Quote Ack Entry Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_ack_entry_groups = Pref.bool("Show Mass Quote Ack Entry Groups", show.mass_quote_ack_entry_groups, "Parse and add Mass Quote Ack Entry Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_entry_group = Pref.bool("Show Mass Quote Entry Group", show.mass_quote_entry_group, "Parse and add Mass Quote Entry Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_entry_groups = Pref.bool("Show Mass Quote Entry Groups", show.mass_quote_entry_groups, "Parse and add Mass Quote Entry Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_negotiate = Pref.bool("Show Negotiate", show.negotiate, "Parse and add Negotiate to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_negotiation_reject = Pref.bool("Show Negotiation Reject", show.negotiation_reject, "Parse and add Negotiation Reject to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_negotiation_response = Pref.bool("Show Negotiation Response", show.negotiation_response, "Parse and add Negotiation Response to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_new_order_cross = Pref.bool("Show New Order Cross", show.new_order_cross, "Parse and add New Order Cross to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_new_order_single = Pref.bool("Show New Order Single", show.new_order_single, "Parse and add New Order Single to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_not_applied = Pref.bool("Show Not Applied", show.not_applied, "Parse and add Not Applied to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_option_delta = Pref.bool("Show Option Delta", show.option_delta, "Parse and add Option Delta to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_reject = Pref.bool("Show Order Cancel Reject", show.order_cancel_reject, "Parse and add Order Cancel Reject to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_replace_reject = Pref.bool("Show Order Cancel Replace Reject", show.order_cancel_replace_reject, "Parse and add Order Cancel Replace Reject to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_replace_request = Pref.bool("Show Order Cancel Replace Request", show.order_cancel_replace_request, "Parse and add Order Cancel Replace Request to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_request = Pref.bool("Show Order Cancel Request", show.order_cancel_request, "Parse and add Order Cancel Request to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_order_mass_action_report = Pref.bool("Show Order Mass Action Report", show.order_mass_action_report, "Parse and add Order Mass Action Report to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_order_mass_action_request = Pref.bool("Show Order Mass Action Request", show.order_mass_action_request, "Parse and add Order Mass Action Request to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_order_mass_status_request = Pref.bool("Show Order Mass Status Request", show.order_mass_status_request, "Parse and add Order Mass Status Request to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_order_status_request = Pref.bool("Show Order Status Request", show.order_status_request, "Parse and add Order Status Request to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_definition_request = Pref.bool("Show Party Details Definition Request", show.party_details_definition_request, "Parse and add Party Details Definition Request to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_definition_request_ack = Pref.bool("Show Party Details Definition Request Ack", show.party_details_definition_request_ack, "Parse and add Party Details Definition Request Ack to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_group = Pref.bool("Show Party Details Group", show.party_details_group, "Parse and add Party Details Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_groups = Pref.bool("Show Party Details Groups", show.party_details_groups, "Parse and add Party Details Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_list_report = Pref.bool("Show Party Details List Report", show.party_details_list_report, "Parse and add Party Details List Report to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_list_request = Pref.bool("Show Party Details List Request", show.party_details_list_request, "Parse and add Party Details List Request to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_party_i_ds_group = Pref.bool("Show Party I Ds Group", show.party_i_ds_group, "Parse and add Party I Ds Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_party_i_ds_groups = Pref.bool("Show Party I Ds Groups", show.party_i_ds_groups, "Parse and add Party I Ds Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel = Pref.bool("Show Quote Cancel", show.quote_cancel, "Parse and add Quote Cancel to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack = Pref.bool("Show Quote Cancel Ack", show.quote_cancel_ack, "Parse and add Quote Cancel Ack to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_entry_group = Pref.bool("Show Quote Cancel Ack Entry Group", show.quote_cancel_ack_entry_group, "Parse and add Quote Cancel Ack Entry Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_entry_groups = Pref.bool("Show Quote Cancel Ack Entry Groups", show.quote_cancel_ack_entry_groups, "Parse and add Quote Cancel Ack Entry Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_set_group = Pref.bool("Show Quote Cancel Ack Set Group", show.quote_cancel_ack_set_group, "Parse and add Quote Cancel Ack Set Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_set_groups = Pref.bool("Show Quote Cancel Ack Set Groups", show.quote_cancel_ack_set_groups, "Parse and add Quote Cancel Ack Set Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_entry_group = Pref.bool("Show Quote Cancel Entry Group", show.quote_cancel_entry_group, "Parse and add Quote Cancel Entry Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_entry_groups = Pref.bool("Show Quote Cancel Entry Groups", show.quote_cancel_entry_groups, "Parse and add Quote Cancel Entry Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_set_group = Pref.bool("Show Quote Cancel Set Group", show.quote_cancel_set_group, "Parse and add Quote Cancel Set Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_set_groups = Pref.bool("Show Quote Cancel Set Groups", show.quote_cancel_set_groups, "Parse and add Quote Cancel Set Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_related_sym_group = Pref.bool("Show Related Sym Group", show.related_sym_group, "Parse and add Related Sym Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_related_sym_groups = Pref.bool("Show Related Sym Groups", show.related_sym_groups, "Parse and add Related Sym Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_request_for_quote = Pref.bool("Show Request For Quote", show.request_for_quote, "Parse and add Request For Quote to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_request_for_quote_ack = Pref.bool("Show Request For Quote Ack", show.request_for_quote_ack, "Parse and add Request For Quote Ack to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_requesting_party_i_ds_group = Pref.bool("Show Requesting Party I Ds Group", show.requesting_party_i_ds_group, "Parse and add Requesting Party I Ds Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_requesting_party_i_ds_groups = Pref.bool("Show Requesting Party I Ds Groups", show.requesting_party_i_ds_groups, "Parse and add Requesting Party I Ds Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_retransmission = Pref.bool("Show Retransmission", show.retransmission, "Parse and add Retransmission to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_retransmit_reject = Pref.bool("Show Retransmit Reject", show.retransmit_reject, "Parse and add Retransmit Reject to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_retransmit_request = Pref.bool("Show Retransmit Request", show.retransmit_request, "Parse and add Retransmit Request to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_risk_free_rate = Pref.bool("Show Risk Free Rate", show.risk_free_rate, "Parse and add Risk Free Rate to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_request = Pref.bool("Show Security Definition Request", show.security_definition_request, "Parse and add Security Definition Request to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_request_leg_group = Pref.bool("Show Security Definition Request Leg Group", show.security_definition_request_leg_group, "Parse and add Security Definition Request Leg Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_request_leg_groups = Pref.bool("Show Security Definition Request Leg Groups", show.security_definition_request_leg_groups, "Parse and add Security Definition Request Leg Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_response = Pref.bool("Show Security Definition Response", show.security_definition_response, "Parse and add Security Definition Response to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_response_leg_group = Pref.bool("Show Security Definition Response Leg Group", show.security_definition_response_leg_group, "Parse and add Security Definition Response Leg Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_response_leg_groups = Pref.bool("Show Security Definition Response Leg Groups", show.security_definition_response_leg_groups, "Parse and add Security Definition Response Leg Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_sequence = Pref.bool("Show Sequence", show.sequence, "Parse and add Sequence to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_sides_group = Pref.bool("Show Sides Group", show.sides_group, "Parse and add Sides Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_sides_groups = Pref.bool("Show Sides Groups", show.sides_groups, "Parse and add Sides Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_simple_open_frame = Pref.bool("Show Simple Open Frame", show.simple_open_frame, "Parse and add Simple Open Frame to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_simple_open_framing_header = Pref.bool("Show Simple Open Framing Header", show.simple_open_framing_header, "Parse and add Simple Open Framing Header to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_terminate = Pref.bool("Show Terminate", show.terminate, "Parse and add Terminate to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_time_to_expiration = Pref.bool("Show Time To Expiration", show.time_to_expiration, "Parse and add Time To Expiration to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_trd_reg_publications_group = Pref.bool("Show Trd Reg Publications Group", show.trd_reg_publications_group, "Parse and add Trd Reg Publications Group to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_trd_reg_publications_groups = Pref.bool("Show Trd Reg Publications Groups", show.trd_reg_publications_groups, "Parse and add Trd Reg Publications Groups to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_volatility = Pref.bool("Show Volatility", show.volatility, "Parse and add Volatility to protocol tree")
cme_futures_ilink3_sbe_v8_7.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cme_futures_ilink3_sbe_v8_7.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.affected_orders_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_affected_orders_group then
    show.affected_orders_group = cme_futures_ilink3_sbe_v8_7.prefs.show_affected_orders_group
    changed = true
  end
  if show.affected_orders_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_affected_orders_groups then
    show.affected_orders_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_affected_orders_groups
    changed = true
  end
  if show.business_reject ~= cme_futures_ilink3_sbe_v8_7.prefs.show_business_reject then
    show.business_reject = cme_futures_ilink3_sbe_v8_7.prefs.show_business_reject
    changed = true
  end
  if show.calculated_ccy_last_qty ~= cme_futures_ilink3_sbe_v8_7.prefs.show_calculated_ccy_last_qty then
    show.calculated_ccy_last_qty = cme_futures_ilink3_sbe_v8_7.prefs.show_calculated_ccy_last_qty
    changed = true
  end
  if show.contra_calculated_ccy_last_qty ~= cme_futures_ilink3_sbe_v8_7.prefs.show_contra_calculated_ccy_last_qty then
    show.contra_calculated_ccy_last_qty = cme_futures_ilink3_sbe_v8_7.prefs.show_contra_calculated_ccy_last_qty
    changed = true
  end
  if show.contra_gross_trade_amt ~= cme_futures_ilink3_sbe_v8_7.prefs.show_contra_gross_trade_amt then
    show.contra_gross_trade_amt = cme_futures_ilink3_sbe_v8_7.prefs.show_contra_gross_trade_amt
    changed = true
  end
  if show.credentials ~= cme_futures_ilink3_sbe_v8_7.prefs.show_credentials then
    show.credentials = cme_futures_ilink3_sbe_v8_7.prefs.show_credentials
    changed = true
  end
  if show.establish ~= cme_futures_ilink3_sbe_v8_7.prefs.show_establish then
    show.establish = cme_futures_ilink3_sbe_v8_7.prefs.show_establish
    changed = true
  end
  if show.establishment_ack ~= cme_futures_ilink3_sbe_v8_7.prefs.show_establishment_ack then
    show.establishment_ack = cme_futures_ilink3_sbe_v8_7.prefs.show_establishment_ack
    changed = true
  end
  if show.establishment_reject ~= cme_futures_ilink3_sbe_v8_7.prefs.show_establishment_reject then
    show.establishment_reject = cme_futures_ilink3_sbe_v8_7.prefs.show_establishment_reject
    changed = true
  end
  if show.exec_inst ~= cme_futures_ilink3_sbe_v8_7.prefs.show_exec_inst then
    show.exec_inst = cme_futures_ilink3_sbe_v8_7.prefs.show_exec_inst
    changed = true
  end
  if show.execution_ack ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_ack then
    show.execution_ack = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_ack
    changed = true
  end
  if show.execution_report_cancel ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_cancel then
    show.execution_report_cancel = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_cancel
    changed = true
  end
  if show.execution_report_elimination ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_elimination then
    show.execution_report_elimination = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_elimination
    changed = true
  end
  if show.execution_report_modify ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_modify then
    show.execution_report_modify = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_modify
    changed = true
  end
  if show.execution_report_new ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_new then
    show.execution_report_new = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_new
    changed = true
  end
  if show.execution_report_pending_cancel ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_pending_cancel then
    show.execution_report_pending_cancel = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_pending_cancel
    changed = true
  end
  if show.execution_report_pending_replace ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_pending_replace then
    show.execution_report_pending_replace = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_pending_replace
    changed = true
  end
  if show.execution_report_reject ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_reject then
    show.execution_report_reject = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_reject
    changed = true
  end
  if show.execution_report_status ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_status then
    show.execution_report_status = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_status
    changed = true
  end
  if show.execution_report_trade_addendum_outright ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_outright then
    show.execution_report_trade_addendum_outright = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_outright
    changed = true
  end
  if show.execution_report_trade_addendum_outright_order_event_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_outright_order_event_group then
    show.execution_report_trade_addendum_outright_order_event_group = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_outright_order_event_group
    changed = true
  end
  if show.execution_report_trade_addendum_outright_order_event_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_outright_order_event_groups then
    show.execution_report_trade_addendum_outright_order_event_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_outright_order_event_groups
    changed = true
  end
  if show.execution_report_trade_addendum_spread ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread then
    show.execution_report_trade_addendum_spread = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread
    changed = true
  end
  if show.execution_report_trade_addendum_spread_leg ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg then
    show.execution_report_trade_addendum_spread_leg = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg
    changed = true
  end
  if show.execution_report_trade_addendum_spread_leg_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_group then
    show.execution_report_trade_addendum_spread_leg_group = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_group
    changed = true
  end
  if show.execution_report_trade_addendum_spread_leg_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_groups then
    show.execution_report_trade_addendum_spread_leg_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_groups
    changed = true
  end
  if show.execution_report_trade_addendum_spread_leg_order_event_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_order_event_group then
    show.execution_report_trade_addendum_spread_leg_order_event_group = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_order_event_group
    changed = true
  end
  if show.execution_report_trade_addendum_spread_leg_order_event_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_order_event_groups then
    show.execution_report_trade_addendum_spread_leg_order_event_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_leg_order_event_groups
    changed = true
  end
  if show.execution_report_trade_addendum_spread_order_event_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_order_event_group then
    show.execution_report_trade_addendum_spread_order_event_group = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_order_event_group
    changed = true
  end
  if show.execution_report_trade_addendum_spread_order_event_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_order_event_groups then
    show.execution_report_trade_addendum_spread_order_event_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_addendum_spread_order_event_groups
    changed = true
  end
  if show.execution_report_trade_outright ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_outright then
    show.execution_report_trade_outright = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_outright
    changed = true
  end
  if show.execution_report_trade_outright_order_event_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_outright_order_event_group then
    show.execution_report_trade_outright_order_event_group = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_outright_order_event_group
    changed = true
  end
  if show.execution_report_trade_outright_order_event_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_outright_order_event_groups then
    show.execution_report_trade_outright_order_event_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_outright_order_event_groups
    changed = true
  end
  if show.execution_report_trade_spread ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread then
    show.execution_report_trade_spread = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread
    changed = true
  end
  if show.execution_report_trade_spread_leg ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg then
    show.execution_report_trade_spread_leg = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg
    changed = true
  end
  if show.execution_report_trade_spread_leg_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_group then
    show.execution_report_trade_spread_leg_group = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_group
    changed = true
  end
  if show.execution_report_trade_spread_leg_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_groups then
    show.execution_report_trade_spread_leg_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_groups
    changed = true
  end
  if show.execution_report_trade_spread_leg_order_event_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_order_event_group then
    show.execution_report_trade_spread_leg_order_event_group = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_order_event_group
    changed = true
  end
  if show.execution_report_trade_spread_leg_order_event_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_order_event_groups then
    show.execution_report_trade_spread_leg_order_event_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_leg_order_event_groups
    changed = true
  end
  if show.execution_report_trade_spread_order_event_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_order_event_group then
    show.execution_report_trade_spread_order_event_group = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_order_event_group
    changed = true
  end
  if show.execution_report_trade_spread_order_event_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_order_event_groups then
    show.execution_report_trade_spread_order_event_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_execution_report_trade_spread_order_event_groups
    changed = true
  end
  if show.fills_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_fills_group then
    show.fills_group = cme_futures_ilink3_sbe_v8_7.prefs.show_fills_group
    changed = true
  end
  if show.fills_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_fills_groups then
    show.fills_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_fills_groups
    changed = true
  end
  if show.gross_trade_amt ~= cme_futures_ilink3_sbe_v8_7.prefs.show_gross_trade_amt then
    show.gross_trade_amt = cme_futures_ilink3_sbe_v8_7.prefs.show_gross_trade_amt
    changed = true
  end
  if show.group_size ~= cme_futures_ilink3_sbe_v8_7.prefs.show_group_size then
    show.group_size = cme_futures_ilink3_sbe_v8_7.prefs.show_group_size
    changed = true
  end
  if show.leg_option_delta ~= cme_futures_ilink3_sbe_v8_7.prefs.show_leg_option_delta then
    show.leg_option_delta = cme_futures_ilink3_sbe_v8_7.prefs.show_leg_option_delta
    changed = true
  end
  if show.mass_quote ~= cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote then
    show.mass_quote = cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote
    changed = true
  end
  if show.mass_quote_ack ~= cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_ack then
    show.mass_quote_ack = cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_ack
    changed = true
  end
  if show.mass_quote_ack_entry_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_ack_entry_group then
    show.mass_quote_ack_entry_group = cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_ack_entry_group
    changed = true
  end
  if show.mass_quote_ack_entry_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_ack_entry_groups then
    show.mass_quote_ack_entry_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_ack_entry_groups
    changed = true
  end
  if show.mass_quote_entry_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_entry_group then
    show.mass_quote_entry_group = cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_entry_group
    changed = true
  end
  if show.mass_quote_entry_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_entry_groups then
    show.mass_quote_entry_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_mass_quote_entry_groups
    changed = true
  end
  if show.maturity_month_year ~= cme_futures_ilink3_sbe_v8_7.prefs.show_maturity_month_year then
    show.maturity_month_year = cme_futures_ilink3_sbe_v8_7.prefs.show_maturity_month_year
    changed = true
  end
  if show.message_header ~= cme_futures_ilink3_sbe_v8_7.prefs.show_message_header then
    show.message_header = cme_futures_ilink3_sbe_v8_7.prefs.show_message_header
    changed = true
  end
  if show.negotiate ~= cme_futures_ilink3_sbe_v8_7.prefs.show_negotiate then
    show.negotiate = cme_futures_ilink3_sbe_v8_7.prefs.show_negotiate
    changed = true
  end
  if show.negotiation_reject ~= cme_futures_ilink3_sbe_v8_7.prefs.show_negotiation_reject then
    show.negotiation_reject = cme_futures_ilink3_sbe_v8_7.prefs.show_negotiation_reject
    changed = true
  end
  if show.negotiation_response ~= cme_futures_ilink3_sbe_v8_7.prefs.show_negotiation_response then
    show.negotiation_response = cme_futures_ilink3_sbe_v8_7.prefs.show_negotiation_response
    changed = true
  end
  if show.new_order_cross ~= cme_futures_ilink3_sbe_v8_7.prefs.show_new_order_cross then
    show.new_order_cross = cme_futures_ilink3_sbe_v8_7.prefs.show_new_order_cross
    changed = true
  end
  if show.new_order_single ~= cme_futures_ilink3_sbe_v8_7.prefs.show_new_order_single then
    show.new_order_single = cme_futures_ilink3_sbe_v8_7.prefs.show_new_order_single
    changed = true
  end
  if show.not_applied ~= cme_futures_ilink3_sbe_v8_7.prefs.show_not_applied then
    show.not_applied = cme_futures_ilink3_sbe_v8_7.prefs.show_not_applied
    changed = true
  end
  if show.option_delta ~= cme_futures_ilink3_sbe_v8_7.prefs.show_option_delta then
    show.option_delta = cme_futures_ilink3_sbe_v8_7.prefs.show_option_delta
    changed = true
  end
  if show.order_cancel_reject ~= cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_reject then
    show.order_cancel_reject = cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_reject
    changed = true
  end
  if show.order_cancel_replace_reject ~= cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_replace_reject then
    show.order_cancel_replace_reject = cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_replace_reject
    changed = true
  end
  if show.order_cancel_replace_request ~= cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_replace_request then
    show.order_cancel_replace_request = cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_replace_request
    changed = true
  end
  if show.order_cancel_request ~= cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_request then
    show.order_cancel_request = cme_futures_ilink3_sbe_v8_7.prefs.show_order_cancel_request
    changed = true
  end
  if show.order_mass_action_report ~= cme_futures_ilink3_sbe_v8_7.prefs.show_order_mass_action_report then
    show.order_mass_action_report = cme_futures_ilink3_sbe_v8_7.prefs.show_order_mass_action_report
    changed = true
  end
  if show.order_mass_action_request ~= cme_futures_ilink3_sbe_v8_7.prefs.show_order_mass_action_request then
    show.order_mass_action_request = cme_futures_ilink3_sbe_v8_7.prefs.show_order_mass_action_request
    changed = true
  end
  if show.order_mass_status_request ~= cme_futures_ilink3_sbe_v8_7.prefs.show_order_mass_status_request then
    show.order_mass_status_request = cme_futures_ilink3_sbe_v8_7.prefs.show_order_mass_status_request
    changed = true
  end
  if show.order_status_request ~= cme_futures_ilink3_sbe_v8_7.prefs.show_order_status_request then
    show.order_status_request = cme_futures_ilink3_sbe_v8_7.prefs.show_order_status_request
    changed = true
  end
  if show.packet ~= cme_futures_ilink3_sbe_v8_7.prefs.show_packet then
    show.packet = cme_futures_ilink3_sbe_v8_7.prefs.show_packet
    changed = true
  end
  if show.party_details_definition_request ~= cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_definition_request then
    show.party_details_definition_request = cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_definition_request
    changed = true
  end
  if show.party_details_definition_request_ack ~= cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_definition_request_ack then
    show.party_details_definition_request_ack = cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_definition_request_ack
    changed = true
  end
  if show.party_details_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_group then
    show.party_details_group = cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_group
    changed = true
  end
  if show.party_details_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_groups then
    show.party_details_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_groups
    changed = true
  end
  if show.party_details_list_report ~= cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_list_report then
    show.party_details_list_report = cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_list_report
    changed = true
  end
  if show.party_details_list_request ~= cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_list_request then
    show.party_details_list_request = cme_futures_ilink3_sbe_v8_7.prefs.show_party_details_list_request
    changed = true
  end
  if show.party_i_ds_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_party_i_ds_group then
    show.party_i_ds_group = cme_futures_ilink3_sbe_v8_7.prefs.show_party_i_ds_group
    changed = true
  end
  if show.party_i_ds_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_party_i_ds_groups then
    show.party_i_ds_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_party_i_ds_groups
    changed = true
  end
  if show.quote_cancel ~= cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel then
    show.quote_cancel = cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel
    changed = true
  end
  if show.quote_cancel_ack ~= cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack then
    show.quote_cancel_ack = cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack
    changed = true
  end
  if show.quote_cancel_ack_entry_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_entry_group then
    show.quote_cancel_ack_entry_group = cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_entry_group
    changed = true
  end
  if show.quote_cancel_ack_entry_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_entry_groups then
    show.quote_cancel_ack_entry_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_entry_groups
    changed = true
  end
  if show.quote_cancel_ack_set_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_set_group then
    show.quote_cancel_ack_set_group = cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_set_group
    changed = true
  end
  if show.quote_cancel_ack_set_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_set_groups then
    show.quote_cancel_ack_set_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_ack_set_groups
    changed = true
  end
  if show.quote_cancel_entry_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_entry_group then
    show.quote_cancel_entry_group = cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_entry_group
    changed = true
  end
  if show.quote_cancel_entry_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_entry_groups then
    show.quote_cancel_entry_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_entry_groups
    changed = true
  end
  if show.quote_cancel_set_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_set_group then
    show.quote_cancel_set_group = cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_set_group
    changed = true
  end
  if show.quote_cancel_set_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_set_groups then
    show.quote_cancel_set_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_quote_cancel_set_groups
    changed = true
  end
  if show.related_sym_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_related_sym_group then
    show.related_sym_group = cme_futures_ilink3_sbe_v8_7.prefs.show_related_sym_group
    changed = true
  end
  if show.related_sym_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_related_sym_groups then
    show.related_sym_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_related_sym_groups
    changed = true
  end
  if show.request_for_quote ~= cme_futures_ilink3_sbe_v8_7.prefs.show_request_for_quote then
    show.request_for_quote = cme_futures_ilink3_sbe_v8_7.prefs.show_request_for_quote
    changed = true
  end
  if show.request_for_quote_ack ~= cme_futures_ilink3_sbe_v8_7.prefs.show_request_for_quote_ack then
    show.request_for_quote_ack = cme_futures_ilink3_sbe_v8_7.prefs.show_request_for_quote_ack
    changed = true
  end
  if show.requesting_party_i_ds_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_requesting_party_i_ds_group then
    show.requesting_party_i_ds_group = cme_futures_ilink3_sbe_v8_7.prefs.show_requesting_party_i_ds_group
    changed = true
  end
  if show.requesting_party_i_ds_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_requesting_party_i_ds_groups then
    show.requesting_party_i_ds_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_requesting_party_i_ds_groups
    changed = true
  end
  if show.retransmission ~= cme_futures_ilink3_sbe_v8_7.prefs.show_retransmission then
    show.retransmission = cme_futures_ilink3_sbe_v8_7.prefs.show_retransmission
    changed = true
  end
  if show.retransmit_reject ~= cme_futures_ilink3_sbe_v8_7.prefs.show_retransmit_reject then
    show.retransmit_reject = cme_futures_ilink3_sbe_v8_7.prefs.show_retransmit_reject
    changed = true
  end
  if show.retransmit_request ~= cme_futures_ilink3_sbe_v8_7.prefs.show_retransmit_request then
    show.retransmit_request = cme_futures_ilink3_sbe_v8_7.prefs.show_retransmit_request
    changed = true
  end
  if show.risk_free_rate ~= cme_futures_ilink3_sbe_v8_7.prefs.show_risk_free_rate then
    show.risk_free_rate = cme_futures_ilink3_sbe_v8_7.prefs.show_risk_free_rate
    changed = true
  end
  if show.security_definition_request ~= cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_request then
    show.security_definition_request = cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_request
    changed = true
  end
  if show.security_definition_request_leg_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_request_leg_group then
    show.security_definition_request_leg_group = cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_request_leg_group
    changed = true
  end
  if show.security_definition_request_leg_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_request_leg_groups then
    show.security_definition_request_leg_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_request_leg_groups
    changed = true
  end
  if show.security_definition_response ~= cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_response then
    show.security_definition_response = cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_response
    changed = true
  end
  if show.security_definition_response_leg_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_response_leg_group then
    show.security_definition_response_leg_group = cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_response_leg_group
    changed = true
  end
  if show.security_definition_response_leg_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_response_leg_groups then
    show.security_definition_response_leg_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_security_definition_response_leg_groups
    changed = true
  end
  if show.sequence ~= cme_futures_ilink3_sbe_v8_7.prefs.show_sequence then
    show.sequence = cme_futures_ilink3_sbe_v8_7.prefs.show_sequence
    changed = true
  end
  if show.sides_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_sides_group then
    show.sides_group = cme_futures_ilink3_sbe_v8_7.prefs.show_sides_group
    changed = true
  end
  if show.sides_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_sides_groups then
    show.sides_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_sides_groups
    changed = true
  end
  if show.simple_open_frame ~= cme_futures_ilink3_sbe_v8_7.prefs.show_simple_open_frame then
    show.simple_open_frame = cme_futures_ilink3_sbe_v8_7.prefs.show_simple_open_frame
    changed = true
  end
  if show.simple_open_framing_header ~= cme_futures_ilink3_sbe_v8_7.prefs.show_simple_open_framing_header then
    show.simple_open_framing_header = cme_futures_ilink3_sbe_v8_7.prefs.show_simple_open_framing_header
    changed = true
  end
  if show.terminate ~= cme_futures_ilink3_sbe_v8_7.prefs.show_terminate then
    show.terminate = cme_futures_ilink3_sbe_v8_7.prefs.show_terminate
    changed = true
  end
  if show.time_to_expiration ~= cme_futures_ilink3_sbe_v8_7.prefs.show_time_to_expiration then
    show.time_to_expiration = cme_futures_ilink3_sbe_v8_7.prefs.show_time_to_expiration
    changed = true
  end
  if show.trd_reg_publications_group ~= cme_futures_ilink3_sbe_v8_7.prefs.show_trd_reg_publications_group then
    show.trd_reg_publications_group = cme_futures_ilink3_sbe_v8_7.prefs.show_trd_reg_publications_group
    changed = true
  end
  if show.trd_reg_publications_groups ~= cme_futures_ilink3_sbe_v8_7.prefs.show_trd_reg_publications_groups then
    show.trd_reg_publications_groups = cme_futures_ilink3_sbe_v8_7.prefs.show_trd_reg_publications_groups
    changed = true
  end
  if show.volatility ~= cme_futures_ilink3_sbe_v8_7.prefs.show_volatility then
    show.volatility = cme_futures_ilink3_sbe_v8_7.prefs.show_volatility
    changed = true
  end
  if show.payload ~= cme_futures_ilink3_sbe_v8_7.prefs.show_payload then
    show.payload = cme_futures_ilink3_sbe_v8_7.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Futures iLink3 Sbe 8.7
-----------------------------------------------------------------------

-- Size: Discretion Price
size_of.discretion_price = 8

-- Display: Discretion Price
display.discretion_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Discretion Price: No Value"
  end

  return "Discretion Price: "..value
end

-- Translate: Discretion Price
translate.discretion_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Discretion Price
dissect.discretion_price = function(buffer, offset, packet, parent)
  local length = size_of.discretion_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.discretion_price(raw)
  local display = display.discretion_price(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.discretion_price, range, value, display)

  return offset + length, value
end

-- Size: Delay To Time
size_of.delay_to_time = 8

-- Display: Delay To Time
display.delay_to_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Delay To Time: No Value"
  end

  return "Delay To Time: "..value
end

-- Dissect: Delay To Time
dissect.delay_to_time = function(buffer, offset, packet, parent)
  local length = size_of.delay_to_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.delay_to_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.delay_to_time, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Type
size_of.short_sale_type = 1

-- Display: Short Sale Type
display.short_sale_type = function(value)
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
  if value == 255 then
    return "Short Sale Type: No Value"
  end

  return "Short Sale Type: Unknown("..value..")"
end

-- Dissect: Short Sale Type
dissect.short_sale_type = function(buffer, offset, packet, parent)
  local length = size_of.short_sale_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.short_sale_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.short_sale_type, range, value, display)

  return offset + length, value
end

-- Size: Liquidity Flag
size_of.liquidity_flag = 1

-- Display: Liquidity Flag
display.liquidity_flag = function(value)
  if value == 0 then
    return "Liquidity Flag: False (0)"
  end
  if value == 1 then
    return "Liquidity Flag: True (1)"
  end
  if value == 255 then
    return "Liquidity Flag: No Value"
  end

  return "Liquidity Flag: Unknown("..value..")"
end

-- Dissect: Liquidity Flag
dissect.liquidity_flag = function(buffer, offset, packet, parent)
  local length = size_of.liquidity_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.liquidity_flag(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.liquidity_flag, range, value, display)

  return offset + length, value
end

-- Size: Split Msg
size_of.split_msg = 1

-- Display: Split Msg
display.split_msg = function(value)
  if value == 0 then
    return "Split Msg: Split Message Delayed (0)"
  end
  if value == 1 then
    return "Split Msg: Outof Order Message Delayed (1)"
  end
  if value == 2 then
    return "Split Msg: Complete Message Delayed (2)"
  end
  if value == 255 then
    return "Split Msg: No Value"
  end

  return "Split Msg: Unknown("..value..")"
end

-- Dissect: Split Msg
dissect.split_msg = function(buffer, offset, packet, parent)
  local length = size_of.split_msg
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.split_msg(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.split_msg, range, value, display)

  return offset + length, value
end

-- Size: Poss Retrans Flag
size_of.poss_retrans_flag = 1

-- Display: Poss Retrans Flag
display.poss_retrans_flag = function(value)
  if value == 0 then
    return "Poss Retrans Flag: False (0)"
  end
  if value == 1 then
    return "Poss Retrans Flag: True (1)"
  end

  return "Poss Retrans Flag: Unknown("..value..")"
end

-- Dissect: Poss Retrans Flag
dissect.poss_retrans_flag = function(buffer, offset, packet, parent)
  local length = size_of.poss_retrans_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.poss_retrans_flag(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.poss_retrans_flag, range, value, display)

  return offset + length, value
end

-- Size: Manual Order Indicator
size_of.manual_order_indicator = 1

-- Display: Manual Order Indicator
display.manual_order_indicator = function(value)
  if value == 0 then
    return "Manual Order Indicator: Automated (0)"
  end
  if value == 1 then
    return "Manual Order Indicator: Manual (1)"
  end

  return "Manual Order Indicator: Unknown("..value..")"
end

-- Dissect: Manual Order Indicator
dissect.manual_order_indicator = function(buffer, offset, packet, parent)
  local length = size_of.manual_order_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.manual_order_indicator(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.manual_order_indicator, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
size_of.time_in_force = 1

-- Display: Time In Force
display.time_in_force = function(value)
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
  if value == 99 then
    return "Time In Force: Good For Session (99)"
  end
  if value == 255 then
    return "Time In Force: No Value"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end
  if value == 7 then
    return "Side: Undisclosed (7)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = size_of.side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Ord Type Optional
size_of.ord_type_optional = 1

-- Display: Ord Type Optional
display.ord_type_optional = function(value)
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
  if value == '' then
    return "Ord Type Optional: No Value"
  end

  return "Ord Type Optional: Unknown("..value..")"
end

-- Dissect: Ord Type Optional
dissect.ord_type_optional = function(buffer, offset, packet, parent)
  local length = size_of.ord_type_optional
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.ord_type_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ord_type_optional, range, value, display)

  return offset + length, value
end

-- Size: Expire Date
size_of.expire_date = 2

-- Display: Expire Date
display.expire_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Expire Date: No Value"
  end

  return "Expire Date: "..value
end

-- Dissect: Expire Date
dissect.expire_date = function(buffer, offset, packet, parent)
  local length = size_of.expire_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.expire_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Size: Display Qty
size_of.display_qty = 4

-- Display: Display Qty
display.display_qty = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Dissect: Display Qty
dissect.display_qty = function(buffer, offset, packet, parent)
  local length = size_of.display_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.display_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Size: Min Qty
size_of.min_qty = 4

-- Display: Min Qty
display.min_qty = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Min Qty: No Value"
  end

  return "Min Qty: "..value
end

-- Dissect: Min Qty
dissect.min_qty = function(buffer, offset, packet, parent)
  local length = size_of.min_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.min_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Size: Leaves
size_of.leaves = 4

-- Display: Leaves
display.leaves = function(value)
  return "Leaves: "..value
end

-- Dissect: Leaves
dissect.leaves = function(buffer, offset, packet, parent)
  local length = size_of.leaves
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leaves(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leaves, range, value, display)

  return offset + length, value
end

-- Size: Cum Qty
size_of.cum_qty = 4

-- Display: Cum Qty
display.cum_qty = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
dissect.cum_qty = function(buffer, offset, packet, parent)
  local length = size_of.cum_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.cum_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
size_of.order_qty = 4

-- Display: Order Qty
display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
dissect.order_qty = function(buffer, offset, packet, parent)
  local length = size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Security Id
size_of.security_id = 4

-- Display: Security Id
display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
dissect.security_id = function(buffer, offset, packet, parent)
  local length = size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Location
size_of.location = 5

-- Display: Location
display.location = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Location: No Value"
  end

  return "Location: "..value
end

-- Dissect: Location
dissect.location = function(buffer, offset, packet, parent)
  local length = size_of.location
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

  local display = display.location(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.location, range, value, display)

  return offset + length, value
end

-- Size: Order Request Id
size_of.order_request_id = 8

-- Display: Order Request Id
display.order_request_id = function(value)
  return "Order Request Id: "..value
end

-- Dissect: Order Request Id
dissect.order_request_id = function(buffer, offset, packet, parent)
  local length = size_of.order_request_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_request_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_request_id, range, value, display)

  return offset + length, value
end

-- Size: Sending Time Epoch
size_of.sending_time_epoch = 8

-- Display: Sending Time Epoch
display.sending_time_epoch = function(value)
  return "Sending Time Epoch: "..value
end

-- Dissect: Sending Time Epoch
dissect.sending_time_epoch = function(buffer, offset, packet, parent)
  local length = size_of.sending_time_epoch
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.sending_time_epoch(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.sending_time_epoch, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
size_of.transact_time = 8

-- Display: Transact Time
display.transact_time = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
dissect.transact_time = function(buffer, offset, packet, parent)
  local length = size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.transact_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Order Id
size_of.order_id = 8

-- Display: Order Id
display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
dissect.order_id = function(buffer, offset, packet, parent)
  local length = size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Party Details List Req Id
size_of.party_details_list_req_id = 8

-- Display: Party Details List Req Id
display.party_details_list_req_id = function(value)
  return "Party Details List Req Id: "..value
end

-- Dissect: Party Details List Req Id
dissect.party_details_list_req_id = function(buffer, offset, packet, parent)
  local length = size_of.party_details_list_req_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.party_details_list_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_details_list_req_id, range, value, display)

  return offset + length, value
end

-- Size: ClOrdId
size_of.clordid = 20

-- Display: ClOrdId
display.clordid = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "ClOrdId: No Value"
  end

  return "ClOrdId: "..value
end

-- Dissect: ClOrdId
dissect.clordid = function(buffer, offset, packet, parent)
  local length = size_of.clordid
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

  local display = display.clordid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.clordid, range, value, display)

  return offset + length, value
end

-- Size: Sender Id
size_of.sender_id = 20

-- Display: Sender Id
display.sender_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Id: No Value"
  end

  return "Sender Id: "..value
end

-- Dissect: Sender Id
dissect.sender_id = function(buffer, offset, packet, parent)
  local length = size_of.sender_id
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

  local display = display.sender_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.sender_id, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
size_of.exec_id = 40

-- Display: Exec Id
display.exec_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exec Id: No Value"
  end

  return "Exec Id: "..value
end

-- Dissect: Exec Id
dissect.exec_id = function(buffer, offset, packet, parent)
  local length = size_of.exec_id
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

  local display = display.exec_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Uuid
size_of.uuid = 8

-- Display: Uuid
display.uuid = function(value)
  return "Uuid: "..value
end

-- Dissect: Uuid
dissect.uuid = function(buffer, offset, packet, parent)
  local length = size_of.uuid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.uuid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.uuid, range, value, display)

  return offset + length, value
end

-- Size: Seq Num
size_of.seq_num = 4

-- Display: Seq Num
display.seq_num = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
dissect.seq_num = function(buffer, offset, packet, parent)
  local length = size_of.seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.seq_num(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Pending Replace
size_of.execution_report_pending_replace = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.cum_qty

  index = index + size_of.leaves

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.expire_date

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.split_msg

  index = index + size_of.liquidity_flag

  index = index + size_of.short_sale_type

  index = index + size_of.delay_to_time

  index = index + size_of.discretion_price

  return index
end

-- Display: Execution Report Pending Replace
display.execution_report_pending_replace = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Pending Replace
dissect.execution_report_pending_replace_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Leaves: 4 Byte Unsigned Fixed Width Integer
  index, leaves = dissect.leaves(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Replace
dissect.execution_report_pending_replace = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_pending_replace then
    local length = size_of.execution_report_pending_replace(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_pending_replace(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_pending_replace, range, display)
  end

  return dissect.execution_report_pending_replace_fields(buffer, offset, packet, parent)
end

-- Size: Leaves Qty Optional
size_of.leaves_qty_optional = 4

-- Display: Leaves Qty Optional
display.leaves_qty_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leaves Qty Optional: No Value"
  end

  return "Leaves Qty Optional: "..value
end

-- Dissect: Leaves Qty Optional
dissect.leaves_qty_optional = function(buffer, offset, packet, parent)
  local length = size_of.leaves_qty_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leaves_qty_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leaves_qty_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Pending Cancel
size_of.execution_report_pending_cancel = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.cum_qty

  index = index + size_of.leaves_qty_optional

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.expire_date

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.split_msg

  index = index + size_of.liquidity_flag

  index = index + size_of.delay_to_time

  index = index + size_of.discretion_price

  return index
end

-- Display: Execution Report Pending Cancel
display.execution_report_pending_cancel = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Pending Cancel
dissect.execution_report_pending_cancel_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Leaves Qty Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leaves_qty_optional = dissect.leaves_qty_optional(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Pending Cancel
dissect.execution_report_pending_cancel = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_pending_cancel then
    local length = size_of.execution_report_pending_cancel(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_pending_cancel(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_pending_cancel, range, display)
  end

  return dissect.execution_report_pending_cancel_fields(buffer, offset, packet, parent)
end

-- Size: Quote Error Code
size_of.quote_error_code = 2

-- Display: Quote Error Code
display.quote_error_code = function(value)
  return "Quote Error Code: "..value
end

-- Dissect: Quote Error Code
dissect.quote_error_code = function(buffer, offset, packet, parent)
  local length = size_of.quote_error_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_error_code(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_error_code, range, value, display)

  return offset + length, value
end

-- Size: Quote Set Id
size_of.quote_set_id = 2

-- Display: Quote Set Id
display.quote_set_id = function(value)
  return "Quote Set Id: "..value
end

-- Dissect: Quote Set Id
dissect.quote_set_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_set_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_set_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_set_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Cancel Ack Set Group
size_of.quote_cancel_ack_set_group = function(buffer, offset)
  local index = 0

  index = index + size_of.quote_set_id

  index = index + size_of.quote_error_code

  return index
end

-- Display: Quote Cancel Ack Set Group
display.quote_cancel_ack_set_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Set Group
dissect.quote_cancel_ack_set_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Set Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_set_id = dissect.quote_set_id(buffer, index, packet, parent)

  -- Quote Error Code: 2 Byte Unsigned Fixed Width Integer
  index, quote_error_code = dissect.quote_error_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Ack Set Group
dissect.quote_cancel_ack_set_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_cancel_ack_set_group then
    local length = size_of.quote_cancel_ack_set_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel_ack_set_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_ack_set_group, range, display)
  end

  return dissect.quote_cancel_ack_set_group_fields(buffer, offset, packet, parent)
end

-- Size: Num In Group
size_of.num_in_group = 1

-- Display: Num In Group
display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = size_of.num_in_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.num_in_group, range, value, display)

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
  local length = size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_length(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size
size_of.group_size = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length

  index = index + size_of.num_in_group

  return index
end

-- Display: Group Size
display.group_size = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size
dissect.group_size_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
dissect.group_size = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size then
    local length = size_of.group_size(buffer, offset)
    local range = buffer(offset, length)
    local display = display.group_size(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.group_size, range, display)
  end

  return dissect.group_size_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Cancel Ack Set Groups
size_of.quote_cancel_ack_set_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local quote_cancel_ack_set_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_cancel_ack_set_group_count * 4

  return index
end

-- Display: Quote Cancel Ack Set Groups
display.quote_cancel_ack_set_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Set Groups
dissect.quote_cancel_ack_set_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Quote Cancel Ack Set Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.quote_cancel_ack_set_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Cancel Ack Set Groups
dissect.quote_cancel_ack_set_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_ack_set_groups then
    local length = size_of.quote_cancel_ack_set_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel_ack_set_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_ack_set_groups, range, display)
  end

  return dissect.quote_cancel_ack_set_groups_fields(buffer, offset, packet, parent)
end

-- Size: Quote Entry Reject Reason
size_of.quote_entry_reject_reason = 1

-- Display: Quote Entry Reject Reason
display.quote_entry_reject_reason = function(value)
  return "Quote Entry Reject Reason: "..value
end

-- Dissect: Quote Entry Reject Reason
dissect.quote_entry_reject_reason = function(buffer, offset, packet, parent)
  local length = size_of.quote_entry_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_entry_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_entry_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Quote Entry Id
size_of.quote_entry_id = 4

-- Display: Quote Entry Id
display.quote_entry_id = function(value)
  return "Quote Entry Id: "..value
end

-- Dissect: Quote Entry Id
dissect.quote_entry_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_entry_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_entry_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_entry_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Cancel Ack Entry Group
size_of.quote_cancel_ack_entry_group = function(buffer, offset)
  local index = 0

  index = index + size_of.quote_entry_id

  index = index + size_of.security_id

  index = index + size_of.quote_entry_reject_reason

  return index
end

-- Display: Quote Cancel Ack Entry Group
display.quote_cancel_ack_entry_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Entry Group
dissect.quote_cancel_ack_entry_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_entry_id = dissect.quote_entry_id(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Quote Entry Reject Reason: 1 Byte Unsigned Fixed Width Integer
  index, quote_entry_reject_reason = dissect.quote_entry_reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Ack Entry Group
dissect.quote_cancel_ack_entry_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_cancel_ack_entry_group then
    local length = size_of.quote_cancel_ack_entry_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel_ack_entry_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_ack_entry_group, range, display)
  end

  return dissect.quote_cancel_ack_entry_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Cancel Ack Entry Groups
size_of.quote_cancel_ack_entry_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local quote_cancel_ack_entry_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_cancel_ack_entry_group_count * 9

  return index
end

-- Display: Quote Cancel Ack Entry Groups
display.quote_cancel_ack_entry_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel Ack Entry Groups
dissect.quote_cancel_ack_entry_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Quote Cancel Ack Entry Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = dissect.quote_cancel_ack_entry_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Cancel Ack Entry Groups
dissect.quote_cancel_ack_entry_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_ack_entry_groups then
    local length = size_of.quote_cancel_ack_entry_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel_ack_entry_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_ack_entry_groups, range, display)
  end

  return dissect.quote_cancel_ack_entry_groups_fields(buffer, offset, packet, parent)
end

-- Size: Tot No Quote Entries Optional
size_of.tot_no_quote_entries_optional = 1

-- Display: Tot No Quote Entries Optional
display.tot_no_quote_entries_optional = function(value)
  -- Check if field has value
  if value == 255 then
    return "Tot No Quote Entries Optional: No Value"
  end

  return "Tot No Quote Entries Optional: "..value
end

-- Dissect: Tot No Quote Entries Optional
dissect.tot_no_quote_entries_optional = function(buffer, offset, packet, parent)
  local length = size_of.tot_no_quote_entries_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tot_no_quote_entries_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.tot_no_quote_entries_optional, range, value, display)

  return offset + length, value
end

-- Size: Unsolicited Cancel Type
size_of.unsolicited_cancel_type = 1

-- Display: Unsolicited Cancel Type
display.unsolicited_cancel_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unsolicited Cancel Type: No Value"
  end

  return "Unsolicited Cancel Type: "..value
end

-- Dissect: Unsolicited Cancel Type
dissect.unsolicited_cancel_type = function(buffer, offset, packet, parent)
  local length = size_of.unsolicited_cancel_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.unsolicited_cancel_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.unsolicited_cancel_type, range, value, display)

  return offset + length, value
end

-- Size: Mm Protection Reset
size_of.mm_protection_reset = 1

-- Display: Mm Protection Reset
display.mm_protection_reset = function(value)
  if value == 0 then
    return "Mm Protection Reset: False (0)"
  end
  if value == 1 then
    return "Mm Protection Reset: True (1)"
  end

  return "Mm Protection Reset: Unknown("..value..")"
end

-- Dissect: Mm Protection Reset
dissect.mm_protection_reset = function(buffer, offset, packet, parent)
  local length = size_of.mm_protection_reset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mm_protection_reset(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mm_protection_reset, range, value, display)

  return offset + length, value
end

-- Size: No Processed Entries 32
size_of.no_processed_entries_32 = 4

-- Display: No Processed Entries 32
display.no_processed_entries_32 = function(value)
  return "No Processed Entries 32: "..value
end

-- Dissect: No Processed Entries 32
dissect.no_processed_entries_32 = function(buffer, offset, packet, parent)
  local length = size_of.no_processed_entries_32
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_processed_entries_32(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.no_processed_entries_32, range, value, display)

  return offset + length, value
end

-- Size: Quote Cxl Status
size_of.quote_cxl_status = 1

-- Display: Quote Cxl Status
display.quote_cxl_status = function(value)
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
dissect.quote_cxl_status = function(buffer, offset, packet, parent)
  local length = size_of.quote_cxl_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_cxl_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cxl_status, range, value, display)

  return offset + length, value
end

-- Size: Delay Duration
size_of.delay_duration = 2

-- Display: Delay Duration
display.delay_duration = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Delay Duration: No Value"
  end

  return "Delay Duration: "..value
end

-- Dissect: Delay Duration
dissect.delay_duration = function(buffer, offset, packet, parent)
  local length = size_of.delay_duration
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.delay_duration(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.delay_duration, range, value, display)

  return offset + length, value
end

-- Size: Quote Reject Reason
size_of.quote_reject_reason = 2

-- Display: Quote Reject Reason
display.quote_reject_reason = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Quote Reject Reason: No Value"
  end

  return "Quote Reject Reason: "..value
end

-- Dissect: Quote Reject Reason
dissect.quote_reject_reason = function(buffer, offset, packet, parent)
  local length = size_of.quote_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Quote Id
size_of.quote_id = 4

-- Display: Quote Id
display.quote_id = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
dissect.quote_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Size: Cancelled Symbol
size_of.cancelled_symbol = 6

-- Display: Cancelled Symbol
display.cancelled_symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cancelled Symbol: No Value"
  end

  return "Cancelled Symbol: "..value
end

-- Dissect: Cancelled Symbol
dissect.cancelled_symbol = function(buffer, offset, packet, parent)
  local length = size_of.cancelled_symbol
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

  local display = display.cancelled_symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.cancelled_symbol, range, value, display)

  return offset + length, value
end

-- Size: Request Time
size_of.request_time = 8

-- Display: Request Time
display.request_time = function(value)
  return "Request Time: "..value
end

-- Dissect: Request Time
dissect.request_time = function(buffer, offset, packet, parent)
  local length = size_of.request_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.request_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.request_time, range, value, display)

  return offset + length, value
end

-- Size: Text
size_of.text = 256

-- Display: Text
display.text = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text: No Value"
  end

  return "Text: "..value
end

-- Dissect: Text
dissect.text = function(buffer, offset, packet, parent)
  local length = size_of.text
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

  local display = display.text(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.text, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Cancel Ack
size_of.quote_cancel_ack = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.text

  index = index + size_of.sender_id

  index = index + size_of.party_details_list_req_id

  index = index + size_of.request_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.cancelled_symbol

  index = index + size_of.location

  index = index + size_of.quote_id

  index = index + size_of.quote_reject_reason

  index = index + size_of.delay_duration

  index = index + size_of.manual_order_indicator

  index = index + size_of.quote_cxl_status

  index = index + size_of.no_processed_entries_32

  index = index + size_of.mm_protection_reset

  index = index + size_of.unsolicited_cancel_type

  index = index + size_of.split_msg

  index = index + size_of.tot_no_quote_entries_optional

  index = index + size_of.liquidity_flag

  index = index + size_of.poss_retrans_flag

  index = index + size_of.delay_to_time

  index = index + size_of.quote_cancel_ack_entry_groups(buffer, offset + index)

  index = index + size_of.quote_cancel_ack_set_groups(buffer, offset + index)

  return index
end

-- Display: Quote Cancel Ack
display.quote_cancel_ack = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel Ack
dissect.quote_cancel_ack_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String Nullable
  index, text = dissect.text(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = dissect.request_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Cancelled Symbol: 6 Byte Ascii String Nullable
  index, cancelled_symbol = dissect.cancelled_symbol(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Quote Reject Reason: 2 Byte Unsigned Fixed Width Integer Nullable
  index, quote_reject_reason = dissect.quote_reject_reason(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = dissect.delay_duration(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Quote Cxl Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, quote_cxl_status = dissect.quote_cxl_status(buffer, index, packet, parent)

  -- No Processed Entries 32: 4 Byte Unsigned Fixed Width Integer
  index, no_processed_entries_32 = dissect.no_processed_entries_32(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset = dissect.mm_protection_reset(buffer, index, packet, parent)

  -- Unsolicited Cancel Type: 1 Byte Ascii String Nullable
  index, unsolicited_cancel_type = dissect.unsolicited_cancel_type(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Tot No Quote Entries Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, tot_no_quote_entries_optional = dissect.tot_no_quote_entries_optional(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  -- Quote Cancel Ack Entry Groups: Struct of 2 fields
  index, quote_cancel_ack_entry_groups = dissect.quote_cancel_ack_entry_groups(buffer, index, packet, parent)

  -- Quote Cancel Ack Set Groups: Struct of 2 fields
  index, quote_cancel_ack_set_groups = dissect.quote_cancel_ack_set_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Ack
dissect.quote_cancel_ack = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_ack then
    local length = size_of.quote_cancel_ack(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel_ack(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_ack, range, display)
  end

  return dissect.quote_cancel_ack_fields(buffer, offset, packet, parent)
end

-- Size: Cxl Quantity
size_of.cxl_quantity = 4

-- Display: Cxl Quantity
display.cxl_quantity = function(value)
  return "Cxl Quantity: "..value
end

-- Dissect: Cxl Quantity
dissect.cxl_quantity = function(buffer, offset, packet, parent)
  local length = size_of.cxl_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.cxl_quantity(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.cxl_quantity, range, value, display)

  return offset + length, value
end

-- Size: Affected Order Id
size_of.affected_order_id = 8

-- Display: Affected Order Id
display.affected_order_id = function(value)
  return "Affected Order Id: "..value
end

-- Dissect: Affected Order Id
dissect.affected_order_id = function(buffer, offset, packet, parent)
  local length = size_of.affected_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.affected_order_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.affected_order_id, range, value, display)

  return offset + length, value
end

-- Size: OrigClOrdId
size_of.origclordid = 20

-- Display: OrigClOrdId
display.origclordid = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "OrigClOrdId: No Value"
  end

  return "OrigClOrdId: "..value
end

-- Dissect: OrigClOrdId
dissect.origclordid = function(buffer, offset, packet, parent)
  local length = size_of.origclordid
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

  local display = display.origclordid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.origclordid, range, value, display)

  return offset + length, value
end

-- Calculate size of: Affected Orders Group
size_of.affected_orders_group = function(buffer, offset)
  local index = 0

  index = index + size_of.origclordid

  index = index + size_of.affected_order_id

  index = index + size_of.cxl_quantity

  return index
end

-- Display: Affected Orders Group
display.affected_orders_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Affected Orders Group
dissect.affected_orders_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- OrigClOrdId: 20 Byte Ascii String
  index, origclordid = dissect.origclordid(buffer, index, packet, parent)

  -- Affected Order Id: 8 Byte Unsigned Fixed Width Integer
  index, affected_order_id = dissect.affected_order_id(buffer, index, packet, parent)

  -- Cxl Quantity: 4 Byte Unsigned Fixed Width Integer
  index, cxl_quantity = dissect.cxl_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Affected Orders Group
dissect.affected_orders_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.affected_orders_group then
    local length = size_of.affected_orders_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.affected_orders_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.affected_orders_group, range, display)
  end

  return dissect.affected_orders_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Affected Orders Groups
size_of.affected_orders_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local affected_orders_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + affected_orders_group_count * 32

  return index
end

-- Display: Affected Orders Groups
display.affected_orders_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Affected Orders Groups
dissect.affected_orders_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Affected Orders Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = dissect.affected_orders_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Affected Orders Groups
dissect.affected_orders_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.affected_orders_groups then
    local length = size_of.affected_orders_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.affected_orders_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.affected_orders_groups, range, display)
  end

  return dissect.affected_orders_groups_fields(buffer, offset, packet, parent)
end

-- Size: Mass Cancel Tif
size_of.mass_cancel_tif = 1

-- Display: Mass Cancel Tif
display.mass_cancel_tif = function(value)
  if value == 0 then
    return "Mass Cancel Tif: Day (0)"
  end
  if value == 1 then
    return "Mass Cancel Tif: Good Till Cancel (1)"
  end
  if value == 6 then
    return "Mass Cancel Tif: Good Till Date (6)"
  end
  if value == 255 then
    return "Mass Cancel Tif: No Value"
  end

  return "Mass Cancel Tif: Unknown("..value..")"
end

-- Dissect: Mass Cancel Tif
dissect.mass_cancel_tif = function(buffer, offset, packet, parent)
  local length = size_of.mass_cancel_tif
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mass_cancel_tif(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_cancel_tif, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Ord Typ
size_of.mass_action_ord_typ = 1

-- Display: Mass Action Ord Typ
display.mass_action_ord_typ = function(value)
  if value == "2" then
    return "Mass Action Ord Typ: Limit (2)"
  end
  if value == "4" then
    return "Mass Action Ord Typ: Stop Limit (4)"
  end
  if value == '' then
    return "Mass Action Ord Typ: No Value"
  end

  return "Mass Action Ord Typ: Unknown("..value..")"
end

-- Dissect: Mass Action Ord Typ
dissect.mass_action_ord_typ = function(buffer, offset, packet, parent)
  local length = size_of.mass_action_ord_typ
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.mass_action_ord_typ(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_action_ord_typ, range, value, display)

  return offset + length, value
end

-- Size: Side Optional
size_of.side_optional = 1

-- Display: Side Optional
display.side_optional = function(value)
  if value == 1 then
    return "Side Optional: Buy (1)"
  end
  if value == 2 then
    return "Side Optional: Sell (2)"
  end
  if value == 255 then
    return "Side Optional: No Value"
  end

  return "Side Optional: Unknown("..value..")"
end

-- Dissect: Side Optional
dissect.side_optional = function(buffer, offset, packet, parent)
  local length = size_of.side_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Size: Mass Cancel Request Type
size_of.mass_cancel_request_type = 1

-- Display: Mass Cancel Request Type
display.mass_cancel_request_type = function(value)
  if value == 100 then
    return "Mass Cancel Request Type: Sender Sub Id (100)"
  end
  if value == 101 then
    return "Mass Cancel Request Type: Account (101)"
  end
  if value == 255 then
    return "Mass Cancel Request Type: No Value"
  end

  return "Mass Cancel Request Type: Unknown("..value..")"
end

-- Dissect: Mass Cancel Request Type
dissect.mass_cancel_request_type = function(buffer, offset, packet, parent)
  local length = size_of.mass_cancel_request_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mass_cancel_request_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_cancel_request_type, range, value, display)

  return offset + length, value
end

-- Size: Market Segment Id
size_of.market_segment_id = 1

-- Display: Market Segment Id
display.market_segment_id = function(value)
  -- Check if field has value
  if value == 255 then
    return "Market Segment Id: No Value"
  end

  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
dissect.market_segment_id = function(buffer, offset, packet, parent)
  local length = size_of.market_segment_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Reject Reason
size_of.mass_action_reject_reason = 1

-- Display: Mass Action Reject Reason
display.mass_action_reject_reason = function(value)
  -- Check if field has value
  if value == 255 then
    return "Mass Action Reject Reason: No Value"
  end

  return "Mass Action Reject Reason: "..value
end

-- Dissect: Mass Action Reject Reason
dissect.mass_action_reject_reason = function(buffer, offset, packet, parent)
  local length = size_of.mass_action_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mass_action_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_action_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Last Fragment
size_of.last_fragment = 1

-- Display: Last Fragment
display.last_fragment = function(value)
  if value == 0 then
    return "Last Fragment: False (0)"
  end
  if value == 1 then
    return "Last Fragment: True (1)"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
dissect.last_fragment = function(buffer, offset, packet, parent)
  local length = size_of.last_fragment
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_fragment(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Size: Total Affected Orders
size_of.total_affected_orders = 4

-- Display: Total Affected Orders
display.total_affected_orders = function(value)
  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
dissect.total_affected_orders = function(buffer, offset, packet, parent)
  local length = size_of.total_affected_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.total_affected_orders(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Scope
size_of.mass_action_scope = 1

-- Display: Mass Action Scope
display.mass_action_scope = function(value)
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
dissect.mass_action_scope = function(buffer, offset, packet, parent)
  local length = size_of.mass_action_scope
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mass_action_scope(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_action_scope, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Response
size_of.mass_action_response = 1

-- Display: Mass Action Response
display.mass_action_response = function(value)
  if value == 0 then
    return "Mass Action Response: Rejected (0)"
  end
  if value == 1 then
    return "Mass Action Response: Accepted (1)"
  end

  return "Mass Action Response: Unknown("..value..")"
end

-- Dissect: Mass Action Response
dissect.mass_action_response = function(buffer, offset, packet, parent)
  local length = size_of.mass_action_response
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mass_action_response(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_action_response, range, value, display)

  return offset + length, value
end

-- Size: Security Id Optional
size_of.security_id_optional = 4

-- Display: Security Id Optional
display.security_id_optional = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Security Id Optional: No Value"
  end

  return "Security Id Optional: "..value
end

-- Dissect: Security Id Optional
dissect.security_id_optional = function(buffer, offset, packet, parent)
  local length = size_of.security_id_optional
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.security_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Security Group
size_of.security_group = 6

-- Display: Security Group
display.security_group = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Group: No Value"
  end

  return "Security Group: "..value
end

-- Dissect: Security Group
dissect.security_group = function(buffer, offset, packet, parent)
  local length = size_of.security_group
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

  local display = display.security_group(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_group, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Report Id
size_of.mass_action_report_id = 8

-- Display: Mass Action Report Id
display.mass_action_report_id = function(value)
  return "Mass Action Report Id: "..value
end

-- Dissect: Mass Action Report Id
dissect.mass_action_report_id = function(buffer, offset, packet, parent)
  local length = size_of.mass_action_report_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.mass_action_report_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_action_report_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Mass Action Report
size_of.order_mass_action_report = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.sender_id

  index = index + size_of.party_details_list_req_id

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.mass_action_report_id

  index = index + size_of.security_group

  index = index + size_of.location

  index = index + size_of.security_id_optional

  index = index + size_of.delay_duration

  index = index + size_of.mass_action_response

  index = index + size_of.manual_order_indicator

  index = index + size_of.mass_action_scope

  index = index + size_of.total_affected_orders

  index = index + size_of.last_fragment

  index = index + size_of.mass_action_reject_reason

  index = index + size_of.market_segment_id

  index = index + size_of.mass_cancel_request_type

  index = index + size_of.side_optional

  index = index + size_of.mass_action_ord_typ

  index = index + size_of.mass_cancel_tif

  index = index + size_of.split_msg

  index = index + size_of.liquidity_flag

  index = index + size_of.poss_retrans_flag

  index = index + size_of.delay_to_time

  index = index + size_of.affected_orders_groups(buffer, offset + index)

  return index
end

-- Display: Order Mass Action Report
display.order_mass_action_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Mass Action Report
dissect.order_mass_action_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String Nullable
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = dissect.security_id_optional(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = dissect.delay_duration(buffer, index, packet, parent)

  -- Mass Action Response: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_action_response = dissect.mass_action_response(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Mass Action Scope: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, mass_action_scope = dissect.mass_action_scope(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Unsigned Fixed Width Integer
  index, total_affected_orders = dissect.total_affected_orders(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = dissect.last_fragment(buffer, index, packet, parent)

  -- Mass Action Reject Reason: 1 Byte Unsigned Fixed Width Integer Nullable
  index, mass_action_reject_reason = dissect.mass_action_reject_reason(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Mass Cancel Request Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_cancel_request_type = dissect.mass_cancel_request_type(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = dissect.side_optional(buffer, index, packet, parent)

  -- Mass Action Ord Typ: 1 Byte Ascii String Enum with 3 values
  index, mass_action_ord_typ = dissect.mass_action_ord_typ(buffer, index, packet, parent)

  -- Mass Cancel Tif: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mass_cancel_tif = dissect.mass_cancel_tif(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  -- Affected Orders Groups: Struct of 2 fields
  index, affected_orders_groups = dissect.affected_orders_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Report
dissect.order_mass_action_report = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_mass_action_report then
    local length = size_of.order_mass_action_report(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_mass_action_report(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_mass_action_report, range, display)
  end

  return dissect.order_mass_action_report_fields(buffer, offset, packet, parent)
end

-- Size: Leg Ratio Qty
size_of.leg_ratio_qty = 1

-- Display: Leg Ratio Qty
display.leg_ratio_qty = function(value)
  -- Check if field has value
  if value == 255 then
    return "Leg Ratio Qty: No Value"
  end

  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Side
size_of.leg_side = 1

-- Display: Leg Side
display.leg_side = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end
  if value == 7 then
    return "Leg Side: Undisclosed (7)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
dissect.leg_side = function(buffer, offset, packet, parent)
  local length = size_of.leg_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Id
size_of.leg_security_id = 4

-- Display: Leg Security Id
display.leg_security_id = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
dissect.leg_security_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Size: Exponent
size_of.exponent = 1

-- Display: Exponent
display.exponent = function(value)
  -- Check if field has value
  if value == 127 then
    return "Exponent: No Value"
  end

  return "Exponent: "..value
end

-- Dissect: Exponent
dissect.exponent = function(buffer, offset, packet, parent)
  local length = size_of.exponent
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.exponent(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.exponent, range, value, display)

  return offset + length, value
end

-- Size: Mantissa 32
size_of.mantissa_32 = 4

-- Display: Mantissa 32
display.mantissa_32 = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Mantissa 32: No Value"
  end

  return "Mantissa 32: "..value
end

-- Dissect: Mantissa 32
dissect.mantissa_32 = function(buffer, offset, packet, parent)
  local length = size_of.mantissa_32
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.mantissa_32(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mantissa_32, range, value, display)

  return offset + length, value
end

-- Calculate size of: Leg Option Delta
size_of.leg_option_delta = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa_32

  index = index + size_of.exponent

  return index
end

-- Display: Leg Option Delta
display.leg_option_delta = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Leg Option Delta
dissect.leg_option_delta_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_32 = dissect.mantissa_32(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index, mantissa_32, exponent
end

-- Dissect: Leg Option Delta
dissect.leg_option_delta = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.leg_option_delta then
    local length = size_of.leg_option_delta(buffer, offset)
    local range = buffer(offset, length)
    local display = display.leg_option_delta(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.leg_option_delta, range, display)
  end

  return dissect.leg_option_delta_fields(buffer, offset, packet, parent)
end

-- Size: Leg Price
size_of.leg_price = 8

-- Display: Leg Price
display.leg_price = function(raw, value)
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
dissect.leg_price = function(buffer, offset, packet, parent)
  local length = size_of.leg_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.leg_price(raw)
  local display = display.leg_price(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Definition Response Leg Group
size_of.security_definition_response_leg_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_price

  index = index + size_of.leg_option_delta(buffer, offset + index)

  index = index + size_of.leg_security_id

  index = index + size_of.leg_side

  index = index + size_of.leg_ratio_qty

  return index
end

-- Display: Security Definition Response Leg Group
display.security_definition_response_leg_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Response Leg Group
dissect.security_definition_response_leg_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price = dissect.leg_price(buffer, index, packet, parent)

  -- Leg Option Delta: Struct of 2 fields
  index, leg_option_delta = dissect.leg_option_delta(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- Leg Ratio Qty: 1 Byte Unsigned Fixed Width Integer Nullable
  index, leg_ratio_qty = dissect.leg_ratio_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Response Leg Group
dissect.security_definition_response_leg_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_definition_response_leg_group then
    local length = size_of.security_definition_response_leg_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_response_leg_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_definition_response_leg_group, range, display)
  end

  return dissect.security_definition_response_leg_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Security Definition Response Leg Groups
size_of.security_definition_response_leg_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local security_definition_response_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_definition_response_leg_group_count * 19

  return index
end

-- Display: Security Definition Response Leg Groups
display.security_definition_response_leg_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Response Leg Groups
dissect.security_definition_response_leg_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Security Definition Response Leg Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.security_definition_response_leg_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Security Definition Response Leg Groups
dissect.security_definition_response_leg_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_response_leg_groups then
    local length = size_of.security_definition_response_leg_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_response_leg_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_definition_response_leg_groups, range, display)
  end

  return dissect.security_definition_response_leg_groups_fields(buffer, offset, packet, parent)
end

-- Size: Auto Quote Request
size_of.auto_quote_request = 1

-- Display: Auto Quote Request
display.auto_quote_request = function(value)
  if value == 0 then
    return "Auto Quote Request: False (0)"
  end
  if value == 1 then
    return "Auto Quote Request: True (1)"
  end

  return "Auto Quote Request: Unknown("..value..")"
end

-- Dissect: Auto Quote Request
dissect.auto_quote_request = function(buffer, offset, packet, parent)
  local length = size_of.auto_quote_request
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.auto_quote_request(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.auto_quote_request, range, value, display)

  return offset + length, value
end

-- Size: Expiration Cycle
size_of.expiration_cycle = 1

-- Display: Expiration Cycle
display.expiration_cycle = function(value)
  if value == 0 then
    return "Expiration Cycle: Expire On Trading Session Close (0)"
  end
  if value == 2 then
    return "Expiration Cycle: Expirationatgivendate (2)"
  end
  if value == 255 then
    return "Expiration Cycle: No Value"
  end

  return "Expiration Cycle: Unknown("..value..")"
end

-- Dissect: Expiration Cycle
dissect.expiration_cycle = function(buffer, offset, packet, parent)
  local length = size_of.expiration_cycle
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.expiration_cycle(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.expiration_cycle, range, value, display)

  return offset + length, value
end

-- Size: Security Response Type
size_of.security_response_type = 1

-- Display: Security Response Type
display.security_response_type = function(value)
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
dissect.security_response_type = function(buffer, offset, packet, parent)
  local length = size_of.security_response_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.security_response_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_response_type, range, value, display)

  return offset + length, value
end

-- Size: Termination Type
size_of.termination_type = 8

-- Display: Termination Type
display.termination_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Termination Type: No Value"
  end

  return "Termination Type: "..value
end

-- Dissect: Termination Type
dissect.termination_type = function(buffer, offset, packet, parent)
  local length = size_of.termination_type
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

  local display = display.termination_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.termination_type, range, value, display)

  return offset + length, value
end

-- Size: Source Repo Id
size_of.source_repo_id = 4

-- Display: Source Repo Id
display.source_repo_id = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Source Repo Id: No Value"
  end

  return "Source Repo Id: "..value
end

-- Dissect: Source Repo Id
dissect.source_repo_id = function(buffer, offset, packet, parent)
  local length = size_of.source_repo_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.source_repo_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.source_repo_id, range, value, display)

  return offset + length, value
end

-- Size: Max No Of Substitutions
size_of.max_no_of_substitutions = 1

-- Display: Max No Of Substitutions
display.max_no_of_substitutions = function(value)
  -- Check if field has value
  if value == 255 then
    return "Max No Of Substitutions: No Value"
  end

  return "Max No Of Substitutions: "..value
end

-- Dissect: Max No Of Substitutions
dissect.max_no_of_substitutions = function(buffer, offset, packet, parent)
  local length = size_of.max_no_of_substitutions
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.max_no_of_substitutions(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.max_no_of_substitutions, range, value, display)

  return offset + length, value
end

-- Size: End Date
size_of.end_date = 2

-- Display: End Date
display.end_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "End Date: No Value"
  end

  return "End Date: "..value
end

-- Dissect: End Date
dissect.end_date = function(buffer, offset, packet, parent)
  local length = size_of.end_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.end_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.end_date, range, value, display)

  return offset + length, value
end

-- Size: Start Date
size_of.start_date = 2

-- Display: Start Date
display.start_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Start Date: No Value"
  end

  return "Start Date: "..value
end

-- Dissect: Start Date
dissect.start_date = function(buffer, offset, packet, parent)
  local length = size_of.start_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.start_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.start_date, range, value, display)

  return offset + length, value
end

-- Size: Week
size_of.week = 1

-- Display: Week
display.week = function(value)
  -- Check if field has value
  if value == 255 then
    return "Week: No Value"
  end

  return "Week: "..value
end

-- Dissect: Week
dissect.week = function(buffer, offset, packet, parent)
  local length = size_of.week
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.week(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.week, range, value, display)

  return offset + length, value
end

-- Size: Day
size_of.day = 1

-- Display: Day
display.day = function(value)
  -- Check if field has value
  if value == 255 then
    return "Day: No Value"
  end

  return "Day: "..value
end

-- Dissect: Day
dissect.day = function(buffer, offset, packet, parent)
  local length = size_of.day
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.day(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.day, range, value, display)

  return offset + length, value
end

-- Size: Month
size_of.month = 1

-- Display: Month
display.month = function(value)
  -- Check if field has value
  if value == 255 then
    return "Month: No Value"
  end

  return "Month: "..value
end

-- Dissect: Month
dissect.month = function(buffer, offset, packet, parent)
  local length = size_of.month
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.month(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.month, range, value, display)

  return offset + length, value
end

-- Size: Year
size_of.year = 2

-- Display: Year
display.year = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Year: No Value"
  end

  return "Year: "..value
end

-- Dissect: Year
dissect.year = function(buffer, offset, packet, parent)
  local length = size_of.year
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.year(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.year, range, value, display)

  return offset + length, value
end

-- Calculate size of: Maturity Month Year
size_of.maturity_month_year = function(buffer, offset)
  local index = 0

  index = index + size_of.year

  index = index + size_of.month

  index = index + size_of.day

  index = index + size_of.week

  return index
end

-- Display: Maturity Month Year
display.maturity_month_year = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Maturity Month Year
dissect.maturity_month_year_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Year: 2 Byte Unsigned Fixed Width Integer Nullable
  index, year = dissect.year(buffer, index, packet, parent)

  -- Month: 1 Byte Unsigned Fixed Width Integer Nullable
  index, month = dissect.month(buffer, index, packet, parent)

  -- Day: 1 Byte Unsigned Fixed Width Integer Nullable
  index, day = dissect.day(buffer, index, packet, parent)

  -- Week: 1 Byte Unsigned Fixed Width Integer Nullable
  index, week = dissect.week(buffer, index, packet, parent)

  return index
end

-- Dissect: Maturity Month Year
dissect.maturity_month_year = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.maturity_month_year then
    local length = size_of.maturity_month_year(buffer, offset)
    local range = buffer(offset, length)
    local display = display.maturity_month_year(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.maturity_month_year, range, display)
  end

  return dissect.maturity_month_year_fields(buffer, offset, packet, parent)
end

-- Size: Currency
size_of.currency = 3

-- Display: Currency
display.currency = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local length = size_of.currency
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

  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Security Type
size_of.security_type = 6

-- Display: Security Type
display.security_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
dissect.security_type = function(buffer, offset, packet, parent)
  local length = size_of.security_type
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

  local display = display.security_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Security Response Id
size_of.security_response_id = 8

-- Display: Security Response Id
display.security_response_id = function(value)
  return "Security Response Id: "..value
end

-- Dissect: Security Response Id
dissect.security_response_id = function(buffer, offset, packet, parent)
  local length = size_of.security_response_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.security_response_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_response_id, range, value, display)

  return offset + length, value
end

-- Size: Security Req Id
size_of.security_req_id = 8

-- Display: Security Req Id
display.security_req_id = function(value)
  return "Security Req Id: "..value
end

-- Dissect: Security Req Id
dissect.security_req_id = function(buffer, offset, packet, parent)
  local length = size_of.security_req_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.security_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_req_id, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 20

-- Display: Symbol
display.symbol = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol
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

  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Financial Instrument Full Name
size_of.financial_instrument_full_name = 35

-- Display: Financial Instrument Full Name
display.financial_instrument_full_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Financial Instrument Full Name: No Value"
  end

  return "Financial Instrument Full Name: "..value
end

-- Dissect: Financial Instrument Full Name
dissect.financial_instrument_full_name = function(buffer, offset, packet, parent)
  local length = size_of.financial_instrument_full_name
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

  local display = display.financial_instrument_full_name(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.financial_instrument_full_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Definition Response
size_of.security_definition_response = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.text

  index = index + size_of.financial_instrument_full_name

  index = index + size_of.sender_id

  index = index + size_of.symbol

  index = index + size_of.party_details_list_req_id

  index = index + size_of.security_req_id

  index = index + size_of.security_response_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.security_group

  index = index + size_of.security_type

  index = index + size_of.location

  index = index + size_of.security_id_optional

  index = index + size_of.currency

  index = index + size_of.maturity_month_year(buffer, offset + index)

  index = index + size_of.delay_duration

  index = index + size_of.start_date

  index = index + size_of.end_date

  index = index + size_of.max_no_of_substitutions

  index = index + size_of.source_repo_id

  index = index + size_of.termination_type

  index = index + size_of.security_response_type

  index = index + size_of.expiration_cycle

  index = index + size_of.manual_order_indicator

  index = index + size_of.split_msg

  index = index + size_of.auto_quote_request

  index = index + size_of.poss_retrans_flag

  index = index + size_of.security_definition_response_leg_groups(buffer, offset + index)

  return index
end

-- Display: Security Definition Response
display.security_definition_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Response
dissect.security_definition_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String Nullable
  index, text = dissect.text(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String Nullable
  index, financial_instrument_full_name = dissect.financial_instrument_full_name(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String Nullable
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Unsigned Fixed Width Integer
  index, security_req_id = dissect.security_req_id(buffer, index, packet, parent)

  -- Security Response Id: 8 Byte Unsigned Fixed Width Integer
  index, security_response_id = dissect.security_response_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String Nullable
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String Nullable
  index, security_type = dissect.security_type(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = dissect.security_id_optional(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String Nullable
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index, maturity_month_year = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = dissect.delay_duration(buffer, index, packet, parent)

  -- Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, start_date = dissect.start_date(buffer, index, packet, parent)

  -- End Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, end_date = dissect.end_date(buffer, index, packet, parent)

  -- Max No Of Substitutions: 1 Byte Unsigned Fixed Width Integer Nullable
  index, max_no_of_substitutions = dissect.max_no_of_substitutions(buffer, index, packet, parent)

  -- Source Repo Id: 4 Byte Signed Fixed Width Integer Nullable
  index, source_repo_id = dissect.source_repo_id(buffer, index, packet, parent)

  -- Termination Type: 8 Byte Ascii String Nullable
  index, termination_type = dissect.termination_type(buffer, index, packet, parent)

  -- Security Response Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_response_type = dissect.security_response_type(buffer, index, packet, parent)

  -- Expiration Cycle: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, expiration_cycle = dissect.expiration_cycle(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Auto Quote Request: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, auto_quote_request = dissect.auto_quote_request(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Security Definition Response Leg Groups: Struct of 2 fields
  index, security_definition_response_leg_groups = dissect.security_definition_response_leg_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Response
dissect.security_definition_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_response then
    local length = size_of.security_definition_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_response(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_definition_response, range, display)
  end

  return dissect.security_definition_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Security Definition Request Leg Group
size_of.security_definition_request_leg_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_price

  index = index + size_of.leg_security_id

  index = index + size_of.leg_option_delta(buffer, offset + index)

  index = index + size_of.leg_side

  index = index + size_of.leg_ratio_qty

  return index
end

-- Display: Security Definition Request Leg Group
display.security_definition_request_leg_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Request Leg Group
dissect.security_definition_request_leg_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price = dissect.leg_price(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Option Delta: Struct of 2 fields
  index, leg_option_delta = dissect.leg_option_delta(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- Leg Ratio Qty: 1 Byte Unsigned Fixed Width Integer Nullable
  index, leg_ratio_qty = dissect.leg_ratio_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Leg Group
dissect.security_definition_request_leg_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_definition_request_leg_group then
    local length = size_of.security_definition_request_leg_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_request_leg_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_definition_request_leg_group, range, display)
  end

  return dissect.security_definition_request_leg_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Security Definition Request Leg Groups
size_of.security_definition_request_leg_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local security_definition_request_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + security_definition_request_leg_group_count * 19

  return index
end

-- Display: Security Definition Request Leg Groups
display.security_definition_request_leg_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Request Leg Groups
dissect.security_definition_request_leg_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Security Definition Request Leg Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.security_definition_request_leg_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Security Definition Request Leg Groups
dissect.security_definition_request_leg_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_request_leg_groups then
    local length = size_of.security_definition_request_leg_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_request_leg_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_definition_request_leg_groups, range, display)
  end

  return dissect.security_definition_request_leg_groups_fields(buffer, offset, packet, parent)
end

-- Size: Security Sub Type
size_of.security_sub_type = 8

-- Display: Security Sub Type
display.security_sub_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
dissect.security_sub_type = function(buffer, offset, packet, parent)
  local length = size_of.security_sub_type
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

  local display = display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Sender Id Optional
size_of.sender_id_optional = 20

-- Display: Sender Id Optional
display.sender_id_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Id Optional: No Value"
  end

  return "Sender Id Optional: "..value
end

-- Dissect: Sender Id Optional
dissect.sender_id_optional = function(buffer, offset, packet, parent)
  local length = size_of.sender_id_optional
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

  local display = display.sender_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.sender_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Definition Request
size_of.security_definition_request = function(buffer, offset)
  local index = 0

  index = index + size_of.party_details_list_req_id

  index = index + size_of.security_req_id

  index = index + size_of.manual_order_indicator

  index = index + size_of.seq_num

  index = index + size_of.sender_id_optional

  index = index + size_of.sending_time_epoch

  index = index + size_of.security_sub_type

  index = index + size_of.location

  index = index + size_of.start_date

  index = index + size_of.end_date

  index = index + size_of.max_no_of_substitutions

  index = index + size_of.source_repo_id

  index = index + size_of.security_definition_request_leg_groups(buffer, offset + index)

  return index
end

-- Display: Security Definition Request
display.security_definition_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Request
dissect.security_definition_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Unsigned Fixed Width Integer
  index, security_req_id = dissect.security_req_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id Optional: 20 Byte Ascii String Nullable
  index, sender_id_optional = dissect.sender_id_optional(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Security Sub Type: 8 Byte Ascii String
  index, security_sub_type = dissect.security_sub_type(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Start Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, start_date = dissect.start_date(buffer, index, packet, parent)

  -- End Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, end_date = dissect.end_date(buffer, index, packet, parent)

  -- Max No Of Substitutions: 1 Byte Unsigned Fixed Width Integer Nullable
  index, max_no_of_substitutions = dissect.max_no_of_substitutions(buffer, index, packet, parent)

  -- Source Repo Id: 4 Byte Signed Fixed Width Integer Nullable
  index, source_repo_id = dissect.source_repo_id(buffer, index, packet, parent)

  -- Security Definition Request Leg Groups: Struct of 2 fields
  index, security_definition_request_leg_groups = dissect.security_definition_request_leg_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request
dissect.security_definition_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_request then
    local length = size_of.security_definition_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_request(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.security_definition_request, range, display)
  end

  return dissect.security_definition_request_fields(buffer, offset, packet, parent)
end

-- Size: Original Order Event Exec Id
size_of.original_order_event_exec_id = 4

-- Display: Original Order Event Exec Id
display.original_order_event_exec_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Original Order Event Exec Id: No Value"
  end

  return "Original Order Event Exec Id: "..value
end

-- Dissect: Original Order Event Exec Id
dissect.original_order_event_exec_id = function(buffer, offset, packet, parent)
  local length = size_of.original_order_event_exec_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.original_order_event_exec_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.original_order_event_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Order Event Reason
size_of.order_event_reason = 1

-- Display: Order Event Reason
display.order_event_reason = function(value)
  return "Order Event Reason: "..value
end

-- Dissect: Order Event Reason
dissect.order_event_reason = function(buffer, offset, packet, parent)
  local length = size_of.order_event_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_event_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_event_reason, range, value, display)

  return offset + length, value
end

-- Size: Trade Addendum
size_of.trade_addendum = 1

-- Display: Trade Addendum
display.trade_addendum = function(value)
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
dissect.trade_addendum = function(buffer, offset, packet, parent)
  local length = size_of.trade_addendum
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_addendum(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.trade_addendum, range, value, display)

  return offset + length, value
end

-- Size: Order Event Qty
size_of.order_event_qty = 4

-- Display: Order Event Qty
display.order_event_qty = function(value)
  return "Order Event Qty: "..value
end

-- Dissect: Order Event Qty
dissect.order_event_qty = function(buffer, offset, packet, parent)
  local length = size_of.order_event_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_event_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_event_qty, range, value, display)

  return offset + length, value
end

-- Size: Order Event Exec Id
size_of.order_event_exec_id = 4

-- Display: Order Event Exec Id
display.order_event_exec_id = function(value)
  return "Order Event Exec Id: "..value
end

-- Dissect: Order Event Exec Id
dissect.order_event_exec_id = function(buffer, offset, packet, parent)
  local length = size_of.order_event_exec_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_event_exec_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_event_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Order Event Text
size_of.order_event_text = 5

-- Display: Order Event Text
display.order_event_text = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Event Text: No Value"
  end

  return "Order Event Text: "..value
end

-- Dissect: Order Event Text
dissect.order_event_text = function(buffer, offset, packet, parent)
  local length = size_of.order_event_text
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

  local display = display.order_event_text(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_event_text, range, value, display)

  return offset + length, value
end

-- Size: Order Event Px
size_of.order_event_px = 8

-- Display: Order Event Px
display.order_event_px = function(value)
  return "Order Event Px: "..value
end

-- Translate: Order Event Px
translate.order_event_px = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Order Event Px
dissect.order_event_px = function(buffer, offset, packet, parent)
  local length = size_of.order_event_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.order_event_px(raw)
  local display = display.order_event_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_event_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Addendum Spread Leg Order Event Group
size_of.execution_report_trade_addendum_spread_leg_order_event_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_event_px

  index = index + size_of.order_event_text

  index = index + size_of.order_event_exec_id

  index = index + size_of.order_event_qty

  index = index + size_of.trade_addendum

  index = index + size_of.order_event_reason

  index = index + size_of.original_order_event_exec_id

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg Order Event Group
display.execution_report_trade_addendum_spread_leg_order_event_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg Order Event Group
dissect.execution_report_trade_addendum_spread_leg_order_event_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = dissect.order_event_px(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String Nullable
  index, order_event_text = dissect.order_event_text(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = dissect.order_event_exec_id(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = dissect.order_event_qty(buffer, index, packet, parent)

  -- Trade Addendum: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trade_addendum = dissect.trade_addendum(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = dissect.order_event_reason(buffer, index, packet, parent)

  -- Original Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, original_order_event_exec_id = dissect.original_order_event_exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg Order Event Group
dissect.execution_report_trade_addendum_spread_leg_order_event_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_addendum_spread_leg_order_event_group then
    local length = size_of.execution_report_trade_addendum_spread_leg_order_event_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_spread_leg_order_event_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_leg_order_event_group, range, display)
  end

  return dissect.execution_report_trade_addendum_spread_leg_order_event_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Addendum Spread Leg Order Event Groups
size_of.execution_report_trade_addendum_spread_leg_order_event_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_addendum_spread_leg_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_addendum_spread_leg_order_event_group_count * 27

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg Order Event Groups
display.execution_report_trade_addendum_spread_leg_order_event_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg Order Event Groups
dissect.execution_report_trade_addendum_spread_leg_order_event_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Execution Report Trade Addendum Spread Leg Order Event Group: Struct of 7 fields
  for i = 1, num_in_group do
    index = dissect.execution_report_trade_addendum_spread_leg_order_event_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg Order Event Groups
dissect.execution_report_trade_addendum_spread_leg_order_event_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread_leg_order_event_groups then
    local length = size_of.execution_report_trade_addendum_spread_leg_order_event_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_spread_leg_order_event_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_leg_order_event_groups, range, display)
  end

  return dissect.execution_report_trade_addendum_spread_leg_order_event_groups_fields(buffer, offset, packet, parent)
end

-- Size: Fill Yield Type
size_of.fill_yield_type = 1

-- Display: Fill Yield Type
display.fill_yield_type = function(value)
  return "Fill Yield Type: "..value
end

-- Dissect: Fill Yield Type
dissect.fill_yield_type = function(buffer, offset, packet, parent)
  local length = size_of.fill_yield_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.fill_yield_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.fill_yield_type, range, value, display)

  return offset + length, value
end

-- Size: Fill Exec Id
size_of.fill_exec_id = 2

-- Display: Fill Exec Id
display.fill_exec_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fill Exec Id: No Value"
  end

  return "Fill Exec Id: "..value
end

-- Dissect: Fill Exec Id
dissect.fill_exec_id = function(buffer, offset, packet, parent)
  local length = size_of.fill_exec_id
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

  local display = display.fill_exec_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.fill_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Fill Qty
size_of.fill_qty = 4

-- Display: Fill Qty
display.fill_qty = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
dissect.fill_qty = function(buffer, offset, packet, parent)
  local length = size_of.fill_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.fill_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Size: Fill Px
size_of.fill_px = 8

-- Display: Fill Px
display.fill_px = function(value)
  return "Fill Px: "..value
end

-- Translate: Fill Px
translate.fill_px = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Fill Px
dissect.fill_px = function(buffer, offset, packet, parent)
  local length = size_of.fill_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.fill_px(raw)
  local display = display.fill_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.fill_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fills Group
size_of.fills_group = function(buffer, offset)
  local index = 0

  index = index + size_of.fill_px

  index = index + size_of.fill_qty

  index = index + size_of.fill_exec_id

  index = index + size_of.fill_yield_type

  return index
end

-- Display: Fills Group
display.fills_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fills Group
dissect.fills_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Fill Px: 8 Byte Signed Fixed Width Integer
  index, fill_px = dissect.fill_px(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Unsigned Fixed Width Integer
  index, fill_qty = dissect.fill_qty(buffer, index, packet, parent)

  -- Fill Exec Id: 2 Byte Ascii String
  index, fill_exec_id = dissect.fill_exec_id(buffer, index, packet, parent)

  -- Fill Yield Type: 1 Byte Unsigned Fixed Width Integer
  index, fill_yield_type = dissect.fill_yield_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Group
dissect.fills_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fills_group then
    local length = size_of.fills_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.fills_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.fills_group, range, display)
  end

  return dissect.fills_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Fills Groups
size_of.fills_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local fills_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + fills_group_count * 15

  return index
end

-- Display: Fills Groups
display.fills_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fills Groups
dissect.fills_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Fills Group: Struct of 4 fields
  for i = 1, num_in_group do
    index = dissect.fills_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Fills Groups
dissect.fills_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.fills_groups then
    local length = size_of.fills_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.fills_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.fills_groups, range, display)
  end

  return dissect.fills_groups_fields(buffer, offset, packet, parent)
end

-- Size: Mantissa
size_of.mantissa = 8

-- Display: Mantissa
display.mantissa = function(value)
  -- Check if field has value
  if value == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Mantissa: No Value"
  end

  return "Mantissa: "..value
end

-- Dissect: Mantissa
dissect.mantissa = function(buffer, offset, packet, parent)
  local length = size_of.mantissa
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.mantissa(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mantissa, range, value, display)

  return offset + length, value
end

-- Calculate size of: Gross Trade Amt
size_of.gross_trade_amt = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa

  index = index + size_of.exponent

  return index
end

-- Display: Gross Trade Amt
display.gross_trade_amt = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Gross Trade Amt
dissect.gross_trade_amt_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Gross Trade Amt
dissect.gross_trade_amt = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.gross_trade_amt then
    local length = size_of.gross_trade_amt(buffer, offset)
    local range = buffer(offset, length)
    local display = display.gross_trade_amt(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.gross_trade_amt, range, display)
  end

  return dissect.gross_trade_amt_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Calculated Ccy Last Qty
size_of.calculated_ccy_last_qty = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa

  index = index + size_of.exponent

  return index
end

-- Display: Calculated Ccy Last Qty
display.calculated_ccy_last_qty = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Calculated Ccy Last Qty
dissect.calculated_ccy_last_qty_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Calculated Ccy Last Qty
dissect.calculated_ccy_last_qty = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.calculated_ccy_last_qty then
    local length = size_of.calculated_ccy_last_qty(buffer, offset)
    local range = buffer(offset, length)
    local display = display.calculated_ccy_last_qty(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.calculated_ccy_last_qty, range, display)
  end

  return dissect.calculated_ccy_last_qty_fields(buffer, offset, packet, parent)
end

-- Size: Settl Date
size_of.settl_date = 2

-- Display: Settl Date
display.settl_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Settl Date: No Value"
  end

  return "Settl Date: "..value
end

-- Dissect: Settl Date
dissect.settl_date = function(buffer, offset, packet, parent)
  local length = size_of.settl_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.settl_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Size: Exec Type
size_of.exec_type = 1

-- Display: Exec Type
display.exec_type = function(value)
  if value == "G" then
    return "Exec Type: Trade Correction (G)"
  end
  if value == "H" then
    return "Exec Type: Trade Cancel (H)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
dissect.exec_type = function(buffer, offset, packet, parent)
  local length = size_of.exec_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.exec_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Size: Ord Status Trd Cxl
size_of.ord_status_trd_cxl = 1

-- Display: Ord Status Trd Cxl
display.ord_status_trd_cxl = function(value)
  if value == "G" then
    return "Ord Status Trd Cxl: Trade Correction (G)"
  end
  if value == "H" then
    return "Ord Status Trd Cxl: Trade Cancel (H)"
  end

  return "Ord Status Trd Cxl: Unknown("..value..")"
end

-- Dissect: Ord Status Trd Cxl
dissect.ord_status_trd_cxl = function(buffer, offset, packet, parent)
  local length = size_of.ord_status_trd_cxl
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.ord_status_trd_cxl(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ord_status_trd_cxl, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
size_of.trade_date = 2

-- Display: Trade Date
display.trade_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
dissect.trade_date = function(buffer, offset, packet, parent)
  local length = size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Orig Side Trade Id
size_of.orig_side_trade_id = 4

-- Display: Orig Side Trade Id
display.orig_side_trade_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Orig Side Trade Id: No Value"
  end

  return "Orig Side Trade Id: "..value
end

-- Dissect: Orig Side Trade Id
dissect.orig_side_trade_id = function(buffer, offset, packet, parent)
  local length = size_of.orig_side_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.orig_side_trade_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.orig_side_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Side Trade Id
size_of.side_trade_id = 4

-- Display: Side Trade Id
display.side_trade_id = function(value)
  return "Side Trade Id: "..value
end

-- Dissect: Side Trade Id
dissect.side_trade_id = function(buffer, offset, packet, parent)
  local length = size_of.side_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side_trade_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.side_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Last Qty
size_of.last_qty = 4

-- Display: Last Qty
display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
dissect.last_qty = function(buffer, offset, packet, parent)
  local length = size_of.last_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Size: Orig Secondary Execution Id
size_of.orig_secondary_execution_id = 8

-- Display: Orig Secondary Execution Id
display.orig_secondary_execution_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Orig Secondary Execution Id: No Value"
  end

  return "Orig Secondary Execution Id: "..value
end

-- Dissect: Orig Secondary Execution Id
dissect.orig_secondary_execution_id = function(buffer, offset, packet, parent)
  local length = size_of.orig_secondary_execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.orig_secondary_execution_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.orig_secondary_execution_id, range, value, display)

  return offset + length, value
end

-- Size: Sec Exec Id
size_of.sec_exec_id = 8

-- Display: Sec Exec Id
display.sec_exec_id = function(value)
  return "Sec Exec Id: "..value
end

-- Dissect: Sec Exec Id
dissect.sec_exec_id = function(buffer, offset, packet, parent)
  local length = size_of.sec_exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.sec_exec_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.sec_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Last Px
size_of.last_px = 8

-- Display: Last Px
display.last_px = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Last Px
dissect.last_px = function(buffer, offset, packet, parent)
  local length = size_of.last_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.last_px(raw)
  local display = display.last_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.last_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Addendum Spread Leg
size_of.execution_report_trade_addendum_spread_leg = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.last_px

  index = index + size_of.order_id

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.sec_exec_id

  index = index + size_of.orig_secondary_execution_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.last_qty

  index = index + size_of.side_trade_id

  index = index + size_of.orig_side_trade_id

  index = index + size_of.trade_date

  index = index + size_of.ord_status_trd_cxl

  index = index + size_of.exec_type

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.side

  index = index + size_of.settl_date

  index = index + size_of.calculated_ccy_last_qty(buffer, offset + index)

  index = index + size_of.gross_trade_amt(buffer, offset + index)

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.execution_report_trade_addendum_spread_leg_order_event_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg
display.execution_report_trade_addendum_spread_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg
dissect.execution_report_trade_addendum_spread_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_secondary_execution_id = dissect.orig_secondary_execution_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = dissect.side_trade_id(buffer, index, packet, parent)

  -- Orig Side Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, orig_side_trade_id = dissect.orig_side_trade_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Ord Status Trd Cxl: 1 Byte Ascii String Enum with 2 values
  index, ord_status_trd_cxl = dissect.ord_status_trd_cxl(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 2 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Settl Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Calculated Ccy Last Qty: Struct of 2 fields
  index, calculated_ccy_last_qty = dissect.calculated_ccy_last_qty(buffer, index, packet, parent)

  -- Gross Trade Amt: Struct of 2 fields
  index, gross_trade_amt = dissect.gross_trade_amt(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = dissect.fills_groups(buffer, index, packet, parent)

  -- Execution Report Trade Addendum Spread Leg Order Event Groups: Struct of 2 fields
  index, execution_report_trade_addendum_spread_leg_order_event_groups = dissect.execution_report_trade_addendum_spread_leg_order_event_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg
dissect.execution_report_trade_addendum_spread_leg = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread_leg then
    local length = size_of.execution_report_trade_addendum_spread_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_spread_leg(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_leg, range, display)
  end

  return dissect.execution_report_trade_addendum_spread_leg_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Addendum Spread Order Event Group
size_of.execution_report_trade_addendum_spread_order_event_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_event_px

  index = index + size_of.order_event_text

  index = index + size_of.order_event_exec_id

  index = index + size_of.order_event_qty

  index = index + size_of.trade_addendum

  index = index + size_of.order_event_reason

  index = index + size_of.original_order_event_exec_id

  return index
end

-- Display: Execution Report Trade Addendum Spread Order Event Group
display.execution_report_trade_addendum_spread_order_event_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Order Event Group
dissect.execution_report_trade_addendum_spread_order_event_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = dissect.order_event_px(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String Nullable
  index, order_event_text = dissect.order_event_text(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = dissect.order_event_exec_id(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = dissect.order_event_qty(buffer, index, packet, parent)

  -- Trade Addendum: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trade_addendum = dissect.trade_addendum(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = dissect.order_event_reason(buffer, index, packet, parent)

  -- Original Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, original_order_event_exec_id = dissect.original_order_event_exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Order Event Group
dissect.execution_report_trade_addendum_spread_order_event_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_addendum_spread_order_event_group then
    local length = size_of.execution_report_trade_addendum_spread_order_event_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_spread_order_event_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_order_event_group, range, display)
  end

  return dissect.execution_report_trade_addendum_spread_order_event_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Addendum Spread Order Event Groups
size_of.execution_report_trade_addendum_spread_order_event_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_addendum_spread_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_addendum_spread_order_event_group_count * 27

  return index
end

-- Display: Execution Report Trade Addendum Spread Order Event Groups
display.execution_report_trade_addendum_spread_order_event_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Order Event Groups
dissect.execution_report_trade_addendum_spread_order_event_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Execution Report Trade Addendum Spread Order Event Group: Struct of 7 fields
  for i = 1, num_in_group do
    index = dissect.execution_report_trade_addendum_spread_order_event_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Order Event Groups
dissect.execution_report_trade_addendum_spread_order_event_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread_order_event_groups then
    local length = size_of.execution_report_trade_addendum_spread_order_event_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_spread_order_event_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_order_event_groups, range, display)
  end

  return dissect.execution_report_trade_addendum_spread_order_event_groups_fields(buffer, offset, packet, parent)
end

-- Size: Leg Last Qty
size_of.leg_last_qty = 4

-- Display: Leg Last Qty
display.leg_last_qty = function(value)
  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
dissect.leg_last_qty = function(buffer, offset, packet, parent)
  local length = size_of.leg_last_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_last_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Trade Ref Id
size_of.leg_trade_ref_id = 4

-- Display: Leg Trade Ref Id
display.leg_trade_ref_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leg Trade Ref Id: No Value"
  end

  return "Leg Trade Ref Id: "..value
end

-- Dissect: Leg Trade Ref Id
dissect.leg_trade_ref_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_trade_ref_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_trade_ref_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leg_trade_ref_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Trade Id
size_of.leg_trade_id = 4

-- Display: Leg Trade Id
display.leg_trade_id = function(value)
  return "Leg Trade Id: "..value
end

-- Dissect: Leg Trade Id
dissect.leg_trade_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_trade_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leg_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Exec Ref Id
size_of.leg_exec_ref_id = 8

-- Display: Leg Exec Ref Id
display.leg_exec_ref_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Exec Ref Id: No Value"
  end

  return "Leg Exec Ref Id: "..value
end

-- Dissect: Leg Exec Ref Id
dissect.leg_exec_ref_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_exec_ref_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.leg_exec_ref_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leg_exec_ref_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Last Px
size_of.leg_last_px = 8

-- Display: Leg Last Px
display.leg_last_px = function(value)
  return "Leg Last Px: "..value
end

-- Translate: Leg Last Px
translate.leg_last_px = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Leg Last Px
dissect.leg_last_px = function(buffer, offset, packet, parent)
  local length = size_of.leg_last_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.leg_last_px(raw)
  local display = display.leg_last_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Size: Leg Exec Id
size_of.leg_exec_id = 8

-- Display: Leg Exec Id
display.leg_exec_id = function(value)
  return "Leg Exec Id: "..value
end

-- Dissect: Leg Exec Id
dissect.leg_exec_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.leg_exec_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.leg_exec_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Addendum Spread Leg Group
size_of.execution_report_trade_addendum_spread_leg_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_exec_id

  index = index + size_of.leg_last_px

  index = index + size_of.leg_exec_ref_id

  index = index + size_of.leg_trade_id

  index = index + size_of.leg_trade_ref_id

  index = index + size_of.leg_security_id

  index = index + size_of.leg_last_qty

  index = index + size_of.leg_side

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg Group
display.execution_report_trade_addendum_spread_leg_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg Group
dissect.execution_report_trade_addendum_spread_leg_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, leg_exec_id = dissect.leg_exec_id(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Signed Fixed Width Integer
  index, leg_last_px = dissect.leg_last_px(buffer, index, packet, parent)

  -- Leg Exec Ref Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_exec_ref_id = dissect.leg_exec_ref_id(buffer, index, packet, parent)

  -- Leg Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, leg_trade_id = dissect.leg_trade_id(buffer, index, packet, parent)

  -- Leg Trade Ref Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leg_trade_ref_id = dissect.leg_trade_ref_id(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, leg_last_qty = dissect.leg_last_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg Group
dissect.execution_report_trade_addendum_spread_leg_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_addendum_spread_leg_group then
    local length = size_of.execution_report_trade_addendum_spread_leg_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_spread_leg_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_leg_group, range, display)
  end

  return dissect.execution_report_trade_addendum_spread_leg_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Addendum Spread Leg Groups
size_of.execution_report_trade_addendum_spread_leg_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_addendum_spread_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_addendum_spread_leg_group_count * 41

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg Groups
display.execution_report_trade_addendum_spread_leg_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg Groups
dissect.execution_report_trade_addendum_spread_leg_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Execution Report Trade Addendum Spread Leg Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.execution_report_trade_addendum_spread_leg_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg Groups
dissect.execution_report_trade_addendum_spread_leg_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread_leg_groups then
    local length = size_of.execution_report_trade_addendum_spread_leg_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_spread_leg_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread_leg_groups, range, display)
  end

  return dissect.execution_report_trade_addendum_spread_leg_groups_fields(buffer, offset, packet, parent)
end

-- Size: Managed Order
size_of.managed_order = 1

-- Display: Managed Order
display.managed_order = function(value)
  if value == 0 then
    return "Managed Order: False (0)"
  end
  if value == 1 then
    return "Managed Order: True (1)"
  end
  if value == 255 then
    return "Managed Order: No Value"
  end

  return "Managed Order: Unknown("..value..")"
end

-- Dissect: Managed Order
dissect.managed_order = function(buffer, offset, packet, parent)
  local length = size_of.managed_order
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.managed_order(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.managed_order, range, value, display)

  return offset + length, value
end

-- Size: Execution Mode
size_of.execution_mode = 1

-- Display: Execution Mode
display.execution_mode = function(value)
  if value == "A" then
    return "Execution Mode: Aggressive (A)"
  end
  if value == "P" then
    return "Execution Mode: Passive (P)"
  end
  if value == '' then
    return "Execution Mode: No Value"
  end

  return "Execution Mode: Unknown("..value..")"
end

-- Dissect: Execution Mode
dissect.execution_mode = function(buffer, offset, packet, parent)
  local length = size_of.execution_mode
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.execution_mode(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_mode, range, value, display)

  return offset + length, value
end

-- Size: Exec Inst
size_of.exec_inst = 1

-- Display: Exec Inst
display.exec_inst = function(buffer, packet, parent)
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
dissect.exec_inst_bits = function(buffer, offset, packet, parent)

  -- Reserved 5: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_7.fields.reserved_5, buffer(offset, 1))

  -- Reserved 4: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_7.fields.reserved_4, buffer(offset, 1))

  -- Reserved 3: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_7.fields.reserved_3, buffer(offset, 1))

  -- Reserved 2: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_7.fields.reserved_2, buffer(offset, 1))

  -- Reserved 1: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_7.fields.reserved_1, buffer(offset, 1))

  -- Nh: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_7.fields.nh, buffer(offset, 1))

  -- Ob: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ob, buffer(offset, 1))

  -- Aon: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_7.fields.aon, buffer(offset, 1))
end

-- Dissect: Exec Inst
dissect.exec_inst = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.exec_inst(range, packet, parent)
  local element = parent:add(cme_futures_ilink3_sbe_v8_7.fields.exec_inst, range, display)

  if show.exec_inst then
    dissect.exec_inst_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Total Num Securities
size_of.total_num_securities = 1

-- Display: Total Num Securities
display.total_num_securities = function(value)
  return "Total Num Securities: "..value
end

-- Dissect: Total Num Securities
dissect.total_num_securities = function(buffer, offset, packet, parent)
  local length = size_of.total_num_securities
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.total_num_securities(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.total_num_securities, range, value, display)

  return offset + length, value
end

-- Size: Md Trade Entry Id
size_of.md_trade_entry_id = 4

-- Display: Md Trade Entry Id
display.md_trade_entry_id = function(value)
  return "Md Trade Entry Id: "..value
end

-- Dissect: Md Trade Entry Id
dissect.md_trade_entry_id = function(buffer, offset, packet, parent)
  local length = size_of.md_trade_entry_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.md_trade_entry_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.md_trade_entry_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Addendum Spread
size_of.execution_report_trade_addendum_spread = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.last_px

  index = index + size_of.order_id

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.sec_exec_id

  index = index + size_of.orig_secondary_execution_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.md_trade_entry_id

  index = index + size_of.last_qty

  index = index + size_of.side_trade_id

  index = index + size_of.orig_side_trade_id

  index = index + size_of.trade_date

  index = index + size_of.ord_status_trd_cxl

  index = index + size_of.exec_type

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.total_num_securities

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.managed_order

  index = index + size_of.short_sale_type

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.execution_report_trade_addendum_spread_leg_groups(buffer, offset + index)

  index = index + size_of.execution_report_trade_addendum_spread_order_event_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Spread
display.execution_report_trade_addendum_spread = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread
dissect.execution_report_trade_addendum_spread_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_secondary_execution_id = dissect.orig_secondary_execution_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, md_trade_entry_id = dissect.md_trade_entry_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = dissect.side_trade_id(buffer, index, packet, parent)

  -- Orig Side Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, orig_side_trade_id = dissect.orig_side_trade_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Ord Status Trd Cxl: 1 Byte Ascii String Enum with 2 values
  index, ord_status_trd_cxl = dissect.ord_status_trd_cxl(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 2 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Total Num Securities: 1 Byte Unsigned Fixed Width Integer
  index, total_num_securities = dissect.total_num_securities(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = dissect.fills_groups(buffer, index, packet, parent)

  -- Execution Report Trade Addendum Spread Leg Groups: Struct of 2 fields
  index, execution_report_trade_addendum_spread_leg_groups = dissect.execution_report_trade_addendum_spread_leg_groups(buffer, index, packet, parent)

  -- Execution Report Trade Addendum Spread Order Event Groups: Struct of 2 fields
  index, execution_report_trade_addendum_spread_order_event_groups = dissect.execution_report_trade_addendum_spread_order_event_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread
dissect.execution_report_trade_addendum_spread = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread then
    local length = size_of.execution_report_trade_addendum_spread(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_spread(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_spread, range, display)
  end

  return dissect.execution_report_trade_addendum_spread_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Contra Calculated Ccy Last Qty
size_of.contra_calculated_ccy_last_qty = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa

  index = index + size_of.exponent

  return index
end

-- Display: Contra Calculated Ccy Last Qty
display.contra_calculated_ccy_last_qty = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Contra Calculated Ccy Last Qty
dissect.contra_calculated_ccy_last_qty_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Contra Calculated Ccy Last Qty
dissect.contra_calculated_ccy_last_qty = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.contra_calculated_ccy_last_qty then
    local length = size_of.contra_calculated_ccy_last_qty(buffer, offset)
    local range = buffer(offset, length)
    local display = display.contra_calculated_ccy_last_qty(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.contra_calculated_ccy_last_qty, range, display)
  end

  return dissect.contra_calculated_ccy_last_qty_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Contra Gross Trade Amt
size_of.contra_gross_trade_amt = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa

  index = index + size_of.exponent

  return index
end

-- Display: Contra Gross Trade Amt
display.contra_gross_trade_amt = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Contra Gross Trade Amt
dissect.contra_gross_trade_amt_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Contra Gross Trade Amt
dissect.contra_gross_trade_amt = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.contra_gross_trade_amt then
    local length = size_of.contra_gross_trade_amt(buffer, offset)
    local range = buffer(offset, length)
    local display = display.contra_gross_trade_amt(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.contra_gross_trade_amt, range, display)
  end

  return dissect.contra_gross_trade_amt_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Addendum Outright Order Event Group
size_of.execution_report_trade_addendum_outright_order_event_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_event_px

  index = index + size_of.order_event_text

  index = index + size_of.order_event_exec_id

  index = index + size_of.order_event_qty

  index = index + size_of.trade_addendum

  index = index + size_of.order_event_reason

  index = index + size_of.original_order_event_exec_id

  index = index + size_of.contra_gross_trade_amt(buffer, offset + index)

  index = index + size_of.contra_calculated_ccy_last_qty(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Outright Order Event Group
display.execution_report_trade_addendum_outright_order_event_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Outright Order Event Group
dissect.execution_report_trade_addendum_outright_order_event_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = dissect.order_event_px(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String Nullable
  index, order_event_text = dissect.order_event_text(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = dissect.order_event_exec_id(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = dissect.order_event_qty(buffer, index, packet, parent)

  -- Trade Addendum: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trade_addendum = dissect.trade_addendum(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = dissect.order_event_reason(buffer, index, packet, parent)

  -- Original Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, original_order_event_exec_id = dissect.original_order_event_exec_id(buffer, index, packet, parent)

  -- Contra Gross Trade Amt: Struct of 2 fields
  index, contra_gross_trade_amt = dissect.contra_gross_trade_amt(buffer, index, packet, parent)

  -- Contra Calculated Ccy Last Qty: Struct of 2 fields
  index, contra_calculated_ccy_last_qty = dissect.contra_calculated_ccy_last_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Outright Order Event Group
dissect.execution_report_trade_addendum_outright_order_event_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_addendum_outright_order_event_group then
    local length = size_of.execution_report_trade_addendum_outright_order_event_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_outright_order_event_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_outright_order_event_group, range, display)
  end

  return dissect.execution_report_trade_addendum_outright_order_event_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Addendum Outright Order Event Groups
size_of.execution_report_trade_addendum_outright_order_event_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_addendum_outright_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_addendum_outright_order_event_group_count * 45

  return index
end

-- Display: Execution Report Trade Addendum Outright Order Event Groups
display.execution_report_trade_addendum_outright_order_event_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Outright Order Event Groups
dissect.execution_report_trade_addendum_outright_order_event_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Execution Report Trade Addendum Outright Order Event Group: Struct of 9 fields
  for i = 1, num_in_group do
    index = dissect.execution_report_trade_addendum_outright_order_event_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report Trade Addendum Outright Order Event Groups
dissect.execution_report_trade_addendum_outright_order_event_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_outright_order_event_groups then
    local length = size_of.execution_report_trade_addendum_outright_order_event_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_outright_order_event_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_outright_order_event_groups, range, display)
  end

  return dissect.execution_report_trade_addendum_outright_order_event_groups_fields(buffer, offset, packet, parent)
end

-- Size: Benchmark Price
size_of.benchmark_price = 8

-- Display: Benchmark Price
display.benchmark_price = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Benchmark Price: No Value"
  end

  return "Benchmark Price: "..value
end

-- Translate: Benchmark Price
translate.benchmark_price = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Benchmark Price
dissect.benchmark_price = function(buffer, offset, packet, parent)
  local length = size_of.benchmark_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.benchmark_price(raw)
  local display = display.benchmark_price(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.benchmark_price, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
size_of.maturity_date = 2

-- Display: Maturity Date
display.maturity_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Exec Restatement Reason
size_of.exec_restatement_reason = 1

-- Display: Exec Restatement Reason
display.exec_restatement_reason = function(value)
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
  if value == 255 then
    return "Exec Restatement Reason: No Value"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
dissect.exec_restatement_reason = function(buffer, offset, packet, parent)
  local length = size_of.exec_restatement_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.exec_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Trd Type
size_of.trd_type = 2

-- Display: Trd Type
display.trd_type = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trd Type: No Value"
  end

  return "Trd Type: "..value
end

-- Dissect: Trd Type
dissect.trd_type = function(buffer, offset, packet, parent)
  local length = size_of.trd_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trd_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.trd_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Addendum Outright
size_of.execution_report_trade_addendum_outright = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.last_px

  index = index + size_of.order_id

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.sec_exec_id

  index = index + size_of.orig_secondary_execution_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.last_qty

  index = index + size_of.side_trade_id

  index = index + size_of.orig_side_trade_id

  index = index + size_of.trade_date

  index = index + size_of.ord_status_trd_cxl

  index = index + size_of.exec_type

  index = index + size_of.side

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.managed_order

  index = index + size_of.short_sale_type

  index = index + size_of.discretion_price

  index = index + size_of.trd_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.settl_date

  index = index + size_of.maturity_date

  index = index + size_of.calculated_ccy_last_qty(buffer, offset + index)

  index = index + size_of.gross_trade_amt(buffer, offset + index)

  index = index + size_of.benchmark_price

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.execution_report_trade_addendum_outright_order_event_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Outright
display.execution_report_trade_addendum_outright = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Outright
dissect.execution_report_trade_addendum_outright_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_secondary_execution_id = dissect.orig_secondary_execution_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = dissect.side_trade_id(buffer, index, packet, parent)

  -- Orig Side Trade Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, orig_side_trade_id = dissect.orig_side_trade_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Ord Status Trd Cxl: 1 Byte Ascii String Enum with 2 values
  index, ord_status_trd_cxl = dissect.ord_status_trd_cxl(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 2 values
  index, exec_type = dissect.exec_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Settl Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Calculated Ccy Last Qty: Struct of 2 fields
  index, calculated_ccy_last_qty = dissect.calculated_ccy_last_qty(buffer, index, packet, parent)

  -- Gross Trade Amt: Struct of 2 fields
  index, gross_trade_amt = dissect.gross_trade_amt(buffer, index, packet, parent)

  -- Benchmark Price: 8 Byte Signed Fixed Width Integer Nullable
  index, benchmark_price = dissect.benchmark_price(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = dissect.fills_groups(buffer, index, packet, parent)

  -- Execution Report Trade Addendum Outright Order Event Groups: Struct of 2 fields
  index, execution_report_trade_addendum_outright_order_event_groups = dissect.execution_report_trade_addendum_outright_order_event_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Outright
dissect.execution_report_trade_addendum_outright = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_outright then
    local length = size_of.execution_report_trade_addendum_outright(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_outright(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_addendum_outright, range, display)
  end

  return dissect.execution_report_trade_addendum_outright_fields(buffer, offset, packet, parent)
end

-- Size: Quote Ack Status
size_of.quote_ack_status = 1

-- Display: Quote Ack Status
display.quote_ack_status = function(value)
  if value == 0 then
    return "Quote Ack Status: Accepted (0)"
  end
  if value == 5 then
    return "Quote Ack Status: Rejected (5)"
  end

  return "Quote Ack Status: Unknown("..value..")"
end

-- Dissect: Quote Ack Status
dissect.quote_ack_status = function(buffer, offset, packet, parent)
  local length = size_of.quote_ack_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_ack_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_ack_status, range, value, display)

  return offset + length, value
end

-- Size: Quote Req Id
size_of.quote_req_id = 8

-- Display: Quote Req Id
display.quote_req_id = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
dissect.quote_req_id = function(buffer, offset, packet, parent)
  local length = size_of.quote_req_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quote_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Size: Exchange Quote Req Id
size_of.exchange_quote_req_id = 17

-- Display: Exchange Quote Req Id
display.exchange_quote_req_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exchange Quote Req Id: No Value"
  end

  return "Exchange Quote Req Id: "..value
end

-- Dissect: Exchange Quote Req Id
dissect.exchange_quote_req_id = function(buffer, offset, packet, parent)
  local length = size_of.exchange_quote_req_id
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

  local display = display.exchange_quote_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.exchange_quote_req_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request For Quote Ack
size_of.request_for_quote_ack = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.text

  index = index + size_of.sender_id

  index = index + size_of.exchange_quote_req_id

  index = index + size_of.party_details_list_req_id

  index = index + size_of.request_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.quote_req_id

  index = index + size_of.location

  index = index + size_of.quote_reject_reason

  index = index + size_of.delay_duration

  index = index + size_of.quote_ack_status

  index = index + size_of.manual_order_indicator

  index = index + size_of.split_msg

  index = index + size_of.poss_retrans_flag

  index = index + size_of.delay_to_time

  return index
end

-- Display: Request For Quote Ack
display.request_for_quote_ack = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request For Quote Ack
dissect.request_for_quote_ack_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String Nullable
  index, text = dissect.text(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Exchange Quote Req Id: 17 Byte Ascii String Nullable
  index, exchange_quote_req_id = dissect.exchange_quote_req_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = dissect.request_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Quote Reject Reason: 2 Byte Unsigned Fixed Width Integer Nullable
  index, quote_reject_reason = dissect.quote_reject_reason(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = dissect.delay_duration(buffer, index, packet, parent)

  -- Quote Ack Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_ack_status = dissect.quote_ack_status(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote Ack
dissect.request_for_quote_ack = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_for_quote_ack then
    local length = size_of.request_for_quote_ack(buffer, offset)
    local range = buffer(offset, length)
    local display = display.request_for_quote_ack(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.request_for_quote_ack, range, display)
  end

  return dissect.request_for_quote_ack_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Quote Ack Entry Group
size_of.mass_quote_ack_entry_group = function(buffer, offset)
  local index = 0

  index = index + size_of.quote_entry_id

  index = index + size_of.security_id

  index = index + size_of.quote_set_id

  index = index + size_of.quote_entry_reject_reason

  return index
end

-- Display: Mass Quote Ack Entry Group
display.mass_quote_ack_entry_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Ack Entry Group
dissect.mass_quote_ack_entry_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_entry_id = dissect.quote_entry_id(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Quote Set Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_set_id = dissect.quote_set_id(buffer, index, packet, parent)

  -- Quote Entry Reject Reason: 1 Byte Unsigned Fixed Width Integer
  index, quote_entry_reject_reason = dissect.quote_entry_reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Ack Entry Group
dissect.mass_quote_ack_entry_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_quote_ack_entry_group then
    local length = size_of.mass_quote_ack_entry_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_quote_ack_entry_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_quote_ack_entry_group, range, display)
  end

  return dissect.mass_quote_ack_entry_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Quote Ack Entry Groups
size_of.mass_quote_ack_entry_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local mass_quote_ack_entry_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mass_quote_ack_entry_group_count * 11

  return index
end

-- Display: Mass Quote Ack Entry Groups
display.mass_quote_ack_entry_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Ack Entry Groups
dissect.mass_quote_ack_entry_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Mass Quote Ack Entry Group: Struct of 4 fields
  for i = 1, num_in_group do
    index = dissect.mass_quote_ack_entry_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Quote Ack Entry Groups
dissect.mass_quote_ack_entry_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote_ack_entry_groups then
    local length = size_of.mass_quote_ack_entry_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_quote_ack_entry_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_quote_ack_entry_groups, range, display)
  end

  return dissect.mass_quote_ack_entry_groups_fields(buffer, offset, packet, parent)
end

-- Size: No Processed Entries
size_of.no_processed_entries = 1

-- Display: No Processed Entries
display.no_processed_entries = function(value)
  return "No Processed Entries: "..value
end

-- Dissect: No Processed Entries
dissect.no_processed_entries = function(buffer, offset, packet, parent)
  local length = size_of.no_processed_entries
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.no_processed_entries(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.no_processed_entries, range, value, display)

  return offset + length, value
end

-- Size: Quote Req Id Optional
size_of.quote_req_id_optional = 8

-- Display: Quote Req Id Optional
display.quote_req_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Req Id Optional: No Value"
  end

  return "Quote Req Id Optional: "..value
end

-- Dissect: Quote Req Id Optional
dissect.quote_req_id_optional = function(buffer, offset, packet, parent)
  local length = size_of.quote_req_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quote_req_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_req_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Quote Ack
size_of.mass_quote_ack = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.text

  index = index + size_of.sender_id

  index = index + size_of.party_details_list_req_id

  index = index + size_of.request_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.quote_req_id_optional

  index = index + size_of.location

  index = index + size_of.quote_id

  index = index + size_of.quote_reject_reason

  index = index + size_of.delay_duration

  index = index + size_of.quote_ack_status

  index = index + size_of.manual_order_indicator

  index = index + size_of.no_processed_entries

  index = index + size_of.mm_protection_reset

  index = index + size_of.split_msg

  index = index + size_of.liquidity_flag

  index = index + size_of.short_sale_type

  index = index + size_of.tot_no_quote_entries_optional

  index = index + size_of.poss_retrans_flag

  index = index + size_of.delay_to_time

  index = index + size_of.mass_quote_ack_entry_groups(buffer, offset + index)

  return index
end

-- Display: Mass Quote Ack
display.mass_quote_ack = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Ack
dissect.mass_quote_ack_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String Nullable
  index, text = dissect.text(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = dissect.request_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Quote Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_req_id_optional = dissect.quote_req_id_optional(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Quote Reject Reason: 2 Byte Unsigned Fixed Width Integer Nullable
  index, quote_reject_reason = dissect.quote_reject_reason(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = dissect.delay_duration(buffer, index, packet, parent)

  -- Quote Ack Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_ack_status = dissect.quote_ack_status(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- No Processed Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_processed_entries = dissect.no_processed_entries(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset = dissect.mm_protection_reset(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Tot No Quote Entries Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, tot_no_quote_entries_optional = dissect.tot_no_quote_entries_optional(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  -- Mass Quote Ack Entry Groups: Struct of 2 fields
  index, mass_quote_ack_entry_groups = dissect.mass_quote_ack_entry_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Ack
dissect.mass_quote_ack = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote_ack then
    local length = size_of.mass_quote_ack(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_quote_ack(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_quote_ack, range, display)
  end

  return dissect.mass_quote_ack_fields(buffer, offset, packet, parent)
end

-- Size: Side Time In Force
size_of.side_time_in_force = 1

-- Display: Side Time In Force
display.side_time_in_force = function(value)
  if value == 0 then
    return "Side Time In Force: Day (0)"
  end
  if value == 3 then
    return "Side Time In Force: Fak (3)"
  end

  return "Side Time In Force: Unknown("..value..")"
end

-- Dissect: Side Time In Force
dissect.side_time_in_force = function(buffer, offset, packet, parent)
  local length = size_of.side_time_in_force
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side_time_in_force(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.side_time_in_force, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sides Group
size_of.sides_group = function(buffer, offset)
  local index = 0

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_qty

  index = index + size_of.side

  index = index + size_of.side_time_in_force

  return index
end

-- Display: Sides Group
display.sides_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sides Group
dissect.sides_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Side Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side_time_in_force = dissect.side_time_in_force(buffer, index, packet, parent)

  return index
end

-- Dissect: Sides Group
dissect.sides_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sides_group then
    local length = size_of.sides_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sides_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.sides_group, range, display)
  end

  return dissect.sides_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sides Groups
size_of.sides_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local sides_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + sides_group_count * 34

  return index
end

-- Display: Sides Groups
display.sides_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sides Groups
dissect.sides_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Sides Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.sides_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Sides Groups
dissect.sides_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sides_groups then
    local length = size_of.sides_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sides_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.sides_groups, range, display)
  end

  return dissect.sides_groups_fields(buffer, offset, packet, parent)
end

-- Size: Trans Bkd Time
size_of.trans_bkd_time = 8

-- Display: Trans Bkd Time
display.trans_bkd_time = function(value)
  return "Trans Bkd Time: "..value
end

-- Dissect: Trans Bkd Time
dissect.trans_bkd_time = function(buffer, offset, packet, parent)
  local length = size_of.trans_bkd_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trans_bkd_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.trans_bkd_time, range, value, display)

  return offset + length, value
end

-- Size: Cross Id
size_of.cross_id = 8

-- Display: Cross Id
display.cross_id = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
dissect.cross_id = function(buffer, offset, packet, parent)
  local length = size_of.cross_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.cross_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Cross
size_of.new_order_cross = function(buffer, offset)
  local index = 0

  index = index + size_of.cross_id

  index = index + size_of.order_request_id

  index = index + size_of.manual_order_indicator

  index = index + size_of.seq_num

  index = index + size_of.sender_id

  index = index + size_of.price

  index = index + size_of.trans_bkd_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.sides_groups(buffer, offset + index)

  return index
end

-- Display: New Order Cross
display.new_order_cross = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Cross
dissect.new_order_cross_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index, cross_id = dissect.cross_id(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index, trans_bkd_time = dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Sides Groups: Struct of 2 fields
  index, sides_groups = dissect.sides_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross
dissect.new_order_cross = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_cross then
    local length = size_of.new_order_cross(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_cross(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.new_order_cross, range, display)
  end

  return dissect.new_order_cross_fields(buffer, offset, packet, parent)
end

-- Size: Rfq Side
size_of.rfq_side = 1

-- Display: Rfq Side
display.rfq_side = function(value)
  if value == 1 then
    return "Rfq Side: Buy (1)"
  end
  if value == 2 then
    return "Rfq Side: Sell (2)"
  end
  if value == 8 then
    return "Rfq Side: Cross (8)"
  end
  if value == 255 then
    return "Rfq Side: No Value"
  end

  return "Rfq Side: Unknown("..value..")"
end

-- Dissect: Rfq Side
dissect.rfq_side = function(buffer, offset, packet, parent)
  local length = size_of.rfq_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.rfq_side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.rfq_side, range, value, display)

  return offset + length, value
end

-- Size: Order Qty Optional
size_of.order_qty_optional = 4

-- Display: Order Qty Optional
display.order_qty_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Order Qty Optional: No Value"
  end

  return "Order Qty Optional: "..value
end

-- Dissect: Order Qty Optional
dissect.order_qty_optional = function(buffer, offset, packet, parent)
  local length = size_of.order_qty_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_qty_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_qty_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Related Sym Group
size_of.related_sym_group = function(buffer, offset)
  local index = 0

  index = index + size_of.security_id

  index = index + size_of.order_qty_optional

  index = index + size_of.rfq_side

  return index
end

-- Display: Related Sym Group
display.related_sym_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Sym Group
dissect.related_sym_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty_optional = dissect.order_qty_optional(buffer, index, packet, parent)

  -- Rfq Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, rfq_side = dissect.rfq_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
dissect.related_sym_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.related_sym_group then
    local length = size_of.related_sym_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.related_sym_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.related_sym_group, range, display)
  end

  return dissect.related_sym_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Related Sym Groups
size_of.related_sym_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local related_sym_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + related_sym_group_count * 9

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
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Related Sym Group: Struct of 3 fields
  for i = 1, num_in_group do
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
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.related_sym_groups, range, display)
  end

  return dissect.related_sym_groups_fields(buffer, offset, packet, parent)
end

-- Size: Quote Type
size_of.quote_type = 1

-- Display: Quote Type
display.quote_type = function(value)
  if value == 1 then
    return "Quote Type: Tradeable (1)"
  end
  if value == 255 then
    return "Quote Type: No Value"
  end

  return "Quote Type: Unknown("..value..")"
end

-- Dissect: Quote Type
dissect.quote_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request For Quote
size_of.request_for_quote = function(buffer, offset)
  local index = 0

  index = index + size_of.party_details_list_req_id

  index = index + size_of.quote_req_id

  index = index + size_of.manual_order_indicator

  index = index + size_of.seq_num

  index = index + size_of.sender_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.location

  index = index + size_of.quote_type

  index = index + size_of.related_sym_groups(buffer, offset + index)

  return index
end

-- Display: Request For Quote
display.request_for_quote = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request For Quote
dissect.request_for_quote_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_type = dissect.quote_type(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index, related_sym_groups = dissect.related_sym_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote
dissect.request_for_quote = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.request_for_quote then
    local length = size_of.request_for_quote(buffer, offset)
    local range = buffer(offset, length)
    local display = display.request_for_quote(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.request_for_quote, range, display)
  end

  return dissect.request_for_quote_fields(buffer, offset, packet, parent)
end

-- Size: Dk Reason
size_of.dk_reason = 1

-- Display: Dk Reason
display.dk_reason = function(value)
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
  if value == '' then
    return "Dk Reason: No Value"
  end

  return "Dk Reason: Unknown("..value..")"
end

-- Dissect: Dk Reason
dissect.dk_reason = function(buffer, offset, packet, parent)
  local length = size_of.dk_reason
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.dk_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.dk_reason, range, value, display)

  return offset + length, value
end

-- Size: Exec Ack Status
size_of.exec_ack_status = 1

-- Display: Exec Ack Status
display.exec_ack_status = function(value)
  if value == 1 then
    return "Exec Ack Status: Accepted (1)"
  end
  if value == 2 then
    return "Exec Ack Status: Rejected (2)"
  end

  return "Exec Ack Status: Unknown("..value..")"
end

-- Dissect: Exec Ack Status
dissect.exec_ack_status = function(buffer, offset, packet, parent)
  local length = size_of.exec_ack_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.exec_ack_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.exec_ack_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Ack
size_of.execution_ack = function(buffer, offset)
  local index = 0

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id

  index = index + size_of.exec_ack_status

  index = index + size_of.seq_num

  index = index + size_of.clordid

  index = index + size_of.sec_exec_id

  index = index + size_of.last_px

  index = index + size_of.security_id

  index = index + size_of.last_qty

  index = index + size_of.dk_reason

  index = index + size_of.side

  index = index + size_of.sender_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.location

  index = index + size_of.manual_order_indicator

  return index
end

-- Display: Execution Ack
display.execution_ack = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Ack
dissect.execution_ack_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Exec Ack Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, exec_ack_status = dissect.exec_ack_status(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Dk Reason: 1 Byte Ascii String Enum with 9 values
  index, dk_reason = dissect.dk_reason(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Ack
dissect.execution_ack = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_ack then
    local length = size_of.execution_ack(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_ack(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_ack, range, display)
  end

  return dissect.execution_ack_fields(buffer, offset, packet, parent)
end

-- Size: Trd Reg Publication Reason
size_of.trd_reg_publication_reason = 1

-- Display: Trd Reg Publication Reason
display.trd_reg_publication_reason = function(value)
  return "Trd Reg Publication Reason: "..value
end

-- Dissect: Trd Reg Publication Reason
dissect.trd_reg_publication_reason = function(buffer, offset, packet, parent)
  local length = size_of.trd_reg_publication_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trd_reg_publication_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.trd_reg_publication_reason, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Publication Type
size_of.trd_reg_publication_type = 1

-- Display: Trd Reg Publication Type
display.trd_reg_publication_type = function(value)
  return "Trd Reg Publication Type: "..value
end

-- Dissect: Trd Reg Publication Type
dissect.trd_reg_publication_type = function(buffer, offset, packet, parent)
  local length = size_of.trd_reg_publication_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trd_reg_publication_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.trd_reg_publication_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trd Reg Publications Group
size_of.trd_reg_publications_group = function(buffer, offset)
  local index = 0

  index = index + size_of.trd_reg_publication_type

  index = index + size_of.trd_reg_publication_reason

  return index
end

-- Display: Trd Reg Publications Group
display.trd_reg_publications_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trd Reg Publications Group
dissect.trd_reg_publications_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Publication Type: 1 Byte Unsigned Fixed Width Integer
  index, trd_reg_publication_type = dissect.trd_reg_publication_type(buffer, index, packet, parent)

  -- Trd Reg Publication Reason: 1 Byte Unsigned Fixed Width Integer
  index, trd_reg_publication_reason = dissect.trd_reg_publication_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Trd Reg Publications Group
dissect.trd_reg_publications_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trd_reg_publications_group then
    local length = size_of.trd_reg_publications_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trd_reg_publications_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.trd_reg_publications_group, range, display)
  end

  return dissect.trd_reg_publications_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trd Reg Publications Groups
size_of.trd_reg_publications_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local trd_reg_publications_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + trd_reg_publications_group_count * 2

  return index
end

-- Display: Trd Reg Publications Groups
display.trd_reg_publications_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trd Reg Publications Groups
dissect.trd_reg_publications_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Trd Reg Publications Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.trd_reg_publications_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trd Reg Publications Groups
dissect.trd_reg_publications_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trd_reg_publications_groups then
    local length = size_of.trd_reg_publications_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trd_reg_publications_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.trd_reg_publications_groups, range, display)
  end

  return dissect.trd_reg_publications_groups_fields(buffer, offset, packet, parent)
end

-- Size: Party Detail Role
size_of.party_detail_role = 2

-- Display: Party Detail Role
display.party_detail_role = function(value)
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
dissect.party_detail_role = function(buffer, offset, packet, parent)
  local length = size_of.party_detail_role
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_detail_role(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_detail_role, range, value, display)

  return offset + length, value
end

-- Size: Party Detail Id
size_of.party_detail_id = 20

-- Display: Party Detail Id
display.party_detail_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Detail Id: No Value"
  end

  return "Party Detail Id: "..value
end

-- Dissect: Party Detail Id
dissect.party_detail_id = function(buffer, offset, packet, parent)
  local length = size_of.party_detail_id
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

  local display = display.party_detail_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_detail_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Party Details Group
size_of.party_details_group = function(buffer, offset)
  local index = 0

  index = index + size_of.party_detail_id

  index = index + size_of.party_detail_role

  return index
end

-- Display: Party Details Group
display.party_details_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details Group
dissect.party_details_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Detail Id: 20 Byte Ascii String
  index, party_detail_id = dissect.party_detail_id(buffer, index, packet, parent)

  -- Party Detail Role: 2 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, party_detail_role = dissect.party_detail_role(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Group
dissect.party_details_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.party_details_group then
    local length = size_of.party_details_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_details_group, range, display)
  end

  return dissect.party_details_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Party Details Groups
size_of.party_details_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local party_details_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + party_details_group_count * 22

  return index
end

-- Display: Party Details Groups
display.party_details_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details Groups
dissect.party_details_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Party Details Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.party_details_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Party Details Groups
dissect.party_details_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_groups then
    local length = size_of.party_details_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_details_groups, range, display)
  end

  return dissect.party_details_groups_fields(buffer, offset, packet, parent)
end

-- Size: Idm Short Code
size_of.idm_short_code = 8

-- Display: Idm Short Code
display.idm_short_code = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Idm Short Code: No Value"
  end

  return "Idm Short Code: "..value
end

-- Dissect: Idm Short Code
dissect.idm_short_code = function(buffer, offset, packet, parent)
  local length = size_of.idm_short_code
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.idm_short_code(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.idm_short_code, range, value, display)

  return offset + length, value
end

-- Size: Executor
size_of.executor = 8

-- Display: Executor
display.executor = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Executor: No Value"
  end

  return "Executor: "..value
end

-- Dissect: Executor
dissect.executor = function(buffer, offset, packet, parent)
  local length = size_of.executor
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.executor(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.executor, range, value, display)

  return offset + length, value
end

-- Size: Cust Order Handling Inst
size_of.cust_order_handling_inst = 1

-- Display: Cust Order Handling Inst
display.cust_order_handling_inst = function(value)
  if value == "C" then
    return "Cust Order Handling Inst: Fc Mprovidedscreen (C)"
  end
  if value == "D" then
    return "Cust Order Handling Inst: Otherprovidedscreen (D)"
  end
  if value == "G" then
    return "Cust Order Handling Inst: Fcmap Ior Fix (G)"
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
  if value == '' then
    return "Cust Order Handling Inst: No Value"
  end

  return "Cust Order Handling Inst: Unknown("..value..")"
end

-- Dissect: Cust Order Handling Inst
dissect.cust_order_handling_inst = function(buffer, offset, packet, parent)
  local length = size_of.cust_order_handling_inst
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.cust_order_handling_inst(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.cust_order_handling_inst, range, value, display)

  return offset + length, value
end

-- Size: Cmta Giveup Cd
size_of.cmta_giveup_cd = 1

-- Display: Cmta Giveup Cd
display.cmta_giveup_cd = function(value)
  if value == "G" then
    return "Cmta Giveup Cd: Give Up (G)"
  end
  if value == "S" then
    return "Cmta Giveup Cd: Sg Xoffset (S)"
  end
  if value == '' then
    return "Cmta Giveup Cd: No Value"
  end

  return "Cmta Giveup Cd: Unknown("..value..")"
end

-- Dissect: Cmta Giveup Cd
dissect.cmta_giveup_cd = function(buffer, offset, packet, parent)
  local length = size_of.cmta_giveup_cd
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.cmta_giveup_cd(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.cmta_giveup_cd, range, value, display)

  return offset + length, value
end

-- Size: Clearing Trade Price Type
size_of.clearing_trade_price_type = 1

-- Display: Clearing Trade Price Type
display.clearing_trade_price_type = function(value)
  if value == 0 then
    return "Clearing Trade Price Type: Trade Clearingat Execution Price (0)"
  end
  if value == 1 then
    return "Clearing Trade Price Type: Trade Clearingat Alternate Clearing Price (1)"
  end
  if value == 255 then
    return "Clearing Trade Price Type: No Value"
  end

  return "Clearing Trade Price Type: Unknown("..value..")"
end

-- Dissect: Clearing Trade Price Type
dissect.clearing_trade_price_type = function(buffer, offset, packet, parent)
  local length = size_of.clearing_trade_price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.clearing_trade_price_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.clearing_trade_price_type, range, value, display)

  return offset + length, value
end

-- Size: Avg Px Indicator
size_of.avg_px_indicator = 1

-- Display: Avg Px Indicator
display.avg_px_indicator = function(value)
  if value == 0 then
    return "Avg Px Indicator: No Average Pricing (0)"
  end
  if value == 1 then
    return "Avg Px Indicator: Tradeispartofan Average Price Group Identifiedbythe Avg Px Grp Id (1)"
  end
  if value == 3 then
    return "Avg Px Indicator: Tradeispartofa Notional Value Average Price Group (3)"
  end
  if value == 255 then
    return "Avg Px Indicator: No Value"
  end

  return "Avg Px Indicator: Unknown("..value..")"
end

-- Dissect: Avg Px Indicator
dissect.avg_px_indicator = function(buffer, offset, packet, parent)
  local length = size_of.avg_px_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.avg_px_indicator(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.avg_px_indicator, range, value, display)

  return offset + length, value
end

-- Size: Self Match Prevention Instruction
size_of.self_match_prevention_instruction = 1

-- Display: Self Match Prevention Instruction
display.self_match_prevention_instruction = function(value)
  if value == "N" then
    return "Self Match Prevention Instruction: Cancel Newest (N)"
  end
  if value == "O" then
    return "Self Match Prevention Instruction: Cancel Oldest (O)"
  end
  if value == '' then
    return "Self Match Prevention Instruction: No Value"
  end

  return "Self Match Prevention Instruction: Unknown("..value..")"
end

-- Dissect: Self Match Prevention Instruction
dissect.self_match_prevention_instruction = function(buffer, offset, packet, parent)
  local length = size_of.self_match_prevention_instruction
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.self_match_prevention_instruction(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.self_match_prevention_instruction, range, value, display)

  return offset + length, value
end

-- Size: Clearing Account Type
size_of.clearing_account_type = 1

-- Display: Clearing Account Type
display.clearing_account_type = function(value)
  if value == 0 then
    return "Clearing Account Type: Customer (0)"
  end
  if value == 1 then
    return "Clearing Account Type: Firm (1)"
  end
  if value == 255 then
    return "Clearing Account Type: No Value"
  end

  return "Clearing Account Type: Unknown("..value..")"
end

-- Dissect: Clearing Account Type
dissect.clearing_account_type = function(buffer, offset, packet, parent)
  local length = size_of.clearing_account_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.clearing_account_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.clearing_account_type, range, value, display)

  return offset + length, value
end

-- Size: Cust Order Capacity
size_of.cust_order_capacity = 1

-- Display: Cust Order Capacity
display.cust_order_capacity = function(value)
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
  if value == 255 then
    return "Cust Order Capacity: No Value"
  end

  return "Cust Order Capacity: Unknown("..value..")"
end

-- Dissect: Cust Order Capacity
dissect.cust_order_capacity = function(buffer, offset, packet, parent)
  local length = size_of.cust_order_capacity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.cust_order_capacity(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.cust_order_capacity, range, value, display)

  return offset + length, value
end

-- Size: Request Result
size_of.request_result = 1

-- Display: Request Result
display.request_result = function(value)
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
dissect.request_result = function(buffer, offset, packet, parent)
  local length = size_of.request_result
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.request_result(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.request_result, range, value, display)

  return offset + length, value
end

-- Size: Tot Num Parties
size_of.tot_num_parties = 2

-- Display: Tot Num Parties
display.tot_num_parties = function(value)
  return "Tot Num Parties: "..value
end

-- Dissect: Tot Num Parties
dissect.tot_num_parties = function(buffer, offset, packet, parent)
  local length = size_of.tot_num_parties
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tot_num_parties(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.tot_num_parties, range, value, display)

  return offset + length, value
end

-- Size: Self Match Prevention Id
size_of.self_match_prevention_id = 8

-- Display: Self Match Prevention Id
display.self_match_prevention_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Self Match Prevention Id: No Value"
  end

  return "Self Match Prevention Id: "..value
end

-- Dissect: Self Match Prevention Id
dissect.self_match_prevention_id = function(buffer, offset, packet, parent)
  local length = size_of.self_match_prevention_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.self_match_prevention_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.self_match_prevention_id, range, value, display)

  return offset + length, value
end

-- Size: Party Details List Report Id
size_of.party_details_list_report_id = 8

-- Display: Party Details List Report Id
display.party_details_list_report_id = function(value)
  return "Party Details List Report Id: "..value
end

-- Dissect: Party Details List Report Id
dissect.party_details_list_report_id = function(buffer, offset, packet, parent)
  local length = size_of.party_details_list_report_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.party_details_list_report_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_details_list_report_id, range, value, display)

  return offset + length, value
end

-- Size: Avg Px Group Id
size_of.avg_px_group_id = 20

-- Display: Avg Px Group Id
display.avg_px_group_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Avg Px Group Id: No Value"
  end

  return "Avg Px Group Id: "..value
end

-- Dissect: Avg Px Group Id
dissect.avg_px_group_id = function(buffer, offset, packet, parent)
  local length = size_of.avg_px_group_id
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

  local display = display.avg_px_group_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.avg_px_group_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Party Details List Report
size_of.party_details_list_report = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.avg_px_group_id

  index = index + size_of.party_details_list_req_id

  index = index + size_of.party_details_list_report_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.self_match_prevention_id

  index = index + size_of.tot_num_parties

  index = index + size_of.request_result

  index = index + size_of.last_fragment

  index = index + size_of.cust_order_capacity

  index = index + size_of.clearing_account_type

  index = index + size_of.self_match_prevention_instruction

  index = index + size_of.avg_px_indicator

  index = index + size_of.clearing_trade_price_type

  index = index + size_of.cmta_giveup_cd

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.executor

  index = index + size_of.idm_short_code

  index = index + size_of.poss_retrans_flag

  index = index + size_of.split_msg

  index = index + size_of.party_details_groups(buffer, offset + index)

  index = index + size_of.trd_reg_publications_groups(buffer, offset + index)

  return index
end

-- Display: Party Details List Report
display.party_details_list_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details List Report
dissect.party_details_list_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Avg Px Group Id: 20 Byte Ascii String Nullable
  index, avg_px_group_id = dissect.avg_px_group_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Party Details List Report Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_report_id = dissect.party_details_list_report_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Self Match Prevention Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, self_match_prevention_id = dissect.self_match_prevention_id(buffer, index, packet, parent)

  -- Tot Num Parties: 2 Byte Unsigned Fixed Width Integer
  index, tot_num_parties = dissect.tot_num_parties(buffer, index, packet, parent)

  -- Request Result: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, request_result = dissect.request_result(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = dissect.last_fragment(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, cust_order_capacity = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Clearing Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_account_type = dissect.clearing_account_type(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: 1 Byte Ascii String Enum with 3 values
  index, self_match_prevention_instruction = dissect.self_match_prevention_instruction(buffer, index, packet, parent)

  -- Avg Px Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, avg_px_indicator = dissect.avg_px_indicator(buffer, index, packet, parent)

  -- Clearing Trade Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_trade_price_type = dissect.clearing_trade_price_type(buffer, index, packet, parent)

  -- Cmta Giveup Cd: 1 Byte Ascii String Enum with 3 values
  index, cmta_giveup_cd = dissect.cmta_giveup_cd(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String Enum with 7 values
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Executor: 8 Byte Unsigned Fixed Width Integer Nullable
  index, executor = dissect.executor(buffer, index, packet, parent)

  -- Idm Short Code: 8 Byte Unsigned Fixed Width Integer Nullable
  index, idm_short_code = dissect.idm_short_code(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index, party_details_groups = dissect.party_details_groups(buffer, index, packet, parent)

  -- Trd Reg Publications Groups: Struct of 2 fields
  index, trd_reg_publications_groups = dissect.trd_reg_publications_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details List Report
dissect.party_details_list_report = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_list_report then
    local length = size_of.party_details_list_report(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_list_report(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_details_list_report, range, display)
  end

  return dissect.party_details_list_report_fields(buffer, offset, packet, parent)
end

-- Size: Party Role
size_of.party_role = 2

-- Display: Party Role
display.party_role = function(value)
  return "Party Role: "..value
end

-- Dissect: Party Role
dissect.party_role = function(buffer, offset, packet, parent)
  local length = size_of.party_role
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_role(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_role, range, value, display)

  return offset + length, value
end

-- Size: Party Id Source
size_of.party_id_source = 1

-- Display: Party Id Source
display.party_id_source = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Id Source: No Value"
  end

  return "Party Id Source: "..value
end

-- Dissect: Party Id Source
dissect.party_id_source = function(buffer, offset, packet, parent)
  local length = size_of.party_id_source
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.party_id_source(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_id_source, range, value, display)

  return offset + length, value
end

-- Size: Party Id
size_of.party_id = 8

-- Display: Party Id
display.party_id = function(value)
  return "Party Id: "..value
end

-- Dissect: Party Id
dissect.party_id = function(buffer, offset, packet, parent)
  local length = size_of.party_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.party_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Party I Ds Group
size_of.party_i_ds_group = function(buffer, offset)
  local index = 0

  index = index + size_of.party_id

  index = index + size_of.party_id_source

  index = index + size_of.party_role

  return index
end

-- Display: Party I Ds Group
display.party_i_ds_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party I Ds Group
dissect.party_i_ds_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id = dissect.party_id(buffer, index, packet, parent)

  -- Party Id Source: 1 Byte Ascii String
  index, party_id_source = dissect.party_id_source(buffer, index, packet, parent)

  -- Party Role: 2 Byte Unsigned Fixed Width Integer
  index, party_role = dissect.party_role(buffer, index, packet, parent)

  return index
end

-- Dissect: Party I Ds Group
dissect.party_i_ds_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.party_i_ds_group then
    local length = size_of.party_i_ds_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_i_ds_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_i_ds_group, range, display)
  end

  return dissect.party_i_ds_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Party I Ds Groups
size_of.party_i_ds_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local party_i_ds_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + party_i_ds_group_count * 11

  return index
end

-- Display: Party I Ds Groups
display.party_i_ds_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party I Ds Groups
dissect.party_i_ds_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Party I Ds Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = dissect.party_i_ds_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Party I Ds Groups
dissect.party_i_ds_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_i_ds_groups then
    local length = size_of.party_i_ds_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_i_ds_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_i_ds_groups, range, display)
  end

  return dissect.party_i_ds_groups_fields(buffer, offset, packet, parent)
end

-- Size: Requesting Party Role
size_of.requesting_party_role = 1

-- Display: Requesting Party Role
display.requesting_party_role = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Requesting Party Role: No Value"
  end

  return "Requesting Party Role: "..value
end

-- Dissect: Requesting Party Role
dissect.requesting_party_role = function(buffer, offset, packet, parent)
  local length = size_of.requesting_party_role
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.requesting_party_role(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.requesting_party_role, range, value, display)

  return offset + length, value
end

-- Size: Requesting Party Id Source
size_of.requesting_party_id_source = 1

-- Display: Requesting Party Id Source
display.requesting_party_id_source = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Requesting Party Id Source: No Value"
  end

  return "Requesting Party Id Source: "..value
end

-- Dissect: Requesting Party Id Source
dissect.requesting_party_id_source = function(buffer, offset, packet, parent)
  local length = size_of.requesting_party_id_source
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.requesting_party_id_source(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.requesting_party_id_source, range, value, display)

  return offset + length, value
end

-- Size: Requesting Party Id
size_of.requesting_party_id = 5

-- Display: Requesting Party Id
display.requesting_party_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Requesting Party Id: No Value"
  end

  return "Requesting Party Id: "..value
end

-- Dissect: Requesting Party Id
dissect.requesting_party_id = function(buffer, offset, packet, parent)
  local length = size_of.requesting_party_id
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

  local display = display.requesting_party_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.requesting_party_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Requesting Party I Ds Group
size_of.requesting_party_i_ds_group = function(buffer, offset)
  local index = 0

  index = index + size_of.requesting_party_id

  index = index + size_of.requesting_party_id_source

  index = index + size_of.requesting_party_role

  return index
end

-- Display: Requesting Party I Ds Group
display.requesting_party_i_ds_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Requesting Party I Ds Group
dissect.requesting_party_i_ds_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Requesting Party Id: 5 Byte Ascii String Nullable
  index, requesting_party_id = dissect.requesting_party_id(buffer, index, packet, parent)

  -- Requesting Party Id Source: 1 Byte Ascii String
  index, requesting_party_id_source = dissect.requesting_party_id_source(buffer, index, packet, parent)

  -- Requesting Party Role: 1 Byte Ascii String
  index, requesting_party_role = dissect.requesting_party_role(buffer, index, packet, parent)

  return index
end

-- Dissect: Requesting Party I Ds Group
dissect.requesting_party_i_ds_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.requesting_party_i_ds_group then
    local length = size_of.requesting_party_i_ds_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.requesting_party_i_ds_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.requesting_party_i_ds_group, range, display)
  end

  return dissect.requesting_party_i_ds_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Requesting Party I Ds Groups
size_of.requesting_party_i_ds_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local requesting_party_i_ds_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + requesting_party_i_ds_group_count * 7

  return index
end

-- Display: Requesting Party I Ds Groups
display.requesting_party_i_ds_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Requesting Party I Ds Groups
dissect.requesting_party_i_ds_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Requesting Party I Ds Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = dissect.requesting_party_i_ds_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Requesting Party I Ds Groups
dissect.requesting_party_i_ds_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.requesting_party_i_ds_groups then
    local length = size_of.requesting_party_i_ds_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.requesting_party_i_ds_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.requesting_party_i_ds_groups, range, display)
  end

  return dissect.requesting_party_i_ds_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Party Details List Request
size_of.party_details_list_request = function(buffer, offset)
  local index = 0

  index = index + size_of.party_details_list_req_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.seq_num

  index = index + size_of.requesting_party_i_ds_groups(buffer, offset + index)

  index = index + size_of.party_i_ds_groups(buffer, offset + index)

  return index
end

-- Display: Party Details List Request
display.party_details_list_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details List Request
dissect.party_details_list_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Requesting Party I Ds Groups: Struct of 2 fields
  index, requesting_party_i_ds_groups = dissect.requesting_party_i_ds_groups(buffer, index, packet, parent)

  -- Party I Ds Groups: Struct of 2 fields
  index, party_i_ds_groups = dissect.party_i_ds_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details List Request
dissect.party_details_list_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_list_request then
    local length = size_of.party_details_list_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_list_request(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_details_list_request, range, display)
  end

  return dissect.party_details_list_request_fields(buffer, offset, packet, parent)
end

-- Size: Cxl Rej Reason
size_of.cxl_rej_reason = 2

-- Display: Cxl Rej Reason
display.cxl_rej_reason = function(value)
  return "Cxl Rej Reason: "..value
end

-- Dissect: Cxl Rej Reason
dissect.cxl_rej_reason = function(buffer, offset, packet, parent)
  local length = size_of.cxl_rej_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.cxl_rej_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.cxl_rej_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Replace Reject
size_of.order_cancel_replace_reject = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.text

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.location

  index = index + size_of.cxl_rej_reason

  index = index + size_of.delay_duration

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.split_msg

  index = index + size_of.liquidity_flag

  index = index + size_of.delay_to_time

  return index
end

-- Display: Order Cancel Replace Reject
display.order_cancel_replace_reject = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Replace Reject
dissect.order_cancel_replace_reject_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String Nullable
  index, text = dissect.text(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Cxl Rej Reason: 2 Byte Unsigned Fixed Width Integer
  index, cxl_rej_reason = dissect.cxl_rej_reason(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = dissect.delay_duration(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Reject
dissect.order_cancel_replace_reject = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_replace_reject then
    local length = size_of.order_cancel_replace_reject(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancel_replace_reject(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_cancel_replace_reject, range, display)
  end

  return dissect.order_cancel_replace_reject_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancel Reject
size_of.order_cancel_reject = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.text

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.location

  index = index + size_of.cxl_rej_reason

  index = index + size_of.delay_duration

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.split_msg

  index = index + size_of.liquidity_flag

  index = index + size_of.delay_to_time

  return index
end

-- Display: Order Cancel Reject
display.order_cancel_reject = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Reject
dissect.order_cancel_reject_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String Nullable
  index, text = dissect.text(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Cxl Rej Reason: 2 Byte Unsigned Fixed Width Integer
  index, cxl_rej_reason = dissect.cxl_rej_reason(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = dissect.delay_duration(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject
dissect.order_cancel_reject = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_reject then
    local length = size_of.order_cancel_reject(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancel_reject(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_cancel_reject, range, display)
  end

  return dissect.order_cancel_reject_fields(buffer, offset, packet, parent)
end

-- Size: Cross Type
size_of.cross_type = 1

-- Display: Cross Type
display.cross_type = function(value)
  -- Check if field has value
  if value == 255 then
    return "Cross Type: No Value"
  end

  return "Cross Type: "..value
end

-- Dissect: Cross Type
dissect.cross_type = function(buffer, offset, packet, parent)
  local length = size_of.cross_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Host Cross Id
size_of.host_cross_id = 8

-- Display: Host Cross Id
display.host_cross_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Host Cross Id: No Value"
  end

  return "Host Cross Id: "..value
end

-- Dissect: Host Cross Id
dissect.host_cross_id = function(buffer, offset, packet, parent)
  local length = size_of.host_cross_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.host_cross_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.host_cross_id, range, value, display)

  return offset + length, value
end

-- Size: Cross Id Optional
size_of.cross_id_optional = 8

-- Display: Cross Id Optional
display.cross_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Cross Id Optional: No Value"
  end

  return "Cross Id Optional: "..value
end

-- Dissect: Cross Id Optional
dissect.cross_id_optional = function(buffer, offset, packet, parent)
  local length = size_of.cross_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.cross_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.cross_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Stop Px
size_of.stop_px = 8

-- Display: Stop Px
display.stop_px = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Translate: Stop Px
translate.stop_px = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Stop Px
dissect.stop_px = function(buffer, offset, packet, parent)
  local length = size_of.stop_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.stop_px(raw)
  local display = display.stop_px(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Cancel
size_of.execution_report_cancel = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.stop_px

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.cross_id_optional

  index = index + size_of.host_cross_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.cum_qty

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.expire_date

  index = index + size_of.delay_duration

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.split_msg

  index = index + size_of.exec_restatement_reason

  index = index + size_of.cross_type

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.managed_order

  index = index + size_of.short_sale_type

  index = index + size_of.delay_to_time

  index = index + size_of.discretion_price

  return index
end

-- Display: Execution Report Cancel
display.execution_report_cancel = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Cancel
dissect.execution_report_cancel_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = dissect.cross_id_optional(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = dissect.delay_duration(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Cancel
dissect.execution_report_cancel = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_cancel then
    local length = size_of.execution_report_cancel(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_cancel(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_cancel, range, display)
  end

  return dissect.execution_report_cancel_fields(buffer, offset, packet, parent)
end

-- Size: Ord Status Req Id
size_of.ord_status_req_id = 8

-- Display: Ord Status Req Id
display.ord_status_req_id = function(value)
  return "Ord Status Req Id: "..value
end

-- Dissect: Ord Status Req Id
dissect.ord_status_req_id = function(buffer, offset, packet, parent)
  local length = size_of.ord_status_req_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.ord_status_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ord_status_req_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Status Request
size_of.order_status_request = function(buffer, offset)
  local index = 0

  index = index + size_of.party_details_list_req_id

  index = index + size_of.ord_status_req_id

  index = index + size_of.manual_order_indicator

  index = index + size_of.seq_num

  index = index + size_of.sender_id

  index = index + size_of.order_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.location

  return index
end

-- Display: Order Status Request
display.order_status_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Status Request
dissect.order_status_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Ord Status Req Id: 8 Byte Unsigned Fixed Width Integer
  index, ord_status_req_id = dissect.ord_status_req_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Status Request
dissect.order_status_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_status_request then
    local length = size_of.order_status_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_status_request(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_status_request, range, display)
  end

  return dissect.order_status_request_fields(buffer, offset, packet, parent)
end

-- Size: Last Rpt Requested
size_of.last_rpt_requested = 1

-- Display: Last Rpt Requested
display.last_rpt_requested = function(value)
  if value == 0 then
    return "Last Rpt Requested: False (0)"
  end
  if value == 1 then
    return "Last Rpt Requested: True (1)"
  end
  if value == 255 then
    return "Last Rpt Requested: No Value"
  end

  return "Last Rpt Requested: Unknown("..value..")"
end

-- Dissect: Last Rpt Requested
dissect.last_rpt_requested = function(buffer, offset, packet, parent)
  local length = size_of.last_rpt_requested
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_rpt_requested(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.last_rpt_requested, range, value, display)

  return offset + length, value
end

-- Size: Ord Status
size_of.ord_status = 1

-- Display: Ord Status
display.ord_status = function(value)
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
  if value == "6" then
    return "Ord Status: Pending Cancel (6)"
  end
  if value == "8" then
    return "Ord Status: Rejected (8)"
  end
  if value == "C" then
    return "Ord Status: Expired (C)"
  end
  if value == "E" then
    return "Ord Status: Pending Replace (E)"
  end
  if value == "U" then
    return "Ord Status: Undefined (U)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
dissect.ord_status = function(buffer, offset, packet, parent)
  local length = size_of.ord_status
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.ord_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Size: Mass Status Req Id Optional
size_of.mass_status_req_id_optional = 8

-- Display: Mass Status Req Id Optional
display.mass_status_req_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Mass Status Req Id Optional: No Value"
  end

  return "Mass Status Req Id Optional: "..value
end

-- Dissect: Mass Status Req Id Optional
dissect.mass_status_req_id_optional = function(buffer, offset, packet, parent)
  local length = size_of.mass_status_req_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.mass_status_req_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_status_req_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Ord Status Req Id Optional
size_of.ord_status_req_id_optional = 8

-- Display: Ord Status Req Id Optional
display.ord_status_req_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Ord Status Req Id Optional: No Value"
  end

  return "Ord Status Req Id Optional: "..value
end

-- Dissect: Ord Status Req Id Optional
dissect.ord_status_req_id_optional = function(buffer, offset, packet, parent)
  local length = size_of.ord_status_req_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.ord_status_req_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ord_status_req_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Price Optional
size_of.price_optional = 8

-- Display: Price Optional
display.price_optional = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Price Optional: No Value"
  end

  return "Price Optional: "..value
end

-- Translate: Price Optional
translate.price_optional = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Price Optional
dissect.price_optional = function(buffer, offset, packet, parent)
  local length = size_of.price_optional
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price_optional(raw)
  local display = display.price_optional(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.price_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Status
size_of.execution_report_status = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.text

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id

  index = index + size_of.price_optional

  index = index + size_of.stop_px

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.ord_status_req_id_optional

  index = index + size_of.mass_status_req_id_optional

  index = index + size_of.cross_id_optional

  index = index + size_of.host_cross_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.cum_qty

  index = index + size_of.leaves

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.expire_date

  index = index + size_of.ord_status

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.last_rpt_requested

  index = index + size_of.cross_type

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.managed_order

  index = index + size_of.short_sale_type

  index = index + size_of.discretion_price

  return index
end

-- Display: Execution Report Status
display.execution_report_status = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Status
dissect.execution_report_status_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String Nullable
  index, text = dissect.text(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = dissect.price_optional(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Ord Status Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, ord_status_req_id_optional = dissect.ord_status_req_id_optional(buffer, index, packet, parent)

  -- Mass Status Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, mass_status_req_id_optional = dissect.mass_status_req_id_optional(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = dissect.cross_id_optional(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Leaves: 4 Byte Unsigned Fixed Width Integer
  index, leaves = dissect.leaves(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 10 values
  index, ord_status = dissect.ord_status(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Last Rpt Requested: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_rpt_requested = dissect.last_rpt_requested(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Status
dissect.execution_report_status = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_status then
    local length = size_of.execution_report_status(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_status(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_status, range, display)
  end

  return dissect.execution_report_status_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Modify
size_of.execution_report_modify = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.stop_px

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.cross_id_optional

  index = index + size_of.host_cross_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.cum_qty

  index = index + size_of.leaves

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.expire_date

  index = index + size_of.delay_duration

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.split_msg

  index = index + size_of.cross_type

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.managed_order

  index = index + size_of.short_sale_type

  index = index + size_of.delay_to_time

  index = index + size_of.discretion_price

  return index
end

-- Display: Execution Report Modify
display.execution_report_modify = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Modify
dissect.execution_report_modify_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = dissect.cross_id_optional(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Leaves: 4 Byte Unsigned Fixed Width Integer
  index, leaves = dissect.leaves(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = dissect.delay_duration(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Modify
dissect.execution_report_modify = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_modify then
    local length = size_of.execution_report_modify(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_modify(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_modify, range, display)
  end

  return dissect.execution_report_modify_fields(buffer, offset, packet, parent)
end

-- Size: Mass Status Tif
size_of.mass_status_tif = 1

-- Display: Mass Status Tif
display.mass_status_tif = function(value)
  if value == 0 then
    return "Mass Status Tif: Day (0)"
  end
  if value == 1 then
    return "Mass Status Tif: Gtc (1)"
  end
  if value == 6 then
    return "Mass Status Tif: Gtd (6)"
  end
  if value == 99 then
    return "Mass Status Tif: Gfs (99)"
  end
  if value == 255 then
    return "Mass Status Tif: No Value"
  end

  return "Mass Status Tif: Unknown("..value..")"
end

-- Dissect: Mass Status Tif
dissect.mass_status_tif = function(buffer, offset, packet, parent)
  local length = size_of.mass_status_tif
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mass_status_tif(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_status_tif, range, value, display)

  return offset + length, value
end

-- Size: Ord Status Req Type
size_of.ord_status_req_type = 1

-- Display: Ord Status Req Type
display.ord_status_req_type = function(value)
  if value == 100 then
    return "Ord Status Req Type: Sender Sub Id (100)"
  end
  if value == 101 then
    return "Ord Status Req Type: Account (101)"
  end
  if value == 255 then
    return "Ord Status Req Type: No Value"
  end

  return "Ord Status Req Type: Unknown("..value..")"
end

-- Dissect: Ord Status Req Type
dissect.ord_status_req_type = function(buffer, offset, packet, parent)
  local length = size_of.ord_status_req_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ord_status_req_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ord_status_req_type, range, value, display)

  return offset + length, value
end

-- Size: Mass Status Req Type
size_of.mass_status_req_type = 1

-- Display: Mass Status Req Type
display.mass_status_req_type = function(value)
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
dissect.mass_status_req_type = function(buffer, offset, packet, parent)
  local length = size_of.mass_status_req_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mass_status_req_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_status_req_type, range, value, display)

  return offset + length, value
end

-- Size: Mass Status Req Id
size_of.mass_status_req_id = 8

-- Display: Mass Status Req Id
display.mass_status_req_id = function(value)
  return "Mass Status Req Id: "..value
end

-- Dissect: Mass Status Req Id
dissect.mass_status_req_id = function(buffer, offset, packet, parent)
  local length = size_of.mass_status_req_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.mass_status_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_status_req_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Mass Status Request
size_of.order_mass_status_request = function(buffer, offset)
  local index = 0

  index = index + size_of.party_details_list_req_id

  index = index + size_of.mass_status_req_id

  index = index + size_of.manual_order_indicator

  index = index + size_of.seq_num

  index = index + size_of.sender_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.security_group

  index = index + size_of.location

  index = index + size_of.security_id_optional

  index = index + size_of.mass_status_req_type

  index = index + size_of.ord_status_req_type

  index = index + size_of.mass_status_tif

  index = index + size_of.market_segment_id

  return index
end

-- Display: Order Mass Status Request
display.order_mass_status_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Mass Status Request
dissect.order_mass_status_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Mass Status Req Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_status_req_id = dissect.mass_status_req_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String Nullable
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = dissect.security_id_optional(buffer, index, packet, parent)

  -- Mass Status Req Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_status_req_type = dissect.mass_status_req_type(buffer, index, packet, parent)

  -- Ord Status Req Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ord_status_req_type = dissect.ord_status_req_type(buffer, index, packet, parent)

  -- Mass Status Tif: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, mass_status_tif = dissect.mass_status_tif(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Status Request
dissect.order_mass_status_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_mass_status_request then
    local length = size_of.order_mass_status_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_mass_status_request(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_mass_status_request, range, display)
  end

  return dissect.order_mass_status_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Mass Action Request
size_of.order_mass_action_request = function(buffer, offset)
  local index = 0

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_request_id

  index = index + size_of.manual_order_indicator

  index = index + size_of.seq_num

  index = index + size_of.sender_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.security_group

  index = index + size_of.location

  index = index + size_of.security_id_optional

  index = index + size_of.mass_action_scope

  index = index + size_of.market_segment_id

  index = index + size_of.mass_cancel_request_type

  index = index + size_of.side_optional

  index = index + size_of.mass_action_ord_typ

  index = index + size_of.mass_cancel_tif

  index = index + size_of.liquidity_flag

  return index
end

-- Display: Order Mass Action Request
display.order_mass_action_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Mass Action Request
dissect.order_mass_action_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String Nullable
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = dissect.security_id_optional(buffer, index, packet, parent)

  -- Mass Action Scope: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, mass_action_scope = dissect.mass_action_scope(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, market_segment_id = dissect.market_segment_id(buffer, index, packet, parent)

  -- Mass Cancel Request Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_cancel_request_type = dissect.mass_cancel_request_type(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = dissect.side_optional(buffer, index, packet, parent)

  -- Mass Action Ord Typ: 1 Byte Ascii String Enum with 3 values
  index, mass_action_ord_typ = dissect.mass_action_ord_typ(buffer, index, packet, parent)

  -- Mass Cancel Tif: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mass_cancel_tif = dissect.mass_cancel_tif(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Request
dissect.order_mass_action_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_mass_action_request then
    local length = size_of.order_mass_action_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_mass_action_request(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_mass_action_request, range, display)
  end

  return dissect.order_mass_action_request_fields(buffer, offset, packet, parent)
end

-- Size: Offer Size
size_of.offer_size = 4

-- Display: Offer Size
display.offer_size = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Dissect: Offer Size
dissect.offer_size = function(buffer, offset, packet, parent)
  local length = size_of.offer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.offer_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 4

-- Display: Bid Size
display.bid_size = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Cancel Set Group
size_of.quote_cancel_set_group = function(buffer, offset)
  local index = 0

  index = index + size_of.bid_size

  index = index + size_of.offer_size

  index = index + size_of.quote_set_id

  return index
end

-- Display: Quote Cancel Set Group
display.quote_cancel_set_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel Set Group
dissect.quote_cancel_set_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Quote Set Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_set_id = dissect.quote_set_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Set Group
dissect.quote_cancel_set_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_cancel_set_group then
    local length = size_of.quote_cancel_set_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel_set_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_set_group, range, display)
  end

  return dissect.quote_cancel_set_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Cancel Set Groups
size_of.quote_cancel_set_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local quote_cancel_set_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_cancel_set_group_count * 10

  return index
end

-- Display: Quote Cancel Set Groups
display.quote_cancel_set_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel Set Groups
dissect.quote_cancel_set_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Quote Cancel Set Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = dissect.quote_cancel_set_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Cancel Set Groups
dissect.quote_cancel_set_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_set_groups then
    local length = size_of.quote_cancel_set_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel_set_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_set_groups, range, display)
  end

  return dissect.quote_cancel_set_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Cancel Entry Group
size_of.quote_cancel_entry_group = function(buffer, offset)
  local index = 0

  index = index + size_of.security_group

  index = index + size_of.security_id_optional

  return index
end

-- Display: Quote Cancel Entry Group
display.quote_cancel_entry_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel Entry Group
dissect.quote_cancel_entry_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Group: 6 Byte Ascii String Nullable
  index, security_group = dissect.security_group(buffer, index, packet, parent)

  -- Security Id Optional: 4 Byte Signed Fixed Width Integer Nullable
  index, security_id_optional = dissect.security_id_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Entry Group
dissect.quote_cancel_entry_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_cancel_entry_group then
    local length = size_of.quote_cancel_entry_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel_entry_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_entry_group, range, display)
  end

  return dissect.quote_cancel_entry_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Cancel Entry Groups
size_of.quote_cancel_entry_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local quote_cancel_entry_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_cancel_entry_group_count * 10

  return index
end

-- Display: Quote Cancel Entry Groups
display.quote_cancel_entry_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel Entry Groups
dissect.quote_cancel_entry_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Quote Cancel Entry Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.quote_cancel_entry_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Cancel Entry Groups
dissect.quote_cancel_entry_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_entry_groups then
    local length = size_of.quote_cancel_entry_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel_entry_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_entry_groups, range, display)
  end

  return dissect.quote_cancel_entry_groups_fields(buffer, offset, packet, parent)
end

-- Size: Quote Cancel Type
size_of.quote_cancel_type = 1

-- Display: Quote Cancel Type
display.quote_cancel_type = function(value)
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
dissect.quote_cancel_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_cancel_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quote_cancel_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cancel_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Cancel
size_of.quote_cancel = function(buffer, offset)
  local index = 0

  index = index + size_of.party_details_list_req_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.manual_order_indicator

  index = index + size_of.seq_num

  index = index + size_of.sender_id

  index = index + size_of.location

  index = index + size_of.quote_id

  index = index + size_of.quote_cancel_type

  index = index + size_of.liquidity_flag

  index = index + size_of.quote_cancel_entry_groups(buffer, offset + index)

  index = index + size_of.quote_cancel_set_groups(buffer, offset + index)

  return index
end

-- Display: Quote Cancel
display.quote_cancel = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel
dissect.quote_cancel_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Quote Cancel Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_cancel_type = dissect.quote_cancel_type(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Quote Cancel Entry Groups: Struct of 2 fields
  index, quote_cancel_entry_groups = dissect.quote_cancel_entry_groups(buffer, index, packet, parent)

  -- Quote Cancel Set Groups: Struct of 2 fields
  index, quote_cancel_set_groups = dissect.quote_cancel_set_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel
dissect.quote_cancel = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel then
    local length = size_of.quote_cancel(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.quote_cancel, range, display)
  end

  return dissect.quote_cancel_fields(buffer, offset, packet, parent)
end

-- Size: Order Event Type
size_of.order_event_type = 1

-- Display: Order Event Type
display.order_event_type = function(value)
  if value == 4 then
    return "Order Event Type: Partially Filled (4)"
  end
  if value == 5 then
    return "Order Event Type: Filled (5)"
  end
  if value == 255 then
    return "Order Event Type: No Value"
  end

  return "Order Event Type: Unknown("..value..")"
end

-- Dissect: Order Event Type
dissect.order_event_type = function(buffer, offset, packet, parent)
  local length = size_of.order_event_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_event_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_event_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Spread Leg Order Event Group
size_of.execution_report_trade_spread_leg_order_event_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_event_px

  index = index + size_of.order_event_text

  index = index + size_of.order_event_exec_id

  index = index + size_of.order_event_qty

  index = index + size_of.order_event_type

  index = index + size_of.order_event_reason

  return index
end

-- Display: Execution Report Trade Spread Leg Order Event Group
display.execution_report_trade_spread_leg_order_event_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg Order Event Group
dissect.execution_report_trade_spread_leg_order_event_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = dissect.order_event_px(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String Nullable
  index, order_event_text = dissect.order_event_text(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = dissect.order_event_exec_id(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = dissect.order_event_qty(buffer, index, packet, parent)

  -- Order Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_event_type = dissect.order_event_type(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = dissect.order_event_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread Leg Order Event Group
dissect.execution_report_trade_spread_leg_order_event_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_spread_leg_order_event_group then
    local length = size_of.execution_report_trade_spread_leg_order_event_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_spread_leg_order_event_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_leg_order_event_group, range, display)
  end

  return dissect.execution_report_trade_spread_leg_order_event_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Spread Leg Order Event Groups
size_of.execution_report_trade_spread_leg_order_event_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_spread_leg_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_spread_leg_order_event_group_count * 23

  return index
end

-- Display: Execution Report Trade Spread Leg Order Event Groups
display.execution_report_trade_spread_leg_order_event_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg Order Event Groups
dissect.execution_report_trade_spread_leg_order_event_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Execution Report Trade Spread Leg Order Event Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = dissect.execution_report_trade_spread_leg_order_event_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report Trade Spread Leg Order Event Groups
dissect.execution_report_trade_spread_leg_order_event_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread_leg_order_event_groups then
    local length = size_of.execution_report_trade_spread_leg_order_event_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_spread_leg_order_event_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_leg_order_event_groups, range, display)
  end

  return dissect.execution_report_trade_spread_leg_order_event_groups_fields(buffer, offset, packet, parent)
end

-- Size: Ord Status Trd
size_of.ord_status_trd = 1

-- Display: Ord Status Trd
display.ord_status_trd = function(value)
  if value == 1 then
    return "Ord Status Trd: Partially Filled (1)"
  end
  if value == 2 then
    return "Ord Status Trd: Filled (2)"
  end

  return "Ord Status Trd: Unknown("..value..")"
end

-- Dissect: Ord Status Trd
dissect.ord_status_trd = function(buffer, offset, packet, parent)
  local length = size_of.ord_status_trd
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ord_status_trd(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ord_status_trd, range, value, display)

  return offset + length, value
end

-- Calculate size of: Risk Free Rate
size_of.risk_free_rate = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa_32

  index = index + size_of.exponent

  return index
end

-- Display: Risk Free Rate
display.risk_free_rate = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Risk Free Rate
dissect.risk_free_rate_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_32 = dissect.mantissa_32(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index, mantissa_32, exponent
end

-- Dissect: Risk Free Rate
dissect.risk_free_rate = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.risk_free_rate then
    local length = size_of.risk_free_rate(buffer, offset)
    local range = buffer(offset, length)
    local display = display.risk_free_rate(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.risk_free_rate, range, display)
  end

  return dissect.risk_free_rate_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Time To Expiration
size_of.time_to_expiration = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa_32

  index = index + size_of.exponent

  return index
end

-- Display: Time To Expiration
display.time_to_expiration = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time To Expiration
dissect.time_to_expiration_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_32 = dissect.mantissa_32(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index, mantissa_32, exponent
end

-- Dissect: Time To Expiration
dissect.time_to_expiration = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_to_expiration then
    local length = size_of.time_to_expiration(buffer, offset)
    local range = buffer(offset, length)
    local display = display.time_to_expiration(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.time_to_expiration, range, display)
  end

  return dissect.time_to_expiration_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Delta
size_of.option_delta = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa_32

  index = index + size_of.exponent

  return index
end

-- Display: Option Delta
display.option_delta = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Delta
dissect.option_delta_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: 4 Byte Signed Fixed Width Integer Nullable
  index, mantissa_32 = dissect.mantissa_32(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index, mantissa_32, exponent
end

-- Dissect: Option Delta
dissect.option_delta = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_delta then
    local length = size_of.option_delta(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_delta(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.option_delta, range, display)
  end

  return dissect.option_delta_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Px
size_of.underlying_px = 8

-- Display: Underlying Px
display.underlying_px = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Underlying Px: No Value"
  end

  return "Underlying Px: "..value
end

-- Translate: Underlying Px
translate.underlying_px = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Underlying Px
dissect.underlying_px = function(buffer, offset, packet, parent)
  local length = size_of.underlying_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.underlying_px(raw)
  local display = display.underlying_px(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.underlying_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Volatility
size_of.volatility = function(buffer, offset)
  local index = 0

  index = index + size_of.mantissa

  index = index + size_of.exponent

  return index
end

-- Display: Volatility
display.volatility = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Volatility
dissect.volatility_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: 8 Byte Signed Fixed Width Integer Nullable
  index, mantissa = dissect.mantissa(buffer, index, packet, parent)

  -- Exponent: 1 Byte Signed Fixed Width Integer Nullable
  index, exponent = dissect.exponent(buffer, index, packet, parent)

  return index, mantissa, exponent
end

-- Dissect: Volatility
dissect.volatility = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.volatility then
    local length = size_of.volatility(buffer, offset)
    local range = buffer(offset, length)
    local display = display.volatility(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.volatility, range, display)
  end

  return dissect.volatility_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Spread Leg
size_of.execution_report_trade_spread_leg = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.volatility(buffer, offset + index)

  index = index + size_of.party_details_list_req_id

  index = index + size_of.last_px

  index = index + size_of.order_id

  index = index + size_of.underlying_px

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.sec_exec_id

  index = index + size_of.location

  index = index + size_of.option_delta(buffer, offset + index)

  index = index + size_of.time_to_expiration(buffer, offset + index)

  index = index + size_of.risk_free_rate(buffer, offset + index)

  index = index + size_of.security_id

  index = index + size_of.last_qty

  index = index + size_of.cum_qty

  index = index + size_of.side_trade_id

  index = index + size_of.trade_date

  index = index + size_of.ord_status_trd

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.poss_retrans_flag

  index = index + size_of.settl_date

  index = index + size_of.calculated_ccy_last_qty(buffer, offset + index)

  index = index + size_of.gross_trade_amt(buffer, offset + index)

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.execution_report_trade_spread_leg_order_event_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Spread Leg
display.execution_report_trade_spread_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg
dissect.execution_report_trade_spread_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Volatility: Struct of 2 fields
  index, volatility = dissect.volatility(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Signed Fixed Width Integer Nullable
  index, underlying_px = dissect.underlying_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Option Delta: Struct of 2 fields
  index, option_delta = dissect.option_delta(buffer, index, packet, parent)

  -- Time To Expiration: Struct of 2 fields
  index, time_to_expiration = dissect.time_to_expiration(buffer, index, packet, parent)

  -- Risk Free Rate: Struct of 2 fields
  index, risk_free_rate = dissect.risk_free_rate(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = dissect.side_trade_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Ord Status Trd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_status_trd = dissect.ord_status_trd(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Settl Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Calculated Ccy Last Qty: Struct of 2 fields
  index, calculated_ccy_last_qty = dissect.calculated_ccy_last_qty(buffer, index, packet, parent)

  -- Gross Trade Amt: Struct of 2 fields
  index, gross_trade_amt = dissect.gross_trade_amt(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = dissect.fills_groups(buffer, index, packet, parent)

  -- Execution Report Trade Spread Leg Order Event Groups: Struct of 2 fields
  index, execution_report_trade_spread_leg_order_event_groups = dissect.execution_report_trade_spread_leg_order_event_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread Leg
dissect.execution_report_trade_spread_leg = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread_leg then
    local length = size_of.execution_report_trade_spread_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_spread_leg(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_leg, range, display)
  end

  return dissect.execution_report_trade_spread_leg_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Spread Order Event Group
size_of.execution_report_trade_spread_order_event_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_event_px

  index = index + size_of.order_event_text

  index = index + size_of.order_event_exec_id

  index = index + size_of.order_event_qty

  index = index + size_of.order_event_type

  index = index + size_of.order_event_reason

  return index
end

-- Display: Execution Report Trade Spread Order Event Group
display.execution_report_trade_spread_order_event_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Order Event Group
dissect.execution_report_trade_spread_order_event_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = dissect.order_event_px(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String Nullable
  index, order_event_text = dissect.order_event_text(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = dissect.order_event_exec_id(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = dissect.order_event_qty(buffer, index, packet, parent)

  -- Order Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_event_type = dissect.order_event_type(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = dissect.order_event_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread Order Event Group
dissect.execution_report_trade_spread_order_event_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_spread_order_event_group then
    local length = size_of.execution_report_trade_spread_order_event_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_spread_order_event_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_order_event_group, range, display)
  end

  return dissect.execution_report_trade_spread_order_event_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Spread Order Event Groups
size_of.execution_report_trade_spread_order_event_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_spread_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_spread_order_event_group_count * 23

  return index
end

-- Display: Execution Report Trade Spread Order Event Groups
display.execution_report_trade_spread_order_event_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Order Event Groups
dissect.execution_report_trade_spread_order_event_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Execution Report Trade Spread Order Event Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = dissect.execution_report_trade_spread_order_event_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report Trade Spread Order Event Groups
dissect.execution_report_trade_spread_order_event_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread_order_event_groups then
    local length = size_of.execution_report_trade_spread_order_event_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_spread_order_event_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_order_event_groups, range, display)
  end

  return dissect.execution_report_trade_spread_order_event_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Spread Leg Group
size_of.execution_report_trade_spread_leg_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_exec_id

  index = index + size_of.leg_last_px

  index = index + size_of.leg_security_id

  index = index + size_of.leg_trade_id

  index = index + size_of.leg_last_qty

  index = index + size_of.leg_side

  return index
end

-- Display: Execution Report Trade Spread Leg Group
display.execution_report_trade_spread_leg_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg Group
dissect.execution_report_trade_spread_leg_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, leg_exec_id = dissect.leg_exec_id(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Signed Fixed Width Integer
  index, leg_last_px = dissect.leg_last_px(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index, leg_security_id = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, leg_trade_id = dissect.leg_trade_id(buffer, index, packet, parent)

  -- Leg Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, leg_last_qty = dissect.leg_last_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread Leg Group
dissect.execution_report_trade_spread_leg_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_spread_leg_group then
    local length = size_of.execution_report_trade_spread_leg_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_spread_leg_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_leg_group, range, display)
  end

  return dissect.execution_report_trade_spread_leg_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Spread Leg Groups
size_of.execution_report_trade_spread_leg_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_spread_leg_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_spread_leg_group_count * 29

  return index
end

-- Display: Execution Report Trade Spread Leg Groups
display.execution_report_trade_spread_leg_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg Groups
dissect.execution_report_trade_spread_leg_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Execution Report Trade Spread Leg Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = dissect.execution_report_trade_spread_leg_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report Trade Spread Leg Groups
dissect.execution_report_trade_spread_leg_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread_leg_groups then
    local length = size_of.execution_report_trade_spread_leg_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_spread_leg_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread_leg_groups, range, display)
  end

  return dissect.execution_report_trade_spread_leg_groups_fields(buffer, offset, packet, parent)
end

-- Size: Aggressor Indicator
size_of.aggressor_indicator = 1

-- Display: Aggressor Indicator
display.aggressor_indicator = function(value)
  if value == 0 then
    return "Aggressor Indicator: False (0)"
  end
  if value == 1 then
    return "Aggressor Indicator: True (1)"
  end

  return "Aggressor Indicator: Unknown("..value..")"
end

-- Dissect: Aggressor Indicator
dissect.aggressor_indicator = function(buffer, offset, packet, parent)
  local length = size_of.aggressor_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.aggressor_indicator(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.aggressor_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Spread
size_of.execution_report_trade_spread = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.last_px

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.stop_px

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.sec_exec_id

  index = index + size_of.cross_id_optional

  index = index + size_of.host_cross_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.last_qty

  index = index + size_of.cum_qty

  index = index + size_of.md_trade_entry_id

  index = index + size_of.side_trade_id

  index = index + size_of.leaves

  index = index + size_of.trade_date

  index = index + size_of.expire_date

  index = index + size_of.ord_status_trd

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.aggressor_indicator

  index = index + size_of.cross_type

  index = index + size_of.total_num_securities

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.short_sale_type

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.execution_report_trade_spread_leg_groups(buffer, offset + index)

  index = index + size_of.execution_report_trade_spread_order_event_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Spread
display.execution_report_trade_spread = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread
dissect.execution_report_trade_spread_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = dissect.cross_id_optional(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, md_trade_entry_id = dissect.md_trade_entry_id(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = dissect.side_trade_id(buffer, index, packet, parent)

  -- Leaves: 4 Byte Unsigned Fixed Width Integer
  index, leaves = dissect.leaves(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Status Trd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_status_trd = dissect.ord_status_trd(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, aggressor_indicator = dissect.aggressor_indicator(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Total Num Securities: 1 Byte Unsigned Fixed Width Integer
  index, total_num_securities = dissect.total_num_securities(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = dissect.fills_groups(buffer, index, packet, parent)

  -- Execution Report Trade Spread Leg Groups: Struct of 2 fields
  index, execution_report_trade_spread_leg_groups = dissect.execution_report_trade_spread_leg_groups(buffer, index, packet, parent)

  -- Execution Report Trade Spread Order Event Groups: Struct of 2 fields
  index, execution_report_trade_spread_order_event_groups = dissect.execution_report_trade_spread_order_event_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread
dissect.execution_report_trade_spread = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread then
    local length = size_of.execution_report_trade_spread(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_spread(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_spread, range, display)
  end

  return dissect.execution_report_trade_spread_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Outright Order Event Group
size_of.execution_report_trade_outright_order_event_group = function(buffer, offset)
  local index = 0

  index = index + size_of.order_event_px

  index = index + size_of.order_event_text

  index = index + size_of.order_event_exec_id

  index = index + size_of.order_event_qty

  index = index + size_of.order_event_type

  index = index + size_of.order_event_reason

  index = index + size_of.contra_gross_trade_amt(buffer, offset + index)

  index = index + size_of.contra_calculated_ccy_last_qty(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Outright Order Event Group
display.execution_report_trade_outright_order_event_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Outright Order Event Group
dissect.execution_report_trade_outright_order_event_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index, order_event_px = dissect.order_event_px(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String Nullable
  index, order_event_text = dissect.order_event_text(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, order_event_exec_id = dissect.order_event_exec_id(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_event_qty = dissect.order_event_qty(buffer, index, packet, parent)

  -- Order Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_event_type = dissect.order_event_type(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index, order_event_reason = dissect.order_event_reason(buffer, index, packet, parent)

  -- Contra Gross Trade Amt: Struct of 2 fields
  index, contra_gross_trade_amt = dissect.contra_gross_trade_amt(buffer, index, packet, parent)

  -- Contra Calculated Ccy Last Qty: Struct of 2 fields
  index, contra_calculated_ccy_last_qty = dissect.contra_calculated_ccy_last_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Outright Order Event Group
dissect.execution_report_trade_outright_order_event_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_trade_outright_order_event_group then
    local length = size_of.execution_report_trade_outright_order_event_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_outright_order_event_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_outright_order_event_group, range, display)
  end

  return dissect.execution_report_trade_outright_order_event_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Trade Outright Order Event Groups
size_of.execution_report_trade_outright_order_event_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local execution_report_trade_outright_order_event_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + execution_report_trade_outright_order_event_group_count * 41

  return index
end

-- Display: Execution Report Trade Outright Order Event Groups
display.execution_report_trade_outright_order_event_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Outright Order Event Groups
dissect.execution_report_trade_outright_order_event_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Execution Report Trade Outright Order Event Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.execution_report_trade_outright_order_event_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Execution Report Trade Outright Order Event Groups
dissect.execution_report_trade_outright_order_event_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_outright_order_event_groups then
    local length = size_of.execution_report_trade_outright_order_event_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_outright_order_event_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_outright_order_event_groups, range, display)
  end

  return dissect.execution_report_trade_outright_order_event_groups_fields(buffer, offset, packet, parent)
end

-- Size: Ownership
size_of.ownership = 1

-- Display: Ownership
display.ownership = function(value)
  return "Ownership: "..value
end

-- Dissect: Ownership
dissect.ownership = function(buffer, offset, packet, parent)
  local length = size_of.ownership
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ownership(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ownership, range, value, display)

  return offset + length, value
end

-- Size: Trade Link Id
size_of.trade_link_id = 4

-- Display: Trade Link Id
display.trade_link_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Trade Link Id: No Value"
  end

  return "Trade Link Id: "..value
end

-- Dissect: Trade Link Id
dissect.trade_link_id = function(buffer, offset, packet, parent)
  local length = size_of.trade_link_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_link_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.trade_link_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Trade Outright
size_of.execution_report_trade_outright = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.last_px

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.stop_px

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.sec_exec_id

  index = index + size_of.cross_id_optional

  index = index + size_of.host_cross_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.last_qty

  index = index + size_of.cum_qty

  index = index + size_of.md_trade_entry_id

  index = index + size_of.side_trade_id

  index = index + size_of.trade_link_id

  index = index + size_of.leaves

  index = index + size_of.trade_date

  index = index + size_of.expire_date

  index = index + size_of.ord_status_trd

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.aggressor_indicator

  index = index + size_of.cross_type

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.managed_order

  index = index + size_of.short_sale_type

  index = index + size_of.ownership

  index = index + size_of.discretion_price

  index = index + size_of.trd_type

  index = index + size_of.exec_restatement_reason

  index = index + size_of.settl_date

  index = index + size_of.maturity_date

  index = index + size_of.calculated_ccy_last_qty(buffer, offset + index)

  index = index + size_of.gross_trade_amt(buffer, offset + index)

  index = index + size_of.benchmark_price

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.execution_report_trade_outright_order_event_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Outright
display.execution_report_trade_outright = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Outright
dissect.execution_report_trade_outright_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, sec_exec_id = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = dissect.cross_id_optional(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index, last_qty = dissect.last_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, md_trade_entry_id = dissect.md_trade_entry_id(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = dissect.side_trade_id(buffer, index, packet, parent)

  -- Trade Link Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_link_id = dissect.trade_link_id(buffer, index, packet, parent)

  -- Leaves: 4 Byte Unsigned Fixed Width Integer
  index, leaves = dissect.leaves(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = dissect.trade_date(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Status Trd: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_status_trd = dissect.ord_status_trd(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, aggressor_indicator = dissect.aggressor_indicator(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Ownership: 1 Byte Unsigned Fixed Width Integer
  index, ownership = dissect.ownership(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Nullable
  index, trd_type = dissect.trd_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, exec_restatement_reason = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Settl Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, settl_date = dissect.settl_date(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = dissect.maturity_date(buffer, index, packet, parent)

  -- Calculated Ccy Last Qty: Struct of 2 fields
  index, calculated_ccy_last_qty = dissect.calculated_ccy_last_qty(buffer, index, packet, parent)

  -- Gross Trade Amt: Struct of 2 fields
  index, gross_trade_amt = dissect.gross_trade_amt(buffer, index, packet, parent)

  -- Benchmark Price: 8 Byte Signed Fixed Width Integer Nullable
  index, benchmark_price = dissect.benchmark_price(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index, fills_groups = dissect.fills_groups(buffer, index, packet, parent)

  -- Execution Report Trade Outright Order Event Groups: Struct of 2 fields
  index, execution_report_trade_outright_order_event_groups = dissect.execution_report_trade_outright_order_event_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Outright
dissect.execution_report_trade_outright = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_outright then
    local length = size_of.execution_report_trade_outright(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_outright(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_trade_outright, range, display)
  end

  return dissect.execution_report_trade_outright_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report Elimination
size_of.execution_report_elimination = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.stop_px

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.cross_id_optional

  index = index + size_of.host_cross_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.cum_qty

  index = index + size_of.order_qty

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.expire_date

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.cross_type

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.managed_order

  index = index + size_of.short_sale_type

  index = index + size_of.discretion_price

  return index
end

-- Display: Execution Report Elimination
display.execution_report_elimination = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Elimination
dissect.execution_report_elimination_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = dissect.cross_id_optional(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = dissect.cum_qty(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Elimination
dissect.execution_report_elimination = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_elimination then
    local length = size_of.execution_report_elimination(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_elimination(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_elimination, range, display)
  end

  return dissect.execution_report_elimination_fields(buffer, offset, packet, parent)
end

-- Size: Ord Rej Reason
size_of.ord_rej_reason = 2

-- Display: Ord Rej Reason
display.ord_rej_reason = function(value)
  return "Ord Rej Reason: "..value
end

-- Dissect: Ord Rej Reason
dissect.ord_rej_reason = function(buffer, offset, packet, parent)
  local length = size_of.ord_rej_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ord_rej_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ord_rej_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Report Reject
size_of.execution_report_reject = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.text

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id

  index = index + size_of.price_optional

  index = index + size_of.stop_px

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.cross_id_optional

  index = index + size_of.host_cross_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.ord_rej_reason

  index = index + size_of.expire_date

  index = index + size_of.delay_duration

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.split_msg

  index = index + size_of.cross_type

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.managed_order

  index = index + size_of.short_sale_type

  index = index + size_of.delay_to_time

  index = index + size_of.discretion_price

  return index
end

-- Display: Execution Report Reject
display.execution_report_reject = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Reject
dissect.execution_report_reject_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String Nullable
  index, text = dissect.text(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = dissect.price_optional(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = dissect.cross_id_optional(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Ord Rej Reason: 2 Byte Unsigned Fixed Width Integer
  index, ord_rej_reason = dissect.ord_rej_reason(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = dissect.delay_duration(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Reject
dissect.execution_report_reject = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_reject then
    local length = size_of.execution_report_reject(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_reject(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_reject, range, display)
  end

  return dissect.execution_report_reject_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Execution Report New
size_of.execution_report_new = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.exec_id

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id

  index = index + size_of.price

  index = index + size_of.stop_px

  index = index + size_of.transact_time

  index = index + size_of.sending_time_epoch

  index = index + size_of.order_request_id

  index = index + size_of.cross_id_optional

  index = index + size_of.host_cross_id

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.order_qty

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.expire_date

  index = index + size_of.delay_duration

  index = index + size_of.ord_type_optional

  index = index + size_of.side

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.poss_retrans_flag

  index = index + size_of.split_msg

  index = index + size_of.cross_type

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.managed_order

  index = index + size_of.short_sale_type

  index = index + size_of.delay_to_time

  index = index + size_of.discretion_price

  return index
end

-- Display: Execution Report New
display.execution_report_new = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report New
dissect.execution_report_new_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index, exec_id = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Cross Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cross_id_optional = dissect.cross_id_optional(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, host_cross_id = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, delay_duration = dissect.delay_duration(buffer, index, packet, parent)

  -- Ord Type Optional: 1 Byte Ascii String Enum with 5 values
  index, ord_type_optional = dissect.ord_type_optional(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Nullable
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Delay To Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, delay_to_time = dissect.delay_to_time(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New
dissect.execution_report_new = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_new then
    local length = size_of.execution_report_new(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_new(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.execution_report_new, range, display)
  end

  return dissect.execution_report_new_fields(buffer, offset, packet, parent)
end

-- Size: Manual Order Indicator Optional
size_of.manual_order_indicator_optional = 1

-- Display: Manual Order Indicator Optional
display.manual_order_indicator_optional = function(value)
  if value == 0 then
    return "Manual Order Indicator Optional: Automated (0)"
  end
  if value == 1 then
    return "Manual Order Indicator Optional: Manual (1)"
  end
  if value == 255 then
    return "Manual Order Indicator Optional: No Value"
  end

  return "Manual Order Indicator Optional: Unknown("..value..")"
end

-- Dissect: Manual Order Indicator Optional
dissect.manual_order_indicator_optional = function(buffer, offset, packet, parent)
  local length = size_of.manual_order_indicator_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.manual_order_indicator_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.manual_order_indicator_optional, range, value, display)

  return offset + length, value
end

-- Size: Ref Msg Type
size_of.ref_msg_type = 2

-- Display: Ref Msg Type
display.ref_msg_type = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Ref Msg Type: No Value"
  end

  return "Ref Msg Type: "..value
end

-- Dissect: Ref Msg Type
dissect.ref_msg_type = function(buffer, offset, packet, parent)
  local length = size_of.ref_msg_type
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

  local display = display.ref_msg_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Size: Business Reject Reason
size_of.business_reject_reason = 2

-- Display: Business Reject Reason
display.business_reject_reason = function(value)
  return "Business Reject Reason: "..value
end

-- Dissect: Business Reject Reason
dissect.business_reject_reason = function(buffer, offset, packet, parent)
  local length = size_of.business_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.business_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Ref Tag Id
size_of.ref_tag_id = 2

-- Display: Ref Tag Id
display.ref_tag_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Ref Tag Id: No Value"
  end

  return "Ref Tag Id: "..value
end

-- Dissect: Ref Tag Id
dissect.ref_tag_id = function(buffer, offset, packet, parent)
  local length = size_of.ref_tag_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ref_tag_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ref_tag_id, range, value, display)

  return offset + length, value
end

-- Size: Ref Seq Num
size_of.ref_seq_num = 4

-- Display: Ref Seq Num
display.ref_seq_num = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Ref Seq Num: No Value"
  end

  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
dissect.ref_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.ref_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ref_seq_num(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ref_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Location Optional
size_of.location_optional = 5

-- Display: Location Optional
display.location_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Location Optional: No Value"
  end

  return "Location Optional: "..value
end

-- Dissect: Location Optional
dissect.location_optional = function(buffer, offset, packet, parent)
  local length = size_of.location_optional
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

  local display = display.location_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.location_optional, range, value, display)

  return offset + length, value
end

-- Size: Business Reject Ref Id
size_of.business_reject_ref_id = 8

-- Display: Business Reject Ref Id
display.business_reject_ref_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Business Reject Ref Id: No Value"
  end

  return "Business Reject Ref Id: "..value
end

-- Dissect: Business Reject Ref Id
dissect.business_reject_ref_id = function(buffer, offset, packet, parent)
  local length = size_of.business_reject_ref_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.business_reject_ref_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.business_reject_ref_id, range, value, display)

  return offset + length, value
end

-- Size: Party Details List Req Id Optional
size_of.party_details_list_req_id_optional = 8

-- Display: Party Details List Req Id Optional
display.party_details_list_req_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Party Details List Req Id Optional: No Value"
  end

  return "Party Details List Req Id Optional: "..value
end

-- Dissect: Party Details List Req Id Optional
dissect.party_details_list_req_id_optional = function(buffer, offset, packet, parent)
  local length = size_of.party_details_list_req_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.party_details_list_req_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_details_list_req_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Business Reject
size_of.business_reject = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.text

  index = index + size_of.sender_id_optional

  index = index + size_of.party_details_list_req_id_optional

  index = index + size_of.sending_time_epoch

  index = index + size_of.business_reject_ref_id

  index = index + size_of.location_optional

  index = index + size_of.ref_seq_num

  index = index + size_of.ref_tag_id

  index = index + size_of.business_reject_reason

  index = index + size_of.ref_msg_type

  index = index + size_of.poss_retrans_flag

  index = index + size_of.manual_order_indicator_optional

  index = index + size_of.split_msg

  return index
end

-- Display: Business Reject
display.business_reject = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Business Reject
dissect.business_reject_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String Nullable
  index, text = dissect.text(buffer, index, packet, parent)

  -- Sender Id Optional: 20 Byte Ascii String Nullable
  index, sender_id_optional = dissect.sender_id_optional(buffer, index, packet, parent)

  -- Party Details List Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, party_details_list_req_id_optional = dissect.party_details_list_req_id_optional(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Business Reject Ref Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, business_reject_ref_id = dissect.business_reject_ref_id(buffer, index, packet, parent)

  -- Location Optional: 5 Byte Ascii String Nullable
  index, location_optional = dissect.location_optional(buffer, index, packet, parent)

  -- Ref Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, ref_seq_num = dissect.ref_seq_num(buffer, index, packet, parent)

  -- Ref Tag Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, ref_tag_id = dissect.ref_tag_id(buffer, index, packet, parent)

  -- Business Reject Reason: 2 Byte Unsigned Fixed Width Integer
  index, business_reject_reason = dissect.business_reject_reason(buffer, index, packet, parent)

  -- Ref Msg Type: 2 Byte Ascii String
  index, ref_msg_type = dissect.ref_msg_type(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Manual Order Indicator Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, manual_order_indicator_optional = dissect.manual_order_indicator_optional(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Reject
dissect.business_reject = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.business_reject then
    local length = size_of.business_reject(buffer, offset)
    local range = buffer(offset, length)
    local display = display.business_reject(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.business_reject, range, display)
  end

  return dissect.business_reject_fields(buffer, offset, packet, parent)
end

-- Size: Party Detail Definition Status
size_of.party_detail_definition_status = 1

-- Display: Party Detail Definition Status
display.party_detail_definition_status = function(value)
  return "Party Detail Definition Status: "..value
end

-- Dissect: Party Detail Definition Status
dissect.party_detail_definition_status = function(buffer, offset, packet, parent)
  local length = size_of.party_detail_definition_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_detail_definition_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_detail_definition_status, range, value, display)

  return offset + length, value
end

-- Size: List Update Action
size_of.list_update_action = 1

-- Display: List Update Action
display.list_update_action = function(value)
  if value == "A" then
    return "List Update Action: Add (A)"
  end
  if value == "D" then
    return "List Update Action: Delete (D)"
  end

  return "List Update Action: Unknown("..value..")"
end

-- Dissect: List Update Action
dissect.list_update_action = function(buffer, offset, packet, parent)
  local length = size_of.list_update_action
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.list_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.list_update_action, range, value, display)

  return offset + length, value
end

-- Size: Party Detail Request Status
size_of.party_detail_request_status = 1

-- Display: Party Detail Request Status
display.party_detail_request_status = function(value)
  return "Party Detail Request Status: "..value
end

-- Dissect: Party Detail Request Status
dissect.party_detail_request_status = function(buffer, offset, packet, parent)
  local length = size_of.party_detail_request_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.party_detail_request_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_detail_request_status, range, value, display)

  return offset + length, value
end

-- Size: Memo
size_of.memo = 75

-- Display: Memo
display.memo = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Memo: No Value"
  end

  return "Memo: "..value
end

-- Dissect: Memo
dissect.memo = function(buffer, offset, packet, parent)
  local length = size_of.memo
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

  local display = display.memo(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.memo, range, value, display)

  return offset + length, value
end

-- Calculate size of: Party Details Definition Request Ack
size_of.party_details_definition_request_ack = function(buffer, offset)
  local index = 0

  index = index + size_of.seq_num

  index = index + size_of.uuid

  index = index + size_of.memo

  index = index + size_of.avg_px_group_id

  index = index + size_of.party_details_list_req_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.self_match_prevention_id

  index = index + size_of.party_detail_request_status

  index = index + size_of.cust_order_capacity

  index = index + size_of.clearing_account_type

  index = index + size_of.self_match_prevention_instruction

  index = index + size_of.avg_px_indicator

  index = index + size_of.clearing_trade_price_type

  index = index + size_of.cmta_giveup_cd

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.list_update_action

  index = index + size_of.party_detail_definition_status

  index = index + size_of.executor

  index = index + size_of.idm_short_code

  index = index + size_of.poss_retrans_flag

  index = index + size_of.split_msg

  index = index + size_of.party_details_groups(buffer, offset + index)

  index = index + size_of.trd_reg_publications_groups(buffer, offset + index)

  return index
end

-- Display: Party Details Definition Request Ack
display.party_details_definition_request_ack = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details Definition Request Ack
dissect.party_details_definition_request_ack_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Memo: 75 Byte Ascii String Nullable
  index, memo = dissect.memo(buffer, index, packet, parent)

  -- Avg Px Group Id: 20 Byte Ascii String Nullable
  index, avg_px_group_id = dissect.avg_px_group_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Self Match Prevention Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, self_match_prevention_id = dissect.self_match_prevention_id(buffer, index, packet, parent)

  -- Party Detail Request Status: 1 Byte Unsigned Fixed Width Integer
  index, party_detail_request_status = dissect.party_detail_request_status(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, cust_order_capacity = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Clearing Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_account_type = dissect.clearing_account_type(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: 1 Byte Ascii String Enum with 3 values
  index, self_match_prevention_instruction = dissect.self_match_prevention_instruction(buffer, index, packet, parent)

  -- Avg Px Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, avg_px_indicator = dissect.avg_px_indicator(buffer, index, packet, parent)

  -- Clearing Trade Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_trade_price_type = dissect.clearing_trade_price_type(buffer, index, packet, parent)

  -- Cmta Giveup Cd: 1 Byte Ascii String Enum with 3 values
  index, cmta_giveup_cd = dissect.cmta_giveup_cd(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String Enum with 7 values
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String Enum with 2 values
  index, list_update_action = dissect.list_update_action(buffer, index, packet, parent)

  -- Party Detail Definition Status: 1 Byte Unsigned Fixed Width Integer
  index, party_detail_definition_status = dissect.party_detail_definition_status(buffer, index, packet, parent)

  -- Executor: 8 Byte Unsigned Fixed Width Integer Nullable
  index, executor = dissect.executor(buffer, index, packet, parent)

  -- Idm Short Code: 8 Byte Unsigned Fixed Width Integer Nullable
  index, idm_short_code = dissect.idm_short_code(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, poss_retrans_flag = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index, party_details_groups = dissect.party_details_groups(buffer, index, packet, parent)

  -- Trd Reg Publications Groups: Struct of 2 fields
  index, trd_reg_publications_groups = dissect.trd_reg_publications_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Definition Request Ack
dissect.party_details_definition_request_ack = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_definition_request_ack then
    local length = size_of.party_details_definition_request_ack(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_definition_request_ack(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_details_definition_request_ack, range, display)
  end

  return dissect.party_details_definition_request_ack_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Party Details Definition Request
size_of.party_details_definition_request = function(buffer, offset)
  local index = 0

  index = index + size_of.party_details_list_req_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.list_update_action

  index = index + size_of.seq_num

  index = index + size_of.memo

  index = index + size_of.avg_px_group_id

  index = index + size_of.self_match_prevention_id

  index = index + size_of.cmta_giveup_cd

  index = index + size_of.cust_order_capacity

  index = index + size_of.clearing_account_type

  index = index + size_of.self_match_prevention_instruction

  index = index + size_of.avg_px_indicator

  index = index + size_of.clearing_trade_price_type

  index = index + size_of.cust_order_handling_inst

  index = index + size_of.executor

  index = index + size_of.idm_short_code

  index = index + size_of.party_details_groups(buffer, offset + index)

  index = index + size_of.trd_reg_publications_groups(buffer, offset + index)

  return index
end

-- Display: Party Details Definition Request
display.party_details_definition_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details Definition Request
dissect.party_details_definition_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String Enum with 2 values
  index, list_update_action = dissect.list_update_action(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Memo: 75 Byte Ascii String Nullable
  index, memo = dissect.memo(buffer, index, packet, parent)

  -- Avg Px Group Id: 20 Byte Ascii String Nullable
  index, avg_px_group_id = dissect.avg_px_group_id(buffer, index, packet, parent)

  -- Self Match Prevention Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, self_match_prevention_id = dissect.self_match_prevention_id(buffer, index, packet, parent)

  -- Cmta Giveup Cd: 1 Byte Ascii String Enum with 3 values
  index, cmta_giveup_cd = dissect.cmta_giveup_cd(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, cust_order_capacity = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Clearing Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_account_type = dissect.clearing_account_type(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: 1 Byte Ascii String Enum with 3 values
  index, self_match_prevention_instruction = dissect.self_match_prevention_instruction(buffer, index, packet, parent)

  -- Avg Px Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, avg_px_indicator = dissect.avg_px_indicator(buffer, index, packet, parent)

  -- Clearing Trade Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, clearing_trade_price_type = dissect.clearing_trade_price_type(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String Enum with 7 values
  index, cust_order_handling_inst = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Executor: 8 Byte Unsigned Fixed Width Integer Nullable
  index, executor = dissect.executor(buffer, index, packet, parent)

  -- Idm Short Code: 8 Byte Unsigned Fixed Width Integer Nullable
  index, idm_short_code = dissect.idm_short_code(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index, party_details_groups = dissect.party_details_groups(buffer, index, packet, parent)

  -- Trd Reg Publications Groups: Struct of 2 fields
  index, trd_reg_publications_groups = dissect.trd_reg_publications_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Definition Request
dissect.party_details_definition_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_definition_request then
    local length = size_of.party_details_definition_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_definition_request(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.party_details_definition_request, range, display)
  end

  return dissect.party_details_definition_request_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Security Id
size_of.underlying_security_id = 4

-- Display: Underlying Security Id
display.underlying_security_id = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Underlying Security Id: No Value"
  end

  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
dissect.underlying_security_id = function(buffer, offset, packet, parent)
  local length = size_of.underlying_security_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.underlying_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.underlying_security_id, range, value, display)

  return offset + length, value
end

-- Size: Offer Px
size_of.offer_px = 8

-- Display: Offer Px
display.offer_px = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Translate: Offer Px
translate.offer_px = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Offer Px
dissect.offer_px = function(buffer, offset, packet, parent)
  local length = size_of.offer_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.offer_px(raw)
  local display = display.offer_px(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Size: Bid Px
size_of.bid_px = 8

-- Display: Bid Px
display.bid_px = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Translate: Bid Px
translate.bid_px = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Bid Px
dissect.bid_px = function(buffer, offset, packet, parent)
  local length = size_of.bid_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.bid_px(raw)
  local display = display.bid_px(raw, value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Quote Entry Group
size_of.mass_quote_entry_group = function(buffer, offset)
  local index = 0

  index = index + size_of.bid_px

  index = index + size_of.offer_px

  index = index + size_of.quote_entry_id

  index = index + size_of.security_id

  index = index + size_of.bid_size

  index = index + size_of.offer_size

  index = index + size_of.underlying_security_id

  index = index + size_of.quote_set_id

  return index
end

-- Display: Mass Quote Entry Group
display.mass_quote_entry_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Entry Group
dissect.mass_quote_entry_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Px: 8 Byte Signed Fixed Width Integer Nullable
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Signed Fixed Width Integer Nullable
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Quote Entry Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_entry_id = dissect.quote_entry_id(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer Nullable
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Underlying Security Id: 4 Byte Signed Fixed Width Integer Nullable
  index, underlying_security_id = dissect.underlying_security_id(buffer, index, packet, parent)

  -- Quote Set Id: 2 Byte Unsigned Fixed Width Integer
  index, quote_set_id = dissect.quote_set_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Entry Group
dissect.mass_quote_entry_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_quote_entry_group then
    local length = size_of.mass_quote_entry_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_quote_entry_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_quote_entry_group, range, display)
  end

  return dissect.mass_quote_entry_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Quote Entry Groups
size_of.mass_quote_entry_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size(buffer, offset + index)

  -- Calculate field size from count
  local mass_quote_entry_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mass_quote_entry_group_count * 38

  return index
end

-- Display: Mass Quote Entry Groups
display.mass_quote_entry_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Entry Groups
dissect.mass_quote_entry_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = dissect.group_size(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Mass Quote Entry Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.mass_quote_entry_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Quote Entry Groups
dissect.mass_quote_entry_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote_entry_groups then
    local length = size_of.mass_quote_entry_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_quote_entry_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_quote_entry_groups, range, display)
  end

  return dissect.mass_quote_entry_groups_fields(buffer, offset, packet, parent)
end

-- Size: Reserved
size_of.reserved = 30

-- Display: Reserved
display.reserved = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved: No Value"
  end

  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
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

  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Tot No Quote Entries
size_of.tot_no_quote_entries = 1

-- Display: Tot No Quote Entries
display.tot_no_quote_entries = function(value)
  return "Tot No Quote Entries: "..value
end

-- Dissect: Tot No Quote Entries
dissect.tot_no_quote_entries = function(buffer, offset, packet, parent)
  local length = size_of.tot_no_quote_entries
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.tot_no_quote_entries(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.tot_no_quote_entries, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Quote
size_of.mass_quote = function(buffer, offset)
  local index = 0

  index = index + size_of.party_details_list_req_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.manual_order_indicator

  index = index + size_of.seq_num

  index = index + size_of.sender_id

  index = index + size_of.quote_req_id_optional

  index = index + size_of.location

  index = index + size_of.quote_id

  index = index + size_of.tot_no_quote_entries

  index = index + size_of.mm_protection_reset

  index = index + size_of.liquidity_flag

  index = index + size_of.short_sale_type

  index = index + size_of.reserved

  index = index + size_of.mass_quote_entry_groups(buffer, offset + index)

  return index
end

-- Display: Mass Quote
display.mass_quote = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote
dissect.mass_quote_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- Quote Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_req_id_optional = dissect.quote_req_id_optional(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_id = dissect.quote_id(buffer, index, packet, parent)

  -- Tot No Quote Entries: 1 Byte Unsigned Fixed Width Integer
  index, tot_no_quote_entries = dissect.tot_no_quote_entries(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mm_protection_reset = dissect.mm_protection_reset(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Reserved: 30 Byte Ascii String Nullable
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Mass Quote Entry Groups: Struct of 2 fields
  index, mass_quote_entry_groups = dissect.mass_quote_entry_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote
dissect.mass_quote = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote then
    local length = size_of.mass_quote(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_quote(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.mass_quote, range, display)
  end

  return dissect.mass_quote_fields(buffer, offset, packet, parent)
end

-- Size: Order Id Optional
size_of.order_id_optional = 8

-- Display: Order Id Optional
display.order_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
dissect.order_id_optional = function(buffer, offset, packet, parent)
  local length = size_of.order_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_id_optional(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Request
size_of.order_cancel_request = function(buffer, offset)
  local index = 0

  index = index + size_of.order_id_optional

  index = index + size_of.party_details_list_req_id

  index = index + size_of.manual_order_indicator

  index = index + size_of.seq_num

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.order_request_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.location

  index = index + size_of.security_id

  index = index + size_of.side

  index = index + size_of.liquidity_flag

  return index
end

-- Display: Order Cancel Request
display.order_cancel_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Request
dissect.order_cancel_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = dissect.order_id_optional(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request
dissect.order_cancel_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_request then
    local length = size_of.order_cancel_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancel_request(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_cancel_request, range, display)
  end

  return dissect.order_cancel_request_fields(buffer, offset, packet, parent)
end

-- Size: Ofm Override
size_of.ofm_override = 1

-- Display: Ofm Override
display.ofm_override = function(value)
  if value == 0 then
    return "Ofm Override: Disabled (0)"
  end
  if value == 1 then
    return "Ofm Override: Enabled (1)"
  end

  return "Ofm Override: Unknown("..value..")"
end

-- Dissect: Ofm Override
dissect.ofm_override = function(buffer, offset, packet, parent)
  local length = size_of.ofm_override
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ofm_override(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ofm_override, range, value, display)

  return offset + length, value
end

-- Size: Ord Type
size_of.ord_type = 1

-- Display: Ord Type
display.ord_type = function(value)
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
    return "Ord Type: Stop Limit (4)"
  end
  if value == "K" then
    return "Ord Type: Market With Leftover As Limit (K)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
dissect.ord_type = function(buffer, offset, packet, parent)
  local length = size_of.ord_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.ord_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Cancel Replace Request
size_of.order_cancel_replace_request = function(buffer, offset)
  local index = 0

  index = index + size_of.price_optional

  index = index + size_of.order_qty

  index = index + size_of.security_id

  index = index + size_of.side

  index = index + size_of.seq_num

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_id_optional

  index = index + size_of.stop_px

  index = index + size_of.order_request_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.location

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.expire_date

  index = index + size_of.ord_type

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.ofm_override

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.managed_order

  index = index + size_of.short_sale_type

  index = index + size_of.discretion_price

  return index
end

-- Display: Order Cancel Replace Request
display.order_cancel_replace_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request
dissect.order_cancel_replace_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = dissect.price_optional(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = dissect.order_id_optional(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 5 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Ofm Override: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ofm_override = dissect.ofm_override(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request
dissect.order_cancel_replace_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_replace_request then
    local length = size_of.order_cancel_replace_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_cancel_replace_request(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.order_cancel_replace_request, range, display)
  end

  return dissect.order_cancel_replace_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Single
size_of.new_order_single = function(buffer, offset)
  local index = 0

  index = index + size_of.price_optional

  index = index + size_of.order_qty

  index = index + size_of.security_id

  index = index + size_of.side

  index = index + size_of.seq_num

  index = index + size_of.sender_id

  index = index + size_of.clordid

  index = index + size_of.party_details_list_req_id

  index = index + size_of.order_request_id

  index = index + size_of.sending_time_epoch

  index = index + size_of.stop_px

  index = index + size_of.location

  index = index + size_of.min_qty

  index = index + size_of.display_qty

  index = index + size_of.expire_date

  index = index + size_of.ord_type

  index = index + size_of.time_in_force

  index = index + size_of.manual_order_indicator

  index = index + size_of.exec_inst

  index = index + size_of.execution_mode

  index = index + size_of.liquidity_flag

  index = index + size_of.managed_order

  index = index + size_of.short_sale_type

  index = index + size_of.discretion_price

  return index
end

-- Display: New Order Single
display.new_order_single = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single
dissect.new_order_single_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = dissect.price_optional(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index, security_id = dissect.security_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index, sender_id = dissect.sender_id(buffer, index, packet, parent)

  -- ClOrdId: 20 Byte Ascii String
  index, clordid = dissect.clordid(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index, party_details_list_req_id = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index, order_request_id = dissect.order_request_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index, sending_time_epoch = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index, location = dissect.location(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, min_qty = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 5 values
  index, ord_type = dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, manual_order_indicator = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index, exec_inst = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String Enum with 3 values
  index, execution_mode = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, liquidity_flag = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, managed_order = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, short_sale_type = dissect.short_sale_type(buffer, index, packet, parent)

  -- Discretion Price: 8 Byte Signed Fixed Width Integer Nullable
  index, discretion_price = dissect.discretion_price(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single
dissect.new_order_single = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_single then
    local length = size_of.new_order_single(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_single(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.new_order_single, range, display)
  end

  return dissect.new_order_single_fields(buffer, offset, packet, parent)
end

-- Size: Msg Count
size_of.msg_count = 4

-- Display: Msg Count
display.msg_count = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
dissect.msg_count = function(buffer, offset, packet, parent)
  local length = size_of.msg_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.msg_count(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Size: From Seq No
size_of.from_seq_no = 4

-- Display: From Seq No
display.from_seq_no = function(value)
  return "From Seq No: "..value
end

-- Dissect: From Seq No
dissect.from_seq_no = function(buffer, offset, packet, parent)
  local length = size_of.from_seq_no
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.from_seq_no(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.from_seq_no, range, value, display)

  return offset + length, value
end

-- Calculate size of: Not Applied
size_of.not_applied = function(buffer, offset)
  local index = 0

  index = index + size_of.uuid

  index = index + size_of.from_seq_no

  index = index + size_of.msg_count

  index = index + size_of.split_msg

  return index
end

-- Display: Not Applied
display.not_applied = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Applied
dissect.not_applied_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index, from_seq_no = dissect.from_seq_no(buffer, index, packet, parent)

  -- Msg Count: 4 Byte Unsigned Fixed Width Integer
  index, msg_count = dissect.msg_count(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Applied
dissect.not_applied = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.not_applied then
    local length = size_of.not_applied(buffer, offset)
    local range = buffer(offset, length)
    local display = display.not_applied(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.not_applied, range, display)
  end

  return dissect.not_applied_fields(buffer, offset, packet, parent)
end

-- Size: Error Codes
size_of.error_codes = 2

-- Display: Error Codes
display.error_codes = function(value)
  return "Error Codes: "..value
end

-- Dissect: Error Codes
dissect.error_codes = function(buffer, offset, packet, parent)
  local length = size_of.error_codes
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.error_codes(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.error_codes, range, value, display)

  return offset + length, value
end

-- Size: Request Timestamp
size_of.request_timestamp = 8

-- Display: Request Timestamp
display.request_timestamp = function(value)
  return "Request Timestamp: "..value
end

-- Dissect: Request Timestamp
dissect.request_timestamp = function(buffer, offset, packet, parent)
  local length = size_of.request_timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.request_timestamp(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.request_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Last Uuid
size_of.last_uuid = 8

-- Display: Last Uuid
display.last_uuid = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Uuid: No Value"
  end

  return "Last Uuid: "..value
end

-- Dissect: Last Uuid
dissect.last_uuid = function(buffer, offset, packet, parent)
  local length = size_of.last_uuid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_uuid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.last_uuid, range, value, display)

  return offset + length, value
end

-- Size: Reason
size_of.reason = 48

-- Display: Reason
display.reason = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason: No Value"
  end

  return "Reason: "..value
end

-- Dissect: Reason
dissect.reason = function(buffer, offset, packet, parent)
  local length = size_of.reason
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

  local display = display.reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmit Reject
size_of.retransmit_reject = function(buffer, offset)
  local index = 0

  index = index + size_of.reason

  index = index + size_of.uuid

  index = index + size_of.last_uuid

  index = index + size_of.request_timestamp

  index = index + size_of.error_codes

  index = index + size_of.split_msg

  return index
end

-- Display: Retransmit Reject
display.retransmit_reject = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Reject
dissect.retransmit_reject_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String Nullable
  index, reason = dissect.reason(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Last Uuid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_uuid = dissect.last_uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = dissect.request_timestamp(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index, error_codes = dissect.error_codes(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Reject
dissect.retransmit_reject = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_reject then
    local length = size_of.retransmit_reject(buffer, offset)
    local range = buffer(offset, length)
    local display = display.retransmit_reject(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.retransmit_reject, range, display)
  end

  return dissect.retransmit_reject_fields(buffer, offset, packet, parent)
end

-- Size: Msg Count 16
size_of.msg_count_16 = 2

-- Display: Msg Count 16
display.msg_count_16 = function(value)
  return "Msg Count 16: "..value
end

-- Dissect: Msg Count 16
dissect.msg_count_16 = function(buffer, offset, packet, parent)
  local length = size_of.msg_count_16
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.msg_count_16(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.msg_count_16, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmission
size_of.retransmission = function(buffer, offset)
  local index = 0

  index = index + size_of.uuid

  index = index + size_of.last_uuid

  index = index + size_of.request_timestamp

  index = index + size_of.from_seq_no

  index = index + size_of.msg_count_16

  index = index + size_of.split_msg

  return index
end

-- Display: Retransmission
display.retransmission = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmission
dissect.retransmission_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Last Uuid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_uuid = dissect.last_uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = dissect.request_timestamp(buffer, index, packet, parent)

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index, from_seq_no = dissect.from_seq_no(buffer, index, packet, parent)

  -- Msg Count 16: 2 Byte Unsigned Fixed Width Integer
  index, msg_count_16 = dissect.msg_count_16(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission
dissect.retransmission = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmission then
    local length = size_of.retransmission(buffer, offset)
    local range = buffer(offset, length)
    local display = display.retransmission(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.retransmission, range, display)
  end

  return dissect.retransmission_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Retransmit Request
size_of.retransmit_request = function(buffer, offset)
  local index = 0

  index = index + size_of.uuid

  index = index + size_of.last_uuid

  index = index + size_of.request_timestamp

  index = index + size_of.from_seq_no

  index = index + size_of.msg_count_16

  return index
end

-- Display: Retransmit Request
display.retransmit_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Request
dissect.retransmit_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Last Uuid: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_uuid = dissect.last_uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = dissect.request_timestamp(buffer, index, packet, parent)

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index, from_seq_no = dissect.from_seq_no(buffer, index, packet, parent)

  -- Msg Count 16: 2 Byte Unsigned Fixed Width Integer
  index, msg_count_16 = dissect.msg_count_16(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request
dissect.retransmit_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_request then
    local length = size_of.retransmit_request(buffer, offset)
    local range = buffer(offset, length)
    local display = display.retransmit_request(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.retransmit_request, range, display)
  end

  return dissect.retransmit_request_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Terminate
size_of.terminate = function(buffer, offset)
  local index = 0

  index = index + size_of.reason

  index = index + size_of.uuid

  index = index + size_of.request_timestamp

  index = index + size_of.error_codes

  index = index + size_of.split_msg

  return index
end

-- Display: Terminate
display.terminate = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Terminate
dissect.terminate_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String Nullable
  index, reason = dissect.reason(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = dissect.request_timestamp(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index, error_codes = dissect.error_codes(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate
dissect.terminate = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.terminate then
    local length = size_of.terminate(buffer, offset)
    local range = buffer(offset, length)
    local display = display.terminate(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.terminate, range, display)
  end

  return dissect.terminate_fields(buffer, offset, packet, parent)
end

-- Size: Keep Alive Interval Lapsed
size_of.keep_alive_interval_lapsed = 1

-- Display: Keep Alive Interval Lapsed
display.keep_alive_interval_lapsed = function(value)
  if value == 0 then
    return "Keep Alive Interval Lapsed: Not Lapsed (0)"
  end
  if value == 1 then
    return "Keep Alive Interval Lapsed: Lapsed (1)"
  end

  return "Keep Alive Interval Lapsed: Unknown("..value..")"
end

-- Dissect: Keep Alive Interval Lapsed
dissect.keep_alive_interval_lapsed = function(buffer, offset, packet, parent)
  local length = size_of.keep_alive_interval_lapsed
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.keep_alive_interval_lapsed(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.keep_alive_interval_lapsed, range, value, display)

  return offset + length, value
end

-- Size: Fault Tolerance Indicator
size_of.fault_tolerance_indicator = 1

-- Display: Fault Tolerance Indicator
display.fault_tolerance_indicator = function(value)
  if value == 0 then
    return "Fault Tolerance Indicator: Backup (0)"
  end
  if value == 1 then
    return "Fault Tolerance Indicator: Primary (1)"
  end
  if value == 255 then
    return "Fault Tolerance Indicator: No Value"
  end

  return "Fault Tolerance Indicator: Unknown("..value..")"
end

-- Dissect: Fault Tolerance Indicator
dissect.fault_tolerance_indicator = function(buffer, offset, packet, parent)
  local length = size_of.fault_tolerance_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.fault_tolerance_indicator(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.fault_tolerance_indicator, range, value, display)

  return offset + length, value
end

-- Size: Next Seq No
size_of.next_seq_no = 4

-- Display: Next Seq No
display.next_seq_no = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
dissect.next_seq_no = function(buffer, offset, packet, parent)
  local length = size_of.next_seq_no
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.next_seq_no(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sequence
size_of.sequence = function(buffer, offset)
  local index = 0

  index = index + size_of.uuid

  index = index + size_of.next_seq_no

  index = index + size_of.fault_tolerance_indicator

  index = index + size_of.keep_alive_interval_lapsed

  return index
end

-- Display: Sequence
display.sequence = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequence
dissect.sequence_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = dissect.next_seq_no(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fault_tolerance_indicator = dissect.fault_tolerance_indicator(buffer, index, packet, parent)

  -- Keep Alive Interval Lapsed: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, keep_alive_interval_lapsed = dissect.keep_alive_interval_lapsed(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence
dissect.sequence = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sequence then
    local length = size_of.sequence(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sequence(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.sequence, range, display)
  end

  return dissect.sequence_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Establishment Reject
size_of.establishment_reject = function(buffer, offset)
  local index = 0

  index = index + size_of.reason

  index = index + size_of.uuid

  index = index + size_of.request_timestamp

  index = index + size_of.next_seq_no

  index = index + size_of.error_codes

  index = index + size_of.fault_tolerance_indicator

  index = index + size_of.split_msg

  return index
end

-- Display: Establishment Reject
display.establishment_reject = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Establishment Reject
dissect.establishment_reject_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String Nullable
  index, reason = dissect.reason(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = dissect.request_timestamp(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = dissect.next_seq_no(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index, error_codes = dissect.error_codes(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fault_tolerance_indicator = dissect.fault_tolerance_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Establishment Reject
dissect.establishment_reject = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.establishment_reject then
    local length = size_of.establishment_reject(buffer, offset)
    local range = buffer(offset, length)
    local display = display.establishment_reject(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.establishment_reject, range, display)
  end

  return dissect.establishment_reject_fields(buffer, offset, packet, parent)
end

-- Size: Secret Key Secure Id Expiration
size_of.secret_key_secure_id_expiration = 2

-- Display: Secret Key Secure Id Expiration
display.secret_key_secure_id_expiration = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Secret Key Secure Id Expiration: No Value"
  end

  return "Secret Key Secure Id Expiration: "..value
end

-- Dissect: Secret Key Secure Id Expiration
dissect.secret_key_secure_id_expiration = function(buffer, offset, packet, parent)
  local length = size_of.secret_key_secure_id_expiration
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.secret_key_secure_id_expiration(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.secret_key_secure_id_expiration, range, value, display)

  return offset + length, value
end

-- Size: Keep Alive Interval
size_of.keep_alive_interval = 2

-- Display: Keep Alive Interval
display.keep_alive_interval = function(value)
  return "Keep Alive Interval: "..value
end

-- Dissect: Keep Alive Interval
dissect.keep_alive_interval = function(buffer, offset, packet, parent)
  local length = size_of.keep_alive_interval
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.keep_alive_interval(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.keep_alive_interval, range, value, display)

  return offset + length, value
end

-- Size: Previous Uuid
size_of.previous_uuid = 8

-- Display: Previous Uuid
display.previous_uuid = function(value)
  return "Previous Uuid: "..value
end

-- Dissect: Previous Uuid
dissect.previous_uuid = function(buffer, offset, packet, parent)
  local length = size_of.previous_uuid
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.previous_uuid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.previous_uuid, range, value, display)

  return offset + length, value
end

-- Size: Previous Seq No
size_of.previous_seq_no = 4

-- Display: Previous Seq No
display.previous_seq_no = function(value)
  return "Previous Seq No: "..value
end

-- Dissect: Previous Seq No
dissect.previous_seq_no = function(buffer, offset, packet, parent)
  local length = size_of.previous_seq_no
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.previous_seq_no(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.previous_seq_no, range, value, display)

  return offset + length, value
end

-- Calculate size of: Establishment Ack
size_of.establishment_ack = function(buffer, offset)
  local index = 0

  index = index + size_of.uuid

  index = index + size_of.request_timestamp

  index = index + size_of.next_seq_no

  index = index + size_of.previous_seq_no

  index = index + size_of.previous_uuid

  index = index + size_of.keep_alive_interval

  index = index + size_of.secret_key_secure_id_expiration

  index = index + size_of.fault_tolerance_indicator

  index = index + size_of.split_msg

  return index
end

-- Display: Establishment Ack
display.establishment_ack = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Establishment Ack
dissect.establishment_ack_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = dissect.request_timestamp(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = dissect.next_seq_no(buffer, index, packet, parent)

  -- Previous Seq No: 4 Byte Unsigned Fixed Width Integer
  index, previous_seq_no = dissect.previous_seq_no(buffer, index, packet, parent)

  -- Previous Uuid: 8 Byte Unsigned Fixed Width Integer
  index, previous_uuid = dissect.previous_uuid(buffer, index, packet, parent)

  -- Keep Alive Interval: 2 Byte Unsigned Fixed Width Integer
  index, keep_alive_interval = dissect.keep_alive_interval(buffer, index, packet, parent)

  -- Secret Key Secure Id Expiration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, secret_key_secure_id_expiration = dissect.secret_key_secure_id_expiration(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fault_tolerance_indicator = dissect.fault_tolerance_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Establishment Ack
dissect.establishment_ack = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.establishment_ack then
    local length = size_of.establishment_ack(buffer, offset)
    local range = buffer(offset, length)
    local display = display.establishment_ack(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.establishment_ack, range, display)
  end

  return dissect.establishment_ack_fields(buffer, offset, packet, parent)
end

-- Display: Var Data
display.var_data = function(value)
  if string.len(value) > 24 then
    return "Var Data: "..string.sub(value, 0, 24).."..."
  end

  return "Var Data: "..value
end

-- Dissect runtime sized field: Var Data
dissect.var_data = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.var_data(value, buffer, offset, packet, parent, size)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.var_data, range, value, display)

  return offset + size
end

-- Size: Data Length
size_of.data_length = 2

-- Display: Data Length
display.data_length = function(value)
  return "Data Length: "..value
end

-- Dissect: Data Length
dissect.data_length = function(buffer, offset, packet, parent)
  local length = size_of.data_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.data_length(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.data_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Credentials
size_of.credentials = function(buffer, offset)
  local index = 0

  index = index + size_of.data_length

  -- Parse runtime size of: Var Data
  index = index + buffer(offset + index - 2, 2):le_uint()

  return index
end

-- Display: Credentials
display.credentials = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Credentials
dissect.credentials_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data Length: 2 Byte Unsigned Fixed Width Integer
  index, data_length = dissect.data_length(buffer, index, packet, parent)

  -- Var Data: 0 Byte
  index = dissect.var_data(buffer, index, packet, parent, data_length)

  return index
end

-- Dissect: Credentials
dissect.credentials = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.credentials then
    local length = size_of.credentials(buffer, offset)
    local range = buffer(offset, length)
    local display = display.credentials(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.credentials, range, display)
  end

  return dissect.credentials_fields(buffer, offset, packet, parent)
end

-- Size: Firm
size_of.firm = 5

-- Display: Firm
display.firm = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm: No Value"
  end

  return "Firm: "..value
end

-- Dissect: Firm
dissect.firm = function(buffer, offset, packet, parent)
  local length = size_of.firm
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

  local display = display.firm(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.firm, range, value, display)

  return offset + length, value
end

-- Size: Session
size_of.session = 3

-- Display: Session
display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local length = size_of.session
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

  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.session, range, value, display)

  return offset + length, value
end

-- Size: Trading System Vendor
size_of.trading_system_vendor = 10

-- Display: Trading System Vendor
display.trading_system_vendor = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading System Vendor: No Value"
  end

  return "Trading System Vendor: "..value
end

-- Dissect: Trading System Vendor
dissect.trading_system_vendor = function(buffer, offset, packet, parent)
  local length = size_of.trading_system_vendor
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

  local display = display.trading_system_vendor(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.trading_system_vendor, range, value, display)

  return offset + length, value
end

-- Size: Trading System Version
size_of.trading_system_version = 10

-- Display: Trading System Version
display.trading_system_version = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading System Version: No Value"
  end

  return "Trading System Version: "..value
end

-- Dissect: Trading System Version
dissect.trading_system_version = function(buffer, offset, packet, parent)
  local length = size_of.trading_system_version
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

  local display = display.trading_system_version(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.trading_system_version, range, value, display)

  return offset + length, value
end

-- Size: Trading System Name
size_of.trading_system_name = 30

-- Display: Trading System Name
display.trading_system_name = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trading System Name: No Value"
  end

  return "Trading System Name: "..value
end

-- Dissect: Trading System Name
dissect.trading_system_name = function(buffer, offset, packet, parent)
  local length = size_of.trading_system_name
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

  local display = display.trading_system_name(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.trading_system_name, range, value, display)

  return offset + length, value
end

-- Size: Access Key Id
size_of.access_key_id = 20

-- Display: Access Key Id
display.access_key_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Access Key Id: No Value"
  end

  return "Access Key Id: "..value
end

-- Dissect: Access Key Id
dissect.access_key_id = function(buffer, offset, packet, parent)
  local length = size_of.access_key_id
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

  local display = display.access_key_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.access_key_id, range, value, display)

  return offset + length, value
end

-- Size: Hmac Signature
size_of.hmac_signature = 32

-- Display: Hmac Signature
display.hmac_signature = function(value)
  if string.len(value) > 24 then
    return "Hmac Signature: "..string.sub(value, 0, 24).."..."
  end

  return "Hmac Signature: "..value
end

-- Dissect: Hmac Signature
dissect.hmac_signature = function(buffer, offset, packet, parent)
  local length = size_of.hmac_signature
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.hmac_signature(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.hmac_signature, range, value, display)

  return offset + length, value
end

-- Calculate size of: Establish
size_of.establish = function(buffer, offset)
  local index = 0

  index = index + size_of.hmac_signature

  index = index + size_of.access_key_id

  index = index + size_of.trading_system_name

  index = index + size_of.trading_system_version

  index = index + size_of.trading_system_vendor

  index = index + size_of.uuid

  index = index + size_of.request_timestamp

  index = index + size_of.next_seq_no

  index = index + size_of.session

  index = index + size_of.firm

  index = index + size_of.keep_alive_interval

  index = index + size_of.credentials(buffer, offset + index)

  return index
end

-- Display: Establish
display.establish = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Establish
dissect.establish_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hmac Signature: 32 Byte
  index, hmac_signature = dissect.hmac_signature(buffer, index, packet, parent)

  -- Access Key Id: 20 Byte Ascii String
  index, access_key_id = dissect.access_key_id(buffer, index, packet, parent)

  -- Trading System Name: 30 Byte Ascii String
  index, trading_system_name = dissect.trading_system_name(buffer, index, packet, parent)

  -- Trading System Version: 10 Byte Ascii String
  index, trading_system_version = dissect.trading_system_version(buffer, index, packet, parent)

  -- Trading System Vendor: 10 Byte Ascii String
  index, trading_system_vendor = dissect.trading_system_vendor(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = dissect.request_timestamp(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index, next_seq_no = dissect.next_seq_no(buffer, index, packet, parent)

  -- Session: 3 Byte Ascii String
  index, session = dissect.session(buffer, index, packet, parent)

  -- Firm: 5 Byte Ascii String
  index, firm = dissect.firm(buffer, index, packet, parent)

  -- Keep Alive Interval: 2 Byte Unsigned Fixed Width Integer
  index, keep_alive_interval = dissect.keep_alive_interval(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = dissect.credentials(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish
dissect.establish = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.establish then
    local length = size_of.establish(buffer, offset)
    local range = buffer(offset, length)
    local display = display.establish(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.establish, range, display)
  end

  return dissect.establish_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Negotiation Reject
size_of.negotiation_reject = function(buffer, offset)
  local index = 0

  index = index + size_of.reason

  index = index + size_of.uuid

  index = index + size_of.request_timestamp

  index = index + size_of.error_codes

  index = index + size_of.fault_tolerance_indicator

  index = index + size_of.split_msg

  return index
end

-- Display: Negotiation Reject
display.negotiation_reject = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Negotiation Reject
dissect.negotiation_reject_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String Nullable
  index, reason = dissect.reason(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = dissect.request_timestamp(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index, error_codes = dissect.error_codes(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fault_tolerance_indicator = dissect.fault_tolerance_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Reject
dissect.negotiation_reject = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.negotiation_reject then
    local length = size_of.negotiation_reject(buffer, offset)
    local range = buffer(offset, length)
    local display = display.negotiation_reject(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.negotiation_reject, range, display)
  end

  return dissect.negotiation_reject_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Negotiation Response
size_of.negotiation_response = function(buffer, offset)
  local index = 0

  index = index + size_of.uuid

  index = index + size_of.request_timestamp

  index = index + size_of.secret_key_secure_id_expiration

  index = index + size_of.fault_tolerance_indicator

  index = index + size_of.split_msg

  index = index + size_of.previous_seq_no

  index = index + size_of.previous_uuid

  index = index + size_of.credentials(buffer, offset + index)

  return index
end

-- Display: Negotiation Response
display.negotiation_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Negotiation Response
dissect.negotiation_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = dissect.request_timestamp(buffer, index, packet, parent)

  -- Secret Key Secure Id Expiration: 2 Byte Unsigned Fixed Width Integer Nullable
  index, secret_key_secure_id_expiration = dissect.secret_key_secure_id_expiration(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fault_tolerance_indicator = dissect.fault_tolerance_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, split_msg = dissect.split_msg(buffer, index, packet, parent)

  -- Previous Seq No: 4 Byte Unsigned Fixed Width Integer
  index, previous_seq_no = dissect.previous_seq_no(buffer, index, packet, parent)

  -- Previous Uuid: 8 Byte Unsigned Fixed Width Integer
  index, previous_uuid = dissect.previous_uuid(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = dissect.credentials(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Response
dissect.negotiation_response = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.negotiation_response then
    local length = size_of.negotiation_response(buffer, offset)
    local range = buffer(offset, length)
    local display = display.negotiation_response(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.negotiation_response, range, display)
  end

  return dissect.negotiation_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Negotiate
size_of.negotiate = function(buffer, offset)
  local index = 0

  index = index + size_of.hmac_signature

  index = index + size_of.access_key_id

  index = index + size_of.uuid

  index = index + size_of.request_timestamp

  index = index + size_of.session

  index = index + size_of.firm

  index = index + size_of.credentials(buffer, offset + index)

  return index
end

-- Display: Negotiate
display.negotiate = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Negotiate
dissect.negotiate_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hmac Signature: 32 Byte
  index, hmac_signature = dissect.hmac_signature(buffer, index, packet, parent)

  -- Access Key Id: 20 Byte Ascii String
  index, access_key_id = dissect.access_key_id(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index, uuid = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, request_timestamp = dissect.request_timestamp(buffer, index, packet, parent)

  -- Session: 3 Byte Ascii String
  index, session = dissect.session(buffer, index, packet, parent)

  -- Firm: 5 Byte Ascii String
  index, firm = dissect.firm(buffer, index, packet, parent)

  -- Credentials: Struct of 2 fields
  index, credentials = dissect.credentials(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate
dissect.negotiate = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.negotiate then
    local length = size_of.negotiate(buffer, offset)
    local range = buffer(offset, length)
    local display = display.negotiate(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.negotiate, range, display)
  end

  return dissect.negotiate_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, template_id)
  -- Size of Negotiate
  if template_id == 500 then
    return size_of.negotiate(buffer, offset)
  end
  -- Size of Negotiation Response
  if template_id == 501 then
    return size_of.negotiation_response(buffer, offset)
  end
  -- Size of Negotiation Reject
  if template_id == 502 then
    return size_of.negotiation_reject(buffer, offset)
  end
  -- Size of Establish
  if template_id == 503 then
    return size_of.establish(buffer, offset)
  end
  -- Size of Establishment Ack
  if template_id == 504 then
    return size_of.establishment_ack(buffer, offset)
  end
  -- Size of Establishment Reject
  if template_id == 505 then
    return size_of.establishment_reject(buffer, offset)
  end
  -- Size of Sequence
  if template_id == 506 then
    return size_of.sequence(buffer, offset)
  end
  -- Size of Terminate
  if template_id == 507 then
    return size_of.terminate(buffer, offset)
  end
  -- Size of Retransmit Request
  if template_id == 508 then
    return size_of.retransmit_request(buffer, offset)
  end
  -- Size of Retransmission
  if template_id == 509 then
    return size_of.retransmission(buffer, offset)
  end
  -- Size of Retransmit Reject
  if template_id == 510 then
    return size_of.retransmit_reject(buffer, offset)
  end
  -- Size of Not Applied
  if template_id == 513 then
    return size_of.not_applied(buffer, offset)
  end
  -- Size of New Order Single
  if template_id == 514 then
    return size_of.new_order_single(buffer, offset)
  end
  -- Size of Order Cancel Replace Request
  if template_id == 515 then
    return size_of.order_cancel_replace_request(buffer, offset)
  end
  -- Size of Order Cancel Request
  if template_id == 516 then
    return size_of.order_cancel_request(buffer, offset)
  end
  -- Size of Mass Quote
  if template_id == 517 then
    return size_of.mass_quote(buffer, offset)
  end
  -- Size of Party Details Definition Request
  if template_id == 518 then
    return size_of.party_details_definition_request(buffer, offset)
  end
  -- Size of Party Details Definition Request Ack
  if template_id == 519 then
    return size_of.party_details_definition_request_ack(buffer, offset)
  end
  -- Size of Business Reject
  if template_id == 521 then
    return size_of.business_reject(buffer, offset)
  end
  -- Size of Execution Report New
  if template_id == 522 then
    return size_of.execution_report_new(buffer, offset)
  end
  -- Size of Execution Report Reject
  if template_id == 523 then
    return size_of.execution_report_reject(buffer, offset)
  end
  -- Size of Execution Report Elimination
  if template_id == 524 then
    return size_of.execution_report_elimination(buffer, offset)
  end
  -- Size of Execution Report Trade Outright
  if template_id == 525 then
    return size_of.execution_report_trade_outright(buffer, offset)
  end
  -- Size of Execution Report Trade Spread
  if template_id == 526 then
    return size_of.execution_report_trade_spread(buffer, offset)
  end
  -- Size of Execution Report Trade Spread Leg
  if template_id == 527 then
    return size_of.execution_report_trade_spread_leg(buffer, offset)
  end
  -- Size of Quote Cancel
  if template_id == 528 then
    return size_of.quote_cancel(buffer, offset)
  end
  -- Size of Order Mass Action Request
  if template_id == 529 then
    return size_of.order_mass_action_request(buffer, offset)
  end
  -- Size of Order Mass Status Request
  if template_id == 530 then
    return size_of.order_mass_status_request(buffer, offset)
  end
  -- Size of Execution Report Modify
  if template_id == 531 then
    return size_of.execution_report_modify(buffer, offset)
  end
  -- Size of Execution Report Status
  if template_id == 532 then
    return size_of.execution_report_status(buffer, offset)
  end
  -- Size of Order Status Request
  if template_id == 533 then
    return size_of.order_status_request(buffer, offset)
  end
  -- Size of Execution Report Cancel
  if template_id == 534 then
    return size_of.execution_report_cancel(buffer, offset)
  end
  -- Size of Order Cancel Reject
  if template_id == 535 then
    return size_of.order_cancel_reject(buffer, offset)
  end
  -- Size of Order Cancel Replace Reject
  if template_id == 536 then
    return size_of.order_cancel_replace_reject(buffer, offset)
  end
  -- Size of Party Details List Request
  if template_id == 537 then
    return size_of.party_details_list_request(buffer, offset)
  end
  -- Size of Party Details List Report
  if template_id == 538 then
    return size_of.party_details_list_report(buffer, offset)
  end
  -- Size of Execution Ack
  if template_id == 539 then
    return size_of.execution_ack(buffer, offset)
  end
  -- Size of Request For Quote
  if template_id == 543 then
    return size_of.request_for_quote(buffer, offset)
  end
  -- Size of New Order Cross
  if template_id == 544 then
    return size_of.new_order_cross(buffer, offset)
  end
  -- Size of Mass Quote Ack
  if template_id == 545 then
    return size_of.mass_quote_ack(buffer, offset)
  end
  -- Size of Request For Quote Ack
  if template_id == 546 then
    return size_of.request_for_quote_ack(buffer, offset)
  end
  -- Size of Execution Report Trade Addendum Outright
  if template_id == 548 then
    return size_of.execution_report_trade_addendum_outright(buffer, offset)
  end
  -- Size of Execution Report Trade Addendum Spread
  if template_id == 549 then
    return size_of.execution_report_trade_addendum_spread(buffer, offset)
  end
  -- Size of Execution Report Trade Addendum Spread Leg
  if template_id == 550 then
    return size_of.execution_report_trade_addendum_spread_leg(buffer, offset)
  end
  -- Size of Security Definition Request
  if template_id == 560 then
    return size_of.security_definition_request(buffer, offset)
  end
  -- Size of Security Definition Response
  if template_id == 561 then
    return size_of.security_definition_response(buffer, offset)
  end
  -- Size of Order Mass Action Report
  if template_id == 562 then
    return size_of.order_mass_action_report(buffer, offset)
  end
  -- Size of Quote Cancel Ack
  if template_id == 563 then
    return size_of.quote_cancel_ack(buffer, offset)
  end
  -- Size of Execution Report Pending Cancel
  if template_id == 564 then
    return size_of.execution_report_pending_cancel(buffer, offset)
  end
  -- Size of Execution Report Pending Replace
  if template_id == 565 then
    return size_of.execution_report_pending_replace(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Negotiate
  if template_id == 500 then
    return dissect.negotiate(buffer, offset, packet, parent)
  end
  -- Dissect Negotiation Response
  if template_id == 501 then
    return dissect.negotiation_response(buffer, offset, packet, parent)
  end
  -- Dissect Negotiation Reject
  if template_id == 502 then
    return dissect.negotiation_reject(buffer, offset, packet, parent)
  end
  -- Dissect Establish
  if template_id == 503 then
    return dissect.establish(buffer, offset, packet, parent)
  end
  -- Dissect Establishment Ack
  if template_id == 504 then
    return dissect.establishment_ack(buffer, offset, packet, parent)
  end
  -- Dissect Establishment Reject
  if template_id == 505 then
    return dissect.establishment_reject(buffer, offset, packet, parent)
  end
  -- Dissect Sequence
  if template_id == 506 then
    return dissect.sequence(buffer, offset, packet, parent)
  end
  -- Dissect Terminate
  if template_id == 507 then
    return dissect.terminate(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request
  if template_id == 508 then
    return dissect.retransmit_request(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission
  if template_id == 509 then
    return dissect.retransmission(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Reject
  if template_id == 510 then
    return dissect.retransmit_reject(buffer, offset, packet, parent)
  end
  -- Dissect Not Applied
  if template_id == 513 then
    return dissect.not_applied(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single
  if template_id == 514 then
    return dissect.new_order_single(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request
  if template_id == 515 then
    return dissect.order_cancel_replace_request(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request
  if template_id == 516 then
    return dissect.order_cancel_request(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote
  if template_id == 517 then
    return dissect.mass_quote(buffer, offset, packet, parent)
  end
  -- Dissect Party Details Definition Request
  if template_id == 518 then
    return dissect.party_details_definition_request(buffer, offset, packet, parent)
  end
  -- Dissect Party Details Definition Request Ack
  if template_id == 519 then
    return dissect.party_details_definition_request_ack(buffer, offset, packet, parent)
  end
  -- Dissect Business Reject
  if template_id == 521 then
    return dissect.business_reject(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New
  if template_id == 522 then
    return dissect.execution_report_new(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Reject
  if template_id == 523 then
    return dissect.execution_report_reject(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Elimination
  if template_id == 524 then
    return dissect.execution_report_elimination(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Outright
  if template_id == 525 then
    return dissect.execution_report_trade_outright(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Spread
  if template_id == 526 then
    return dissect.execution_report_trade_spread(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Spread Leg
  if template_id == 527 then
    return dissect.execution_report_trade_spread_leg(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancel
  if template_id == 528 then
    return dissect.quote_cancel(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Action Request
  if template_id == 529 then
    return dissect.order_mass_action_request(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Status Request
  if template_id == 530 then
    return dissect.order_mass_status_request(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Modify
  if template_id == 531 then
    return dissect.execution_report_modify(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Status
  if template_id == 532 then
    return dissect.execution_report_status(buffer, offset, packet, parent)
  end
  -- Dissect Order Status Request
  if template_id == 533 then
    return dissect.order_status_request(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Cancel
  if template_id == 534 then
    return dissect.execution_report_cancel(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject
  if template_id == 535 then
    return dissect.order_cancel_reject(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Reject
  if template_id == 536 then
    return dissect.order_cancel_replace_reject(buffer, offset, packet, parent)
  end
  -- Dissect Party Details List Request
  if template_id == 537 then
    return dissect.party_details_list_request(buffer, offset, packet, parent)
  end
  -- Dissect Party Details List Report
  if template_id == 538 then
    return dissect.party_details_list_report(buffer, offset, packet, parent)
  end
  -- Dissect Execution Ack
  if template_id == 539 then
    return dissect.execution_ack(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote
  if template_id == 543 then
    return dissect.request_for_quote(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross
  if template_id == 544 then
    return dissect.new_order_cross(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Ack
  if template_id == 545 then
    return dissect.mass_quote_ack(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote Ack
  if template_id == 546 then
    return dissect.request_for_quote_ack(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Addendum Outright
  if template_id == 548 then
    return dissect.execution_report_trade_addendum_outright(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Addendum Spread
  if template_id == 549 then
    return dissect.execution_report_trade_addendum_spread(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Addendum Spread Leg
  if template_id == 550 then
    return dissect.execution_report_trade_addendum_spread_leg(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Request
  if template_id == 560 then
    return dissect.security_definition_request(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Response
  if template_id == 561 then
    return dissect.security_definition_response(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Action Report
  if template_id == 562 then
    return dissect.order_mass_action_report(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancel Ack
  if template_id == 563 then
    return dissect.quote_cancel_ack(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Cancel
  if template_id == 564 then
    return dissect.execution_report_pending_cancel(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Pending Replace
  if template_id == 565 then
    return dissect.execution_report_pending_replace(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(cme_futures_ilink3_sbe_v8_7.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
size_of.version = 2

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local length = size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
size_of.schema_id = 2

-- Display: Schema Id
display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
dissect.schema_id = function(buffer, offset, packet, parent)
  local length = size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.schema_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 2

-- Display: Template Id
display.template_id = function(value)
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
  if value == 564 then
    return "Template Id: Execution Report Pending Cancel (564)"
  end
  if value == 565 then
    return "Template Id: Execution Report Pending Replace (565)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.template_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length

  index = index + size_of.template_id

  index = index + size_of.schema_id

  index = index + size_of.version

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 50 values
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Size: Encoding Type
size_of.encoding_type = 2

-- Display: Encoding Type
display.encoding_type = function(value)
  return "Encoding Type: "..value
end

-- Dissect: Encoding Type
dissect.encoding_type = function(buffer, offset, packet, parent)
  local length = size_of.encoding_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.encoding_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
size_of.message_length = 2

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local length = size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Simple Open Framing Header
size_of.simple_open_framing_header = function(buffer, offset)
  local index = 0

  index = index + size_of.message_length

  index = index + size_of.encoding_type

  return index
end

-- Display: Simple Open Framing Header
display.simple_open_framing_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Open Framing Header
dissect.simple_open_framing_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index, encoding_type = dissect.encoding_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Open Framing Header
dissect.simple_open_framing_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.simple_open_framing_header then
    local length = size_of.simple_open_framing_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.simple_open_framing_header(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.simple_open_framing_header, range, display)
  end

  return dissect.simple_open_framing_header_fields(buffer, offset, packet, parent)
end

-- Display: Simple Open Frame
display.simple_open_frame = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Open Frame
dissect.simple_open_frame_fields = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  local index = offset

  -- Simple Open Framing Header: Struct of 2 fields
  index, simple_open_framing_header = dissect.simple_open_framing_header(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 50 branches
  index = dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Simple Open Frame
dissect.simple_open_frame = function(buffer, offset, packet, parent, size_of_simple_open_frame)
  -- Optionally add struct element to protocol tree
  if show.simple_open_frame then
    local range = buffer(offset, size_of_simple_open_frame)
    local display = display.simple_open_frame(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_7.fields.simple_open_frame, range, display)
  end

  dissect.simple_open_frame_fields(buffer, offset, packet, parent, size_of_simple_open_frame)

  return offset + size_of_simple_open_frame
end

-- Remaining Bytes For: Simple Open Frame
local simple_open_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < size_of.simple_open_framing_header(buffer, index) then
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

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Simple Open Frame
  local end_of_payload = buffer:len()

  -- Simple Open Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_simple_open_frame = simple_open_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = dissect.simple_open_frame(buffer, index, packet, parent, size_of_simple_open_frame)
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
function cme_futures_ilink3_sbe_v8_7.init()
end

-- Dissector for Cme Futures iLink3 Sbe 8.7
function cme_futures_ilink3_sbe_v8_7.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cme_futures_ilink3_sbe_v8_7.name

  -- Dissect protocol
  local protocol = parent:add(cme_futures_ilink3_sbe_v8_7, buffer(), cme_futures_ilink3_sbe_v8_7.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, cme_futures_ilink3_sbe_v8_7)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cme_futures_ilink3_sbe_v8_7_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 8 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(10, 2):le_uint()

  if value == 7 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Futures iLink3 Sbe 8.7
local function cme_futures_ilink3_sbe_v8_7_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cme_futures_ilink3_sbe_v8_7_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cme_futures_ilink3_sbe_v8_7
  cme_futures_ilink3_sbe_v8_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures iLink3 Sbe 8.7
cme_futures_ilink3_sbe_v8_7:register_heuristic("tcp", cme_futures_ilink3_sbe_v8_7_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 8.7
--   Date: Wednesday, January 6, 2021
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
